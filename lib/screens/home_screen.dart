import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_examples/providers/wonders_provider.dart';
import 'package:provider_examples/screens/wonders_screen.dart';
import 'package:provider_examples/screens/solart_system_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //String defs
    String appBarTitle = 'Types of Provider';
    String firstTabTitle = 'ChangeNotifier';
    String secondTabTitle = 'Stream';
    //end Strings Defs
    TextStyle titleStyle = Theme.of(context).textTheme.title;
    TextStyle subtitleStyle = Theme.of(context).textTheme.subtitle;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            appBarTitle,
            style: titleStyle,
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(48.0),
            child: Container(
              height: 48.0,
              child: TabBar(
/*               indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(width: 5.0, color: Colors.orange[700]),
                  insets: EdgeInsets.symmetric(horizontal: 5),
                ), */
                tabs: <Widget>[
                  Text(firstTabTitle, style: subtitleStyle),
                  Text(secondTabTitle, style: subtitleStyle),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ChangeNotifierProvider<WondersProvider>(
              builder: (_) => WondersProvider(),
              child: WondersScreen(),
            ),
            SolarSystemScreen(),
          ],
        ),
      ),
    );
  }
}
