import 'package:flutter/material.dart';
import '/statefullWidgets/Pusheddata.dart';

enum ProductTypeEnum { sale, rent }

class Loginform extends StatefulWidget {
  const Loginform({super.key});

  @override
  State<Loginform> createState() => _LoginformState();
}

class _LoginformState extends State<Loginform> {
  var productName;
  bool? _checkbox = false;
  bool? _checkbox1 = false;
  bool? _checkbox2 = false;
  bool? _checkbox3 = false;
  bool? _checkbox4 = false;
  ProductTypeEnum? _productTypeEnum;
  // String _SelectedVal = "small";
  final _productList = ["phones", "laptops", "headphones", "others"];

  // final _productController = TextEditingController();

  void _updateText(val) {
    setState(() {
      productName = val;
    });
  }

  @override
  // void initState() {
  //   super.initState();
  //   _productController.addListener(_onTextChanged);
  // }

  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
        backgroundColor: const Color.fromARGB(255, 255, 180, 59),
        elevation: 10.0,
        shape: const StadiumBorder(
          side: BorderSide(color: Colors.white),
        ),
      ),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        title: const Text(
          "MyApp",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.sunny),
            onPressed: () {},
          ),
        ],
        elevation: 0,
        titleSpacing: -10.0,
        backgroundColor: const Color.fromARGB(255, 192, 126, 69),
        foregroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
        ),
      ),

      // ---------- body ---------
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: ListView(
            children: [
              // -----------Title name here---------
              TextField(
                // controller: _productController,
                decoration: const InputDecoration(
                  hintText: 'Enter Title here... ',
                  // prefixIcon: Icon(Icons.insert_emoticon),
                  suffixIcon: Icon(Icons.insert_emoticon), // Add this line

                  border: OutlineInputBorder(),
                ),
                onChanged: (val) {
                  setState(() {
                    productName = val;
                  });
                },
              ),
              Text("You entered $productName"),

              // ---------- Checkboxes here ------------
              Row(
                children: [
                  Checkbox(
                    value: _checkbox,
                    onChanged: (val) {
                      setState(() {
                        _checkbox = val!;
                      });
                    },
                    checkColor: Color.fromARGB(255, 255, 255, 255),
                    activeColor: Color.fromARGB(255, 162, 111, 171),
                  ),
                  Text("Add Discount"),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 0.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 110, 110, 110),
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Checkbox(
                              value: _checkbox1,
                              onChanged: (val) {
                                setState(() {
                                  _checkbox1 = val!;
                                });
                              },
                              checkColor: Color.fromARGB(255, 255, 255, 255),
                              activeColor: Color.fromARGB(255, 162, 111, 171),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Text("box-1"),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Checkbox(
                              value: _checkbox2,
                              onChanged: (val) {
                                setState(() {
                                  _checkbox2 = val!;
                                });
                              },
                              checkColor: Color.fromARGB(255, 255, 255, 255),
                              activeColor: Color.fromARGB(255, 162, 111, 171),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Text("box-2"),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Checkbox(
                              value: _checkbox3,
                              onChanged: (val) {
                                setState(() {
                                  _checkbox3 = val!;
                                });
                              },
                              checkColor: Color.fromARGB(255, 255, 255, 255),
                              activeColor: Color.fromARGB(255, 162, 111, 171),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Text("box-3"),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Checkbox(
                              value: _checkbox4,
                              onChanged: (val) {
                                setState(() {
                                  _checkbox4 = val!;
                                });
                              },
                              checkColor: Color.fromARGB(255, 255, 255, 255),
                              activeColor: Color.fromARGB(255, 162, 111, 171),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Text("box-4"),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // ------------Radio Buttons here ------------

              // Row(
              //   children: [
              //     Radio<ProductTypeEnum>(
              //       value: ProductTypeEnum.sale,
              //       groupValue: _productTypeEnum,
              //       onChanged: (val) {
              //         setState(() {
              //           _productTypeEnum = val;
              //         });
              //       },
              //     ),
              //     const Text('Sale'),
              //     Radio<ProductTypeEnum>(
              //       value: ProductTypeEnum.rent,
              //       groupValue: _productTypeEnum,
              //       onChanged: (val) {
              //         setState(() {
              //           _productTypeEnum = val;
              //         });
              //       },
              //     ),
              //     const Text('Rent'),
              //   ],
              // ),

              //RadioListTile

              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color.fromARGB(255, 248, 220, 182),
                        ),
                        child: RadioListTile<ProductTypeEnum>(
                          contentPadding: EdgeInsets.all(0.0),
                          value: ProductTypeEnum.sale,
                          groupValue: _productTypeEnum,
                          dense: true,
                          onChanged: (val) {
                            setState(() {
                              _productTypeEnum = val;
                            });
                          },
                          title: Text(ProductTypeEnum.sale.name),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 5.0),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color.fromARGB(255, 248, 220, 182),
                        ),
                        child: RadioListTile<ProductTypeEnum>(
                          contentPadding: EdgeInsets.all(0.0),
                          value: ProductTypeEnum.rent,
                          groupValue: _productTypeEnum,
                          dense: true,
                          onChanged: (val) {
                            setState(() {
                              _productTypeEnum = val;
                            });
                          },
                          title: Text(ProductTypeEnum.rent.name),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              // -----DropDown here ----------

              DropdownButtonFormField(
                items: [
                  DropdownMenuItem(
                      child: Text('Select Category'),
                      value: null), 
                  ..._productList
                      .map((e) => DropdownMenuItem(child: Text(e), value: e))
                      .toList(),
                ],
                onChanged: (newValue) {
                  // Handle onChanged event
                },
              ),

              // ---------- Submit button here ----------------
              const SizedBox(height: 10.0),
              myBtn(context),
            ],
          ),
        ),
      ),

      bottomNavigationBar: const BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: Color.fromARGB(255, 255, 180, 59),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  Text(
                    "Home",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                  Text(
                    "Cart",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                  Text(
                    "Favorites",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  Text(
                    "Profile",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }

  OutlinedButton myBtn(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        minimumSize: const Size(200, 60),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5), // Adjust the radius as needed
        ),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Pusheddata(productName: productName),
          ),
        );
      },
      child: Text(
        "Submit".toUpperCase(),
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
