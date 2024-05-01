import 'package:flutter/material.dart';
import 'package:meza/tab_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Refaccionaria Meza",
            style: TextStyle(fontSize: 16),
          ),
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(40),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(18)),
              child: Container(
                height: 40,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  color: Color(0xffe6c8c8),
                ),
                child: const TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  dividerColor: Colors.transparent,
                  indicator: BoxDecoration(
                    color: Color(0xffd70000),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black54,
                  tabs: [
                    TabItem(title: 'Turbos', count: 6),
                    TabItem(title: 'Bobinas', count: 3),
                    TabItem(title: 'Frenos', count: 1),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: const TabBarView(children: [
          Center(
            child: SizedBox(
              width: 380,
              height: 400,
              child: Card(
                color: Color(0xffb44646),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text(
                        "Turbo",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Image(
                              image: NetworkImage(
                                  'https://raw.githubusercontent.com/JorgeMeza123/img_flutterflow_IOS_6J/main/Act12NavBar_Flutterflow/turbo.jpg'),
                              height: 140,
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 10,
                        height: 25,
                      ),
                      Icon(Icons.arrow_circle_right),
                      Text('Turbp'),
                      Text('Alta Presion'),
                      Text('Proveedor: USATEC'),
                      Text('Marca: BOSCH'),
                      Text('Existencia: 15'),
                      Text('Garantia: 1 año'),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: SizedBox(
              width: 380,
              height: 400,
              child: Card(
                color: Color(0xffb44646),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text(
                        "Bobinas",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Image(
                              image: NetworkImage(
                                  'https://raw.githubusercontent.com/JorgeMeza123/img_flutterflow_IOS_6J/main/Act12NavBar_Flutterflow/bobinas.jpg'),
                              height: 140,
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 10,
                        height: 25,
                      ),
                      Icon(Icons.arrow_circle_right),
                      Text('Bobinas'),
                      Text('Almacenado de energia'),
                      Text('Proveedor: USATEC'),
                      Text('Marca: BOSCH'),
                      Text('Existencia: 15'),
                      Text('Garantia: 1 año'),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: SizedBox(
              width: 380,
              height: 400,
              child: Card(
                color: Color(0xffb44646),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text(
                        "Frenos",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Image(
                              image: NetworkImage(
                                  'https://raw.githubusercontent.com/JorgeMeza123/img_flutterflow_IOS_6J/main/Act12NavBar_Flutterflow/frenos.jpg'),
                              height: 140,
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 10,
                        height: 25,
                      ),
                      Icon(Icons.arrow_circle_right),
                      Text('Frenos'),
                      Text('Discos Carbonoceramicos'),
                      Text('Proveedor: USATEC'),
                      Text('Marca: BOSCH'),
                      Text('Existencia: 15'),
                      Text('Garantia: 1 año'),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
