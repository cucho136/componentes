import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://depor.com/resizer/-n6naNTLffV1WNy4TlpqB1pweKo=/980x528/smart/arc-anglerfish-arc2-prod-elcomercio.s3.amazonaws.com/public/4HFH2SWZ35E3BE6VXIRA6X2EZA.jpg'),
              radius: 20.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('JH'),
              backgroundColor: Colors.brown,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          placeholder: AssetImage('assets/loading.gif'),
          image: NetworkImage(
              'https://cdn.atomix.vg/wp-content/uploads/2020/05/New-Project-2020-05-04T121427.838.jpg'),
          fadeInDuration: Duration(milliseconds: 500),
        ),
      ),
    );
  }
}
