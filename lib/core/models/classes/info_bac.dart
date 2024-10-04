class BacInfo {
  List<String>bacInfo = [
    "Arabic",
    "French",
    "English",
    "Mathematics",
    "Physics",
    "Programming",
    "STI",
    "Philo",
    "Option",
    "Sport",
    "total",
  ];

  String calcMoyenne(ar, fr, eng, phy, math, prog, sti, opt, philo, sport, total){
    double moy = ((ar*1)+(fr*1)+(eng*1)+(sport*1)+(opt*1)+(philo*1)+(math*3)+(phy*3)+(prog*3)+(sti*3)) / total;
    return moy.toStringAsFixed(2);
  }
}
