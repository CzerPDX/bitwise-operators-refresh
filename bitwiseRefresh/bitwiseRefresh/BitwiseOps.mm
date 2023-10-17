//
//  bitwiseOps.mm
//  bitwiseRefresh
//
//  Created by Czer on 10/17/23.
//

#include "BitwiseOps.hpp"

// Returns decimal representation of binary, hex, and octal numbers
int BitwiseOps::convertBinaryOctalOrHexToDecimal(std::string numToConvert) {
  // This function is assumed to have provided a valid binary, hex, or octal number. Therfore, the shortest possible string should have at least 2 entries in it (assuming octal).
  int retNum = 0;
  
  if (numToConvert.length() > 1) {
    char secondCharacter = std::tolower(numToConvert[1]);
    
    if (secondCharacter == 'b') {
      std::cout << "Binary" << std:: endl;
    } else if (secondCharacter == 'x') {
      std::cout << "Hexadecimal" << std::endl;
    } else {
      std::cout << "Octal" << std::endl;
    }
  }
  
  return retNum;
}

// Convert binary string to decimal
int BitwiseOps::binaryToDecimal(std::string binaryNum) {
  // Cut off the first two characters (should be "0b")
  std::string preparedBinary = binaryNum.substr(2, (binaryNum.length() - 2));
  return 0;
}

int BitwiseOps::octalToDecimal(std::string octalNum) {
  return 0;
}

int BitwiseOps::hexToDecimal(std::string hexNum) {
  return 0;
}
