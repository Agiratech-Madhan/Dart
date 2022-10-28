mixin Agility {
  var speed = 10;
  void sitDown() {
    print('Sitting down');
  }
}

class Mammal {
  void breathe() {
    print('Breathe in ... breathe out ...');
  }
}

class Person extends Mammal with Agility {
  String name;
  int age;
  Person(this.name, this.age);
}

void main() {
  final pers = Person('Max ', 30);
  print(pers.name);
  pers.breathe();
  print(pers.speed);
  pers.sitDown();
}
/**import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'product.dart';

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
      id: 'p1',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),
    Product(
      id: 'p2',
      title: 'Trousers',
      description: 'A nice pair of trousers.',
      price: 59.99,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Trousers%2C_dress_%28AM_1960.022-8%29.jpg/512px-Trousers%2C_dress_%28AM_1960.022-8%29.jpg',
    ),
    Product(
      id: 'p3',
      title: 'Yellow Scarf',
      description: 'Warm and cozy - exactly what you need for the winter.',
      price: 19.99,
      imageUrl:
          'https://live.staticflickr.com/4043/4438260868_cc79b3369d_z.jpg',
    ),
    Product(
      id: 'p4',
      title: 'A Pan',
      description: 'Prepare any meal you want.',
      price: 49.99,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Cast-Iron-Pan.jpg/1024px-Cast-Iron-Pan.jpg',
    ),
  ];

  // var _showOnlyFav = false;

  List<Product> get items {
    // if (_showOnlyFav) {
    //   return _items.where((element) => element.isFavorite).toList();
    // }
    return [..._items];
  }

  Product findById(String id) {
    return _items.firstWhere((element) => element.id == id);
  }

  void addProduct(Product product_) {
    final newProduct = Product(
        id: DateTime.now().toString(),
        title: product_.title,
        description: product_.description,
        price: product_.price,
        imageUrl: product_.imageUrl);
    _items.add(newProduct);
    //_items.insert(0,newProduct);
    print('add item is called');
    notifyListeners();
  }

  void updateProduct(String id, Product newProduct) {
    final profIndex = _items.indexWhere((element) => element.id == id);
    if (profIndex >= 0) {
      _items[profIndex] = newProduct;
      notifyListeners();
    } else {
      print('...');
    }
  }

  List<Product> get favorites {
    return _items.where((productItems) => productItems.isFavorite).toList();
  }
  // void shoFav() {
  //   _showOnlyFav = true;
  //      notifyListeners();
  // }

  // void showAll() {
  //   _showOnlyFav = false;
  //   notifyListeners();
  // }
  // notifyListeners();
  void deleteProduct_(String id) {
    _items.removeWhere((element) => element.id == id);
    notifyListeners();
  }
}
 */
