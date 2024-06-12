import 'package:flutter/material.dart';
//import 'package:guia_museu/components/myButton.dart';
import 'package:guia_museu/components/customDrawer.dart';


/// Flutter code sample for [showDatePicker].

class DatePickerApp extends StatelessWidget {
  const DatePickerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const DatePickerExample();
  }
}

class DatePickerExample extends StatefulWidget {
  const DatePickerExample({super.key, this.restorationId});

  final String? restorationId;

  @override
  State<DatePickerExample> createState() => _DatePickerExampleState();
}

/// RestorationProperty objects can be used because of RestorationMixin.
class _DatePickerExampleState extends State<DatePickerExample>
    with RestorationMixin {
  // In this example, the restoration ID for the mixin is passed in through
  // the [StatefulWidget]'s constructor.
  @override
  String? get restorationId => widget.restorationId;

  final RestorableDateTime _selectedDate =
      RestorableDateTime(DateTime(2024, 7, 25));
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
          firstDate: DateTime(2024),
          lastDate: DateTime(2025),
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
  return Scaffold( 
    appBar: AppBar(title: const Text("Agende sua visita" , style: TextStyle(fontSize: 24))),
    drawer: CustomDrawer(),
    backgroundColor: Color(0xff327EF0),
    body: Padding(
      padding: const EdgeInsets.all(16.0),  
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          crossAxisSpacing: 10,
          mainAxisSpacing: 5,
          childAspectRatio: 9 / 18,
        ),
        itemCount: 1,
        itemBuilder: (context, int index) {
          return Container(
             decoration: BoxDecoration(
                  color: Colors.white, 
                  borderRadius: BorderRadius.circular(20),
                  ),
            child: Column(
              children: [Center(
                child: 
                    Padding( padding: const EdgeInsets.symmetric(vertical:350),
                    child:
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                            backgroundColor:  Color(0xff327EF0), // background color
                              foregroundColor:   Colors.white, 
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                                onPressed: () {_restorableDatePickerRouteFuture.present();},
                                child: const Text('Agendar Visita'),
                                )
                       ) 
                      )
                    ],
                  ),
                );
            },
          ),
        ),
      );
    }
 }
  

/* Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: CustomDrawer(),
      body: Center(
        child:  ElevatedButton(
          style: ElevatedButton.styleFrom(
           backgroundColor:  Color(0xff327EF0) , // background color
            foregroundColor:   Colors.white, 
             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
              onPressed: () {_restorableDatePickerRouteFuture.present();},
              child: const Text('Agendar Visita'),)
    )
    );
   }
   */