//
//  UsuarioTest.m
//  ios-test
//
//  Created by Juliano Silva on 05/01/17.
//  Copyright © 2017 Juliano Silva. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Usuario.h"

@interface UsuarioTest : XCTestCase

@end

@implementation UsuarioTest

- (void)setUp {
    [super setUp];
    
    
    self.continueAfterFailure = NO;
    
    NSArray *usuarios = [Usuario getAll];
    for (Usuario * usuario in usuarios) {
        [usuario remove];
    }
}

- (void)tearDown {
    [super tearDown];
}

- (void)testDeveSalvarUmUsuario {
    Usuario * usuario = [[Usuario alloc] create];
    usuario.nome = @"Joao";
    usuario.sobrenome = @"Silva";
    usuario.nomeUsuario = @"joaosilva";
    usuario.senha = @"123456";
    usuario.confirmarSenha = @"123456";
    [usuario save];
    
    NSArray *usuarios = [Usuario getAll];
    XCTAssertEqual(1, [usuarios count]);
    
    Usuario *u = [usuarios firstObject];
    XCTAssertEqual(usuario.nome, u.nome);
    XCTAssertEqual(usuario.sobrenome, u.sobrenome);
    XCTAssertEqual(usuario.nomeUsuario, u.nomeUsuario);
    XCTAssertEqual(usuario.senha, u.senha);
}

@end
