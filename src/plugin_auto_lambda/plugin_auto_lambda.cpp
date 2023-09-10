#include "plugin_auto_lambda.hpp"

#include <filesystem>
#include <iostream>
#include <fstream>
#include <cassert>
#include <cstdlib>
#include <string>
#include <vector>
#include <array>
#include <charconv>
#include <set>


//-----------------

/*
Фильтрация IP-адресов

Цель задания – реализовать приложение обработки списка IP-адресов.

Программа из стандартного ввода читает данные.
Данные хранятся построчно.
Каждая строка состоит из трех полей,
разделенных одним символом табуляции,
и завершается символом конца строки.

Формат строки:
text1 \t text2 \t text3 \n

Поля text2 и text3 игнорируются.

Поле text1 имеет следующую структуру (ip4 address):
n1.n2.n3.n4
где n1..4 – целое число от 0 до 255


Требуется загрузить список ip-адресов в память
и отсортировать их в обратном лексикографическом порядке.

Пример лексикографической сортировки
(по первому числу, затем по второму и так далее):

1.1.1.1
1.2.1.1
1.10.1.1

Соответственно, обратная:

1.10.1.1
1.2.1.1
1.1.1.1


Обратите внимание – сортировка выполняется в байтовом (численном) представлении IP-адреса,
а не в строковом. Поэтому адрес, например, 1.2.1.1 меньше адреса 1.10.1.1 (ведь 2 < 10).

Далее выводим в стандартный вывод следующее:

1. Полный список адресов после сортировки. Одна строка - один адрес.

2. Сразу следом список адресов, первый байт которых равен 1. Порядок сортировки не меняется.
Одна строка - один адрес. Списки ничем не разделяются.

3. Сразу продолжается список адресов, первый байт которых равен 46, а второй 70. Порядок
сортировки не меняется. Одна строка - один адрес. Списки ничем не разделяются.

4. Сразу продолжается список адресов, любой байт которых равен 46. Порядок сортировки не
меняется. Одна строка - один адрес. Списки ничем не разделяются.

*/

//-----------------


namespace fs = std::filesystem;

// ("",  '.') -> [""]
// ("11", '.') -> ["11"]
// ("..", '.') -> ["", "", ""]
// ("11.", '.') -> ["11", ""]
// (".11", '.') -> ["", "11"]
// ("11.22", '.') -> ["11", "22"]
std::vector<std::string> split(const std::string &str, char d)
{
    std::vector<std::string> r;

    std::string::size_type start = 0;
    std::string::size_type stop = str.find_first_of(d);
    while(stop != std::string::npos)
    {
        r.push_back(str.substr(start, stop - start));

        start = stop + 1;
        stop = str.find_first_of(d, start);
    }

    r.push_back(str.substr(start));

    return r;
}

static constexpr size_t cntDigits = 4;

struct ModeComp
{
    bool operator()(const std::array<int, cntDigits> lhs, const std::array<int, cntDigits> rhs) const
    {
        if (lhs.at(0) == rhs.at(0))
        {
            if (lhs.at(1) == rhs.at(1))
            {
                if (lhs.at(2) == rhs.at(2))
                {
                    if (lhs.at(3) == rhs.at(3))
                    {
                        return true;
                    }
                    else if (lhs.at(3) > rhs.at(3))
                    {   return true;    }
                    else
                    {   return false;   }
                }
                else if (lhs.at(2) > rhs.at(2))
                {   return true;    }
                else
                {   return false;   }
            }
            else if (lhs.at(1) > rhs.at(1))
            {   return true;    }
            else
            {   return false;   }
        }
        else if (lhs.at(0) > rhs.at(0))
        {   return true;    }
        else
        {   return false;   }
    }
};

