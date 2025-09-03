import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

/// Widget para exibir textos localizados de forma simples
class LocalizedText extends StatelessWidget {
  final String Function(AppLocalizations) textBuilder;
  final TextStyle? style;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;

  const LocalizedText(
    this.textBuilder, {
    super.key,
    this.style,
    this.textAlign,
    this.maxLines,
    this.overflow,
  });

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    if (localizations == null) {
      return const Text('Texto não disponível');
    }

    return Text(
      textBuilder(localizations),
      style: style,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }
}

/// Exemplos de uso comum
class LocalizedTexts {
  static Widget welcome(BuildContext context, {TextStyle? style}) {
    return LocalizedText(
      (l10n) => l10n.welcome,
      style: style,
    );
  }

  static Widget appTitle(BuildContext context, {TextStyle? style}) {
    return LocalizedText(
      (l10n) => l10n.appTitle,
      style: style,
    );
  }

  static Widget login(BuildContext context, {TextStyle? style}) {
    return LocalizedText(
      (l10n) => l10n.login,
      style: style,
    );
  }

  static Widget loading(BuildContext context, {TextStyle? style}) {
    return LocalizedText(
      (l10n) => l10n.loading,
      style: style,
    );
  }

  static Widget noConnection(BuildContext context, {TextStyle? style}) {
    return LocalizedText(
      (l10n) => l10n.noConnection,
      style: style,
    );
  }
}
