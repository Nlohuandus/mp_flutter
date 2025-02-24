import 'package:test/test.dart';
import 'package:mp_flutter/mp_flutter.dart';

void main() {
  MercadoCredentials mercadoCredentials = MercadoCredentials(
      accessToken:
          'TEST-3029117202042245-103104-2fd0688859e43720378e5ed1043114f4__LC_LB__-182447115');

  final mercadoPago = MercadoPago(mercadoCredentials);

  test('test identification types available list', () async {
    expect(await mercadoPago.services.documentTypes(), isA<MercadoObject>());
  });

  test('test card token', () async {
    expect(
        await mercadoPago.services.newCard(
            securityCode: '123',
            cardExpirationYear: '2025',
            cardExpirationMonth: 11,
            cardNumber: '4509953566233704',
            identificationNumber: '12345678',
            identificationType: 'DNI',
            cardholderName: 'APRO'),
        isA<MercadoObject>());
  });

  test('test token with card', () async {
    expect(
        await mercadoPago.services
            .tokenWithCard(cardId: '1587964933876', securityCode: '333'),
        isA<MercadoObject>());
  });
}
