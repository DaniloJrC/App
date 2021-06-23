//
//  ProdutosTableViewCell.swift
//  App
//
//  Created by Danilo Constâncio on 22/06/21.
//

import UIKit

class ProdutosTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nomeLabel: UILabel!
    @IBOutlet weak var valorLabel: UILabel!
    @IBOutlet weak var quantidadeLabel: UILabel!
    @IBOutlet weak var marcaLabel: UILabel!
    @IBOutlet weak var referenciaLabel: UILabel!
    @IBOutlet weak var descontoLabel: UILabel!
    @IBOutlet weak var promocaoLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    var produto : Produto? {
        didSet {
            updateUI()
        }
    }
    
    private func updateUI() {
        if let produto = produto {
            nomeLabel.text = produto.nome
            valorLabel.text = produto.valor
            quantidadeLabel.text = produto.quantidade
            marcaLabel.text = produto.marca
            referenciaLabel.text = produto.referencia
            descontoLabel.text = produto.desconto + " de desconto"
            promocaoLabel.text = produto.promocao
        }
    }
}
