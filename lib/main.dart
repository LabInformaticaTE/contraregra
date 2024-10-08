import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contra Regra',
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'assets/images/backgrounds/background_contraregra.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20.0),
                      width: 300.0,
                      height: 300.0,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100.0),
                        child: Image.asset(
                          'assets/images/logos/logo_contraregra.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.35,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                      child: Center(
                        child: Text(
                          "Contra Regra",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 80.0,
                            fontFamily: 'Pacifico',
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            shadows: [
                              Shadow(
                                offset: Offset(4.0, 4.0),
                                blurRadius: 10.0,
                                color: Colors.deepOrange.withOpacity(0.5)
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Lógica para a Splash Screen de Login
                        print('Botão de Login pressionado');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrange.shade500, // Cor do botão
                        padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                      ),
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          fontFamily: 'Pacifico',
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Lógica para a Splash Screen de Cadastro
                        print('Botão de Cadastro pressionado');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrange.shade500, // Cor do botão
                        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      ),
                      child: Text(
                        'Cadastro',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          fontFamily: 'Pacifico',
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(60),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Desenvolvido por:',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          fontFamily: 'Pacifico',
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100.0),
                        child: Image.asset(
                          'assets/images/logos/logo_lab_informatica.png',
                          fit: BoxFit.cover,
                          width: 50,
                          height: 50,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}