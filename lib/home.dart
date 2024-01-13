import 'package:flowers_market/gen/assets.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.line_horizontal_3,
              size: 24.h,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Our Discount service',
                  style: GoogleFonts.archivoBlack(
                    fontSize: 34.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Gap(12.h),// tu peux utiliser SiseBox() , pour utiliser gap() il faut get son package
                Image.asset(MyImage.images.pick.path),
                Text(
                  'cart',
                  style: GoogleFonts.archivoBlack(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Gap(12.h), 

                // ListTile() ici est comme une Row()/Card mais avec Trois parties:
                // un leading(element a gauche de la Row), un trailing(element a droite de la Row)
                // et un body( avec titre et sous-titre)
                ListTile(
                  leading: Container(
                    width: 62.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      image: DecorationImage(
                        image: AssetImage(MyImage.images.flower1.path), //basiquement on utilse un string, le chemain vers l'image. eg. AssetImage('assets/flower-1.jpeg')
                      ),
                    ),
                  ),
                  title: const Text('Antirrhinum \nmajus'),
                  subtitle: const Text('X1'),
                  dense: true,
                  trailing: const Column(
                    children: [
                      Text('255\$'),
                    ],
                  ),
                ),
                Divider(endIndent: 12.w, indent: 12.w),
                ListTile(
                  leading: Container(
                    width: 62.w,
                    decoration: BoxDecoration(
                      color: Colors.yellow[200],
                      borderRadius: BorderRadius.circular(5.r),
                      image: DecorationImage(
                        image: AssetImage(MyImage.images.flower2.path),
                      ),
                    ),
                  ),
                  title: const Text('Antirrhinum \nmajus'),
                  subtitle: const Text('X2'),
                  dense: true,
                  trailing: const Column(
                    children: [
                      Text('255\$'),
                    ],
                  ),
                ),
                Divider(endIndent: 12.w, indent: 12.w),
                ListTile(
                  // Pour afficher l'image je pref utiliser un container avec une box decoration
                  //  C'est comme en html-css, quand on utilise une  Div avec background-image
                  leading: Container(
                    width: 62.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      image: DecorationImage(
                        image: AssetImage(MyImage.images.flower3.path),
                        repeat: ImageRepeat.noRepeat,
                        fit: BoxFit.contain,
                        colorFilter:  ColorFilter.mode( Colors.deepPurple[200]!, BlendMode.screen)
                      ),
                    ),
                  ),
                  title: const Text('Antirrhinum \nmajus'),
                  subtitle: const Text('X1'),
                  dense: true,
                  trailing: const Column(
                    children: [
                      Text('255\$'),
                    ],
                  ),
                ),
                Divider(endIndent: 12.w, indent: 12.w), // le divider ici est comme une Div avec width de 1-2px
                // tu peux modifier la couleur ainsi que la taille(height) et aussi le weight de la bordure
              ],
            ),
          ),
        ),
      ),
    );
  }
}
