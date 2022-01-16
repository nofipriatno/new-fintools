import 'package:fintools/domain/core/constant/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomShape extends StatelessWidget {
  const BottomShape({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: ScreenUtil().screenHeight),
      child: CustomPaint(
        size: Size(ScreenUtil().screenWidth, ScreenUtil().screenHeight),
        painter: CurvePainter(),
      ),
    );
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.shader = LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.center,
            colors: [AppColor.blue, AppColor.white])
        .createShader(Offset.zero & (size * 0.4));
    paint.style = PaintingStyle.fill;

    var path = Path();

    path.moveTo(0, 0);
    path.lineTo(0, size.height * 0.25);
    path.cubicTo(size.width * 0.30, (3 * size.height * 0.10),
        3 * size.width * 0.60, size.height * 0.07, size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class DetailShape extends StatelessWidget {
  const DetailShape({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: ScreenUtil().screenHeight),
      child: CustomPaint(
        size: Size(ScreenUtil().screenWidth, ScreenUtil().screenHeight),
        painter: BottomDetailPainter(),
      ),
    );
  }
}

class BottomDetailPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = AppColor.blue;
    paint.style = PaintingStyle.fill;

    var path = Path();

    path.moveTo(0, size.height * 0.15);
    path.quadraticBezierTo(
        size.width * 0.45, size.height * 0.01, size.width, size.height * 0.30);

    path.lineTo(size.width, size.height);
    path.lineTo(size.width * 0.40, size.height);
    path.lineTo(0, size.height * 0.93);

    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
