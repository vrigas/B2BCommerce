public with sharing class TokenizeCard {
  @InvocableMethod(callout=true label='TokenizeCard')
  public static void tokenizeCard(List<Id> checkoutSessionId) {
    ConnectApi.PaymentMethodTokenizationRequest tokenizeRequest = new ConnectApi.PaymentMethodTokenizationRequest();
    tokenizeRequest.paymentGatewayId = '0b07R000000kCXDQA2';

    ConnectApi.CardPaymentMethodRequest paymentMethod = new ConnectApi.CardPaymentMethodRequest();
    paymentMethod.cardCategory = ConnectApi.CardCategory.CreditCard;

    paymentMethod.cardHolderName = 'Vasileios Rigas';
    paymentMethod.cardNumber = '5167320485179071';

    String cardBrand ='MasterCard';
    paymentMethod.cardType = 'Master Card';
    paymentMethod.expiryMonth = 12;
    paymentMethod.expiryYear = 2027;
    paymentMethod.cvv = '039';

    tokenizeRequest.cardPaymentMethod = paymentMethod;
    tokenizeRequest.additionalData = new Map<String,String>();

    ConnectApi.PaymentMethodTokenizationResponse tokenizeResponse;

    tokenizeResponse = ConnectApi.Payments.tokenizePaymentMethod(tokenizeRequest);
  }
}


