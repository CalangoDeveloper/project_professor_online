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

class TelaLogin extends StatelessWidget{
  const TelaLogin({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Professor Online'),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 24),
        backgroundColor: Color(0xFF208C78),
      ),
      
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xF307367)
        ),
        padding: EdgeInsets.all(40),
        child: Column(
          children: [
            widgetTextField_Cpf(),
            widgetTextField_Senha(),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF208C78),
                minimumSize: Size(double.infinity, 45),
                padding: EdgeInsets.zero,
              ),
              child: const Text('Login',
              style: TextStyle(
                color: Colors.white
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

widgetTextField_Cpf(){
  return TextField(
    decoration: InputDecoration(
      icon: Icon(Icons.person),
      hintText: 'CPF...',
    ),
  );
}

widgetTextField_Senha(){
  return TextField(
    decoration: InputDecoration(
      icon: Icon(Icons.lock),
      hintText: 'Senha...',
    ),
  );
}

class TelaIncial extends StatelessWidget{
  const TelaIncial({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Segunda Rota'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.pop(context);
          },
          child: const Text('Retornar'),
          ),
        ),
    );
  }
}