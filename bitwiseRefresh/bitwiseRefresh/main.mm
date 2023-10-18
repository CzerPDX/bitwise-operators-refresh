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
  std::cout << "256 = " << aBitwiseOpsObject.convertDecimalToBinary(256) << std::endl;
  std::cout << "0 = " << aBitwiseOpsObject.convertDecimalToBinary(0) << std::endl;
  std::cout << std::endl;
  
  
  // Ok now do some bitwise operations!
  // 1. Make 0b00000000 look like 0b00101100
  std::string a = "0b00101100";
  std::string b = "0b00000000";

  // First turn a and b into ints
  int a_int = aBitwiseOpsObject.convertBinaryOctalOrHexToDecimal(a);
  int b_int = aBitwiseOpsObject.convertBinaryOctalOrHexToDecimal(b);
  
  // Perform an XOR. XOR will create a 1 only where the left and right operands do NOT have the same value
  int result = a_int ^ b_int;
  
  // Then convert back to a binary so can see if they match and print them out to compare
  std::string result_binary = aBitwiseOpsObject.convertDecimalToBinary(result);
  std::cout << a << std::endl;
  std::cout << result_binary << std::endl;
  std::cout << std::endl;
  
  
  
  // 2. Now make the opposite of b (0b11111111) look like a:
  std::string c = "0b11111111";
  
  // Turn c into an int
  int c_int = aBitwiseOpsObject.convertBinaryOctalOrHexToDecimal(c);
  
  // Perform an AND. AND will create a 1 only where the left and right operands have the same value
  int result2 = a_int & c_int;
  
  // Then convert back to a binary so can see if they match and print them out to compare
  std::string result_binary2 = aBitwiseOpsObject.convertDecimalToBinary(result2);
  std::cout << a << std::endl;
  std::cout << result_binary2 << std::endl;
  std::cout << std::endl;
  
  
  
  // 3. Now take a and create a string d that will create 0b11111111
  
  // Will use the OR operator which will create a 1 if either left or right operand has a 1.
  // Could theoretically use c to to do this, but to make the point clearer I will create a binary
  // with 1's in all of a's 0's places, and 0's in all of a's 1's places:
  std::string d = "0b11010011";
  
  // Turn d into an int, perform the OR operation, convert d back to a binary and then print them out to compare.
  int d_int = aBitwiseOpsObject.convertBinaryOctalOrHexToDecimal(d);
  int result3 = a_int | d_int;
  std::string result_binary3 = aBitwiseOpsObject.convertDecimalToBinary(result3);
  std::cout << result_binary3 << std::endl;
  std::cout << std::endl;
  
  
  
  // 4. Now take the digit 1 and multiply it by 3 powers of 2 to create 8
  
  // Will use bit shifting. For every bit shifted left, the value increases by a power of 2 unless it overflows.
  std::string e = "0b00000001";
  
  // Turn e into an int and shift it left 3 times.
  int f = aBitwiseOpsObject.convertBinaryOctalOrHexToDecimal(e) << 3;
  
  // Print out the value
  std::cout << f << std::endl;
  std::cout << std::endl;
  
  // Turn f back into the value of 1
  int g = f >> 3;
  
  // Print out the value
  std::cout << g << std::endl;
  std::cout << std::endl;
  
  
  @autoreleasepool {
      NSLog(@"Hello, World! from Objective-C!!");
  }
  return 0;
}
