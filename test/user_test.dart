import 'package:dio/dio.dart';
import 'package:flutter_application_1/user.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';



//este arquivo testa a classe de birthday

void main() {
  test('Given user with age of 24 When birthday is called Then user is old', () async {
    
    // ARRANGE    
    final user = User(24, "someName" );

    // ACT
    user.birthday();

    // ASSERT
    expect(user.age, 25);
    //expect(user.age, 26);
  });
}
