import 'package:flutter/material.dart';
import 'package:machinetest/src/ui/widgets/CommonButton.dart';
import 'package:machinetest/src/ui/widgets/CommonCard.dart';
import 'package:machinetest/src/ui/widgets/CommonText.dart';

import '../../common/NavRoutes.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Image.asset('assets/title.png', fit: BoxFit.cover),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: CommonCard() //Container
              ),
              Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: CommonCard() //Container
              ), //Fl//Flexible
            ],
          ),
          CommonText(texts: '21 buses Found',),

          Expanded(
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: 10,
                itemBuilder: (BuildContext context,int index){
              return GestureDetector(
                child: Container(
                  height: 100,

                  child:  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(10.0),
                          top: Radius.circular(10.0)),
                    ),
                    child: ListTile(
                      leading: Icon(Icons.ice_skating),
                      title: Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CommonText(texts: "yyyyyyy"),
                          CommonText(texts: 'ooooo'),
                        ],
                      ),
                      trailing:TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.red,
                          // primary: Colors.pink,
                        ),
                        child: Text('dd'),
                        onPressed: (){
                          NavRoutes.navUntilBookPage(context);
                        },
                      ),
                    ),
                  ),
                ),
                onTap: (){
                  // NavRoutes.navDeatailsPage(context,homeModel: homemodel[index]);
                },
              );
            }),
          )
        ],
      ),

    );
  }
}

