import '../booking_page/booking_page_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroOnboardingWidget extends StatefulWidget {
  const IntroOnboardingWidget({Key key}) : super(key: key);

  @override
  _IntroOnboardingWidgetState createState() => _IntroOnboardingWidgetState();
}

class _IntroOnboardingWidgetState extends State<IntroOnboardingWidget> {
  PageController pageViewController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 1,
                  child: Stack(
                    children: [
                      PageView(
                        controller: pageViewController ??=
                            PageController(initialPage: 0),
                        scrollDirection: Axis.vertical,
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Color(0x000E6069),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: Image.asset(
                                  'assets/images/new_mobile_bg.png',
                                ).image,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 20),
                                      child: Image.asset(
                                        'assets/images/StepOneGraphic.png',
                                        width: 350,
                                        height: 400,
                                        fit: BoxFit.fitWidth,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 20, 8),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Select Your Trip',
                                        style: FlutterFlowTheme.title1.override(
                                          fontFamily: 'Open Sans',
                                          color: FlutterFlowTheme.tertiaryColor,
                                          fontSize: 32,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 20, 8),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Text(
                                          'We offer Inshore & Offshore Fishing trips. So book your trip, come on down, and have a blast and enjoying the beauty of Southern Louisiana.',
                                          style: FlutterFlowTheme.subtitle2
                                              .override(
                                            fontFamily: 'Open Sans',
                                            color: FlutterFlowTheme.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                            fontStyle: FontStyle.italic,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 20, 8),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 16, 0, 0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            await pageViewController.nextPage(
                                              duration:
                                                  Duration(milliseconds: 300),
                                              curve: Curves.ease,
                                            );
                                          },
                                          text: 'Scroll Down',
                                          options: FFButtonOptions(
                                            width: 170,
                                            height: 50,
                                            color:
                                                FlutterFlowTheme.tertiaryColor,
                                            textStyle: FlutterFlowTheme
                                                .subtitle2
                                                .override(
                                              fontFamily: 'Open Sans',
                                              color: FlutterFlowTheme.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                            ),
                                            elevation: 5,
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1,
                                            ),
                                            borderRadius: 12,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.primaryColor,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: Image.asset(
                                  'assets/images/OboardBackgroundOne.jpg',
                                ).image,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 20),
                                      child: Image.asset(
                                        'assets/images/StepTwoGraphic.png',
                                        width: 350,
                                        height: 400,
                                        fit: BoxFit.fitWidth,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 20, 8),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'In App Messaging',
                                        style: FlutterFlowTheme.title1.override(
                                          fontFamily: 'Open Sans',
                                          color: Colors.white,
                                          fontSize: 32,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 20, 8),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Text(
                                          'We make it easy to reach the team when you need ot with our new in app messaging!',
                                          style: FlutterFlowTheme.subtitle2
                                              .override(
                                            fontFamily: 'Open Sans',
                                            color: Color(0x99FFFFFF),
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal,
                                            fontStyle: FontStyle.italic,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 20, 8),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 16, 0, 0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            await pageViewController.nextPage(
                                              duration:
                                                  Duration(milliseconds: 300),
                                              curve: Curves.ease,
                                            );
                                          },
                                          text: 'Scroll Down',
                                          options: FFButtonOptions(
                                            width: 170,
                                            height: 50,
                                            color:
                                                FlutterFlowTheme.secondaryColor,
                                            textStyle: FlutterFlowTheme
                                                .subtitle2
                                                .override(
                                              fontFamily: 'Open Sans',
                                              color: FlutterFlowTheme.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                            ),
                                            elevation: 5,
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1,
                                            ),
                                            borderRadius: 12,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Color(0xFFDCE0E4),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: Image.asset(
                                  'assets/images/OboardBackgroundTwo.jpg',
                                ).image,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Lottie.network(
                                      'https://assets2.lottiefiles.com/packages/lf20_0yqzuvbm.json',
                                      width: 350,
                                      height: 400,
                                      fit: BoxFit.cover,
                                      animate: true,
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 20, 8),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Finalize Your Booking',
                                        style: FlutterFlowTheme.title1.override(
                                          fontFamily: 'Open Sans',
                                          color: Color(0xFF151B1E),
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 20, 8),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Text(
                                          'We offer a fluid experience by allowing you to book, pay deposit, and know when your trip is.',
                                          style: FlutterFlowTheme.subtitle2
                                              .override(
                                            fontFamily: 'Open Sans',
                                            color: Color(0x9D15212B),
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal,
                                            fontStyle: FontStyle.italic,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 20, 8),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 16, 0, 0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            await Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    BookingPageWidget(),
                                              ),
                                            );
                                          },
                                          text: 'Get Started',
                                          options: FFButtonOptions(
                                            width: 170,
                                            height: 50,
                                            color:
                                                FlutterFlowTheme.secondaryColor,
                                            textStyle: FlutterFlowTheme
                                                .subtitle2
                                                .override(
                                              fontFamily: 'Open Sans',
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                            ),
                                            elevation: 2,
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1,
                                            ),
                                            borderRadius: 12,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.85, 0.7),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                          child: SmoothPageIndicator(
                            controller: pageViewController ??=
                                PageController(initialPage: 0),
                            count: 3,
                            axisDirection: Axis.vertical,
                            onDotClicked: (i) {
                              pageViewController.animateToPage(
                                i,
                                duration: Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            },
                            effect: ExpandingDotsEffect(
                              expansionFactor: 2,
                              spacing: 8,
                              radius: 16,
                              dotWidth: 8,
                              dotHeight: 8,
                              dotColor: FlutterFlowTheme.white,
                              activeDotColor: FlutterFlowTheme.black,
                              paintStyle: PaintingStyle.fill,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
