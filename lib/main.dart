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
        backgroundColor: Color(0xFF307367),
        toolbarHeight: 70,
      ),
      
      body: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 117, 179, 167)
        ),
        padding: EdgeInsets.all(40),
        child: Column(
          children: [
            SizedBox(height: 25,),
            //Texto "Professor Online"
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Professor',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  TextSpan(
                    text: ' Online',
                    style: TextStyle(
                      color: Color.fromARGB(255, 242, 140, 7),
                      fontSize: 28,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ]
              ),
            ),
            //TextField
            //SizedBox: espaçamento entre os elementos
            SizedBox(height: 50,),
            widgetTextField_Cpf(),
            SizedBox(height: 20),
            widgetTextField_Senha(),
            SizedBox(height: 30,),
            //Botão login
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF307367),
                minimumSize: Size(double.infinity, 55),
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
            SizedBox(height: 10,),
            Row(
              children: [
                Expanded(
                  child: Text('Primeiro acesso', style: TextStyle(
                    fontSize: 16,
                    color: Colors.white 
            ),),
                ),
                SizedBox(width: 60,),
                Expanded(
                  child: Text('Recuperar senha', style: TextStyle(
                  fontSize: 16,
                  color: Colors.white
            ),),
                ),
              ],
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
      iconColor: Colors.white,
      hintText: 'CPF...',
      hintStyle: TextStyle(
        fontSize: 18,
        color: Colors.white
      )
    ),
  );
}

//TextField Senha - Tela de Login
widgetTextField_Senha(){
  return TextField(
    decoration: InputDecoration(
      icon: Icon(Icons.lock),
      iconColor: Colors.white,
      hintText: 'Senha...',
      hintStyle: TextStyle(
        fontSize: 18,
        color: Colors.white
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
      //Container principal
      body: Container(
        child: Column(
          children: [
            //Primeiro container
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                color: Color(0xFFC4F2EA)
              ),
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Text('Professor Online SEDUC', style: TextStyle(
                    color: Color.fromARGB(255, 73, 73, 73),
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),),
                  Text('O portal do professor da rede estadual', style: TextStyle(
                    color: Color.fromARGB(255, 73, 73, 73),
                    fontSize: 16, 
                    fontWeight: FontWeight.w400
                  ),),
                ],
              ),
            ),
            //Segundo container
            Container(
              width: MediaQuery.of(context).size.width,
              height: 35,
              decoration: BoxDecoration(
                color: Color(0xFF208C78)
              ),
              alignment: Alignment.center,
              child: Text('Bem vindo, Professor!', style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w400
              ),),
            ),
            SizedBox(height: 20,),
            Icon(Icons.inbox_sharp,
              size: 120,
              color: Color.fromARGB(255, 73, 73, 73)
            ),
            Text('Nenhum item encontrado!', style: TextStyle(
              color: Color.fromARGB(255, 73, 73, 73),
              fontSize: 18
            ),)
          ],
        ),
      ),

      drawer: Drawer(
          width: 350,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              SizedBox(
                height: 200,
                child: DrawerHeader(
                  decoration: BoxDecoration(
                    color: Color(0xFF208C78)
                  ),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        
                        SizedBox(
                          width: 200,
                          child: DrawerHeader(
                            child: Container(
                              child: Column(
                                children: [
                                  Icon(Icons.person, size: 40, color: Colors.white,),
                                  SizedBox(height: 8,),
                                  Text('O portal do professor da rede estadual',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ),
              ),
              ListTile(
                leading: Icon(Icons.map),
                title: Text(''),
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