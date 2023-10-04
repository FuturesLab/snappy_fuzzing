#include <stdio.h>
#include <cstring>
#include <stdbool.h>
#include <iostream>
#include <fstream>
#include <string>
#include "snappy.h"

int main(int argc, char *argv[])
{
   /* Read input file to fuzzing data. */

   std::ifstream fuzz_file((char*) argv[1]);
   std::string str_cur, str_fin;

   while (getline (fuzz_file, str_cur)) {
      str_fin.append(str_cur);
   }

   const char* fuzz_data = str_fin.data();

   /* Process fuzzing data to RawUncompress. */

   std::string str_Compress;
   std::string str_Uncompress;

   size_t sizet_Compress = snappy::Compress(fuzz_data, strlen(fuzz_data), &str_Compress);
   
   bool bool_Uncompress = snappy::Uncompress(str_Compress.data(), strlen(str_Compress.data()), &str_Uncompress);
   
   assert(bool_Uncompress == true);

   bool bool_RawUncompress = snappy::RawUncompress((const char*) str_Uncompress.data(), (size_t) sizet_Compress, (char*) str_Compress.data());
   
   return 0;
}