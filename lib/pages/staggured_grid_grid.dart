import 'package:flutter/material.dart';
import 'package:flutter_application_1/products_pages/API_model.dart';
import 'package:flutter_application_1/controller/product/cubit/products_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class staggededr_view extends StatefulWidget {
  const staggededr_view({super.key});

  @override
  State<staggededr_view> createState() => _staggededr_viewState();
}

class _staggededr_viewState extends State<staggededr_view> {
  late ApiModel productmodelAPI;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductsCubit(),
      child: BlocConsumer<ProductsCubit, ProductsState>(
        listener: (context, state) {
          if (state is ProductsError) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text('Error: ${state.message}')));
          }
          if (state is ProductsSuccess) {
            productmodelAPI = state.productModelAPI;
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text(
                "products",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            drawer: Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  DrawerHeader(
                    decoration: BoxDecoration(color: Color(0xFFFEC500)),
                    child: Center(
                      child: Text(
                        'Categories',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.category_outlined),
                    title: Text('Beauty'),
                    onTap: () {
                      Navigator.pop(context);
                      context.read<ProductsCubit>().getProductsByCategory(
                        "beauty",
                      );
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.category_outlined),
                    title: Text('Fragrances'),
                    onTap: () {
                      Navigator.pop(context);
                      context.read<ProductsCubit>().getProductsByCategory(
                        "fragrances",
                      );
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.category_outlined),
                    title: Text('Furniture'),
                    onTap: () {
                      Navigator.pop(context);
                      context.read<ProductsCubit>().getProductsByCategory(
                        "furniture",
                      );
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.category_outlined),
                    title: Text('Groceries'),
                    onTap: () {
                      Navigator.pop(context);
                      context.read<ProductsCubit>().getProductsByCategory(
                        "groceries",
                      );
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.category_outlined),
                    title: Text('Home-decoration'),
                    onTap: () {
                      Navigator.pop(context);
                      context.read<ProductsCubit>().getProductsByCategory(
                        "home-decoration",
                      );
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.category_outlined),
                    title: Text('Kitchen-accessories'),
                    onTap: () {
                      Navigator.pop(context);
                      context.read<ProductsCubit>().getProductsByCategory(
                        "kitchen-accessories",
                      );
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.category_outlined),
                    title: Text('Laptops'),
                    onTap: () {
                      Navigator.pop(context);
                      context.read<ProductsCubit>().getProductsByCategory(
                        "laptops",
                      );
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.category_outlined),
                    title: Text('Mens-shirts'),
                    onTap: () {
                      Navigator.pop(context);
                      context.read<ProductsCubit>().getProductsByCategory(
                        "mens-shirts",
                      );
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.category_outlined),
                    title: Text('Mens-shoes'),
                    onTap: () {
                      Navigator.pop(context);
                      context.read<ProductsCubit>().getProductsByCategory(
                        "mens-shoes",
                      );
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.category_outlined),
                    title: Text('Mens-watches'),
                    onTap: () {
                      Navigator.pop(context);
                      context.read<ProductsCubit>().getProductsByCategory(
                        "mens-watches",
                      );
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.category_outlined),
                    title: Text('Motorcycle'),
                    onTap: () {
                      Navigator.pop(context);
                      context.read<ProductsCubit>().getProductsByCategory(
                        "motorcycle",
                      );
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.category_outlined),
                    title: Text('Mobile-accessories'),
                    onTap: () {
                      Navigator.pop(context);
                      context.read<ProductsCubit>().getProductsByCategory(
                        "mobile-accessories",
                      );
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.category_outlined),
                    title: Text('Skin-care'),
                    onTap: () {
                      Navigator.pop(context);
                      context.read<ProductsCubit>().getProductsByCategory(
                        "skin-care",
                      );
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.category_outlined),
                    title: Text('Smartphones'),
                    onTap: () {
                      Navigator.pop(context);
                      context.read<ProductsCubit>().getProductsByCategory(
                        "smartphones",
                      );
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.category_outlined),
                    title: Text('Sports-accessories'),
                    onTap: () {
                      Navigator.pop(context);
                      context.read<ProductsCubit>().getProductsByCategory(
                        "sports-accessories",
                      );
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.category_outlined),
                    title: Text('Sunglasses'),
                    onTap: () {
                      Navigator.pop(context);
                      context.read<ProductsCubit>().getProductsByCategory(
                        "sunglasses",
                      );
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.category_outlined),
                    title: Text('Tablets'),
                    onTap: () {
                      Navigator.pop(context);
                      context.read<ProductsCubit>().getProductsByCategory(
                        "tablets",
                      );
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.category_outlined),
                    title: Text('Womens-dresses'),
                    onTap: () {
                      Navigator.pop(context);
                      context.read<ProductsCubit>().getProductsByCategory(
                        "womens-dresses",
                      );
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.category_outlined),
                    title: Text('womens-jewellery'),
                    onTap: () {
                      Navigator.pop(context);
                      context.read<ProductsCubit>().getProductsByCategory(
                        "womens-jewellery",
                      );
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.category_outlined),
                    title: Text('womens-shoes'),
                    onTap: () {
                      Navigator.pop(context);
                      context.read<ProductsCubit>().getProductsByCategory(
                        "womens-shoes",
                      );
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.category_outlined),
                    title: Text('Womens-watches'),
                    onTap: () {
                      Navigator.pop(context);
                      context.read<ProductsCubit>().getProductsByCategory(
                        "womens-watches",
                      );
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.category_outlined),
                    title: Text('Tops'),
                    onTap: () {
                      Navigator.pop(context);
                      context.read<ProductsCubit>().getProductsByCategory(
                        "tops",
                      );
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.category_outlined),
                    title: Text('Vehicles'),
                    onTap: () {
                      Navigator.pop(context);
                      context.read<ProductsCubit>().getProductsByCategory(
                        "vehicles",
                      );
                    },
                  ),
                ],
              ),
            ),
            body: state is ProductsLoading
                ? Center(child: CircularProgressIndicator())
                : SingleChildScrollView(
                    child: StaggeredGrid.count(
                      mainAxisSpacing: 10,
                      crossAxisCount: 2,
                      children: [
                        for (
                          int i = 0;
                          i < productmodelAPI.products.length;
                          i++
                        )
                          StaggeredGridTile.fit(
                            crossAxisCellCount: 1,
                            child: Card(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.network(
                                    productmodelAPI.products[i].thumbnail ??
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRB64vSzXX5JoX6hdv-KdFbcM-3lp8T7xBX8Q&s",
                                  ),
                                  Text(
                                    productmodelAPI.products[i].title ??
                                        "PRODUCT",
                                  ),
                                  Text(
                                    '\$${productmodelAPI.products[i].price}',
                                  ),
                                ],
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
          );
        },
      ),
    );
  }
}
