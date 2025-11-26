import 'package:flutter/material.dart';
import '../utils/app_colors.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isDesktop = size.width >= 768;

    return Scaffold(
      backgroundColor: AppColors.customAmber,
      body: Stack(
        children: [
          // Diagonal background triangle on right side
          Positioned.fill(
            child: ClipPath(
              clipper: DiagonalClipper(),
              child: Container(
                color: AppColors.customDarkBrown,
              ),
            ),
          ),
          // Content container
          SafeArea(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: 32,
                vertical: isDesktop ? 48 : 24,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(flex: 2),
                  // Portfolio title
                  Text(
                    'Portfolio',
                    style: TextStyle(
                      fontFamily: 'Abhaya Libre',
                      fontSize: isDesktop ? 96 : 48,
                      fontWeight: FontWeight.bold,
                      color: AppColors.customDarkBrown,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 16),
                  // Name
                  Text(
                    'Cretu Claudia',
                    style: TextStyle(
                      fontFamily: 'Abhaya Libre',
                      fontSize: isDesktop ? 36 : 20,
                      fontWeight: FontWeight.w600,
                      color: AppColors.customDarkBrown,
                    ),
                  ),
                  const SizedBox(height: 16),
                  // Skills description
                  isDesktop
                      ? const Text(
                          'FRONT END DEVELOPMENT | MOBILE APPLICATION DEVELOPMENT | UX DESIGN',
                          style: TextStyle(
                            fontFamily: 'Abhaya Libre',
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: AppColors.customDarkBrown,
                            letterSpacing: 2.0,
                          ),
                        )
                      : const Text(
                          'FRONT END DEVELOPMENT\nMOBILE APPLICATION DEVELOPMENT\nUX DESIGN',
                          style: TextStyle(
                            fontFamily: 'Abhaya Libre',
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: AppColors.customDarkBrown,
                            letterSpacing: 2.0,
                            height: 1.5,
                          ),
                        ),
                  const SizedBox(height: 32),
                  // Browse portfolio button
                  InkWell(
                    onTap: () {
                      // Navigate to introduction page
                      // Navigator.pushNamed(context, '/introduction');
                    },
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Browse my portfolio',
                            style: TextStyle(
                              fontFamily: 'Abhaya Libre',
                              fontSize: isDesktop ? 36 : 20,
                              fontWeight: FontWeight.w500,
                              color: AppColors.customBrownDark,
                            ),
                          ),
                          const SizedBox(width: 16),
                          const Icon(
                            Icons.arrow_forward_ios,
                            color: AppColors.customOrange,
                            size: 40,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Spacer(flex: 1),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DiagonalClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(size.width, 0);
    path.lineTo(0, 0);
    path.lineTo(size.width, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
