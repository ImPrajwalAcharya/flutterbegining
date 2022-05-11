import 'package:flutter/material.dart';

Map menulist = {
  'Burger': 150,
  'Pizza': 150,
  'Tea': 150,
  'Icecream': 150,
  'Coffee': 150,
};

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        title: const Text("Menu"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (() {
            showDialog(
              context: context,
              builder: (_) {
                var itemnameController = TextEditingController();
                var priceController = TextEditingController();
                return AlertDialog(
                  title: Text('Edit Item'),
                  content: ListView(
                    shrinkWrap: true,
                    children: [
                      TextFormField(
                        controller: itemnameController,
                        decoration: InputDecoration(hintText: 'Add Item'),
                      ),
                      TextFormField(
                        controller: priceController,
                        decoration: InputDecoration(hintText: 'Price'),
                      ),
                    ],
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () {
                        // Send them to your email maybe?
                        var itemname = itemnameController.text;
                        var price = priceController.text;
                        if (itemname != null && price != null) {
                          setState(() {
                            menulist.putIfAbsent(itemname, () => price);
                          });
                        }
                        Navigator.pop(context);
                      },
                      child: Text('Save'),
                    ),
                  ],
                );
              },
            );
          })),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1, childAspectRatio: 5),
              itemCount: menulist.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                    color: Colors.primaries[7],

                    // ignore: unnecessary_new
                    child: new InkResponse(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(menulist.keys.elementAt(index),
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text(
                                menulist.values.elementAt(index).toString(),
                              ),
                            ],
                          ),
                        ],
                      ),
                      onTap: () {},
                      onDoubleTap: () {
                        showDialog(
                          context: context,
                          builder: (_) {
                            var itemnameController = TextEditingController();
                            var priceController = TextEditingController();
                            return AlertDialog(
                              title: Text('Edit Item'),
                              content: ListView(
                                shrinkWrap: true,
                                children: [
                                  TextFormField(
                                    controller: itemnameController,
                                    decoration: InputDecoration(
                                        hintText:
                                            '${menulist.keys.elementAt(index)}'),
                                  ),
                                  TextFormField(
                                    controller: priceController,
                                    decoration: InputDecoration(
                                        hintText:
                                            '${menulist.values.elementAt(index).toString()}'),
                                  ),
                                ],
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: Text('Cancel'),
                                ),
                                TextButton(
                                  onPressed: () {
                                    var itemname = itemnameController.text;
                                    var price = priceController.text;
                                    if (itemname != null && price != null) {
                                      setState(() {
                                        menulist.remove(
                                            menulist.keys.elementAt(index));
                                        menulist.putIfAbsent(
                                            itemname, () => price);
                                      });
                                    }
                                    Navigator.pop(context);
                                  },
                                  child: Text('Save'),
                                ),
                              ],
                            );
                          },
                        );
                      },
                    ));
              },
            ),
          ),
        ],
      ),
    );
  }
}
