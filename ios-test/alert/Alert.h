//
//  Alert.h
//  ios-test
//
//  Created by Juliano Silva on 06/01/17.
//  Copyright © 2017 Juliano Silva. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Alert : NSObject

+(UIAlertController *) withTitle:(NSString *)title message:(NSString *)message;

@end
