import 'dart:async';
import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:temtem_api_wrapper/temtem_api_wrapper.dart';

class LocalProvider implements ApiProvider {
  @override
  Future calculateWeaknesses(String attacking, List<String> defending) {
    // TODO: implement calculateWeaknesses
    throw UnimplementedError();
  }

  @override
  Future getBreeding() {
    // TODO: implement getBreeding
    return _dummyList();
  }

  @override
  Future getCharacters() {
    // TODO: implement getCharacters
    return _dummyList();
  }

  @override
  Future getConditions() {
    // TODO: implement getConditions
    throw UnimplementedError();
  }

  @override
  Future getCosmetics() {
    // TODO: implement getCosmetics
    return _dummyList();
  }

  @override
  Future getDyes() {
    // TODO: implement getDyes
    return _dummyList();
  }

  @override
  Future getFreetem(String name, int level) {
    // TODO: implement getFreetem
    throw UnimplementedError();
  }

  @override
  Future getFreetemRewards() {
    // TODO: implement getFreetemRewards
    throw UnimplementedError();
  }

  @override
  Future getGears() {
    // TODO: implement getGears
    return _dummyList();
  }

  @override
  Future getItems() {
    // TODO: implement getItems
    throw UnimplementedError();
  }

  @override
  Future getLocations() {
    // TODO: implement getLocations
    return _dummyList();
  }

  @override
  Future getPatches() {
    // TODO: implement getPatches
    throw UnimplementedError();
  }

  @override
  Future getQuests() {
    // TODO: implement getQuests
    return _dummyList();
  }

  @override
  Future getSaiparks() {
    // TODO: implement getSaiparks
    return _dummyList();
  }

  @override
  Future getTechniques(
      {List<String> names = const [], List<String> fields = const []}) {
    // TODO: implement getTechniques
    return _dummyList();
  }

  @override
  Future getTemtem(int id,
      {List<String> fields = const [], List<String> expand = const []}) {
    // TODO: implement getTemtem
    throw UnimplementedError();
  }

  @override
  Future getTemtems(
      {List<String> names = const [],
      List<String> fields = const [],
      List<String> expand = const [],
      bool weaknesses = false}) async {
    return await json
        .decode(await rootBundle.loadString('assets/temtems.json'));
  }

  @override
  Future getTrainingCourses() {
    // TODO: implement getTrainingCourses
    throw UnimplementedError();
  }

  @override
  Future getTraits(
      {List<String> names = const [], List<String> fields = const []}) {
    // TODO: implement getTraits
    return _dummyList();
  }

  @override
  Future<dynamic> getTypes() {
    // TODO: implement getTypes
    return _dummyList();
  }

  @override
  Future getWeaknesses() {
    // TODO: implement getWeaknesses
    return _dummyList();
  }

  Future<dynamic> _dummyList() {
    var c = Completer();
    c.complete([]);
    return c.future;
  }
}
