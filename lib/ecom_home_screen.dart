import "package:flutter/material.dart";

class EComHomeScreen extends StatefulWidget {
  @override
  State<EComHomeScreen> createState() => _EComHomeScreenState();
}

class _EComHomeScreenState extends State<EComHomeScreen> {
  // ecommerce Categories dummy data
  List<String> categories = [
    'Fashion',
    'Electronics',
    'Furniture',
    'Utensil',
    'Games'
  ];

  // ecommerce Product dummy data
  List<Map<String, dynamic>> products = [
    {'name': 'Nike Shirt', 'price': '100', 'image': 'assets/images/shirt.png'},
    {'name': 'Teckno ', 'price': '100', 'image': 'assets/images/android.png'},
    {
      'name': 'Adidas Shirt',
      'price': '100',
      'image': 'assets/images/dream_shirt.png'
    },
    {
      'name': 'Oroma Cutleries',
      'price': '100',
      'image': 'assets/images/cutlery.png'
    },
    {'name': 'Gucci Sofa', 'price': '100', 'image': 'assets/images/sofa.png'},
    {'name': 'Iphone Xr', 'price': '100', 'image': 'assets/images/iphone.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Joe Store'),
        leading: const Icon(
          Icons.search,
          color: Colors.white,
          size: 24,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Icon(
              Icons.shopping_cart,
              color: Colors.white,
              size: 24,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          // categories Section
          Container(
            height: 100,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: ListView.builder(
                itemCount: categories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Chip(
                      label: Text(categories[index]),
                    ),
                  );
                },
              ),
            ),
          ),

          // product section
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
              ),
              itemCount: products.length,
              itemBuilder: (context, index) {
                return (Card(
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage(
                          products[index]['image'],
                        ),
                        width: 130,
                      ),
                      Text(products[index]['name']),

                      Text(products[index]['price']),
                      OutlinedButton(
                        onPressed: () {},
                        child: const Text(
                          'Add to Cart',
                          style: TextStyle(color: Colors.orange),
                        ),
                      )
                    ],
                  ),
                ));
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Account',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
