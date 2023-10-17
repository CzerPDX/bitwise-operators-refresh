//
//  bitwiseOps.hpp
//  bitwiseRefresh
//
//  Created by Czer on 10/17/23.
//

#ifndef BITWISEOPS_H
#define BITWISEOPS_H

#include <iostream>
#include <string>

class BitwiseOps {
public:
  // Figure out if the incoming string represents a binary, hex, or octal number and then convert it to its decimal value.
  int convertBinaryOctalOrHexToDecimal(std::string numToConvert);
  
private:
  // Used to convert to decimal from binary, octal, and hex
  int decimalConversion(std::string numToConvert, int base);
  std::string prepareNumForConversion(std::string numToPrepare, int base);
};

#endif /* BITWISEOPS_H */
