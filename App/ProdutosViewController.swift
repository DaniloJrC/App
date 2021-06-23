//
//  ViewController.swift
//  App
//
//  Created by Danilo Constâncio on 22/06/21.
//

import UIKit

class ProdutosViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    private var produtos : [Produto] = Produto.produtos()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.reloadData()
    }
}

extension ProdutosViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return produtos.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 160
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "produto", for: indexPath) as? ProdutosTableViewCell {
            cell.produto = produtos[indexPath.row]
            return cell
        }
        
        return UITableViewCell()
    }
}

