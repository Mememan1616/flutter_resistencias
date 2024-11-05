import 'package:flutter/material.dart';

int r1=0;
int r2=0;
int r3=0;
double r4=0.0;
final int rcolor=0;
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
  double? _selectedValue;
  Widget build(BuildContext context) {
   
    
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

    void dropdownCallback4(double? ts){
      if( ts is double){
        setState(() {
          r4=ts;
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
                 Container(
                  color: r1==0 ? Colors.black : 
                  r1==1? Colors.brown: 
                  r1==2? Colors.red:
                  r1==3? Colors.orange:
                  r1==4? Colors.amber:
                  r1==5? Colors.green:
                  r1==6? Colors.blueAccent:
                  r1==7? Colors.purple:
                  r1==8? Colors.grey:
                  Colors.white
                  , 
                 child:Text(" El valor es ${r1}",style: TextStyle(
                  fontSize: 20,
                  color: r1>8? Colors.black: Colors.white 
                 ), 
                 
                
                 ))
                
                
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
                 Container(
                  color: r2==0 ? Colors.black : 
                  r2==1? Colors.brown: 
                  r2==2? Colors.red:
                  r2==3? Colors.orange:
                  r2==4? Colors.amber:
                  r2==5? Colors.green:
                  r2==6? Colors.blueAccent:
                  r2==7? Colors.purple:
                  r2==8? Colors.grey:
                  Colors.white
                  , 
                 child:Text(" El valor es ${r2}",style: TextStyle(
                  fontSize: 20,
                  color: r2>8? Colors.black: Colors.white 
                 ), 
                 
                
                 ))
                
                
               ],
            ),


            Row(
               
               children: <Widget>[
                  DropdownButton(items:const [
                  DropdownMenuItem<int>(value:0,child: Text(""),),
                  DropdownMenuItem<int>(value:1,child: Text("Negro"),),
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
                 Container(
                  color: r3==0 ? Colors.black :
                  r3==1 ? Colors.black:
                  r3==10? Colors.brown: 
                  r3==100? Colors.red:
                  r3==1000? Colors.orange:
                  r3==10000? Colors.amber:
                  r3==100000? Colors.green:
                  r3==1000000? Colors.blueAccent:
                  r3==10000000? Colors.purple:
                  r3==100000000? Colors.grey:
                  Colors.white
                  , 
                 child:Text(" El valor es ${r3}",style: TextStyle(
                  fontSize: 20,
                  color: r3>8? Colors.black: Colors.white 
                 ), 
                 
                
                 ))
                
                
               ],
            ),


             Row(
               
               children: <Widget>[
                  DropdownButton(items:const [
                  DropdownMenuItem<double>(value:0,child: Text(""),),
                  DropdownMenuItem<double>(value:0.1,child: Text("Plateado"),),
                  DropdownMenuItem<double>(value:0.05,child: Text("Dorado"),),
                  
                 ], 
                 value: r4,
                 onChanged: dropdownCallback4,

                 ),
                 Container(
                  color: r4==0 ? Colors.white : 
                  r4==0.1? Colors.grey[400]: 
                  
                  Colors.amberAccent
                  , 
                 child:Text(" El valor es ${r4}",style: TextStyle(
                  fontSize: 20,
                  color: r2>8? Colors.black: Colors.white 
                 ), 
                 
                
                 ))
                
                
               ],
            ),


           

          SizedBox(height: 30,width:30,),
           ElevatedButton(
                //The style of the button
                style: ElevatedButton.styleFrom(
                  //The color of the button
                  backgroundColor: const Color.fromARGB(255, 248, 4, 4),
                ),
                //The text and style of the button 
                child: Text("CALCULAR RESISTENCIA", style: TextStyle(color: Colors.white, fontFamily:"Arial", fontSize:20)),
                onPressed: (){
                setState(() {
                  
                
                 calcular.c1="${r1}";
                 calcular.c2="${r2}";
                 calcular.c3=r3;
                 calcular.tolerancia=r4;
                 calcular.calcula(calcular.c1,calcular.c2,calcular.c3,calcular.tolerancia);
                });
                 
                 //resultado="El total es: ${calcular.total}, el minimo ${calcular.min}, y el maximo es ${calcular.max}";
                 //result.text=resultado;
                

                },
              ),
               SizedBox(height: 30,width:30,),
              Row(children: [
                  Text("El valor de las resistencias es: ", style:TextStyle(color: Colors.black87, fontSize:20) ),
                  
                  Text("${calcular.total}", style:TextStyle(color: Colors.blueAccent, fontSize:20) )
              ],),

               Row(children: [
                  Text("El valor  maximo de las resistencias es: ",  style:TextStyle(color: Colors.black87, fontSize:20)),
                  Text("${calcular.max}", style:TextStyle(color: Colors.blueAccent, fontSize:20))
              ],),

               Row(children: [
                  Text("El valor minimo de las resistencias es: ",style:TextStyle(color: Colors.black87, fontSize:20)),
                  Text("${calcular.min}", style:TextStyle(color: Colors.blueAccent, fontSize:20))
              ],)


            




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
