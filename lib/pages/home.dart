
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:proje/pages/add.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:proje/pages/filter.dart';
import 'package:proje/pages/images.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> with TickerProviderStateMixin{
  
 
  @override
  Widget build(BuildContext context) {
    TabController tabController=TabController(length: 3, vsync: this);
      @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }
    return  DefaultTabController(length: 3,initialIndex: 1,child: Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(automaticallyImplyLeading: false,),
      body: 
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left:15,right: 15),
            child: Container(
              child: Column(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(height: 50,
                        decoration: BoxDecoration(color: Colors.blueGrey.shade100,borderRadius: BorderRadius.circular(50)),
                          child: TabBar(
                            indicator: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
                  
                             physics: const NeverScrollableScrollPhysics(),
                            
                            controller: tabController,
                            labelColor: Colors.indigoAccent,
                            unselectedLabelColor: Colors.indigoAccent,
                            isScrollable: false,
                            indicatorSize: TabBarIndicatorSize.label,
                            tabs: const [
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Tab(text:'Yearly' ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Tab(text:'Mountly' ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Tab(text:'Daily' ),
                            ),
                          ]),
                        ),
                      ],
                    ),
                  ),
                  
                ],
              ),
            ),
          ),Expanded(child:Padding(
            padding: const EdgeInsets.only(left: 10 ,right: 10),
            child: TabBarView(
              controller: tabController,
          
              children: [
              const yearly(),
              mountly(tabController: tabController),
              const daily(),
               
            ]),
          )
          ) 
          
       
        
        ]
      
      ),
       
    ),
    );
  }
  
}

class daily extends StatelessWidget {
  const daily({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text(""),);
  }
}

class yearly extends StatelessWidget {
  const yearly({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text(""),);
  }
}

class mountly extends StatefulWidget {
  

   const mountly({
    super.key,
    required this.tabController,
     this.restorationId,
  });
  final String? restorationId;
  final TabController tabController;


  @override
  State<mountly> createState() => _mountlyState();
}

