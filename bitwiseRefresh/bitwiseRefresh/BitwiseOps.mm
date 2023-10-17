//
//  bitwiseOps.mm
//  bitwiseRefresh
//
//  Created by Czer on 10/17/23.
//

#include <math.h>
#include <stdexcept>

#include "BitwiseOps.hpp"

// Returns decimal representation of binary, hex, and octal numbers
int BitwiseOps::convertBinaryOctalOrHexToDecimal(std::string numToConvert) {
  /*
   Note:
   I know I could have used std::stoi(numToConvert, nullptr, base) to convert this directly,
   but since the idea is to refresh myself on how the actual conversion works I've done this manually.
   So my conversion process is a little silly since you wouldn't typically need this function at all.
   */
  
  // This function is assumed to have provided a valid binary, hex, or octal number. Therfore, the shortest possible string should have at least 2 entries in it (assuming octal).
  int retNum = 0;
  
  if (numToConvert.length() > 1) {
    char secondCharacter = std::tolower(numToConvert[1]);
    int base = 0;
    switch (secondCharacter) {
      case 'b': // Binary
        base = 2;
        break;
      case 'x': // hexadecimal
        base = 16;
        break;
      default: // octal
        base = 8;
        break;
    }
    
    std::string preparedNum = prepareNumForConversion(numToConvert, base);
    retNum = decimalConversion(preparedNum, base);
    
  }
  
  return retNum;
}

// Remove the part of the string that denotes the type of base
std::string BitwiseOps::prepareNumForConversion(std::string numToPrepare, int base) {
  std::string preparedString;
  
  // Chop two characters off the front of numToPrepare for binary and hexadecimal. Chop 1 off for octal
  switch (base) {
    case 2:
    case 16:
      preparedString = numToPrepare.substr(2, (numToPrepare.length() - 2));
      break;
    default:
      preparedString = numToPrepare.substr(1, (numToPrepare.length() - 1));
      break;
  }
  return preparedString;
}

// Convert the prepared string to a decimal value
int BitwiseOps::decimalConversion(std::string numToConvert, int base) {
  int retDecimal = 0;
  
  // Start at right and moves left starting at base^0 and increasing by 1 power for every space moved left
  int currPower = 0;
  for (int i = (static_cast<int>(numToConvert.length()) - 1); i >= 0; i--, currPower++) {
    int currChar = tolower(numToConvert[i]);
    int currNum = 0;
    
    // Adjust the current character to its correct decimal value
    if ((currChar >= 48) && (currChar <= 57)) {
      currNum = currChar - 48;
    } else if ((currChar >= 97) && (currChar <= 102)) {
      // Subtract 97 to adjust for ascii placement
      // But then add 10 because this section's digit values starts at 10 (a = 10, b = 11, etc)
      currNum = currChar - 97 + 10;
    } else {
      std::cout << "Invalid digit " << numToConvert[i] << " for base " << base << std::endl;
      return -1;
    }
    
    // Multiply the current digit by the base's power to its position
    retDecimal += (currNum * pow(base, currPower));
  }
  return retDecimal;
}
