import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

//Principal
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
      body: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 117, 179, 167) //Background da tela
        ),
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 110,),
            Image.asset('imgs/logo.png', //Logo Professor Online
              width: 250, //Define o tamanho da imagem
            ),

            //TextField (cpf e senha)
            //SizedBox: espaçamento entre os elementos
            SizedBox(height: 50,),
            widgetTextField_Cpf(), //CPF
            SizedBox(height: 20),
            widgetTextField_Senha(), //Senha
            SizedBox(height: 30,),

            //Botão login (ao pressionado irá para outra rota (tela))
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder( //Deixar o botão com as bordas quadradas
                  borderRadius: BorderRadius.circular(0)
                ),
                backgroundColor: Color(0xFF307367), //Cor do botão
                minimumSize: Size(double.infinity, 55), //Tamanho do botão
                padding: EdgeInsets.zero,
              ),
              child: const Text('Login',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              onPressed: (){
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => const TelaIncial()),);
              },
            ),
            SizedBox(height: 10,),

            //"Botões" para primeiro acesso e recuperar senha (os dois na mesma linha)
            Row(
              children: [
                Expanded(
                  child: Text('Primeiro acesso',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white 
                    ),
                    textAlign: TextAlign.left, //Alinhar á esquerda
                  ),
                ),
                SizedBox(width: 110,),
                Expanded(
                  child: Text('Recuperar senha',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white
                    ),
                    textAlign: TextAlign.right, //Alinhar á direita
                  ),
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
      focusedBorder: UnderlineInputBorder( //Estilização da linha do input quando estiver focada
        borderSide: BorderSide(
          color: Color(0xFF307367), //Cor da linha quando estiver em foco
        ),
      ),
      enabledBorder: UnderlineInputBorder( //Estilização da linha do input quando estiver sem foco
        borderSide: BorderSide(
          color: Color(0xFF307367) //Cor da linha quando estiver sem foco
        ),
      ),
      prefixIcon: Icon(Icons.person, color: Colors.white,), //Ícone
      hintText: 'CPF', //Texto
      hintStyle: TextStyle( //Estilização do texto
        fontSize: 18,
        fontWeight: FontWeight.w400,
        color: Colors.white
      ),
    ),
  );
}

