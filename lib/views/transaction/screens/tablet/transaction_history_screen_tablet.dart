import 'package:flutter/material.dart';
import 'package:main/views/transaction/widget/tablet/transaction_widget_tablet.dart';
import 'package:sizing/sizing.dart';


class TransactionHistoryScreenTablet extends StatelessWidget {
  TransactionHistoryScreenTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return


      LayoutBuilder(builder: (_, constraints) {
          return
            ResponsiveLayout(viewportWidth: constraints.maxWidth);
        });


  }
}



