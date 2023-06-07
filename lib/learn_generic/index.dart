class Box<T>{
   final T _value;
   Box(this._value);
   T get value => _value;
}



// class BoxString{
//   final String _value;
//   BoxString(this._value);
//   String get value => _value;
// }
//
// class BoxInt{
//   final int _value;
//   BoxInt(this._value);
//   int get value => _value;
// }

void main(){
  // BoxString b1= BoxString("Zahra");
  // BoxInt b2= BoxInt(123);

  Box<String> b1= Box("String");
  Box<int> b2= Box(123);
  Box<bool> b3= Box(true);

  print(b1.value);
  print(b2.value);
}