/**
 * import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopapp/providers/product_provider.dart';
import '../providers/product.dart';

class EditProductScreen extends StatefulWidget {
  static const routeName = '/edit-product';

  @override
  State<EditProductScreen> createState() => _EditProductScreenState();
}

class _EditProductScreenState extends State<EditProductScreen> {
  final _priceFocusNode = FocusNode();
  final _descriptionFocusNode = FocusNode();
  final _imgUrlController = TextEditingController();
  final _imgUrlFocusnode = FocusNode();
  final _form = GlobalKey<FormState>();
  var _editedProduct =
      Product(id: '', title: '', description: '', price: 0, imageUrl: '');
  var _initValue = {
    'title': '',
    'description': '',
    'price': '',
    'imageUrl': ''
  };
  var _isInit = true;

  @override
  void initState() {
    // TODO: implement initState
    _imgUrlFocusnode.addListener(_updateImgUrl);
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    if (_isInit) {
      final productId = ModalRoute.of(context)!.settings.arguments as String;
      print('productId$productId');

      if (productId.isNotEmpty) {
        _editedProduct =
            Provider.of<Products>(context, listen: false).findById(productId);
        _initValue = {
          'title': _editedProduct.title,
          'price': _editedProduct.price.toString(),
          'description': _editedProduct.description,
          // 'imageUrl':_editedProduct.imageUrl
          'imageUrl': ''
        };
        _imgUrlController.text = _editedProduct.imageUrl;
      }
    }

    _isInit = false;
    super.didChangeDependencies();
  }

  void _updateImgUrl() {
    if (!_imgUrlFocusnode.hasFocus) {
      setState(() {});
      if ((!_imgUrlController.text.startsWith('http') &&
              !_imgUrlController.text.startsWith('htpps')) ||
          (!_imgUrlController.text.endsWith('.png') &&
              !_imgUrlController.text.endsWith('.jpg') &&
              !_imgUrlController.text.endsWith('.jpeg'))) {
        return;
      }
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _imgUrlFocusnode.removeListener(_updateImgUrl);
    _priceFocusNode.dispose();
    _descriptionFocusNode.dispose();
    _imgUrlController.dispose();
    _imgUrlFocusnode.dispose();
    super.dispose();
  }

  void _saveForm() {
    final isValid = _form.currentState!.validate();
    if (!isValid) {
      return; // it terminates the this function , print statemwnts wont work
    }
    _form.currentState!.save();

    if (_editedProduct.id != null) {
      Provider.of<Products>(context, listen: false)
          .updateProduct(_editedProduct.id, _editedProduct);
    } else {
      Provider.of<Products>(context, listen: false).addProduct(_editedProduct);
    }
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit product'),
        actions: [IconButton(onPressed: _saveForm, icon: Icon(Icons.save))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
            key: _form,
            child: ListView(
              children: [
                TextFormField(
                  initialValue: _initValue['title'],
                  decoration: InputDecoration(labelText: 'Title'),
                  textInputAction: TextInputAction.next,
                  onFieldSubmitted: (_) {
                    FocusScope.of(context).requestFocus(_priceFocusNode);
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'please enter value';
                    }
                    return null;
                  },
                  onSaved: (newValue) {
                    _editedProduct = Product(
                        title: newValue!,
                        description: _editedProduct.description,
                        price: _editedProduct.price,
                        imageUrl: _editedProduct.imageUrl,
                        id: _editedProduct.id,
                        isFavorite: _editedProduct.isFavorite);
                  },
                ),
                TextFormField(
                    initialValue: _initValue['price'],
                    decoration: InputDecoration(labelText: 'Price'),
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.number,
                    focusNode: _priceFocusNode,
                    onFieldSubmitted: (_) {
                      FocusScope.of(context)
                          .requestFocus(_descriptionFocusNode);
                    },
                    onSaved: (newprice) {
                      _editedProduct = Product(
                          id: _editedProduct.id,
                          isFavorite: _editedProduct.isFavorite,
                          title: _editedProduct.title,
                          description: _editedProduct.description,
                          price: double.parse(newprice!),
                          imageUrl: _editedProduct.imageUrl);
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter a price. ';
                      }
                      if (double.tryParse(value) == null) {
                        return 'Please enter a valid number. ';
                      }
                      if (double.parse(value) <= 0) {
                        return 'Please enter a number greater than zero. ';
                      }
                      return null;
                    }),
                TextFormField(
                  initialValue: _initValue['description'],
                  decoration: InputDecoration(labelText: 'Description'),
                  maxLines: 3,
                  minLines: 1,
                  keyboardType: TextInputType.multiline,
                  // textInputAction: TextInputAction.next,
                  // onFieldSubmitted: (_) {
                  //   FocusScope.of(context).requestFocus(_priceFocusNode);
                  // },
                  focusNode: _descriptionFocusNode,
                  onSaved: (newDescription) {
                    _editedProduct = Product(
                        id: _editedProduct.id,
                        isFavorite: _editedProduct.isFavorite,
                        title: _editedProduct.title,
                        description: newDescription!,
                        price: _editedProduct.price,
                        imageUrl: _editedProduct.imageUrl);
                  },
                  validator: ((value) {
                    if (value!.isEmpty) {
                      return 'enter value';
                    }
                    if (value.length < 5) {
                      return 'enter atleast 20 char long';
                    }
                    return null;
                  }),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.only(top: 8, right: 10),
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.grey),
                      ),
                      child: _imgUrlController.text.isEmpty
                          ? Text('Enter a URL')
                          : FittedBox(
                              child: Image.network(
                                  (_imgUrlController.text).toString(),
                                  fit: BoxFit.cover),
                            ),
                    ),
                    Expanded(
                      child: TextFormField(
                        // initialValue: _initValue['imageUrl '],
                        textInputAction: TextInputAction.done,
                        keyboardType: TextInputType.url,
                        controller: _imgUrlController,
                        focusNode: _imgUrlFocusnode,
                        onFieldSubmitted: ((_) => _saveForm()),
                        onSaved: (newImage) {
                          _editedProduct = Product(
                              id: _editedProduct.id,
                              isFavorite: _editedProduct.isFavorite,
                              title: _editedProduct.title,
                              description: _editedProduct.description,
                              price: _editedProduct.price,
                              imageUrl: newImage!);
                        },
                        decoration: InputDecoration(
                          labelText: 'Img URL',
                        ),
                        validator: ((value) {
                          return null;
                        }),
                      ),
                    )
                  ],
                )
              ],
            )),
      ),
    );
  }
}

 */
/**
 * import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopapp/screens/edit_product_screen.dart';
import 'package:shopapp/widgets/user_product_item.dart';
// import 'package:provider/single_child_widget.dart';
// import '../providers/product.dart';
import '../providers/product_provider.dart';
import '../widgets/app_drawer.dart';

class UserProductsScreen extends StatelessWidget {
  static const routeName = '/user-products';
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Product'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(EditProductScreen.routeName);
              },
              icon: const Icon(Icons.add))
        ],
      ),
      drawer: AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: ListView.builder(
            itemCount: productsData.items.length,
            itemBuilder: (context, i) => Column(
                  children: [
                    UserProductItem(
                        id: productsData.items[i].id,
                        title: productsData.items[i].title,
                        imgUrl: productsData.items[i].imageUrl),
                    Divider()
                  ],
                )),
      ),
    );
  }
}

 */
/**
 * // ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:shopapp/screens/edit_product_screen.dart';
import 'package:provider/provider.dart';
import 'package:shopapp/providers/product_provider.dart';

class UserProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imgUrl;
  const UserProductItem({
    Key? key,
    required this.id,
    required this.title,
    required this.imgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imgUrl),
      ),
      trailing: Container(
        width: MediaQuery.of(context).size.width * 0.27,
        child: Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamed(EditProductScreen.routeName, arguments: id);
              },
              icon: Icon(Icons.edit),
              color: Theme.of(context).colorScheme.secondary,
            ),
            IconButton(
              onPressed: () {
                Provider.of<Products>(context, listen: false)
                    .deleteProduct_(id);
              },
              icon: Icon(Icons.delete),
              color: Theme.of(context).errorColor,
            ),
          ],
        ),
      ),
    );
  }
}

 */