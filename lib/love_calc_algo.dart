dynamic checkL(String firstName, String secondName) {
  String percentage = "";
  int sum1 = sumCalc(firstName);
  int sum2 = sumCalc(secondName);

  int totalSum = sum1 + sum2;
  totalSum = totalSum % 10;
  totalSum = totalSum * 10;
  percentage = "is " + totalSum.toString() + ' % true';
  return percentage;
}

int sumCalc(String s) {
  int sum = 0;
  for (int i = 0; i < s.length; i++) {
    sum = sum + s.codeUnitAt(i);
  }
  return sum;
}
