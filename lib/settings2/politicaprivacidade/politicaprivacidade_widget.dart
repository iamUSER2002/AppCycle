import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'politicaprivacidade_model.dart';
export 'politicaprivacidade_model.dart';

class PoliticaprivacidadeWidget extends StatefulWidget {
  const PoliticaprivacidadeWidget({super.key});

  @override
  State<PoliticaprivacidadeWidget> createState() =>
      _PoliticaprivacidadeWidgetState();
}

class _PoliticaprivacidadeWidgetState extends State<PoliticaprivacidadeWidget> {
  late PoliticaprivacidadeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PoliticaprivacidadeModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        automaticallyImplyLeading: false,
        leading: InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            context.pop();
          },
          child: Icon(
            Icons.chevron_left_rounded,
            color: FlutterFlowTheme.of(context).primaryText,
            size: 32.0,
          ),
        ),
        title: Align(
          alignment: const AlignmentDirectional(-1.0, 0.0),
          child: Text(
            'AppCycle',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Montserrat',
                  letterSpacing: 0.0,
                ),
          ),
        ),
        actions: const [],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Divider(
              thickness: 1.0,
              color: FlutterFlowTheme.of(context).accent4,
            ),
            RichText(
              textScaler: MediaQuery.of(context).textScaler,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Termos de Uso\n\n',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Plus Jakarta Sans',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 20.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  TextSpan(
                    text: '1. Aceitação dos Termos\n',
                    style: TextStyle(
                      color: FlutterFlowTheme.of(context).primary,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  TextSpan(
                    text:
                        'Ao utilizar a AppCycle, concorda em cumprir e estar vinculado aos seguintes termos e condições de uso. Se não concordar com alguma parte destes termos, não deverá utilizar a aplicação.\n\n',
                    style: TextStyle(
                      color: FlutterFlowTheme.of(context).secondaryText,
                    ),
                  ),
                  TextSpan(
                    text: '2. Uso da Aplicação\n',
                    style: TextStyle(
                      color: FlutterFlowTheme.of(context).primary,
                    ),
                  ),
                  TextSpan(
                    text:
                        'A AppCycle é destinada a fornecer um serviço de recolha de e-waste e resíduos têxteis ao domicílio. Concorda em utilizar a aplicação apenas para os fins previstos e em conformidade com todas as leis e regulamentos aplicáveis.\n\n',
                    style: TextStyle(
                      color: FlutterFlowTheme.of(context).secondaryText,
                    ),
                  ),
                  TextSpan(
                    text: '3. Conta de Utilizador\n',
                    style: TextStyle(
                      color: FlutterFlowTheme.of(context).primary,
                    ),
                  ),
                  TextSpan(
                    text:
                        'Para utilizar a AppCycle, poderá ser solicitado que crie uma conta, fornecendo informações pessoais precisas e completas. É responsável por manter a confidencialidade das suas informações de login e por todas as atividades que ocorram sob a sua conta.\n\n',
                    style: TextStyle(
                      color: FlutterFlowTheme.of(context).secondaryText,
                    ),
                  ),
                  TextSpan(
                    text: '4. Modificações nos Termos\n',
                    style: TextStyle(
                      color: FlutterFlowTheme.of(context).primary,
                    ),
                  ),
                  TextSpan(
                    text:
                        'A AppCycle reserva-se o direito de modificar estes termos a qualquer momento. As alterações serão publicadas na aplicação e é da sua responsabilidade rever os termos periodicamente. O uso continuado da aplicação após a publicação das alterações constitui aceitação dos novos termos.\n\n',
                    style: TextStyle(
                      color: FlutterFlowTheme.of(context).secondaryText,
                    ),
                  ),
                  const TextSpan(
                    text: 'Política de Privacidade\n\n',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  TextSpan(
                    text: '1. Recolha de Informações\n',
                    style: TextStyle(
                      color: FlutterFlowTheme.of(context).primary,
                    ),
                  ),
                  TextSpan(
                    text:
                        'A AppCycle recolhe informações pessoais, como nome, morada, número de telefone e email, para fornecer os serviços solicitados. Também podemos recolher informações não pessoais, como dados de uso e cookies, para melhorar a experiência do utilizador.\n\n',
                    style: TextStyle(
                      color: FlutterFlowTheme.of(context).secondaryText,
                    ),
                  ),
                  TextSpan(
                    text: '2. Uso das Informações\n',
                    style: TextStyle(
                      color: FlutterFlowTheme.of(context).primary,
                    ),
                  ),
                  TextSpan(
                    text:
                        'As informações recolhidas são usadas para operar, manter e fornecer as funcionalidades da aplicação, assim como para comunicar-se consigo e responder às suas solicitações.\n\n',
                    style: TextStyle(
                      color: FlutterFlowTheme.of(context).secondaryText,
                    ),
                  ),
                  TextSpan(
                    text: '3. Partilha de Informações\n',
                    style: TextStyle(
                      color: FlutterFlowTheme.of(context).primary,
                    ),
                  ),
                  TextSpan(
                    text:
                        'A AppCycle não partilha as suas informações pessoais com terceiros, exceto conforme necessário para fornecer os serviços ou conforme exigido por lei. Podemos partilhar informações não pessoais agregadas com parceiros e anunciantes para fins de análise e melhoria dos serviços.\n\n',
                    style: TextStyle(
                      color: FlutterFlowTheme.of(context).secondaryText,
                    ),
                  ),
                  TextSpan(
                    text: '4. Segurança das Informações\n',
                    style: TextStyle(
                      color: FlutterFlowTheme.of(context).primary,
                    ),
                  ),
                  TextSpan(
                    text:
                        'Tomamos medidas de segurança apropriadas para proteger as suas informações contra acesso não autorizado, alteração, divulgação ou destruição. No entanto, nenhum método de transmissão pela internet ou armazenamento eletrónico é 100% seguro, e não podemos garantir a segurança absoluta das suas informações.\n\n',
                    style: TextStyle(
                      color: FlutterFlowTheme.of(context).secondaryText,
                    ),
                  ),
                  TextSpan(
                    text: '5. Direitos do Utilizador\n',
                    style: TextStyle(
                      color: FlutterFlowTheme.of(context).primary,
                    ),
                  ),
                  TextSpan(
                    text:
                        'Tem o direito de aceder, corrigir, atualizar ou eliminar as suas informações pessoais a qualquer momento. Para exercer esses direitos, entre em contacto connosco através dos meios disponibilizados na aplicação.\n\n',
                    style: TextStyle(
                      color: FlutterFlowTheme.of(context).secondaryText,
                    ),
                  ),
                  TextSpan(
                    text: '6. Retenção de Dados\n',
                    style: TextStyle(
                      color: FlutterFlowTheme.of(context).primary,
                    ),
                  ),
                  TextSpan(
                    text:
                        'Reteremos as suas informações pessoais apenas pelo tempo necessário para cumprir os propósitos para os quais foram recolhidas ou conforme exigido por lei.\n\n',
                    style: TextStyle(
                      color: FlutterFlowTheme.of(context).secondaryText,
                    ),
                  ),
                  TextSpan(
                    text: '7. Alterações na Política de Privacidade\n',
                    style: TextStyle(
                      color: FlutterFlowTheme.of(context).primary,
                    ),
                  ),
                  TextSpan(
                    text:
                        'A AppCycle pode atualizar esta política de privacidade periodicamente. Notificaremos sobre quaisquer alterações publicando a nova política na aplicação. Recomendamos que reveja esta política regularmente para se manter informado sobre como protegemos as suas informações.\n\n',
                    style: TextStyle(
                      color: FlutterFlowTheme.of(context).secondaryText,
                    ),
                  ),
                  TextSpan(
                    text: '8. Contacto\n',
                    style: TextStyle(
                      color: FlutterFlowTheme.of(context).primary,
                    ),
                  ),
                  TextSpan(
                    text:
                        'Se tiver alguma dúvida sobre estes Termos e Políticas de Privacidade, entre em contacto connosco através do email suporte@appcycle.com.\n\n',
                    style: TextStyle(
                      color: FlutterFlowTheme.of(context).secondaryText,
                    ),
                  ),
                  TextSpan(
                    text:
                        'Agradecemos por escolher a AppCycle e por contribuir para um ambiente mais sustentável!',
                    style: TextStyle(
                      color: FlutterFlowTheme.of(context).secondaryText,
                    ),
                  )
                ],
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Montserrat',
                      letterSpacing: 0.0,
                    ),
              ),
            ),
            Divider(
              thickness: 1.0,
              color: FlutterFlowTheme.of(context).accent4,
            ),
          ],
        ),
      ),
    );
  }
}
