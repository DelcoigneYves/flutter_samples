abstract class ISampleService {
  List<String> getData();
}

class SampleService implements ISampleService {

  @override
  List<String> getData() {
    List<String> sampleList = new List<String>();
    sampleList.add("1");
    sampleList.add("2");
    sampleList.add("3");

    return sampleList;
  }
}