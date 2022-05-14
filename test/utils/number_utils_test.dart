import 'package:flutter_test/flutter_test.dart';
import 'package:pokedex/utils/number_utils.dart';

void main (){

  test("given an id with length one return it in 4 places", () {
    final sampleResponse = NumberUtils.formatNumberToFourPlaces(1);
    expect(sampleResponse, "001");
  });

  test("given an id with length 2 return it in 4 places", () {
    final sampleResponse = NumberUtils.formatNumberToFourPlaces(19);
    expect(sampleResponse, "019");
  });

  test("given an id with length 3 return it in 4 places", () {
    final sampleResponse = NumberUtils.formatNumberToFourPlaces(900);
    expect(sampleResponse, "900");
  });

}