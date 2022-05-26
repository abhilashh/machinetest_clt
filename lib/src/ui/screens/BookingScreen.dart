import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:machinetest/src/model/SeatModel.dart';
import 'package:machinetest/src/ui/widgets/CommonText.dart';



class BusBooking extends StatefulWidget {
  const BusBooking({Key? key}) : super(key: key);

  @override
  _BusseatsState createState() => _BusseatsState();
}

class _BusseatsState extends State<BusBooking> {
  List<SeatModel> seats =[];

  @override
  void initState() {
    for(int i = 0;i<10; i++){
      seats.add( SeatModel(i, SeatBook(false,1), SeatBook(false,1), SeatBook(false,0), SeatBook(false,1), SeatBook(false,1), SeatBook(false,1)));
    }
    super.initState();


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              SizedBox(height: 100.h,),
              Expanded(
                  child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: seats.length,
                      itemBuilder: (BuildContext context, int i){
                        return Container(
                          height: 30,
                          margin: EdgeInsets.all(5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                               seats[i].column1!.position ==1 ? Container(color: Colors.red,height: 30,width: 30,) : Container(color: Colors.white,height: 30,width: 30,),
                               seats[i].column2!.position ==1 ? Container(color: Colors.red,height: 30,width: 30,) : Container(color: Colors.white,height: 30,width: 30,),
                               seats[i].column3!.position ==1 ? Container(color: Colors.red,height: 30,width: 30,) : Container(color: Colors.white,height: 30,width: 30,),
                               seats[i].column4!.position ==1 ? Container(color: Colors.red,height: 30,width: 30,) : Container(color: Colors.white,height: 30,width: 30,),
                               seats[i].column5!.position ==1 ? Container(color: Colors.red,height: 30,width: 30,) : Container(color: Colors.white,height: 30,width: 30,),
                               seats[i].column6!.position ==1 ? Container(color: Colors.red,height: 30,width: 30,) : Container(color: Colors.white,height: 30,width: 30,),
                            ],
                          )
                        );

                  })
              ),

            ],
          ),
        ),
      )
    );
  }



  Widget reservedChair() {
    return Container(
      height: 40.0,
      width: 10.0,
      decoration: BoxDecoration(
          color: Color.fromRGBO(15, 15, 15, 0.24),
          borderRadius: BorderRadius.circular(3.0)),
    );
  }
}

