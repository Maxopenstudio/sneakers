/*
Author: XamDesign
Date: 24.05.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xam_shoes_app/core/models/content/shoe_model.dart';

List<Shoe> shoeList = [
  Shoe(
    id: 1,
    stock: 12,
    sku: "DEF456",
    brand: "Adidas",
    model: "UltraBoost",
    colors: [Colors.pink, Colors.grey, Colors.lightGreen],
    gender: "Women's",
    retailPrice: 179.99,
    releaseYear: "2023",
    outerMaterial: "Primeknit",
    lining: "Textile",
    sole: "Continental Rubber",
    images: ["assets/images/adidas_shoe.png"],
    isFavorite: true.obs,
    isAddedToCartDone: false.obs,
  ),
  Shoe(
    id: 2,
    sku: "ABC123",
    brand: "Nike",
    model: "Air Max",
    colors: [Colors.teal, Colors.lightGreen, Colors.red],
    gender: "Unisex",
    retailPrice: 149.99,
    releaseYear: "2023",
    stock: 5,
    outerMaterial: "Mesh, Synthetic",
    lining: "Textile",
    sole: "Rubber",
    discountRate: 20,
    images: [
      "assets/images/nike_shoe.png",
      "assets/images/nike_shoe1.png",
    ],
    isFavorite: false.obs,
    isAddedToCartDone: false.obs,
  ),
  Shoe(
    id: 3,
    stock: 32,
    sku: "GHI789",
    brand: "Puma",
    model: "Future Rider",
    colors: [Colors.blue, Colors.yellow, Colors.teal],
    gender: "Men's",
    retailPrice: 99.99,
    releaseYear: "2023",
    outerMaterial: "Suede, Synthetic",
    lining: "Textile",
    sole: "Rubber",
    images: ["assets/images/puma_shoe.png", "assets/images/puma_shoe.png", "assets/images/puma_shoe.png"],
    isFavorite: false.obs,
    isAddedToCartDone: false.obs,
  ),
  Shoe(
    id: 4,
    stock: 3,
    sku: "JKL012",
    brand: "Reebok",
    model: "Classic Leather",
    colors: [Colors.lightGreen, Colors.blue, Colors.red],
    gender: "Unisex",
    retailPrice: 89.99,
    releaseYear: "2023",
    outerMaterial: "Leather",
    lining: "Textile",
    sole: "Rubber",
    discountRate: 35,
    images: ["assets/images/reebok_shoe.png"],
    isFavorite: false.obs,
    isAddedToCartDone: false.obs,
  ),
  Shoe(
    id: 5,
    stock: 6,
    sku: "MNO345",
    brand: "New Balance",
    model: "574",
    colors: [Colors.grey, Colors.orange, Colors.teal],
    gender: "Unisex",
    retailPrice: 109.99,
    releaseYear: "2023",
    outerMaterial: "Suede, Mesh",
    lining: "Textile",
    sole: "Rubber",
    images: ["assets/images/new_balance_shoe.png"],
    isFavorite: false.obs,
    isAddedToCartDone: false.obs,
  ),
  Shoe(
    id: 6,
    stock: 32,
    sku: "PQR678",
    brand: "Under Armour",
    model: "HOVR Phantom",
    colors: [Colors.teal, Colors.green, Colors.lightGreen],
    gender: "Men's",
    retailPrice: 129.99,
    releaseYear: "2023",
    outerMaterial: "Textile, Synthetic",
    lining: "Textile",
    sole: "Rubber",
    images: ["assets/images/under_armour_shoe.png"],
    isFavorite: false.obs,
    isAddedToCartDone: false.obs,
  ),
  Shoe(
    id: 7,
    stock: 2,
    sku: "STU901",
    brand: "ASICS",
    model: "Gel-Kayano 29",
    colors: [Colors.blue, Colors.grey, Colors.lightGreen],
    gender: "Unisex",
    retailPrice: 159.99,
    releaseYear: "2023",
    outerMaterial: "Mesh, Synthetic",
    lining: "Textile",
    sole: "Rubber",
    images: ["assets/images/asics_shoe.png"],
    isFavorite: false.obs,
    isAddedToCartDone: false.obs,
  ),
  Shoe(
    id: 8,
    stock: 1,
    sku: "VWX234",
    brand: "Vans",
    model: "Old Skool Pro",
    colors: [Colors.teal, Colors.lightGreen, Colors.grey],
    gender: "Unisex",
    retailPrice: 79.99,
    releaseYear: "2023",
    outerMaterial: "Canvas, Suede",
    lining: "Textile",
    sole: "Rubber",
    images: ["assets/images/vans_shoe.png"],
    isFavorite: false.obs,
    isAddedToCartDone: false.obs,
  ),
  Shoe(
    id: 9,
    stock: 23,
    sku: "YZA567",
    brand: "Converse",
    model: "Chuck Taylor",
    colors: [Colors.lightGreen, Colors.teal, Colors.red],
    gender: "Unisex",
    retailPrice: 59.99,
    releaseYear: "2023",
    outerMaterial: "Canvas",
    lining: "Textile",
    sole: "Rubber",
    images: ["assets/images/converse_shoe.png"],
    isFavorite: false.obs,
    isAddedToCartDone: false.obs,
  ),
  Shoe(
    id: 10,
    stock: 12,
    sku: "BCD890",
    brand: "Salomon",
    model: "Speedcross 5",
    colors: [Colors.teal, Colors.orange, Colors.grey],
    gender: "Unisex",
    retailPrice: 129.99,
    releaseYear: "2023",
    outerMaterial: "Mesh, Synthetic",
    lining: "Textile",
    sole: "Contagrip Rubber",
    images: ["assets/images/salomon_shoe.png"],
    isFavorite: false.obs,
    isAddedToCartDone: false.obs,
  ),
];
