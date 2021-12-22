import '../flutter_flow/flutter_flow_calendar.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookingPageWidget extends StatefulWidget {
  const BookingPageWidget({Key key}) : super(key: key);

  @override
  _BookingPageWidgetState createState() => _BookingPageWidgetState();
}

class _BookingPageWidgetState extends State<BookingPageWidget> {
  DateTimeRange calendarSelectedDay;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.secondaryColor,
        automaticallyImplyLeading: true,
        title: Text(
          'Available Dates',
          style: FlutterFlowTheme.bodyText1.override(
            fontFamily: 'Open Sans',
            color: FlutterFlowTheme.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: Color(0xFFF5F5F5),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 1,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            FlutterFlowCalendar(
              color: FlutterFlowTheme.primaryColor,
              weekFormat: false,
              weekStartsMonday: false,
              onChange: (DateTimeRange newSelectedDate) {
                setState(() => calendarSelectedDay = newSelectedDate);
              },
              titleStyle: FlutterFlowTheme.title3.override(
                fontFamily: 'Open Sans',
                color: Color(0xFF1D1D1D),
                fontWeight: FontWeight.bold,
              ),
              dayOfWeekStyle: FlutterFlowTheme.bodyText1.override(
                fontFamily: 'Open Sans',
                color: FlutterFlowTheme.secondaryColor,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
              dateStyle: FlutterFlowTheme.bodyText1.override(
                fontFamily: 'Open Sans',
                color: Color(0xFF1F1F1F),
              ),
              selectedDateStyle: FlutterFlowTheme.bodyText1.override(
                fontFamily: 'Open Sans',
                color: FlutterFlowTheme.white,
                fontWeight: FontWeight.bold,
              ),
              inactiveDateStyle: FlutterFlowTheme.bodyText1.override(
                fontFamily: 'Open Sans',
                color: Color(0xFFA0A0A0),
              ),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
