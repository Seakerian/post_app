import 'package:flutter/material.dart';

void dynamicModal(
  BuildContext context, {
  Widget? body,
  String? title,
}) {
  showModalBottomSheet(
    isScrollControlled: true,
    elevation: 0,
    context: context,
    backgroundColor: Colors.transparent,
    builder: (context) => ModalContent(
      body: body,
      title: title,
    ),
  );
}

class ModalContent extends StatefulWidget {
  const ModalContent({
    super.key,
    this.body,
    this.title,
  });
  final Widget? body;
  final String? title;
  @override
  State<ModalContent> createState() => _ModalContentState();
}

class _ModalContentState extends State<ModalContent> {
  Widget? body;
  String? title;
  @override
  void initState() {
    super.initState();
    body = super.widget.body;
    title = super.widget.title;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 248, 248, 248),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(
                10,
              ),
            ),
          ),
          child: IntrinsicHeight(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 50,
                  height: 5,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 200, 200, 200),
                      borderRadius: BorderRadius.circular(2.5)),
                ),
                const SizedBox(height: 15),
                if (title != null) ...[
                  Text(
                    title!,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 85, 85, 85),
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Divider(),
                  const SizedBox(height: 10),
                ],
                body ?? const SizedBox(),
                Padding(
                  padding: MediaQuery.of(context).viewInsets,
                  child: const SizedBox(height: 10),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
