import 'package:flutter/material.dart';
import 'package:roomart/application/payment/payment_controller.dart';

class PaymentMethodDetail extends StatelessWidget {
  const PaymentMethodDetail({Key? key, required this.paymentController})
      : super(key: key);
  final PaymentController paymentController;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(),
        Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.purple)),
          child: Row(
            children: [
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Icon(
                    Icons.payment,
                    size: 30,
                  )),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${paymentController.getSelectedPaymentMethod.name}"),
                    Text(paymentController.getSelectedPaymentMethod.description!
                        .toLowerCase())
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
