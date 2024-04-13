import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
          color: Color.fromARGB(255, 117, 179, 167) //Background da tela
        ),
        padding: EdgeInsets.all(40),
        child: Column(
          children: [
            SizedBox(height: 25,),
            //Texto "Professor Online" - Logo
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

            //TextField (cpf e senha)
            //SizedBox: espaçamento entre os elementos
            SizedBox(height: 50,),
            widgetTextField_Cpf(),
            SizedBox(height: 20),
            widgetTextField_Senha(),
            SizedBox(height: 30,),
            //Botão login (ao pressionado irá para outra rota (tela))

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
            //"Botões" para primeiro acesso e recuperar senha

            Row(
              children: [
                Expanded(
                  child: Text('Primeiro acesso', style: TextStyle(
                    fontSize: 16,
                    color: Colors.white 
            ),),
                ),
                SizedBox(width: 110,),
                Expanded(
                  flex: 1,
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

      appBar: AppBar( //Cabeçalho
        title: const Text('Professor Online'),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 24),
        backgroundColor: Color(0xFF208C78),
        toolbarHeight: 70,
        foregroundColor: Colors.white, //Alterar a cor ícone menu do drawer
        actions: <Widget>[
          IconButton( //Ícone de recarregar (canto superior direito da tela)
            padding: EdgeInsets.only(right: 20.0),
            icon: Icon(
              Icons.refresh,
              color: Colors.white,
            ),
            onPressed: null, //Deixar o botão sem "função"
          )
        ],
      ),

      //Container principal
      body: Container(
        child: Column(
          children: [

            //Primeiro container
            Container(
              width: MediaQuery.of(context).size.width, //Define que o container tem que pegar toda a largura da tela
              padding: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                color: Color(0xFFC4F2EA) //Background do container
              ),
              child: Column(
                children: [ //Textos contidos no container
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
              width: MediaQuery.of(context).size.width, //Define que o container tem que pegar toda a largura da tela
              height: 35, //Tamanho do container
              decoration: BoxDecoration(
                color: Color(0xFF208C78)
              ),
              alignment: Alignment.center, //Alinhar os elementos ao centro
              child: Text('Bem vindo, Professor!', style: TextStyle( //Texto contido no segundo container
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w400
              ),),
            ),
            SizedBox(height: 20,),
            Icon(Icons.inbox_sharp, //Ícon do container principal (inbox)
              size: 120,
              color: Color.fromARGB(255, 73, 73, 73)
            ),
            Text('Nenhum item encontrado!', style: TextStyle( //Texto contido no container principal
              color: Color.fromARGB(255, 73, 73, 73),
              fontSize: 18
            ),)
          ],
        ),
      ),

      drawer: Drawer(
          width: 320, //Largura do Drawer
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              SizedBox(
                height: 190,
                child: DrawerHeader( //Cabeçalho do Drawer
                  decoration: BoxDecoration( //Background do Drawer
                    color: Color(0xFF208C78)
                  ),
                  child: Column(
                    //Deixar os elementos alinhados no início (esquerda)
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    //Ícones e textos
                    children: <Widget>[
                      SizedBox(height: 10,),
                      Expanded(
                        child: Icon(Icons.person, size: 60, color: Colors.white,),
                      ),
                      SizedBox(height: 40,), //Define o espaçamento entre os elementos
                      Expanded(
                        child: Text('Paulo Lustosa',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                      SizedBox(height: 15,),
                      Expanded(
                        child: Text('O portal do professor da rede estadual',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              //Abas
              ListTile( //Dados pessoais
                leading: Icon(Icons.person_sharp, size: 30,color: Color(0xFF208C78),),
                title: Text('Dados pessoais',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF208C78)
                  ),
                ),
              ),
              ListTile( //Horários
                leading: Icon(Icons.access_time_rounded, size: 30,color: Color(0xFF208C78),),
                title: Text('Horários',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF208C78)
                  ),
                ),
              ),
              ListTile( //Calendário letivo
                leading: Icon(Icons.calendar_month, size: 30,color: Color(0xFF208C78),),
                title: Text('Calendário letivo',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF208C78)
                  ),
                ),
              ),
              ListTile( //Minhas turmas
                leading: Icon(Icons.groups, size: 30,color: Color(0xFF208C78),),
                title: Text('Minhas turmas',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF208C78)
                  ),
                ),
              ),
              ListTile( //Frequência
                leading: Icon(Icons.check, size: 30,color: Color(0xFF208C78),),
                title: Text('Frequência',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF208C78)
                  ),
                ),
              ),
              ListTile( //Avaliações e notas
                leading: Icon(Icons.assessment, size: 30,color: Color(0xFF208C78),),
                title: Text('Avaliações e notas',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF208C78)
                  ),
                ),
              ),
              ListTile( //Plano de ensino
                leading: Icon(Icons.edit, size: 30,color: Color(0xFF208C78),),
                title: Text('Plano de ensino',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF208C78)
                  ),
                ),
              ),
              ListTile( //Registro de aula
                leading: Icon(Icons.list, size: 30,color: Color(0xFF208C78),),
                title: Text('Registro de aula',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF208C78)
                  ),
                ),
              ),
              ListTile( //Atividades
                leading: Icon(Icons.checklist, size: 30,color: Color(0xFF208C78),),
                title: Text('Atividades',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF208C78)
                  ),
                ),
              ),
              ListTile( //Sair da conta
                leading: Icon(Icons.exit_to_app, size: 30,color: Color(0xFF208C78),),
                title: Text('Sair da conta',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF208C78)
                  ),
                ),
              ),

              Divider( //Linha divisória
                height: 20,
                thickness: 1,
                indent: 0,
                endIndent: 0,
                color: Color.fromARGB(255, 189, 189, 189),
              ),
              
              Container( //"Botão" informações
                padding: EdgeInsets.only(left: 20),
                child: Column(
                  //Deixar os elementos alinhados no início (esquerda)
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text('Informações',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 111, 111, 111),
                        fontSize: 16
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              ListTile( //Sicronizar
                leading: Icon(Icons.rotate_left, size: 30,color: Color(0xFF208C78),),
                title: Text('Sicronizar',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF208C78)
                  ),
                ),
              ),
              ListTile( //Configurações
                leading: Icon(Icons.settings, size: 30,color: Color(0xFF208C78),),
                title: Text('Configurações',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF208C78)
                  ),
                ),
              ),
              ListTile( //Sobre
                leading: Icon(Icons.info, size: 30,color: Color(0xFF208C78),),
                title: Text('Sobre',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF208C78)
                  ),
                ),
              ),
  
              Divider( //Linha divisória
                height:0,
                thickness: 1,
                indent: 0,
                endIndent: 0,
                color: Color.fromARGB(255, 189, 189, 189),
              ),

              Container( //Rodapé do Drawer (bottom)
                padding: EdgeInsets.only(left: 20),
                height: 60, //Define o tamanho do rodapé
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 233, 233, 233), //Background do rodapé
                ),
                child: Column(
                  //Deixar os elementos alinhados no início (esquerda)
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(height: 10,),
                    Text('Desenvolvido por:',
                      style: TextStyle(
                        color: Color.fromARGB(255, 111, 111, 111),
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    Text('SEDUC Ceará/ASTIN',
                      style: TextStyle(
                        color: Color.fromARGB(255, 111, 111, 111),
                        fontWeight: FontWeight.w400
                      )
                    ,)
                  ],
                ),
              )
            ],
          ),
        ),
    );
  }
}