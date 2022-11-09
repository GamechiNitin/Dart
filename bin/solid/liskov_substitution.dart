class ShapeLiskov {
  num? width;
  num? height;
}

// --- Here we are extending Shape which has inherit property
class SquareLiskov extends ShapeLiskov {
  // num? _width;
  // num? _height;

  // get width => _width;
  // get height => _height;

  // void setWidth(num value) {
  //   this._height = value;
  //   this._width = value;
  // }

  // void setHeight(num value) {
  //   this._height = value;
  //   this._width = value;
  // }
  // @override
  // void area() {
  //   var sum = (4 * length);
  //   print("Area of Square => $sum");
  // }
}

class RectangleLiskov extends ShapeLiskov {
  // num? _width;
  // num? _height;

  // get width => _width;
  // get height => _height;

  // void setWidth(num value) {
  //   this._width = value;
  // }

  // void setHeight(num value) {
  //   this._height = value;
  // }
}
