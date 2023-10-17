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
  
  
  @autoreleasepool {
      NSLog(@"Hello, World! from Objective-C!!");
  }
  return 0;
}
