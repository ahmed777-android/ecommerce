import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Column(
        children: [
          Center(
            child: Container(
                width: 150,
                height: 200,
                child: Image(image: AssetImage('assets/images/logo2.png'))),
          ),
          Html(
            data: """
         <p>Hello guys! I am ahmed [replace name with company name if required]</p>

<p>Welcome to <b>Xenion</b>, your number one source for all things related to <b>mansoura </b>. We're dedicated to giving you the very best of mansoura  with a focus on quality and real-world problem solution.</p>
<p>
Founded in 2020-02-02 by ahmed, Xenion has come a long way from its beginnings in <b>6060</b> located in <b>Egypt</b>.
When ahmed first started out, our passion for mansoura 
drove us to start our own blog/website.
</p>
<p>
We hope you enjoy our blog as much as We enjoy offering them to you. If you have any questions or comments, please don't hesitate to contact us.
</p>
<p>
Sincerely,
ahmed
</p>
         """,

          )
        ],
      ),
    );
  }
}
