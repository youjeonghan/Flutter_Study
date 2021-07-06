void main() {
  var isLoggedIn = true;
  var userName = "Max";
  var password = "testers";
  var hasCorrectCredentials = userName == "Max" && password == "tester";
  var age = 20;

  if (userName == "Max" && (password == "testers" || age > 20)) {
    print("Loged in!");
  } else if (isLoggedIn) {
    print("Loged Overruled!");
  } else {
    print("Faild!");
  }
}
