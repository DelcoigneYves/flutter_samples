import 'package:app/data/sample_service.dart';
import 'package:app/views/screens/home_screen.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import '../mocks/mock_sample_service.dart';

void main() {
  ISampleService service;
  HomeScreenViewModel viewModel;
  
  setUp(() {
    service = new MockSampleService();
    when(service.getData()).thenReturn(["1", "2", "3"]);
    
    viewModel = new HomeScreenViewModel(loading: false);
  });

  group('Test Sample service interaction', () {
    test('Test mock service', () {
      expect(service.getData().length, 3);
    });
  });

  group('Test viewmodel', () {
    test('Test viewmodel', () {
      expect(viewModel.loading, false);
    });
  });
}