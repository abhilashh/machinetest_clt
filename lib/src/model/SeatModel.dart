
class SeatModel {
  SeatBook? column1;
  SeatBook? column2;
  SeatBook? column3;
  SeatBook? column4;
  SeatBook? column5;
  SeatBook? column6;
  int? rowId;
  SeatModel(this.rowId,this.column1,this.column2,this.column3,this.column4,this.column5,this.column6);
  @override
  String toString() {
    return '{ ${this.column1},${this.column2},${this.column3},${this.column4},${this.column5},${this.column6}, ${this.rowId} }';
  }
}class SeatBook{
  bool? booked;
  int? position;
  SeatBook(this.booked,this.position);
}




