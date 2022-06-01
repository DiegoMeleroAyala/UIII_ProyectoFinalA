import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'flutter_flow/flutter_flow_theme.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/internationalization.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'index.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await FlutterFlowTheme.initialize();

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();

  static _MyAppState of(BuildContext context) => context.findAncestorStateOfType<_MyAppState>();
}

class _MyAppState extends State<MyApp> {
  Locale _locale;
  ThemeMode _themeMode = FlutterFlowTheme.themeMode;

  void setLocale(Locale value) => setState(() => _locale = value);
  void setThemeMode(ThemeMode mode) => setState(() {
        _themeMode = mode;
        FlutterFlowTheme.saveThemeMode(mode);
      });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UIII Proyecto Final Melero Ayala Diego 6to I',
      localizationsDelegates: [
        FFLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: _locale,
      supportedLocales: const [
        Locale('en', '')
      ],
      theme: ThemeData(brightness: Brightness.light),
      darkTheme: ThemeData(brightness: Brightness.light),
      themeMode: _themeMode,
      home: HomePageWidget(),
    );
  }
}

class NavBarPage extends StatefulWidget {
  NavBarPage({Key key, this.initialPage}) : super(key: key);

  final String initialPage;

  @override
  _NavBarPageState createState() => _NavBarPageState();
}

/// This is the private State class that goes with NavBarPage.
class _NavBarPageState extends State<NavBarPage> {
  String _currentPage = 'Inicio';

  @override
  void initState() {
    super.initState();
    _currentPage = widget.initialPage ?? _currentPage;
  }

  @override
  Widget build(BuildContext context) {
    final tabs = {
      'Inicio': InicioWidget(),
      'DatosDesarrollador': DatosDesarrolladorWidget(),
      'Empleados': EmpleadosWidget(),
      'Productos': ProductosWidget(),
      'Clientes': ClientesWidget(),
      'ListView': ListViewWidget(),
      'Conclusiones': ConclusionesWidget(),
    };
    final currentIndex = tabs.keys.toList().indexOf(_currentPage);
    return Scaffold(
      body: tabs[_currentPage],
      bottomNavigationBar: GNav(
        selectedIndex: currentIndex,
        onTabChange: (i) => setState(() => _currentPage = tabs.keys.toList()[i]),
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        color: Color(0x8A000000),
        activeColor: FlutterFlowTheme.of(context).primaryBackground,
        tabBackgroundColor: Color(0x00000000),
        tabBorderRadius: 100,
        tabMargin: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 40),
        gap: 0,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        duration: Duration(milliseconds: 500),
        haptic: false,
        tabs: [
          GButton(
            icon: Icons.home_outlined,
            text: 'Inicio',
            iconSize: 27,
          ),
          GButton(
            icon: FontAwesomeIcons.idCardAlt,
            text: 'Desarrollador',
            iconSize: 24,
          ),
          GButton(
            icon: FontAwesomeIcons.idCard,
            text: 'Empleados',
            iconSize: 24,
          ),
          GButton(
            icon: FontAwesomeIcons.laptop,
            text: 'Productos',
            iconSize: 24,
          ),
          GButton(
            icon: Icons.location_history,
            text: 'Clientes',
            iconSize: 25,
          ),
          GButton(
            icon: FontAwesomeIcons.solidAddressCard,
            text: 'Lista de Empleados',
            iconSize: 24,
          ),
          GButton(
            icon: FontAwesomeIcons.solidCalendarCheck,
            text: 'Conclusiones',
            iconSize: 24,
          )
        ],
      ),
    );
  }
}