//TextField Senha - Tela de Login
widgetTextField_Senha(){
  return TextField(
    decoration: InputDecoration( 
      focusedBorder: UnderlineInputBorder( //Estilização da linha do input quando estiver focada
        borderSide: BorderSide(
          color: Color(0xFF307367), //Cor da linha quando estiver em foco
        ),
      ),
      enabledBorder: UnderlineInputBorder( //Estilização da linha quando estiver sem foco
        borderSide: BorderSide(
          color: Color(0xFF307367) //Cor da linha quando estiver sem foco
        ),
      ),
      prefixIcon: Icon(Icons.lock, color: Colors.white,), //Ícone da esquerda
      suffixIcon: Icon(Icons.remove_red_eye, color: Color(0xFF307367),), //ícone da direita
      hintText: 'Senha', //Texto
      hintStyle: TextStyle( //Estilização do texto
        fontSize: 18,
        fontWeight: FontWeight.w400,
        color: Colors.white
      ),
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
        title: const Text('Professor Online'), //Título
        titleTextStyle: TextStyle( //Estilização do título
          color: Colors.white, fontSize: 26
        ),
        backgroundColor: Color(0xFF208C78), //Background do AppBar
        toolbarHeight: 70, //Tamanho do AppBar
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
            //Container imagem
            Container(
              child: Column(
                children: <Widget>[
                  Image.asset('imgs/professora.jpeg')
                ],
              ),
            ),

            //Primeiro container
            Container(
              width: MediaQuery.of(context).size.width, //Define que o container tem que pegar toda a largura da tela
              padding: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                color: Color(0xFFC4F2EA) //Background do container
              ),
              child: Column(
                children: [ //Textos contidos no container
                  SizedBox(height: 10,),
                  Text('Professor Online SEDUC',
                    style: TextStyle(
                      color: Color.fromARGB(255, 94, 94, 94),
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text('O portal do professor da rede estadual',
                    style: TextStyle(
                      color: Color.fromARGB(255, 94, 94, 94),
                      fontSize: 16, 
                      fontWeight: FontWeight.w400
                    ),
                  ),
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
              child: Text('Bem vindo, Professor!',
                style: TextStyle( //Texto contido no segundo container
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400
                ),
              ),
            ),
            SizedBox(height: 20,),
            Icon(Icons.inbox_sharp, //Ícon do container principal (inbox)
              size: 120,
              color: Color.fromARGB(255, 94, 94, 94),
            ),
            Text('Nenhum item encontrado!', 
              style: TextStyle( //Texto contido no container principal
                color: Color.fromARGB(255, 94, 94, 94),
                fontSize: 18
              ),
            ),
          ],
        ),
      ),

      //Menu lateral - Drawer
      drawer: Drawer(
          width: 290, //Largura do Drawer
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              SizedBox(
                height: 210, //Define o tamanho do cabeçalho
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
                      Image.asset('imgs/person.png',
                        height: 70,
                      ),
                      /*Expanded(
                        child: Icon(Icons.person, size: 60, color: Colors.white,),
                      ),*/
                      SizedBox(height: 0,), //Define o espaçamento entre os elementos
                      Expanded(
                        child: Text('Paulo Lustosa',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text('24957301',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400
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
                leading: Icon(Icons.person_sharp, size: 25,color: Color(0xFF208C78),),
                title: Text('Dados pessoais',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF208C78)
                  ),
                ),
              ),
              ListTile( //Horários
                leading: Icon(Icons.access_time_rounded, size: 25,color: Color(0xFF208C78),),
                title: Text('Horários',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF208C78)
                  ),
                ),
              ),
              ListTile( //Calendário letivo
                leading: Icon(Icons.calendar_month, size: 25,color: Color(0xFF208C78),),
                title: Text('Calendário letivo',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF208C78)
                  ),
                ),
              ),
              ListTile( //Minhas turmas
                leading: Icon(Icons.groups, size: 25,color: Color(0xFF208C78),),
                title: Text('Minhas turmas',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF208C78)
                  ),
                ),
              ),
              ListTile( //Frequência
                leading: Icon(Icons.check, size: 25,color: Color(0xFF208C78),),
                title: Text('Frequência',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF208C78)
                  ),
                ),
              ),
              ListTile( //Avaliações e notas
                leading: Icon(Icons.assessment, size: 25,color: Color(0xFF208C78),),
                title: Text('Avaliações e notas',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF208C78)
                  ),
                ),
              ),
              ListTile( //Plano de ensino
                leading: Icon(Icons.edit, size: 25,color: Color(0xFF208C78),),
                title: Text('Plano de ensino',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF208C78)
                  ),
                ),
              ),
              ListTile( //Registro de aula
                leading: Icon(Icons.list, size: 25,color: Color(0xFF208C78),),
                title: Text('Registro de aula',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF208C78)
                  ),
                ),
              ),
              ListTile( //Atividades
                leading: Icon(Icons.checklist, size: 25,color: Color(0xFF208C78),),
                title: Text('Atividades',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF208C78)
                  ),
                ),
              ),
              ListTile( //Sair da conta
                leading: Icon(Icons.exit_to_app, size: 25,color: Color(0xFF208C78),),
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
              SizedBox(height: 10,),
              
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
              SizedBox(height: 15),
              ListTile( //Sicronizar
                leading: Icon(Icons.rotate_right, size: 25,color: Color(0xFF208C78),),
                title: Text('Sicronizar',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF208C78)
                  ),
                ),
              ),
              ListTile( //Configurações
                leading: Icon(Icons.settings, size: 25,color: Color(0xFF208C78),),
                title: Text('Configurações',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF208C78)
                  ),
                ),
              ),
              ListTile( //Sobre
                leading: Icon(Icons.info, size: 25,color: Color(0xFF208C78),),
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
                height: 70, //Define o tamanho do rodapé
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 234, 234, 234), //Background do rodapé
                ),
                child: Column(
                  //Deixar os elementos alinhados no início (esquerda)
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(height: 15,),
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
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
    );
  }
}