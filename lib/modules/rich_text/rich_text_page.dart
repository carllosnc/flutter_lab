import 'package:flutter/material.dart';

sealed class VWRichStyle {
  static bool checkBold(String input) => (input.contains("<b>") && input.contains("</b>")) ? true : false;
  static bool checkItalic(String input) => (input.contains("<i>") && input.contains("</i>")) ? true : false;
  static bool checkUnderline(String input) => (input.contains("<u>") && input.contains("</u>")) ? true : false;
  static bool checkPrimaryColor(String input) => (input.contains("<pc>") && input.contains("</pc>")) ? true : false;
  static bool checkMark(String input) => (input.contains("<m>") && input.contains("</m>")) ? true : false;
  static bool checkDelete(String input) => (input.contains("<d>") && input.contains("</d>")) ? true : false;
  static bool checkOverline(String input) => (input.contains("<o>") && input.contains("</o>")) ? true : false;

  static getTextDecoration(String input) {
    if (checkUnderline(input)) return TextDecoration.underline;
    if (checkDelete(input)) return TextDecoration.lineThrough;
    if (checkOverline(input)) return TextDecoration.overline;

    return null;
  }

  static String sanitize(String input) => input
      .replaceAll("<b>", "") //
      .replaceAll("</b>", "")
      .replaceAll("<i>", "")
      .replaceAll("</i>", "")
      .replaceAll("<u>", "")
      .replaceAll("</u>", "")
      .replaceAll("<pc>", "")
      .replaceAll("</pc>", "")
      .replaceAll("<m>", "")
      .replaceAll("</m>", "")
      .replaceAll("<d>", "")
      .replaceAll("</d>", "")
      .replaceAll("<o>", "")
      .replaceAll("</o>", "");
}

class VWRichText extends StatefulWidget {
  final String text;
  final Color? primaryColor;
  final Color? markColor;
  final TextStyle? textStyle;

  const VWRichText({
    super.key,
    required this.text,
    this.primaryColor = Colors.red,
    this.markColor = const Color.fromARGB(255, 255, 192, 192),
    this.textStyle,
  });

  @override
  State<VWRichText> createState() => _VWRichTextState();
}

class _VWRichTextState extends State<VWRichText> {
  TextStyle defaultStyle = const TextStyle();

  @override
  Widget build(BuildContext context) {
    final words = widget.text.split(RegExp(r'(?<=\s)(?=\S)|(?<=\S)(?=\s)'));

    List<TextSpan> spans = [];

    for (var word in words) {
      var style = TextStyle(
        color: VWRichStyle.checkPrimaryColor(word) ? widget.primaryColor : Theme.of(context).colorScheme.onBackground,
        fontWeight: VWRichStyle.checkBold(word) ? FontWeight.w900 : FontWeight.normal,
        fontStyle: VWRichStyle.checkItalic(word) ? FontStyle.italic : FontStyle.normal,
        decoration: VWRichStyle.getTextDecoration(word),
        backgroundColor: VWRichStyle.checkMark(word) ? widget.markColor : null,
      );

      word = VWRichStyle.sanitize(word);

      spans.add(TextSpan(text: word, style: style));
    }

    return RichText(
      text: TextSpan(
        style: defaultStyle.merge(widget.textStyle),
        children: spans,
      ),
    );
  }
}

class RichTextPage extends StatefulWidget {
  const RichTextPage({Key? key}) : super(key: key);

  @override
  State<RichTextPage> createState() => _RichTextPageState();
}

class _RichTextPageState extends State<RichTextPage> {
  //controller
  final _textController = TextEditingController();
  String text = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rich Text'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            //input
            TextField(
              decoration: const InputDecoration(labelText: 'Enter text'),
              controller: _textController,
              onChanged: (value) => setState(() => text = value),
            ),
            const SizedBox(height: 20),
            //output
            VWRichText(
              text: text,
              textStyle: const TextStyle(fontSize: 20),
              primaryColor: Colors.blue,
              markColor: Colors.green,
            ),
            const SizedBox(height: 20),
            const VWRichText(
              textStyle: TextStyle(
                fontSize: 24,
                height: 1.5,
              ),
              text:
                  "<m>Lorem</m> <m><b><d>Ipsum</d></b></m> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's <pc><i><b>standard</b></i></pc> dummy text ever since the 1500s, when an unknown printer took a galley of type and <b><o>scrambled</o></b> it to make a type specimen book.", //
            ),
          ],
        ),
      ),
    );
  }
}
