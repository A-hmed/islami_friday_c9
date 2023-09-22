// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:islami_friday_c9/ui/utils/app_assets.dart';
import 'package:islami_friday_c9/ui/utils/app_colors.dart';



class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  double turns  =0.0 ; 
  int counter = 0 ; 
  List<String> tasbeh = [
    "الحمد لله" ,
    "سبحان الله",
  ];
  int index = 0 ; 
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
    
       
        children: [
      
    
        
           
               Expanded(
                flex: 10,
                child: Image.asset(AppAssets.headOfSebha)),
               Expanded(
                flex :35,
                 child: AnimatedRotation(
                  turns: turns,
                  duration: const Duration(seconds: 1),
                  child: Image.asset(AppAssets.sebha)),
               ),
        
          
         Spacer(
          flex: 5,
         ),
          Expanded(
            flex: 10,
            child: Text(
              "Tasbehat counter",
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),
          ),
         Expanded(
          flex: 20,
           child: Container(
               width: 100,
               height: 100,
               child: Center(child: Text("$counter",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 25),)),
               decoration: BoxDecoration(
                 color: AppColors.primiary,
           borderRadius: BorderRadius.circular(8.0)
               ),
            ),
         ),
         Spacer(flex: 10,),
         Expanded(
          flex : 10,
           child: ElevatedButton(onPressed: (){
            setState(() {
              counter++;
              if(counter > 33)
              {
                counter = 0 ; 
              if(index == 0)
              {
                index ++ ;
              }else{
                index =0 ;
              }
              
              } 
                turns += 1/33 ;
            });
           }, 
           child: Text(tasbeh[index]),
           style: ButtonStyle(
            backgroundColor:MaterialStateProperty.all<Color>(AppColors.primiary) ,
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                
              ),
              
            )
           )
           ),
         ),
         Spacer(flex:10)
 

        
        ],
      ),
    );
  }
}

