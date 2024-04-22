import 'package:flutter/material.dart';

class PeriodePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: _entetePeriode(),
      drawer: _menuPrincipale(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("30 lignes"),
                Icon(Icons.filter_alt)
              ],
            ),
            Expanded(child:_listePeriodes() )
          ],
        )
      )
    );
  }

  AppBar _entetePeriode(){
    return AppBar(
      title: Text("Periodes Electorales"),
      backgroundColor: Colors.deepOrange,
      foregroundColor: Colors.white,
      elevation: 0,
      actions: [
        IconButton(
          onPressed: (){},
          icon: Icon(Icons.add),
        ),
        IconButton(
          onPressed: (){},
          icon: Icon(Icons.sync),
        )
      ],
    );
  }

  Drawer _menuPrincipale(){
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.deepOrange
            ),
            child: Text('App Election'),
          ),

          ListTile(
            title:Text("Tableau de bord"),
            leading: Icon(Icons.mouse_rounded),
          ),
          Divider(),
          ListTile(
            title:Text("Deconnexion"),
            leading: Icon(Icons.logout),
          )
        ],
      )
    );
  }

  Widget _listePeriodes(){
    return ListView.builder(
        itemCount: 30,
        shrinkWrap: true,
        itemBuilder: (ctx, index){
          return ListTile(
            leading: Text("$index"),
            title: Text("Periode"),
            trailing: Icon(Icons.arrow_right),
          );
        }
    );
  }

}