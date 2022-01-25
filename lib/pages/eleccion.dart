import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class eleccion extends StatelessWidget {
  static String id = "eleccion";
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var cardTextStyle = TextStyle(
      fontFamily: 'Monserrat Regular',
      fontSize: 15,
    );
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .3,
            decoration: BoxDecoration(
              image: DecorationImage(
                  alignment: Alignment.topCenter,
                  image: AssetImage('assets/images/top_header.png')),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 64,
                    margin: EdgeInsets.only(bottom: 30),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 32,
                          backgroundImage: NetworkImage(
                              'https://e7.pngegg.com/pngimages/832/44/png-clipart-advertising-service-blog-internet-avatar-woman-face-black-hair.png'),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Nombre: Lorena',
                              style: TextStyle(
                                  fontFamily: 'Monserrat Medium', fontSize: 20),
                            ),
                            Text('Perfil: Administrador',
                                style: TextStyle(
                                    fontFamily: 'Monserrat Medium',
                                    fontSize: 15)),
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      primary: false,
                      crossAxisCount: 2,
                      children: <Widget>[
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          elevation: 4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.network(
                                'https://png.pngtree.com/element_our/20200702/ourlarge/pngtree-color-cartoon-classification-gears-image_2281831.jpg',
                                height: 128,
                              ),
                              Text(
                                'Crear Experiencia',
                                style: cardTextStyle,
                              )
                            ],
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          elevation: 4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.network(
                                'https://png.pngtree.com/png-clipart/20190920/original/pngtree-cartoon-folder-free-illustration-png-image_4649359.jpg',
                                height: 100,
                              ),
                              Text('Registro de Experiencias',
                                  style: cardTextStyle,
                                  textAlign: TextAlign.center)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
