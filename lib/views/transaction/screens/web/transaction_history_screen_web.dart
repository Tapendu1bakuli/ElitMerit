import 'package:flutter/material.dart';
import 'package:main/views/transaction/widget/web/transaction_widget_web.dart';


class TransactionHistoryScreenWeb extends StatelessWidget {
  const TransactionHistoryScreenWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return

      LayoutBuilder(builder: (_, constraints) {
          return
            ResponsiveLayoutWeb(viewportWidth: constraints.maxWidth);
        });


  }
}



