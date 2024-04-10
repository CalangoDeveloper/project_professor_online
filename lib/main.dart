import 'dart:ffi';

import 'package:flutter/material.dart';

void main(){
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Professor Online',
      home: TelaLogin(),
    )
  );
}

//Tela Login
class TelaLogin extends StatelessWidget{
  const TelaLogin({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Professor Online - Login'),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 24),
        backgroundColor: Color(0xFF208C78),
        toolbarHeight: 70,
      ),
      
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xF307367)
        ),
        padding: EdgeInsets.all(40),
        child: Column(
          children: [
            SizedBox(height: 60,),
            widgetTextField_Cpf(),
            SizedBox(height: 20),
            widgetTextField_Senha(),
            SizedBox(height: 30,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF208C78),
                //minimumSize: Size(double.infinity, 55),
                padding: EdgeInsets.zero,
              ),
              child: const Text('Login',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),),
              onPressed: (){
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => const TelaIncial()),);
              },
            ),
          ],
        ),
      ),
    );
  }
}

//TextField Cpf - Tela de Login
widgetTextField_Cpf(){
  return TextField(
    decoration: InputDecoration(
      icon: Icon(Icons.person),
      hintText: 'CPF...',
      hintStyle: TextStyle(
        fontSize: 18
      )
    ),
  );
}

//TextField Senha - Tela de Login
widgetTextField_Senha(){
  return TextField(
    decoration: InputDecoration(
      icon: Icon(Icons.lock),
      hintText: 'Senha...',
      hintStyle: TextStyle(
        fontSize: 18
      )
    ),
  );
}
 //Tela Incial
class TelaIncial extends StatelessWidget{
  const TelaIncial({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Professor Online'),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 24),
        backgroundColor: Color(0xFF208C78),
        toolbarHeight: 70,
        foregroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            padding: EdgeInsets.only(right: 20.0),
            icon: Icon(
              Icons.refresh,
              color: Colors.white,
            ),
            onPressed: null,
          )
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Image.asset('C:\Users\TI\project_professor_online\imgs\Professora escrevendo na lousa.jpg'),
          ],
        ),
      ),

      drawer: Drawer(
          width: 220,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              SizedBox(
                height: 100,
                child: DrawerHeader(
                  child: Text('Menu',
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.map),
                title: Text('Mapas'),
                textColor: Colors.black,
              ),
              ListTile(
                leading: Icon(Icons.send),
                title: Text('Mensagens'),
              ),
              ListTile(
                leading: Icon(Icons.notifications),
                title: Text('Notificações'),
              )
            ],
          ),
        ),
    );
  }
}