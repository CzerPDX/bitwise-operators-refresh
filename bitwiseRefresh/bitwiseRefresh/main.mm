//
//  main.mm
//  bitwiseRefresh
//
//  Created by Czer on 10/17/23.
//

// Objective-C imports
#import <Foundation/Foundation.h>

// C++ includes
#include "BitwiseOps.hpp"

int main(int argc, const char * argv[]) {
  std::cout << "Hello world from Objective-C++" << std::endl;
  std::cout << std::endl;
  
  BitwiseOps aBitwiseOpsObject;
  
  // Convert some non-decimal numbers to their decimal counterparts
  std::cout << "012 -> " << aBitwiseOpsObject.convertBinaryOctalOrHexToDecimal("012") << std::endl;
  std::cout << "0xfe -> " << aBitwiseOpsObject.convertBinaryOctalOrHexToDecimal("0xfe") << std::endl;
  std::cout << "0b1001 -> " << aBitwiseOpsObject.convertBinaryOctalOrHexToDecimal("0b1001") << std::endl;
  
  // Convert some decimal to binary
  std::cout << "8 = " << aBitwiseOpsObject.convertDecimalToBinary(8) << std::endl;
  
  
  // Ok now do some bitwise operations!
  // Make 0b00000000 look like 0b00101100
  std::string a = "0b00101100";
  std::string b = "0b00000000";
  
  // First turn a and b into ints
  int a_int = aBitwiseOpsObject.convertBinaryOctalOrHexToDecimal(a);
  int b_int = aBitwiseOpsObject.convertBinaryOctalOrHexToDecimal(b);
  
  // Perform an XOR
  int result = a_int ^ b_int;
  
  // Then convert back to a binary so can see if they match
  std::string result_binary = aBitwiseOpsObject.convertDecimalToBinary(result);
  
  // Then print out a_int and result_binary to see if they match:
  std::cout << a << std::endl;
  std::cout << result_binary << std::endl;
  
  
  @autoreleasepool {
      NSLog(@"Hello, World! from Objective-C!!");
  }
  return 0;
}
