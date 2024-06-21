import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:todo_firebase/feature/adaptive/aspect_ratio_adapter.dart';
import 'package:todo_firebase/feature/adaptive/effective_aspect_ratio_algorithm.dart';

class AspectRatioAdapterMock extends Mock implements AspectRatioAdapter {}

void main() {
  group("Binary search algorithm test >", () {
    test("Upperbound for the biggest", () {
      AspectRatioAdapterMock firstElement = AspectRatioAdapterMock();
      AspectRatioAdapterMock secondElement = AspectRatioAdapterMock();
      when(() => firstElement.aspectRatio).thenReturn(1.0);
      when(() => secondElement.aspectRatio).thenReturn(2.0);

      final sortedElements = <AspectRatioAdapter>[firstElement, secondElement];

      final algoritm = BinaryAspectRatioAlgorithm();

      final result =
          algoritm.getNearestMinimalPositiveAdapter(sortedElements, 1.7);

      expect(result.aspectRatio, 2.0);
    });

    test("Upperbound for the smallest", () {
      AspectRatioAdapterMock firstElement = AspectRatioAdapterMock();
      AspectRatioAdapterMock secondElement = AspectRatioAdapterMock();
      when(() => firstElement.aspectRatio).thenReturn(1.0);
      when(() => secondElement.aspectRatio).thenReturn(2.0);

      final sortedElements = <AspectRatioAdapter>[firstElement, secondElement];

      final algoritm = BinaryAspectRatioAlgorithm();

      final result =
          algoritm.getNearestMinimalPositiveAdapter(sortedElements, 0.8);

      expect(result.aspectRatio, 1.0);
    });

    test("Upperbound for the value, when current aspect ratio is bigger than all of them", () {
      AspectRatioAdapterMock firstElement = AspectRatioAdapterMock();
      AspectRatioAdapterMock secondElement = AspectRatioAdapterMock();
      when(() => firstElement.aspectRatio).thenReturn(0.6666666666);
      when(() => secondElement.aspectRatio).thenReturn(1.5);

      final sortedElements = <AspectRatioAdapter>[firstElement, secondElement];

      final algoritm = BinaryAspectRatioAlgorithm();

      final result =
          algoritm.getNearestMinimalPositiveAdapter(sortedElements, 2);

      expect(result.aspectRatio, 1.5);
    });

    test("Upperbound for the value, when current aspect ratio is smaller than all of them", () {
      AspectRatioAdapterMock firstElement = AspectRatioAdapterMock();
      AspectRatioAdapterMock secondElement = AspectRatioAdapterMock();
      when(() => firstElement.aspectRatio).thenReturn(3);
      when(() => secondElement.aspectRatio).thenReturn(5);

      final sortedElements = <AspectRatioAdapter>[firstElement, secondElement];

      final algoritm = BinaryAspectRatioAlgorithm();

      final result =
          algoritm.getNearestMinimalPositiveAdapter(sortedElements, 1);

      expect(result.aspectRatio, 3);
    });
  });
}
