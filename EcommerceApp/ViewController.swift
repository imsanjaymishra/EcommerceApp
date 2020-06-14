//
//  ViewController.swift
//  EcommerceApp
//
//  Created by Sanjay Mishra on 12/06/20.
//  Copyright © 2020 Sanjay Mishra. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tblProductList: UITableView!
    var productArray: [Product] = []
    var listOfProduct =  ListOfProduct()
    override func viewDidLoad() {
        super.viewDidLoad()
        productArray = listOfProduct.addProdcutsInToList()
        self.tblProductList.dataSource = self
        self.tblProductList.delegate = self
    }
}

extension ViewController {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "ProductsTableViewCell", for: indexPath) as? ProductsTableViewCell {
            cell.lblProductName.text = productArray[indexPath.row].productName
            cell.lblProductPrice.text = "\(productArray[indexPath.row].productPrice)"
            cell.btnAddToCart.isHidden = self.productArray[indexPath.row].isProductAddedToCart
            cell.callBackForAddToCart = {
                self.productArray[indexPath.row].isProductAddedToCart = true
                cell.btnAddToCart.isHidden = true
            }
            
            cell.lblProductCount.text = "\(productArray[indexPath.row].productCount)"
            cell.callBackForAddProdctInCart = {
                self.productArray[indexPath.row].productCount += 1
                cell.lblProductCount.text = "\(self.productArray[indexPath.row].productCount)"
            }
            
            cell.callBackForRemoveProductFromCart = {
                if self.productArray[indexPath.row].productCount > 1 {
                    self.productArray[indexPath.row].productCount -= 1
                    cell.lblProductCount.text = "\(self.productArray[indexPath.row].productCount)"
                } else {
                    self.productArray[indexPath.row].productCount = 0
                    cell.btnAddToCart.isHidden = false
                    cell.lblProductCount.text = "\(self.productArray[indexPath.row].productCount)"
                }
            }
            cell.selectionStyle = .none
            return cell
        }
      return UITableViewCell()
    }
}


