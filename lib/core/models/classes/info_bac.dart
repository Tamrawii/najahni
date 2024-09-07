class BacInfo {
  List<List<Object>> bacInfo = [
    ["Arabic", 1],
    ["French", 1],
    ["English", 1],
    ["Mathematics", 3],
    ["Physics", 3],
    ["Programming", 3],
    ["STI", 3],
    ["Philo", 1],
    ["Option", 1],
    ["Sport", 1],
    ["total", 18]
  ];

  String calcMoyenne(ar, fr, eng, phy, math, prog, sti, opt, philo, sport, total){
    double moy = ((ar*1)+(fr*1)+(eng*1)+(sport*1)+(opt*1)+(philo*1)+(math*3)+(phy*3)+(prog*3)+(sti*3)) / total;
    return moy.toStringAsFixed(2);
  }
}
