import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../home_page/home_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ListViewWidget extends StatefulWidget {
  const ListViewWidget({Key key}) : super(key: key);

  @override
  _ListViewWidgetState createState() => _ListViewWidgetState();
}

class _ListViewWidgetState extends State<ListViewWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomePageWidget(),
              ),
            );
          },
        ),
        title: Text(
          'Lista de empleados',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Color(0xFFEEEEEE),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                'https://raw.githubusercontent.com/DiegoMeleroAyala/WebMaster_GridView/master/assets/yo%20xde.jpg',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              'Diego Melero',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 24,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Color(0xFFEEEEEE),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                'https://i.pinimg.com/736x/2c/e0/6a/2ce06a58fcd007a2e8acfb4fb977923a--o-donnell-tumblr-boys.jpg',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              'Eduardo Salvador',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 24,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Color(0xFFEEEEEE),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                'data:image/jpeg;base64,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',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              'Jaqueline Rodarte',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 24,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Color(0xFFEEEEEE),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                'https://i.pinimg.com/236x/45/37/d9/4537d92e54b9faa86ea8fc10ef01b24f.jpg',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              'Raul Aniles',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 24,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Color(0xFFEEEEEE),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                'https://thumbs.dreamstime.com/b/cara-seria-del-estudiante-joven-del-adolescente-43274911.jpg',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              'Isaac Garcia',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 24,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Color(0xFFEEEEEE),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                'https://thumbs.dreamstime.com/b/retrato-de-la-mujer-adolescente-con-la-cara-seria-64527370.jpg',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              'America Portillo',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 24,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
