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
  
  aBitwiseOpsObject.convertBinaryOctalOrHexToDecimal("012");
  
  aBitwiseOpsObject.convertBinaryOctalOrHexToDecimal("0xfe");
  
  aBitwiseOpsObject.convertBinaryOctalOrHexToDecimal("0b1001");
  
  
  @autoreleasepool {
      NSLog(@"Hello, World! from Objective-C!!");
  }
  return 0;
}
