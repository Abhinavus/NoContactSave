import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsAppDemo',

      
      home: MainPage() ,
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {



 late final TextEditingController  _number;

 


@override
  void initState() {
   _number = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _number.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold( resizeToAvoidBottomInset: true,
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment:MainAxisAlignment.center,
            children: [ //Image.asset('assets/images/giphy.gif',width: 300,height: 300,),
            const Text(' Ever wanted to message someone in whatsapp without saving there number?! Just type in the number',textAlign: TextAlign.center,),
            SizedBox(height: 30,),
             Container( height: 180, width: 320, 
             decoration : BoxDecoration(border: Border.all(width: 1),
             borderRadius: BorderRadius.circular(20),
             boxShadow: [BoxShadow(color: Color.fromARGB(255, 245, 242, 242),),]
             
             
             ), child: Column(crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment:MainAxisAlignment.center,
               children: [const Text('Enter the number you want to reach out '),SizedBox(height: 15),
                   Container(
                     child: SizedBox(width: 205,child: TextField( controller: _number,textAlign: TextAlign.center,
                                   decoration:  InputDecoration( enabledBorder: myinputborder(), 
                                   focusedBorder: myfocuborder(),
                                   fillColor: Colors.white,
                                   hintText : 'eg.919074055157'), ),),
                   ),
                   SizedBox(height: 10,),
                   SizedBox( height: 30,width:100,child:
                               TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue[400],
                    padding: const EdgeInsets.all(2.0),
                    textStyle: const TextStyle(fontSize: 15),
                  ),onPressed: () async {
               final whatsapp= _number.text;
                                  var texturl ="https://wa.me/$whatsapp";
                                 
                                  await launch(texturl);
             }, child: const Text('Go to Chat')),)
            
                 
               ],
             
             
             
             ),),
             
             const Text('Made for Hari Sankar'),
            
            ],
          ),);
        
      
     
        
      
    
    
  }

OutlineInputBorder myinputborder() {
return OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(20)),
  borderSide: BorderSide(width: 1),


);
}

OutlineInputBorder myfocuborder() {
return OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(20)),
  borderSide: BorderSide(width: 1)
);
}



























}

