
import 'package:flutter_tappay/flutter_tappay.dart';

// Instantiate it
FlutterTappay payer = FlutterTappay ();
payer.init(
    appKey: "app_whdEWBH8e8Lzy4N6BysVRRMILYORF6UxXbiOFsICkz0J9j1C0JUlCHv1tVJC",
    appId: 11334,
    serverType: FlutterTappayServerType.Sandbox
).then((_){
  setState(() {
    prepared = true;
  });
});

// Valid with your TextFormField (see example)
payer.validate(
        cardNumber: _cardNumber.text,
        dueMonth: _cardMonth.text,
        dueYear: _cardYear.text,
        ccv: _cardCCV.text,
      ).then((validationResult) {
        bool cardValid = validationResult.isCardNumberValid;
        bool dateValid = validationResult.isExpiryDateValid;
        bool ccvValid = validationResult.isCCVValid;
        _totalValid = cardValid && ccvValid && dateValid;
        if(cardValid == true)
          _isCardNumberValid = true;
        else
          _isCardNumberValid = _cardNumber.text != "" ? false : true;
        if(ccvValid == true)
          _isCardCCVValid = true;
        else
          _isCardCCVValid = _cardCCV.text != "" ? false : true;
        if(dateValid == true) {
          _isCardYearValid = true;
          _isCardMonthValid = true;
        } else {
          _isCardYearValid = _cardYear.text != "" ? false : true;
          _isCardMonthValid = _cardMonth.text != "" ? false : true;
        }

        setState(() {
        });
      });

// get token
  try {
    TappayTokenResponse response = await payer.sendToken(
      cardNumber: _cardNumber.text,
      dueYear: _cardYear.text,
      dueMonth: _cardMonth.text,
      ccv: _cardCCV.text,
    );
    setState(() {
      _token = response.prime;
    });
  } catch(err) {
    Scaffold.of(context).showSnackBar(
        SnackBar(
            content: Text("Payment error: ${err.toString()}")
        )
    );
  }