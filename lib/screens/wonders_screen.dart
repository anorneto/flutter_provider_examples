import 'package:flare_flutter/flare_actor.dart';
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
              Expanded(
                child: FlareActor(
                  'assets/animations/wonders.flr',
                  animation: currentWonder.animationName,
                  fit: BoxFit.fitWidth,
                ),
              ),
              Container(
                child: Text(
                  currentWonder.name,
                  style: textTheme.title,
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
