//
//  Alert.m
//  ios-test
//
//  Created by Juliano Silva on 06/01/17.
//  Copyright © 2017 Juliano Silva. All rights reserved.
//

#import "Alert.h"

@implementation Alert

+(UIAlertController *) withTitle:(NSString *)title message:(NSString *)message {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Sucesso!" message:@"Cadastro efetuado com sucesso!" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* ok = [UIAlertAction
                         actionWithTitle:@"OK"
                         style:UIAlertActionStyleDefault
                         handler:^(UIAlertAction * action)
                         {
                             [alert dismissViewControllerAnimated:YES completion:nil];
                             
                         }];
    [alert addAction:ok];
    
    return alert;
}
@end
