import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo/src/features/auth/image_controller.dart';
import '../../shared/resources/resources.dart';
import '../../shared/widgets/button.dart';
import '../../shared/widgets/text.dart';

class UploadImage extends ConsumerStatefulWidget {
  static const String id = '/upload_image';
  const UploadImage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _UploadImageState();
}

class _UploadImageState extends ConsumerState<UploadImage> {
  String? image;

  Widget imageSourcePicker(String method, Function()? pay) {
    return Container(
      width: MediaQuery.of(context).size.height,
      height: 129,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        border: Border.all(color: const Color.fromARGB(7, 0, 0, 0)),
      ),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
        splashColor: Res.color.primary.withOpacity(.2),
        onPressed: pay,
        child: Image.asset(method),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            right: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .35,
              decoration: BoxDecoration(
                image: DecorationImage(
                  opacity: .1,
                  image: AssetImage(Res.image.backgroundTwo),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 90),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AppBackButton(),
                const SizedBox(height: 20),
                AppText(
                  text: 'Upload Your Photo Profile',
                  fontSize: 25,
                  textColor: Res.color.title,
                  align: TextAlign.start,
                ),
                const SizedBox(height: 20),
                AppText(
                  text: 'This data wil be displayed in your'
                      ' account\nprofile for security ',
                  fontSize: 12,
                  textColor: Res.color.subTitle,
                  align: TextAlign.start,
                ),
                const SizedBox(height: 20),
                image == null
                    ? Column(
                        children: [
                          imageSourcePicker(Res.image.gallery, () {}),
                          const SizedBox(height: 20),
                          imageSourcePicker(Res.image.camera, () {
                            ref.read(cameraProvider);
                          }),
                        ],
                      )
                    : Align(
                        child: Container(
                          height: 238,
                          width: 245,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(22)),
                          child: Stack(
                            children: [
                              Positioned(
                                right: 0,
                                child: IconButton(
                                  onPressed: () {},
                                  splashRadius: 20,
                                  iconSize: 34,
                                  color: Res.color.white.withOpacity(.5),
                                  icon: const Icon(Icons.cancel),
                                ),
                              ),
                              // Image.file(File s),
                            ],
                          ),
                        ),
                      ),
                const SizedBox(height: 90),
                Align(
                  child: Button(
                    buttonName: 'Next',
                    fontSize: 16,
                    hPadding: 60,
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
