//
//  Product.swift
//  EcommerceApp
//
//  Created by Sanjay Mishra on 13/06/20.
//  Copyright © 2020 Sanjay Mishra. All rights reserved.
//

import Foundation


class Product {
    var productName: String
    var productPrice: Int
    var isProductAddedToCart: Bool
    var productCount: Int
    init(productName: String, productPrice: Int, isProductAddedToCart: Bool, productCount: Int) {
        self.productName = productName
        self.productPrice = productPrice
        self.isProductAddedToCart = isProductAddedToCart
        self.productCount = productCount
    }
}


class ListOfProduct {
    var productsArray: [Product] = []
    
    func addProdcutsInToList() -> [Product] {
        let car = Product(productName: "Car", productPrice: 4000, isProductAddedToCart: false, productCount: 0)
        let mobile = Product(productName: "Mobile", productPrice: 1000, isProductAddedToCart: false, productCount: 0)
        let bike = Product(productName: "Bike", productPrice: 2000, isProductAddedToCart: false, productCount: 0)
        let laptop = Product(productName: "Laptop", productPrice: 2500, isProductAddedToCart: false, productCount: 0)
        let charger = Product(productName: "Charger", productPrice: 100, isProductAddedToCart: false, productCount: 0)
        let book = Product(productName: "Book", productPrice: 50, isProductAddedToCart: false, productCount: 0)
        let pen = Product(productName: "Pen", productPrice: 10, isProductAddedToCart: false, productCount: 0)
        let pencil = Product(productName: "Pencil", productPrice: 30, isProductAddedToCart: false, productCount: 0)
        let bat = Product(productName: "Bat", productPrice: 100, isProductAddedToCart: false, productCount: 0)
        let ball = Product(productName: "Ball", productPrice: 80, isProductAddedToCart: false, productCount: 0)
        let mango = Product(productName: "Mango", productPrice: 20, isProductAddedToCart: false, productCount: 0)
        let banana = Product(productName: "Banana", productPrice: 30, isProductAddedToCart: false, productCount: 0)
        let potato = Product(productName: "Potato", productPrice: 60, isProductAddedToCart: false, productCount: 0)
        let tomato = Product(productName: "Tomato", productPrice: 90, isProductAddedToCart: false, productCount: 0)
        let rise =  Product(productName: "Rise", productPrice: 40, isProductAddedToCart: false, productCount: 0)
        let spoon = Product(productName: "Spoon", productPrice: 200, isProductAddedToCart: false, productCount: 0)
        let glass = Product(productName: "Glass", productPrice: 300, isProductAddedToCart: false, productCount: 0)
        let comb = Product(productName: "Comb", productPrice: 5, isProductAddedToCart: false, productCount: 0)
        productsArray.append(car)
        productsArray.append(mobile)
        productsArray.append(bike)
        productsArray.append(laptop)
        productsArray.append(laptop)
        productsArray.append(charger)
        productsArray.append(book)
        productsArray.append(pen)
        productsArray.append(pencil)
        productsArray.append(bat)
        productsArray.append(ball)
        productsArray.append(mango)
        productsArray.append(banana)
        productsArray.append(potato)
        productsArray.append(tomato)
        productsArray.append(rise)
        productsArray.append(spoon)
        productsArray.append(glass)
        productsArray.append(comb)
        return productsArray
    }
    
}