class _mountlyState extends State<mountly>with RestorationMixin {
  var now= DateTime.now();


var images={
  "otel1.jpeg",
  "otel.png",
  "2.png",
};var images1={
  "1.jpeg",
  "7.png",
  "9.jpeg",
};
var images2={
  "3.jpeg",
  "18.jpeg",
  "15.jpeg",
};
var images3={
   "13.jpeg",
  "5.jpeg",
  "8.jpeg",
};
var images4={
   "4.jpeg",
  "10.jpeg",
  "17.jpeg",
};
 final List<String> items1 = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
    'Item5',
    'Item6',
    'Item7',
    'Item8',
  ];
  String? selectedValue1;
   final List<String> items2 = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
    'Item5',
    'Item6',
    'Item7',
    'Item8',
  ];
  String? selectedValue2;
   final List<String> items3 = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
    'Item5',
    'Item6',
    'Item7',
    'Item8',
  ];
  String? selectedValue3;
   final List<String> items4 = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
    'Item5',
    'Item6',
    'Item7',
    'Item8',
  ];
  String? selectedValue4;
   final List<String> items5 = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
    'Item5',
    'Item6',
    'Item7',
    'Item8',
  ];
  String? selectedValue5;
   final List<String> items6 = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
    'Item5',
    'Item6',
    'Item7',
    'Item8',
  ];
  String? selectedValue6;
  var secim=0;
  var secim2=1;
  var _color1=Colors.grey;
  var _color2=Colors.grey;
    @override
  String? get restorationId => widget.restorationId;
  
  final RestorableDateTime _selectedDate =
      RestorableDateTime(DateTime(2023, 7, 25));
  late final RestorableRouteFuture<DateTime?> _restorableDatePickerRouteFuture =
      RestorableRouteFuture<DateTime?>(
    onComplete: _selectDate,
    onPresent: (NavigatorState navigator, Object? arguments) {
      return navigator.restorablePush(
        _datePickerRoute,
        arguments: _selectedDate.value.millisecondsSinceEpoch,
      );
    },
  );

  @pragma('vm:entry-point')
  static Route<DateTime> _datePickerRoute(
    BuildContext context,
    Object? arguments,
  ) {
    return DialogRoute<DateTime>(
      context: context,
      builder: (BuildContext context) {
        return DatePickerDialog(
          restorationId: 'date_picker_dialog',
          initialEntryMode: DatePickerEntryMode.calendarOnly,
          initialDate: DateTime.fromMillisecondsSinceEpoch(arguments! as int),
          firstDate: DateTime(2023),
          lastDate: DateTime(2024),
        );
      },
    );
  }

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_selectedDate, 'selected_date');
    registerForRestoration(
        _restorableDatePickerRouteFuture, 'date_picker_route_future');
  }

  void _selectDate(DateTime? newSelectedDate) {
    if (newSelectedDate != null) {
      setState(() {
        _selectedDate.value = newSelectedDate;
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(
              'Selected: ${_selectedDate.value.day}/${_selectedDate.value.month}/${_selectedDate.value.year}'),
        ));
      });
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Column(
         children: [
           Container(
                   padding:  const EdgeInsets.only(left: 5,right: 5,top:5 ),
                   child:  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
           SizedBox(height: 50,width: 250,
             child: FloatingActionButton.extended(onPressed: (){},
              label: const Padding(
                padding: EdgeInsets.only(left: 10,right: 200),
                child: Text("search",style: TextStyle(color: Colors.grey),),
              ),
              icon: const Padding(
                padding: EdgeInsets.only(left: 40),
                child: Icon(Icons.search_outlined,color: Colors.grey),
              ),
              backgroundColor: Colors.grey.shade100,),
           ),
           
             SizedBox(height: 50,width: 100,
               child: FloatingActionButton.extended(heroTag:const Text(''),
                     onPressed: () {
                      showModalBottomSheet<void>(
                        backgroundColor: Colors.white,
                         isScrollControlled: true,
              context: context,
              builder: (BuildContext context) {
              
                return SizedBox(
                height:550,
                child: Center(
                  child:SingleChildScrollView(child:Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      
                       Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text("Filter",style: TextStyle(color: Colors.indigoAccent,fontSize: 20),),
                                TextButton(onPressed:(){
                                  setState(() {
                                    secim=0;
                                    _color1=Colors.grey;
                                    secim2=2;
                                    _color2=Colors.grey;
                                  });
                                }, child: const Text("Reset",style: TextStyle(color: Colors.orangeAccent,fontSize: 20),)),
                              ],
                            ),
                          ),

                    SizedBox(height:400,
                      child: SingleChildScrollView(child:  Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                           
                                         const Padding(
                             padding: EdgeInsets.only(right: 370),
                             child: Text("Sort",style: TextStyle(color: Colors.black,fontSize: 20),),
                                         ),
                                         Padding(
                             padding:const EdgeInsets.all(8.0),
                             child: Row(
                               children: [
                                 Padding(
                                   padding:  const EdgeInsets.only(right: 5),
                                   child: FloatingActionButton.extended(
                                             label:  Text('Assording',style:TextStyle(color:_color1),) ,
                                             
                                             onPressed: () {
                                               setState(() {
                                                 secim=1;
                                                  _color1=Colors.indigo;
                                               });
                                             },backgroundColor: Colors.grey.shade100,
                                             splashColor: Colors.indigoAccent,
                                             shape: RoundedRectangleBorder(side: BorderSide(color:_color1),
                                                                                borderRadius: const BorderRadius.all(Radius.circular(15.0))
                                                                                  ),elevation: 2,
                                             
                                            
                                           ),
                                 ),
                                FloatingActionButton.extended(
                                             label:  Text('Dissording',style:TextStyle(color: _color2),) ,
                                             
                                             onPressed: () {
                                                setState(() {
                                                 secim2=3;
                                                  _color2=Colors.indigo;
                                               });
                                             },backgroundColor: Colors.grey.shade100,
                                             splashColor: Colors.indigoAccent,
                                             shape:  RoundedRectangleBorder(side: BorderSide(color: _color2),
                                                                                borderRadius: const BorderRadius.all(Radius.circular(15.0))
                                                                                  ),elevation: 2,
                                             
                                            
                                           ),
                               ],
                             ), 
                                         ),
                                         
                             
                             Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 Column(
                                   children: [const Padding(
                                     padding: EdgeInsets.only(right:100),
                                     child: Text("Start Date",style: TextStyle(color: Colors.black,fontSize: 20)),
                                   ),
                                     Center(
                                         child:
                                         
                                         SizedBox(height: 50,width: 190,
                                           child: FloatingActionButton.extended(
                                             label: const Text('dd//mm//yy',style: TextStyle(color: Colors.grey,fontSize: 14,),) ,
                                             icon: const Icon(Icons.arrow_drop_down,color: Colors.grey),
                                             onPressed: () {
                                               _restorableDatePickerRouteFuture.present();
                                             },backgroundColor: Colors.grey.shade100,
                                             splashColor: Colors.indigoAccent,
                                             shape: const RoundedRectangleBorder(side: BorderSide(color: Colors.grey),
                                                                                borderRadius: BorderRadius.all(Radius.circular(15.0))
                                                                                  ),elevation:2,
                                             
                                            
                                           ),
                                         ),
                                       ),
                                   ],
                                 ),   
                                   Column(
                                     children: [const Padding(
                                       padding: EdgeInsets.only(right: 100),
                                       child: Text("End Date",style: TextStyle(color: Colors.black,fontSize: 20)),
                                     ),
                                       Center(
                                           child: 
                                           SizedBox(height: 50,width: 190,
                                           child: FloatingActionButton.extended(
                                             label: const Text('dd//mm//yy',style: TextStyle(color: Colors.grey,fontSize: 14,)) ,
                                             icon: const Icon(Icons.arrow_drop_down,color: Colors.grey),
                                             onPressed: () {
                                               _restorableDatePickerRouteFuture.present();
                                             },backgroundColor: Colors.grey.shade100,
                                             splashColor: Colors.indigoAccent,
                                             shape: const RoundedRectangleBorder(side: BorderSide(color: Colors.grey),
                                                                                borderRadius: BorderRadius.all(Radius.circular(15.0))
                                                                                  ),elevation: 2,
                                             
                                            
                                           ),
                                         ),
                                         ),
                                     ],
                                   ),
                               ],
                             ),Column(
                                       children: [const Padding(
                                         padding: EdgeInsets.only(right: 330,top: 1),
                                         child: Text("Prop ID",style: TextStyle(color: Colors.black,fontSize: 20)),
                                       ),
                                           Container(
                                            
                                             child:DropdownButtonHideUnderline(
          child: DropdownButton2<String>(
            isExpanded: true,
            hint:  const Row(
              children: [
                
                SizedBox(
                  width: 4,
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 120),
                    child: Text(
                      'Filter by Prop ID',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
            items: items1
                .map((String item1) => DropdownMenuItem<String>(
                      value: item1,
                      child: Text(
                        item1,
                        style: const TextStyle(
                          wordSpacing:BorderSide.strokeAlignCenter,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ))
                .toList(),
            value: selectedValue1,
            onChanged: (String? value) {
              setState(() {
                selectedValue1 = value;
              });
            },
            buttonStyleData: ButtonStyleData(
              height: 50,
              width: 400,
              padding: const EdgeInsets.only(left: 14, right: 14),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                border: const Border.fromBorderSide(BorderSide(color: Colors.grey)
                  
                ),
                color: Colors.grey.shade100,
              ),
              elevation: 2,
              
            ),
            iconStyleData: const IconStyleData(
              icon: Icon(
                Icons.arrow_drop_down,
              ),
              iconSize: 20,
              iconEnabledColor: Colors.grey,
              iconDisabledColor: Colors.grey,
            ),
            dropdownStyleData: DropdownStyleData(
              maxHeight: 200,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: Colors.grey.shade100,
              ),
              
              offset: const Offset(-20, 0),
              scrollbarTheme: ScrollbarThemeData(
                radius: const Radius.circular(40),
                thickness: MaterialStateProperty.all<double>(6),
                thumbVisibility: MaterialStateProperty.all<bool>(true),
              ),
            ),
            menuItemStyleData: const MenuItemStyleData(
              height: 40,
              padding: EdgeInsets.only(left: 14, right: 14),
            ),
          ),
        ),),],),Column(
                                       children: [const Padding(
                                         padding: EdgeInsets.only(right: 330,),
                                         child: Text("Project",style: TextStyle(color: Colors.black,fontSize: 20)),
                                       ),
                                           Container(
                                            
                                            child:DropdownButtonHideUnderline(
          child: DropdownButton2<String>(
            isExpanded: true,
            hint:  const Row(
              children: [
                
                SizedBox(
                  width: 4,
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 140),
                    child: Text(
                      'Project',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
            items: items2
                .map((String item2) => DropdownMenuItem<String>(
                      value: item2,
                      child: Text(
                        item2,
                        style: const TextStyle(
                          wordSpacing:BorderSide.strokeAlignCenter,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ))
                .toList(),
            value: selectedValue2,
            onChanged: (String? value) {
              setState(() {
                selectedValue2 = value;
              });
            },
            buttonStyleData: ButtonStyleData(
              height: 50,
              width: 400,
              padding: const EdgeInsets.only(left: 14, right: 14),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                border: const Border.fromBorderSide(BorderSide(color: Colors.grey)
                
                ),
                color: Colors.grey.shade100,
              ),
              elevation: 2,
            ),
            iconStyleData: const IconStyleData(
              icon: Icon(
                Icons.arrow_drop_down,
              ),
              iconSize: 20,
              iconEnabledColor: Colors.grey,
              iconDisabledColor: Colors.grey,
            ),
            dropdownStyleData: DropdownStyleData(
              maxHeight: 200,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: Colors.grey.shade100,
              ),
              
              offset: const Offset(-20, 0),
              scrollbarTheme: ScrollbarThemeData(
                radius: const Radius.circular(40),
                thickness: MaterialStateProperty.all<double>(6),
                thumbVisibility: MaterialStateProperty.all<bool>(true),
              ),
            ),
            menuItemStyleData: const MenuItemStyleData(
              height: 40,
              padding: EdgeInsets.only(left: 14, right: 14),
            ),
          ),
        ),)
                                           
                                           
                                           ],)
                                           ,Column(
                                       children: [const Padding(
                                         padding: EdgeInsets.only(right: 330,top: 1),
                                         child: Text("Location",style: TextStyle(color: Colors.black,fontSize: 20)),
                                       ),
                                           Container(
                                            
                                           child: DropdownButtonHideUnderline(
          child: DropdownButton2<String>(
            isExpanded: true,
            hint:  const Row(
              children: [
                
                SizedBox(
                  width: 4,
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 120),
                    child: Text(
                      'Filter by Location',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
            items: items3
                .map((String item3) => DropdownMenuItem<String>(
                      value: item3,
                      child: Text(
                        item3,
                        style: const TextStyle(
                          wordSpacing:BorderSide.strokeAlignCenter,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ))
                .toList(),
            value: selectedValue3,
            onChanged: (String? value) {
              setState(() {
                selectedValue3 = value;
              });
            },
            buttonStyleData: ButtonStyleData(
              height: 50,
              width: 400,
              padding: const EdgeInsets.only(left: 14, right: 14),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                border: const Border.fromBorderSide(BorderSide(color: Colors.grey)
                ),
                color: Colors.grey.shade100,
              ),
              elevation: 2,
            ),
            iconStyleData: const IconStyleData(
              icon: Icon(
                Icons.arrow_drop_down,
              ),
              iconSize: 20,
              iconEnabledColor: Colors.grey,
              iconDisabledColor: Colors.grey,
            ),
            dropdownStyleData: DropdownStyleData(
              maxHeight: 200,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: Colors.grey.shade100,
              ),
              
              offset: const Offset(-20, 0),
              scrollbarTheme: ScrollbarThemeData(
                radius: const Radius.circular(40),
                thickness: MaterialStateProperty.all<double>(6),
                thumbVisibility: MaterialStateProperty.all<bool>(true),
              ),
            ),
            menuItemStyleData: const MenuItemStyleData(
              height: 40,
              padding: EdgeInsets.only(left: 14, right: 14),
            ),
          ),
        ),)
                                           
                                           
                                           ],)
                                           ,Column(
                                       children: [const Padding(
                                         padding: EdgeInsets.only(right: 330,top: 1),
                                         child: Text("Rooms",style: TextStyle(color: Colors.black,fontSize: 20)),
                                       ),
                                           Container(
                                            
                                          child:DropdownButtonHideUnderline(
          child: DropdownButton2<String>(
            isExpanded: true,
            hint:  const Row(
              children: [
                
                SizedBox(
                  width: 4,
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 120),
                    child: Text(
                      'Filter by Rooms',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
            items: items4
                .map((String item4) => DropdownMenuItem<String>(
                      value: item4,
                      child: Text(
                        item4,
                        style: const TextStyle(
                          wordSpacing:BorderSide.strokeAlignCenter,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ))
                .toList(),
            value: selectedValue4,
            onChanged: (String? value) {
              setState(() {
                selectedValue4 = value;
              });
            },
            buttonStyleData: ButtonStyleData(
              height: 50,
              width: 400,
              padding: const EdgeInsets.only(left: 14, right: 14),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                border: const Border.fromBorderSide(BorderSide(color: Colors.grey)
                ),
                color: Colors.grey.shade100,
              ),
              elevation: 2,
            ),
            iconStyleData: const IconStyleData(
              icon: Icon(
                Icons.arrow_drop_down,
              ),
              iconSize: 20,
              iconEnabledColor: Colors.grey,
              iconDisabledColor: Colors.grey,
            ),
            dropdownStyleData: DropdownStyleData(
              maxHeight: 200,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: Colors.grey.shade100,
              ),
              
              offset: const Offset(-20, 0),
              scrollbarTheme: ScrollbarThemeData(
                radius: const Radius.circular(40),
                thickness: MaterialStateProperty.all<double>(6),
                thumbVisibility: MaterialStateProperty.all<bool>(true),
              ),
            ),
            menuItemStyleData: const MenuItemStyleData(
              height: 40,
              padding: EdgeInsets.only(left: 14, right: 14),
            ),
          ),
        ),)
                                           
                                           
                                           ],)
                                           ,Column(
                                       children: [const Padding(
                                         padding: EdgeInsets.only(right: 330,top: 1),
                                         child: Text("More",style: TextStyle(color: Colors.black,fontSize: 20)),
                                       ),
                                          Container(
                                            
                                          child: DropdownButtonHideUnderline(
          child: DropdownButton2<String>(
            isExpanded: true,
            hint:  const Row(
              children: [
                
                SizedBox(
                  width: 4,
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 120),
                    child: Text(
                      'Lorem Ipsum',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
            items: items5
                .map((String item5) => DropdownMenuItem<String>(
                      value: item5,
                      child: Text(
                        item5,
                        style: const TextStyle(
                          wordSpacing:BorderSide.strokeAlignCenter,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ))
                .toList(),
            value: selectedValue5,
            onChanged: (String? value) {
              setState(() {
                selectedValue5 = value;
              });
            },
            buttonStyleData: ButtonStyleData(
              height: 50,
              width: 400,
              padding: const EdgeInsets.only(left: 14, right: 14),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                border:const Border.fromBorderSide(BorderSide(color: Colors.grey)
                ),
                color: Colors.grey.shade100,
              ),
              elevation: 2,
            ),
            iconStyleData: const IconStyleData(
              icon: Icon(
                Icons.arrow_drop_down,
              ),
              iconSize: 20,
              iconEnabledColor: Colors.grey,
              iconDisabledColor: Colors.grey,
            ),
            dropdownStyleData: DropdownStyleData(
              maxHeight: 200,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: Colors.grey.shade100,
              ),
              
              offset: const Offset(-20, 0),
              scrollbarTheme: ScrollbarThemeData(
                radius: const Radius.circular(40),
                thickness: MaterialStateProperty.all<double>(6),
                thumbVisibility: MaterialStateProperty.all<bool>(true),
              ),
            ),
            menuItemStyleData: const MenuItemStyleData(
              height: 40,
              padding: EdgeInsets.only(left: 14, right: 14),
            ),
          ),
        ),)
                                           
                                           
                                           ],),
                                           Column(
                                       children: [
                                          Padding(
                                            padding: const EdgeInsets.only(top:2),
                                            child: DropdownButtonHideUnderline(
          child: DropdownButton2<String>(
            isExpanded: true,
            hint:  const Row(
              children: [
                
                SizedBox(
                  width: 4,
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 120),
                    child: Text(
                      'Lorem Ipsum',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
            items: items6
                .map((String item6) => DropdownMenuItem<String>(
                      value: item6,
                      child: Text(
                        item6,
                        style: const TextStyle(
                          wordSpacing:BorderSide.strokeAlignCenter,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ))
                .toList(),
            value: selectedValue6,
            onChanged: (String? value) {
              setState(() {
                selectedValue6 = value;
              });
            },
            buttonStyleData: ButtonStyleData(
              height: 50,
              width: 400,
              padding: const EdgeInsets.only(left: 14, right: 14),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                border: const Border.fromBorderSide(BorderSide(color: Colors.grey)
                ),
                color: Colors.grey.shade100,
              ),
              elevation: 2,
            ),
            iconStyleData: const IconStyleData(
              icon: Icon(
                Icons.arrow_drop_down,
              ),
              iconSize: 20,
              iconEnabledColor: Colors.grey,
              iconDisabledColor: Colors.grey,
            ),
            dropdownStyleData: DropdownStyleData(
              maxHeight: 200,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: Colors.grey.shade100,
              ),
              
              offset: const Offset(-20, 0),
              scrollbarTheme: ScrollbarThemeData(
                radius: const Radius.circular(40),
                thickness: MaterialStateProperty.all<double>(6),
                thumbVisibility: MaterialStateProperty.all<bool>(true),
              ),
            ),
            menuItemStyleData: const MenuItemStyleData(
              height: 40,
              padding: EdgeInsets.only(left: 14, right: 14),
            ),
          ),
        ),),
                                          
                                           
                                           
                                           ],),
                          ],
                        ),
                      ), ),
                    ),
                   
                   
                                    Container(
                                      child: Padding(
                                        padding: const EdgeInsets.only(top:10),
                                        child: ElevatedButton(
                                         
                                          
                                          onPressed: () {
                                            if(secim==1){
                                               Navigator.push(context, MaterialPageRoute(builder: (context) => const filterPage()));
                                            }
                                            else if(secim2==3){
                                               Navigator.push(context, MaterialPageRoute(builder: (context) => const addPage()));
                                            }
                                           
                                          },style: ElevatedButton.styleFrom(
                                          foregroundColor: Colors.white,
                                          backgroundColor: Colors.blue[900], 
                                           shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        ),),child: const Padding(
                                          padding: EdgeInsets.only(right: 145,left:145,),
                                          child: Text("Apply Filter"),
                                          
                                        ), 
                                        
                                          
                                        ),
                                      ),
                                    )

                  
                    ],
                  ) ,) 
                ),
                ); 
              },
            );
                          },
                          label: const Text('filter',style: TextStyle(color: Colors.black87,fontSize: 20),),
                          icon: const Icon(Icons.filter_alt_outlined,color: Colors.black54,),
                          backgroundColor: Colors.white,
                         
                       ),
             ),
            
             
             
           ],
                    ),
                 ),
           Container(
                 child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(DateFormat.yMMMM().format(DateTime.now()),style: const TextStyle(color: Colors.indigo,fontSize: 30),),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 120,bottom: 20),
                    child: Text('18 Photos',style: TextStyle()),
                  ),
                ],
              ),    
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const imagesPage()));}, child: const Text("See All",style: TextStyle(color: Colors.orange),)),
              ),
            ],
                 ),
               ),
               SizedBox(
                 height: 100,
               width: double.maxFinite,
                 child: Container(
            padding: const EdgeInsets.only(left: 10),
            child: ListView.builder(
              itemCount: 3,
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) { 
               return  Container(
              margin: const EdgeInsets.only(right: 2,top: 5,) ,  
              width: 130,
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color:Colors.amber,
                image:  DecorationImage(image:AssetImage("assets/${images.elementAt(index)}"),fit: BoxFit.cover),
            
                
              ),
                
              );
               },
              
            ),
                 ),
               ),
              SizedBox(
                 height: 100,
               width: double.maxFinite,
                 child: Container(
            padding: const EdgeInsets.only(left: 10),
            child: ListView.builder(
              itemCount: 3,
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) { 
               return  Container(
              margin: const EdgeInsets.only(right: 2,top: 5) ,  
              width: 130,
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color:Colors.amber,
                 image:  DecorationImage(image:AssetImage("assets/${images1.elementAt(index)}"),fit: BoxFit.cover),
            
                
              ),
                
              );
               },
              
            ),
                 ),
               ),
               SizedBox(
                 height:100,
               width: double.maxFinite,
                 child: Container(
            padding: const EdgeInsets.only(left: 10),
            child: ListView.builder(
              itemCount: 3,
              physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,   
              itemBuilder: (BuildContext context, int index) { 
               return  Container(
              margin: const EdgeInsets.only(right: 2,top: 5) ,  
              width: 130,
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color:Colors.amber,
                 image: DecorationImage(image:AssetImage("assets/${images2.elementAt(index)}"),fit: BoxFit.cover),
            
                
              ),
                
              );
               },
              
            ),
                 ),
               ),
               Container(
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(DateFormat.yMMMM().format(DateTime.now()),style: const TextStyle(color: Colors.indigo,fontSize: 30),),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 120,bottom: 20),
                    child: Text('18 Photos',style: TextStyle()),
                  ),
                ],
                ),    
                TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const imagesPage()));}, child: const Text("See All",style: TextStyle(color: Colors.orange),)),
              ],
            ),
               ),
                SizedBox(
                 height: 95,
               width: double.maxFinite,
                 child: Container(
            padding: const EdgeInsets.only(left: 10,bottom: 10),
            child: ListView.builder(
              itemCount: 3,
             physics: const NeverScrollableScrollPhysics(),
             scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) { 
               return  Container(
              margin: const EdgeInsets.only(right: 2,) ,  
              width: 130,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color:Colors.amber,
                image:  DecorationImage(image:AssetImage("assets/${images4.elementAt(index)}"),fit: BoxFit.cover),
            
                
              ),
                
              );
               },
              
            ),
                 ),
               ),
         ],
       );
  }
}

