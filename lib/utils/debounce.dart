import 'dart:async';
import 'dart:ui';


class Debounce {
  final int millisecond;
  Debounce({
    this.millisecond = 500,
});
  Timer? timer;

  void run(VoidCallback action) {
    if(timer != null) {
      timer!.cancel();
    }
    timer = Timer(Duration(milliseconds: millisecond), action);

  }
}