import 'package:book_me/config/app.config.dart';
import 'package:book_me/config/font-weight.dart';
import 'package:book_me/config/sizes.config.dart';
import 'package:book_me/features/components/buttons/elevated-button.components.dart';
import 'package:book_me/features/components/buttons/outlined-button.components.dart';
import 'package:book_me/features/components/scaffold.components.dart';
import 'package:book_me/features/pages/home.pages.dart';
import 'package:book_me/util/launcher.dart';
import 'package:book_me/util/os.dart';
import 'package:book_me/util/package.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  static const String routeName = '/welcome';

  const WelcomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      bottomWidget: Padding(
          padding: EdgeInsets.only(
              right: AppSizes.medium,
              left: AppSizes.medium,
              bottom: OS.isAndroid ? 0 : AppSizes.small),
          child: AppElevatedButton(
            block: true,
            label: 'Get Started',
            onPressed: () => {
              Navigator.pushNamed(context, HomePage.routeName),
            },
          )),
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/images/car.png',
              width: AppSizes.getPercentOfDeviceWidth(
                  context: context, percent: .4),
            ),
            Image.asset(
              'assets/images/delivery.png',
              width: AppSizes.getPercentOfDeviceWidth(
                  context: context, percent: .4),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/images/food.png',
              width: AppSizes.getPercentOfDeviceWidth(
                  context: context, percent: .4),
            ),
            Image.asset(
              'assets/images/package.png',
              width: AppSizes.getPercentOfDeviceWidth(
                  context: context, percent: .4),
            ),
          ],
        ),
        const SizedBox(
          height: AppSizes.medium,
        ),
        AppIcon,
        const SizedBox(
          height: AppSizes.small,
        ),
        const Text(
          'Need to move?',
          style: TextStyle(
              fontWeight: AppFontWeight.bold, fontSize: AppSizes.medium),
        ),
        const Text(
          'Book Me',
          style: TextStyle(
              fontWeight: AppFontWeight.black, fontSize: AppSizes.large),
        ),
        const SizedBox(
          height: AppSizes.small,
        ),
        const Text(
            "For any inquiries or communication regarding Book Me or Diriangen Lempira Powell's Flutter app development skills, please feel free to reach out via email at dlpowell35@gmail.com. Your messages and questions are welcome, and Powell looks forward to engaging with you regarding his demo application and related expertise."),
        const Spacer(),
        AppOutlineddButton(
            onPressed: () {
              Launch.email(email: 'dlpowell35@gmail.com', context: context);
            },
            label: 'Send me an email',
            block: true),
        AppOutlineddButton(
          onPressed: () {
            Launch.url(
                url: 'https://github.com/iansstuff15/book_me',
                context: context);
          },
          label: 'Check project code on GitHub',
          block: true,
        ),
        AppOutlineddButton(
          onPressed: () {
            Launch.url(url: 'https://by-ian.dev', context: context);
          },
          label: 'Check out Ian\'s website',
          block: true,
        ),
        const Spacer(),
        FutureBuilder<PackageData>(
            future: Package.getPackageData(),
            builder:
                (BuildContext context, AsyncSnapshot<PackageData> snapshot) {
              if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else if (!snapshot.hasData) {
                return const Text('Loading...');
              }
              final data = snapshot.data!;
              return Center(
                child: Text(
                    '${data.packageName} v${data.version}+${data.buildNumber}'),
              );
            }),
        const SizedBox(
          height: AppSizes.small,
        )
      ],
    );
  }
}
