#include <boost/lambda/lambda.hpp>
#include <iostream>
#include <iterator>
#include <algorithm>

int main()
{
    using namespace boost::lambda;
    typedef std::istream_iterator<int> in;

    std::for_each(
            in(std::cin), in(), std::cout << (_1 * 3) << " " );
}

//#include <stdio.h>
//#include <stdlib.h>
//
//#include <boost/process.hpp>
//
//using namespace boost::process;
//
//int main()
//{
//    ipstream pipe_stream;
//    child c("gcc --version", std_out > pipe_stream);
//
//    std::string line;
//
//    while (pipe_stream && std::getline(pipe_stream, line) && !line.empty())
//        std::cerr << line << std::endl;
//
//
////    //    system("jackd -dalsa -dhw:U192k");
////    system("scsynth -u 57130");
//////    system("./sendosc 127.0.0.1 57130 /dumpOSC i 1");
//
//    c.wait();
//}