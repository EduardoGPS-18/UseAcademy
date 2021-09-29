import 'dart:async';

import 'package:get/get.dart';

import '../../data/http/http.dart';
import '../../domain/entities/entities.dart';
import '../../domain/usecases/usecases.dart';
import '../../ui/pages/pages.dart';

class GetxHomePresenter extends GetxController implements HomePresenter {
  final LoadPeople loadPeople;

  GetxHomePresenter({
    required this.loadPeople,
  });

  final Rx<List<PersonEntity>> _people = Rx([]);
  
  Stream<List<PersonEntity>> get peopleStream => _people.stream;

  @override
  onReady() {
    loadPersons();
    super.onReady();
  }

  Future<void> loadPersons() async {
    try {
      final List<PersonEntity> people = await loadPeople.loadPeople();

      _people.subject.add(people);
    } on HttpError catch (error) {
      _people.subject.addError(error);
    }
  }
}
