import 'dart:io';
import 'dart:math';

enum move {rock,paper,scissors}

movs(var x,y){
      print('The move you play: $x');
      print('Systems move: $y');}

void main (){
  while(true){
    print("---WELCOME TO THE GAME OF rock-paper-scissors---\n PLEASE SELECT ROCK-PAPER-SCİSSORS .");
    final input=stdin.readLineSync();
    
    var playerMove;
  

    if(input=='rock'){
      playerMove=move.rock;
    
    }
    else if(input=='paper'){
      playerMove=move.paper;
    }
    else if(input=="scissors"){
      playerMove=move.scissors;
    }
    else{
      print('İnvalid Move!!.Please Select rock-paper-scissors..');
    }
    final randomNumber=Random().nextInt(3);
    final SystemMove=move.values[randomNumber];
    var systemMove1=SystemMove.name;

   

    if(playerMove==move.rock && SystemMove==move.scissors || 
       playerMove==move.paper && SystemMove==move.rock ||
       playerMove==move.scissors && SystemMove==move.paper){
       movs(input,systemMove1);
        print("Congratulations you WON !!");
       }
       else if(playerMove==SystemMove){
               movs(input,systemMove1);

        print("DRAW ..");
        
       }
       else if(playerMove==move.scissors && SystemMove==move.rock ||
              playerMove==move.rock && SystemMove==move.paper ||
              playerMove==move.paper && SystemMove==move.scissors)
       {
               movs(input,systemMove1);

        print("You lost. :( ");
       }
       else {
        print('The move you play: $input');
        print("İnvalid Move!!.Please Select ROCK-PAPER-SCİSSORS... ");
        
       }
  


  }
}