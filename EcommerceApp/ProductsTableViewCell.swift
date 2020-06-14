//
//  ProductsTableViewCell.swift
//  EcommerceApp
//
//  Created by Sanjay Mishra on 13/06/20.
//  Copyright © 2020 Sanjay Mishra. All rights reserved.
//

import UIKit

class ProductsTableViewCell: UITableViewCell {
    
    
    
    var callBackForAddToCart: (() -> ())?
    var callBackForAddProdctInCart: (() -> ())?
    var callBackForRemoveProductFromCart: (() -> ())?
    @IBOutlet weak var lblProductName: UILabel!
    @IBOutlet weak var lblProductPrice: UILabel!
    @IBOutlet weak var lblProductCount: UILabel!
    @IBOutlet weak var btnAddProduct: UIButton!
    @IBOutlet weak var btnRemoveProduct: UIButton!
    @IBOutlet weak var btnAddToCart: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    @IBAction func btnProductAddTapped(_ sender: UIButton) {
        self.callBackForAddProdctInCart?()
    }
    @IBAction func btnProductRemoveTapped(_ sender: UIButton) {
        callBackForRemoveProductFromCart?()
    }
    
    @IBAction func btnAddToCartTapped(_ sender: UIButton) {
        self.callBackForAddToCart?()
    }
}
