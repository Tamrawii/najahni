class BacSciences {
  List<String> bacSciences = [
    "Arabic"
    "French"
    "English"
    "Mathematics"
    "Physics"
    "Science" /*"Life and Earth Sciences"*/
    "Computer science" /*Informatics*/
    "Philo"
    "Option"
    "Sport"
    "total",
  ];

  String calcMoyenne(ar, fr, eng, math, phy, sci, cs, philo, opt, sport, total){
    double moy = ((ar*1)+(fr*1)+(eng*1)+(cs*1)+(philo*1)+(opt*1)+(sport*1)+(math*3)+(phy*4)+(sci*4)) / total;
    return moy.toStringAsFixed(2);
  }
}
