//
//  ViewController.m
//  ios-test
//
//  Created by Juliano Silva on 05/01/17.
//  Copyright © 2017 Juliano Silva. All rights reserved.
//

#import "ViewController.h"
#import "Alert.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)cadastrar:(id)sender {
    UIAlertController *alert = [Alert withTitle:@"Sucesso!" message:@"Cadastro efetuado com sucesso!"];
    [self presentViewController:alert animated:YES completion:nil];
}


@end