PluginAutoLambda::PluginAutoLambda()
{
    std::cout << __PRETTY_FUNCTION__ << "\n";

    fs::path root = fs::current_path()
                     .parent_path()
                     .parent_path()
                     .parent_path();
    root += "/test_ci_cd/src/plugin_auto_lambda/ip_filter.tsv";
    std::cout << root << "\n";



    if (fs::exists(root))
    {
        std::ifstream file(root);
        if (file.is_open())
        {
            try
            {
                std::multiset<std::array<int, cntDigits>, ModeComp> ip_pool;

                std::string buff = "";
                while (std::getline(std::cin/*file*/, buff))
                {
                    std::array<int, cntDigits> ip_add {0, 0, 0, 0};
                    std::string_view ip_addr = buff.substr(0, buff.find_first_of('\t'));

                    std::string_view ip_part = ip_addr.substr(0, ip_addr.find_first_of('.'));
                    std::from_chars(ip_part.data(), ip_part.data() + ip_part.size(), ip_add[0]);
                    ip_addr.remove_prefix(ip_addr.find_first_of('.') + 1);

                    ip_part = ip_addr.substr(0, ip_addr.find_first_of('.'));
                    std::from_chars(ip_part.data(), ip_part.data() + ip_part.size(), ip_add[1]);
                    ip_addr.remove_prefix(ip_addr.find_first_of('.') + 1);

                    ip_part = ip_addr.substr(0, ip_addr.find_first_of('.'));
                    std::from_chars(ip_part.data(), ip_part.data() + ip_part.size(), ip_add[2]);
                    ip_addr.remove_prefix(ip_addr.find_first_of('.') + 1);

                    ip_part = ip_addr.substr(0, ip_addr.find_first_of('.'));
                    std::from_chars(ip_part.data(), ip_part.data() + ip_part.size(), ip_add[3]);

                    ip_pool.insert(ip_add);
                }

                // Reverse lexicographically sort
                for (const auto& addr : ip_pool)
                {
                    std::cout << addr.at(0) << "."
                              << addr.at(1) << "."
                              << addr.at(2) << "."
                              << addr.at(3) << "\n";
                }

                // Filter by first byte and output . ip = filter(1)
                for (const auto& addr : ip_pool)
                {
                    if (addr.at(0) != 1) { continue; }

                    std::cout << addr.at(0) << "."
                              << addr.at(1) << "."
                              << addr.at(2) << "."
                              << addr.at(3) << "\n";
                }

                // Filter by first and second bytes and output . ip = filter(46, 70)
                for (const auto& addr : ip_pool)
                {
                    if ( (addr.at(0) != 46) || (addr.at(1) != 70) ) { continue; }

                    std::cout << addr.at(0) << "."
                              << addr.at(1) << "."
                              << addr.at(2) << "."
                              << addr.at(3) << "\n";
                }

                // Filter by any byte and output . ip = filter_any(46)
                for (const auto& addr : ip_pool)
                {
                    if (
                            (addr.at(0) != 46)
                             && (addr.at(1) != 46)
                             && (addr.at(2) != 46)
                             && (addr.at(3) != 46)
                         ) { continue; }

                    std::cout << addr.at(0) << "."
                              << addr.at(1) << "."
                              << addr.at(2) << "."
                              << addr.at(3) << "\n";
                }
            }
            catch (const std::exception& except)
            {
                std::cerr << except.what() << std::endl;
            }
        }
    }


//    try
//    {
//        std::vector<std::vector<std::string> > ip_pool;

//        for(std::string line; std::getline(std::cin, line);)
//        {
//            std::vector<std::string> v = split(line, '\t');
//            ip_pool.push_back(split(v.at(0), '.'));
//        }

//        // TODO reverse lexicographically sort

//        for(std::vector<std::vector<std::string> >::const_iterator ip = ip_pool.cbegin(); ip != ip_pool.cend(); ++ip)
//        {
//            for(std::vector<std::string>::const_iterator ip_part = ip->cbegin(); ip_part != ip->cend(); ++ip_part)
//            {
//                if (ip_part != ip->cbegin())
//                {
//                    std::cout << ".";

//                }
//                std::cout << *ip_part;
//            }
//            std::cout << std::endl;
//        }

//        // 222.173.235.246
//        // 222.130.177.64
//        // 222.82.198.61
//        // ...
//        // 1.70.44.170
//        // 1.29.168.152
//        // 1.1.234.8

//        // TODO filter by first byte and output
//        // ip = filter(1)

//        // 1.231.69.33
//        // 1.87.203.225
//        // 1.70.44.170
//        // 1.29.168.152
//        // 1.1.234.8

//        // TODO filter by first and second bytes and output
//        // ip = filter(46, 70)

//        // 46.70.225.39
//        // 46.70.147.26
//        // 46.70.113.73
//        // 46.70.29.76

//        // TODO filter by any byte and output
//        // ip = filter_any(46)

//        // 186.204.34.46
//        // 186.46.222.194
//        // 185.46.87.231
//        // 185.46.86.132
//        // 185.46.86.131
//        // 185.46.86.131
//        // 185.46.86.22
//        // 185.46.85.204
//        // 185.46.85.78
//        // 68.46.218.208
//        // 46.251.197.23
//        // 46.223.254.56
//        // 46.223.254.56
//        // 46.182.19.219
//        // 46.161.63.66
//        // 46.161.61.51
//        // 46.161.60.92
//        // 46.161.60.35
//        // 46.161.58.202
//        // 46.161.56.241
//        // 46.161.56.203
//        // 46.161.56.174
//        // 46.161.56.106
//        // 46.161.56.106
//        // 46.101.163.119
//        // 46.101.127.145
//        // 46.70.225.39
//        // 46.70.147.26
//        // 46.70.113.73
//        // 46.70.29.76
//        // 46.55.46.98
//        // 46.49.43.85
//        // 39.46.86.85
//        // 5.189.203.46
//    }
//    catch(const std::exception &e)
//    {
//        std::cerr << e.what() << std::endl;
//    }

}

PluginAutoLambda::~PluginAutoLambda()
{
}
