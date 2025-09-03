import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LocalizationHelper {
  
  /// Obtém as traduções do contexto atual
  static AppLocalizations of(BuildContext context) {
    return AppLocalizations.of(context)!;
  }
  
  /// Verifica se o idioma atual é português
  static bool isPortuguese(BuildContext context) {
    return Localizations.localeOf(context).languageCode == 'pt';
  }
  
  /// Verifica se o idioma atual é inglês
  static bool isEnglish(BuildContext context) {
    return Localizations.localeOf(context).languageCode == 'en';
  }
  
  /// Obtém o código do idioma atual
  static String getCurrentLanguageCode(BuildContext context) {
    return Localizations.localeOf(context).languageCode;
  }
  
  /// Obtém o código do país atual
  static String getCurrentCountryCode(BuildContext context) {
    return Localizations.localeOf(context).countryCode ?? '';
  }
  
  /// Exemplo de uso das traduções
  static String getWelcomeMessage(BuildContext context) {
    final l10n = of(context);
    return l10n.welcome;
  }
  
  /// Exemplo de uso do título do app
  static String getAppTitle(BuildContext context) {
    final l10n = of(context);
    return l10n.appTitle;
  }
}
