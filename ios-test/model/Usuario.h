//
//  Usuario.h
//  ios-test
//
//  Created by Juliano Silva on 05/01/17.
//  Copyright © 2017 Juliano Silva. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CoreDataEntity.h"

@interface Usuario : CoreDataEntity

@property (strong, nonatomic) NSString *iD;
@property (strong, nonatomic) NSString *nome;
@property (strong, nonatomic) NSString *sobrenome;
@property (strong, nonatomic) NSString *nomeUsuario;
@property (strong, nonatomic) NSString *senha;
@property (strong, nonatomic) NSString *confirmarSenha;

@end
