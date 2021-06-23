//
//  Produto.swift
//  App
//
//  Created by Danilo Constâncio on 22/06/21.
//

import Foundation

struct Produto {
    let nome: String
    let valor: String
    let quantidade: String
    let marca: String
    let referencia: String
    let desconto: String
    let promocao: String
    
    init(nome: String, valor: String, quantidade: String, marca: String, referencia: String, desconto: String, promocao: String) {
        self.nome = nome
        self.valor = valor
        self.quantidade = quantidade
        self.marca = marca
        self.referencia = referencia
        self.desconto = desconto
        self.promocao = promocao
    }
}

extension Produto {
    
    static func produtos() -> [Produto] {
        return[
            Produto(nome: "Coca cola 350ml", valor: "R$5,00", quantidade: "15", marca: "Coca Cola", referencia: "7894900010015", desconto: "5%", promocao: "Leve 5 pague 4"),
            Produto(nome: "Arroz Vasconcelos 5kg", valor: "R$27,90", quantidade: "20", marca: "Vasconcelos", referencia: "7896550750020", desconto: "15%", promocao: "Leve 10 pague 9"),
            Produto(nome: "Sabão em pó OMO 1kg", valor: "R$16,99", quantidade: "5", marca: "Omo", referencia: "7891150032729", desconto: "8%", promocao: "Leve 5 pague 4"),
            Produto(nome: "Cerveja Heineken 330ml", valor: "R$5,60", quantidade: "30", marca: "Heineken", referencia: "78906938", desconto: "3%", promocao: "Leve 10 pague 9"),
            Produto(nome: "Detergente Ypê 500ml", valor: "R$2,99", quantidade: "30", marca: "Ypê", referencia: "7896098900208", desconto: "1%", promocao: "Leve 10 pague 9"),
            Produto(nome: "Sabonete Dove 90g", valor: "R$4,50", quantidade: "20", marca: "Dove", referencia: "7898422746759", desconto: "5%", promocao: "Leve 10 pague 9")
        ]
    }
}
