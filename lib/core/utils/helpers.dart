import 'package:flutter/material.dart';

MaterialAccentColor returnColor(moyenne, goal){
  if(10 <= (goal - moyenne)){
    return Colors.redAccent;
  }else if(5 <= (goal - moyenne) && (goal - moyenne) < 10){
    return Colors.yellowAccent;
  }else{
    return Colors.greenAccent;
  }
}

List<MaterialAccentColor> doubleValue(moyenne, goal){
  return [returnColor(moyenne, goal),returnColor(moyenne, goal)];
}

List<MaterialAccentColor> generateProgressColors(trim1, trim2, trim3, goal){
  return [if(trim1 != null) ...doubleValue(trim1, goal),if(trim2 != null) ...doubleValue(trim2, goal), if(trim3 != null) ...doubleValue(trim3, goal)];
}

double progressValue(trim1, trim2, trim3){
  double value = 0;
  if(trim1 != null){
     value += 33;
     if(trim2 != null){
      value += 33;
      if(trim3 != null){
        value += 33;
      }
     }
  }
  return value;
}
