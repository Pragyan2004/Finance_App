import 'package:finance_app/data/money.dart';

List<money> geter(){
  money upwork=money();
  upwork.name='upwork';
  upwork.fee= '650';
  upwork.time='today';
  upwork.image='up.jpeg';
  upwork.buy=false;

  money starbucks=money();
  starbucks.buy=true;
  starbucks.fee='25';
  starbucks.image='starbucks.jpeg';
  starbucks.name='startbucks';
  starbucks.time='today';

  money trasfer=money();
  trasfer.buy=true;
  trasfer.fee='100';
  trasfer.image='OIP.jpeg';
  trasfer.name='transfer for sam';
  trasfer.time='jan 25,2023';
  return[upwork,starbucks,trasfer];
}