import 'model_class2.dart';

class SubGrid extends Explore {
  SubGrid({
    required String gridimage,
    required String gridtitle,
    required String gridcolor,
    required String gridsubtitle,
    required String gridprice,
    required List<String> subGrid,
    required String gridback})
      : super(
      gridimage: gridimage,
      gridtitle: gridtitle,
      gridcolor: gridcolor,
      gridprice: gridprice,
      subGrid: [],
      gridback: gridback,
      gridsubtitle: gridsubtitle);

}