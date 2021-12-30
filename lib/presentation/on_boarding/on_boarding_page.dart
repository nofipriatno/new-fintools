import 'package:carousel_slider/carousel_slider.dart';
import 'package:fintools/application/on_boarding/on_boarding_bloc.dart';
import 'package:fintools/domain/core/constant/app_asset.dart';
import 'package:fintools/domain/core/constant/app_color.dart';
import 'package:fintools/domain/core/constant/app_font.dart';
import 'package:fintools/injection.dart';
import 'package:fintools/presentation/component/button/custom_button.dart';
import 'package:fintools/presentation/component/dialog/custom_dialog.dart';
import 'package:fintools/presentation/interceptor/interceptor_page.dart';
import 'package:fintools/utilities/i10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class OnBoardingPage extends HookWidget {
  OnBoardingPage({Key? key}) : super(key: key);

  String? _productTitle;
  String? _productDescription;

  @override
  Widget build(BuildContext context) {
    int _activeIndex = 0;
    _productTitle = I10n.current.product_collect;
    _productDescription = I10n.current.description_collection;

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: BlocProvider<OnBoardingBloc>(
          create: (_) => getIt<OnBoardingBloc>(),
          child: BlocConsumer<OnBoardingBloc, OnBoardingState>(
              builder: (context, state) {
            return Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 27),
                      child: Image.asset(AppAssets.imagesLogo),
                    ),
                    _imageSlider(context),
                    _titleAndDescription(),
                    SizedBox(
                      width: 200,
                      child: CustomButton.normalButton(I10n.current.login, () {
                        context
                            .read<OnBoardingBloc>()
                            .add(OnBoardingEvent.onLoginTap(_activeIndex));
                      }),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: AnimatedSmoothIndicator(
                        activeIndex: _activeIndex,
                        count: 3,
                        effect: SlideEffect(
                            spacing: 16,
                            dotColor: AppColor.gold,
                            activeDotColor: AppColor.lightGrey),
                      ),
                    )
                  ],
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: IconButton(
                    icon: const Icon(Icons.settings),
                    onPressed: () {
                      context.read<OnBoardingBloc>().add(
                            const OnBoardingEvent.onIconSettingTap(),
                          );
                    },
                  ),
                )
              ],
            );
          }, listener: (context, state) {
            state.map(
                changeActiveIndexSuccess: (e) {
                  _activeIndex = e.index;
                  switch (e.index) {
                    case 0:
                      _productTitle = I10n.current.product_collect;
                      _productDescription = I10n.current.description_collection;
                      break;
                    case 1:
                      _productTitle = I10n.current.product_prove;
                      _productDescription = I10n.current.description_prove;
                      break;
                    case 2:
                      _productTitle = I10n.current.product_survey;
                      _productDescription = I10n.current.description_survey;
                      break;
                  }
                },
                onSettingTapSuccess: (e) async {
                  var result = await CustomDialog.input(context,
                      title: I10n.current.input_corp_domain,
                      buttonText: I10n.current.save);
                  if (result != null) {
                    context
                        .read<OnBoardingBloc>()
                        .add(OnBoardingEvent.onSaveUrl(result));
                  }
                },
                initial: (e) {},
                onProductSelect: (e) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => InterceptorPage(
                        (e.product),
                      ),
                    ),
                  );
                },
                onSavedUrlSuccess: (url) {
                  CustomDialog.info(context,
                      title: I10n.current.app_name,
                      message: 'Success To Change Domain to ${url.url}');
                });
          }),
        ),
      ),
    );
  }

  Widget _titleAndDescription() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 65, vertical: 27),
      child: Column(
        children: [
          Text(
            _productTitle!,
            style: AppFont.text18Bold.copyWith(color: AppColor.blue),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Text(
              _productDescription!,
              textAlign: TextAlign.center,
              style: AppFont.text10Normal.copyWith(color: AppColor.gold),
            ),
          )
        ],
      ),
    );
  }

  Widget _imageSlider(BuildContext context) {
    return CarouselSlider(
      items: [
        _carouselItem(AppAssets.imagesOnBoarding1),
        _carouselItem(AppAssets.imagesOnBoarding2),
        _carouselItem(AppAssets.imagesOnBoarding3),
      ],
      options: CarouselOptions(
        onPageChanged: (index, _) {
          context.read<OnBoardingBloc>().add(
                OnBoardingEvent.onSweepImage(index),
              );
        },
        viewportFraction: 0.6,
        initialPage: 0,
        enableInfiniteScroll: true,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  Widget _carouselItem(String asset) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColor.blue),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Image.asset(asset),
      ),
    );
  }
}
