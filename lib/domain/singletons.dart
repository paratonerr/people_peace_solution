class Singleton {
  static final Singleton _singleton = Singleton._internal();
  String category;
  int index;

  factory Singleton() {
    return _singleton;
  }

  Singleton._internal();
}

 final singletons=Singleton();