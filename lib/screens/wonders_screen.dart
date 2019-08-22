import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_examples/providers/wonders_provider.dart';

class WondersScreen extends StatelessWidget {
  //String Defs
  final String previousButtonText = 'Anterior';
  final String nextButtonText = 'Próximo';

  const WondersScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //
    double padding = 20.0;
    TextTheme textTheme = Theme.of(context).textTheme;
    //
    return Padding(
      padding: EdgeInsets.only(top: padding, left: padding, right: padding),
      child: Consumer<WondersProvider>(
        builder: (context, WondersProvider currentWonder, _) {
          return Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 10.0),
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Stack(
                  alignment: AlignmentDirectional.bottomStart,
                  children: <Widget>[
                    Image.asset(currentWonder.path),
                    Text(
                      currentWonder.name,
                      style: textTheme.title,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: padding,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(padding / 2),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 3.0,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Text(
                      currentWonder.description,
                      style: textTheme.body1,
                    ),
                  ),
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    child: Text(previousButtonText),
                    onPressed: () => currentWonder.previousWonder(),
                  ),
                  RaisedButton(
                    child: Text(nextButtonText),
                    onPressed: () => currentWonder.nextWonder(),
                  )
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
