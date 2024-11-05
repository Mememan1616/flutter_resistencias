import 'package:flutter/material.dart';
const List <String> colores=["Negro","Cafe","Rojo","Naranja", "Amarillo","Verde","Azul","Violeta","Gris", "Blanco" ];
const List <int> values=[0,1,2,3,4,5,6,7,8,9];
int r1=0;
int r2=0;
int r3=0;
double r4=0.0;
String resultado="";
 var calcular=new calcula_resistencias();
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Resistencias'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
  

}

class _MyHomePageState extends State<MyHomePage> {
  @override
  
  Widget build(BuildContext context) {
    TextEditingController result = TextEditingController();
    
    void dropdownCallback1(int? selectedValue){
      if( selectedValue is int){
        setState(() {
          r1=selectedValue;
        });
      }
    }

    void dropdownCallback2(int? selectedValue){
      if( selectedValue is int){
        setState(() {
          r2=selectedValue;
        });
      }
    }
    void dropdownCallback3(int? selectedValue){
      if( selectedValue is int){
        setState(() {
          r3=selectedValue;
        });
      }
    }

    void dropdownCallback4(double? selectedValue){
      if( selectedValue is double){
        setState(() {
          r4=selectedValue;
        });
      }
    }
    
    return Scaffold(
      appBar: AppBar(
        
      backgroundColor: Colors.amber,
      title: Text(widget.title),
      
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          children: <Widget>[

            TextField(
              controller:result,
              style: TextStyle(color: Colors.black,
              //backgroundColor: Colors.blue
              ),
            ),
             Image.network("https://www.areatecnologia.com/electricidad/imagenes/codigo-colores-resistencias.jpg"),
            Row(
               
               children: <Widget>[
                  DropdownButton(items:const [
                  DropdownMenuItem<int>(value:0,child: Text("Negro"),),
                  DropdownMenuItem<int>(value:1,child: Text("Cafe"),),
                  DropdownMenuItem<int>(value:2,child: Text("Rojo"),),
                  DropdownMenuItem<int>(value:3,child: Text("Naranja"),),
                  DropdownMenuItem<int>(value:4,child: Text("Amarillo"),),
                  DropdownMenuItem<int>(value:5,child: Text("Verde"),),
                  DropdownMenuItem<int>(value:6,child: Text("Azul"),),
                  DropdownMenuItem<int>(value:7,child: Text("Violeta"),),
                  DropdownMenuItem<int>(value:8,child: Text("Gris"),),
                  DropdownMenuItem<int>(value:9,child: Text("Blanco"),),

                 ], 
                 value: r1,
                 onChanged:dropdownCallback1,

                 ),
                 Text(" El valor es ${r1}")
                
                
               ],
            ),

             Row(
               
               children: <Widget>[
                  DropdownButton(items:const [
                  DropdownMenuItem<int>(value:0,child: Text("Negro"),),
                  DropdownMenuItem<int>(value:1,child: Text("Cafe"),),
                  DropdownMenuItem<int>(value:2,child: Text("Rojo"),),
                  DropdownMenuItem<int>(value:3,child: Text("Naranja"),),
                  DropdownMenuItem<int>(value:4,child: Text("Amarillo"),),
                  DropdownMenuItem<int>(value:5,child: Text("Verde"),),
                  DropdownMenuItem<int>(value:6,child: Text("Azul"),),
                  DropdownMenuItem<int>(value:7,child: Text("Violeta"),),
                  DropdownMenuItem<int>(value:8,child: Text("Gris"),),
                  DropdownMenuItem<int>(value:9,child: Text("Blanco"),),

                 ], 
                 value: r2,
                 onChanged:dropdownCallback2,

                 ),
                 Text(" El valor es ${r2}")
                
                
               ],
            ),


            Row(
               
               children: <Widget>[
                  DropdownButton(items:const [
                  DropdownMenuItem<int>(value:0,child: Text("Negro"),),
                  DropdownMenuItem<int>(value:10,child: Text("Cafe"),),
                  DropdownMenuItem<int>(value:100,child: Text("Rojo"),),
                  DropdownMenuItem<int>(value:1000,child: Text("Naranja"),),
                  DropdownMenuItem<int>(value:10000,child: Text("Amarillo"),),
                  DropdownMenuItem<int>(value:100000,child: Text("Verde"),),
                  DropdownMenuItem<int>(value:1000000,child: Text("Azul"),),
                  DropdownMenuItem<int>(value:10000000,child: Text("Violeta"),),
                  DropdownMenuItem<int>(value:100000000,child: Text("Gris"),),
                  DropdownMenuItem<int>(value:1000000000,child: Text("Blanco"),),

                 ], 
                 value: r3,
                 onChanged:dropdownCallback3,

                 ),
                 Text(" El valor es ${r3}")
                
                
               ],
            ),


           /* Row(
               
               children: <Widget>[
                  DropdownButton(items:const [
                  DropdownMenuItem<double>(value:0.1,child: Text("Dorado"),),
                  DropdownMenuItem<double>(value:0.05,child: Text("Plateado"),),
                  

                 ], 
                 value: r4,
                 onChanged:dropdownCallback4,

                 ),
                 Text(" El valor es ${r4}")
                
                
               ],
            ),*/

            
           ElevatedButton(
                //The style of the button
                style: ElevatedButton.styleFrom(
                  //The color of the button
                  backgroundColor: const Color.fromARGB(255, 16, 148, 255),
                ),
                //The text and style of the button 
                child: Text("8", style: TextStyle(color: Colors.white)),
                onPressed: (){
                 calcular.c1="${r1}";
                 calcular.c2="${r2}";
                 calcular.c3=r3;
                 calcular.calcula(calcular.c1,calcular.c2,calcular.c3,0.05);
                 resultado="El total es: ${calcular.total}, el minimo ${calcular.min}, y el maximo es ${calcular.max}";
                 result.text=resultado;
                

                },
              ),


            




          ]
         
         
        ),
      ),
    );
  }
}

class calcula_resistencias{
  String c1=""; String c2=""; int c3=0; double t=0;
  String c12="";
  double cf=0;
  double total=0;
  double tolerancia=0;
  double min=0;
  double max=0;
  void calcula(c1, c2, c3,t){
    c12=c1+c2;
    cf=double.parse(c12);
    total=cf*c3;
    tolerancia=total*t;
    max=total+tolerancia;
    min= total-tolerancia;

    
  }
}
