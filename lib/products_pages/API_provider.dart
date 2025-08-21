import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:flutter_application_1/products_pages/API_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApiProvider {
  static const String baseUrl = 'https://dummyjson.com';
  late ApiModel productmodelAPI;

  Future getProducts() async {
    final response = await Dio().get(
      '$baseUrl/products',
      queryParameters: {
        'select': 'id,title,description,category,price,thumbnail',
      },
    );

    if (response.statusCode == 200) {
      productmodelAPI = ApiModel.fromJson(response.data);
      return productmodelAPI;
    } else {
      throw Exception('Failed to load products');
    }
  }

  Future getProductsByCategory(String category) async {
    final response = await Dio().get(
      '$baseUrl/products/category/$category',
      queryParameters: {
        'select': 'id,title,description,category,price,thumbnail',
      },
    );

    if (response.statusCode == 200) {
      productmodelAPI = ApiModel.fromJson(response.data);
      return productmodelAPI;
    } else {
      throw Exception('Failed to load products');
    }
  }

  Future<bool> getLoginStatus() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool('isLoggedIn') ?? false;
  }

  Future<void> saveLoginStatus(bool status) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLoggedIn', status);
  }

  Future<bool> signin(String email, String password) async {
    try {
      final response = await FirebaseFirestore.instance
          .collection('users')
          .doc(email)
          .get();

      if (response.exists && response.data()!['password'] == password) {
        await saveLoginStatus(true);
        return true;
      } else {
        return false;
      }
    } catch (e) {
      throw Exception('Sign in failed: $e');
    }
  }

  Future<bool> signup(String email, String password) async {
    try {
      await FirebaseFirestore.instance.collection('users').doc(email).set({
        'email': email,
        'password': password,
      });

      await saveLoginStatus(true);
      return true;
    } catch (e) {
      throw Exception('Sign up failed: $e');
    }
  }
}
