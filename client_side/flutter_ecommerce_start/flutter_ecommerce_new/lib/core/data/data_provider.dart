import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' hide Category;
import '../../../models/category.dart';
import '../../models/brand.dart';
import '../../models/order.dart';
import '../../models/poster.dart';
import '../../models/product.dart';
import '../../models/sub_category.dart';
import '../../services/http_services.dart';

class DataProvider extends ChangeNotifier {
  HttpService service = HttpService();

  final List<Category> _allCategories = [];
  final List<Category> _filteredCategories = [];
  List<Category> get categories => _filteredCategories;

  final List<SubCategory> _allSubCategories = [];
  final List<SubCategory> _filteredSubCategories = [];

  List<SubCategory> get subCategories => _filteredSubCategories;

  final List<Brand> _allBrands = [];
  final List<Brand> _filteredBrands = [];
  List<Brand> get brands => _filteredBrands;

  final List<Product> _allProducts = [];
  final List<Product> _filteredProducts = [];
  List<Product> get products => _filteredProducts;
  List<Product> get allProducts => _allProducts;

  final List<Poster> _allPosters = [];
  final List<Poster> _filteredPosters = [];
  List<Poster> get posters => _filteredPosters;

  final List<Order> _allOrders = [];
  final List<Order> _filteredOrders = [];
  List<Order> get orders => _filteredOrders;

  DataProvider() {
    //TODO: should call the method here to load data initially
  }

  //TODO: should complete getAllCategory

  //TODO: should complete filterCategories

  //TODO: should complete getAllSubCategory

  //TODO: should complete filterSubCategories

  //TODO: should complete getAllBrands

  //TODO: should complete filterBrands

  //TODO: should complete getAllProduct

  //TODO: should complete filterProducts

  //TODO: should complete getAllPosters

  //TODO: should complete getAllOrderByUser

  double calculateDiscountPercentage(num originalPrice, num? discountedPrice) {
    if (originalPrice <= 0) {
      throw ArgumentError('Original price must be greater than zero.');
    }

    //? Ensure discountedPrice is not null; if it is, default to the original price (no discount)
    num finalDiscountedPrice = discountedPrice ?? originalPrice;

    if (finalDiscountedPrice > originalPrice) {
      return originalPrice.toDouble();
    }

    double discount =
        ((originalPrice - finalDiscountedPrice) / originalPrice) * 100;

    //? Return the discount percentage as an integer
    return discount;
  }
}
