import 'package:elections/pages/login/loginPage.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 0, width: double.infinity,),
          Container(
            padding: const EdgeInsets.only(top:150),
            child: Image.network("https://t3.ftcdn.net/jpg/06/14/84/58/"
                "360_F_614845842_pNcPaSxVwBiO6hGaaSXKrQOCs6xqnijX.jpg",
            width: 250,
            ),
          ),
          SizedBox(height: 20,),
          Text("On gagne et on gagne", style: TextStyle(
              color:Colors.deepOrange,
              fontSize: 25,
              fontWeight: FontWeight.bold )
          ),
          Spacer(),
          Container(
            width: double.infinity,
            height: 50,
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton.icon(

              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  backgroundColor: Colors.deepOrange,
                foregroundColor: Colors.white
              ),
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder:(ctx)=> LoginPage() ));
              },
              icon: Icon(Icons.check),
              label: const Text('Demarrer', style:TextStyle(fontSize: 20)),
            )
          ),


          SizedBox(height: 80,),


        ],
      )
    );
  }
}