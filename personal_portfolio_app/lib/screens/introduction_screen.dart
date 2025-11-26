import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
import '../utils/responsiveness.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        mobile: const _MobileIntroduction(),
        desktop: const _DesktopIntroduction(),
      ),
    );
  }
}

class _MobileIntroduction extends StatelessWidget {
  const _MobileIntroduction();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.customAmber,
      child: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header
                    const Text(
                      'PORTFOLIO',
                      style: TextStyle(
                        fontFamily: 'Abhaya Libre',
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        letterSpacing: 2.0,
                        color: AppColors.customDarkBrown,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      height: 1,
                      color: AppColors.customBrownDark,
                    ),
                    const SizedBox(height: 32),
                    
                    // Title
                    const Text(
                      'Introduction',
                      style: TextStyle(
                        fontFamily: 'Abhaya Libre',
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                        color: AppColors.customDarkBrown,
                      ),
                    ),
                    const SizedBox(height: 24),
                    
                    // Two-column layout: text left, image right
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Text column
                        Expanded(
                          flex: 3,
                          child: const Text(
                            'My name is Cretu Claudia, and I am a 24-year-old ICT student at Fontys University of Applied Sciences. My passion lies in mobile development, frontend development and UX design.',
                            style: TextStyle(
                              fontFamily: 'Abhaya Libre',
                              fontSize: 14,
                              height: 1.6,
                              color: AppColors.customDarkBrown,
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        // Image column
                        Expanded(
                          flex: 2,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              'assets/cretu-claudia.jpg',
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) {
                                return Container(
                                  height: 150,
                                  color: AppColors.customGrayLight,
                                  child: const Icon(
                                    Icons.person,
                                    size: 60,
                                    color: AppColors.customDarkBrown,
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    
                    // Second paragraph below image
                    const Text(
                      'I am gaining valuable experience as a mobile developer during my internship at WildlifeNL. My journey has equipped me with strong technical skills in design and mobile app development. I am currently seeking job opportunities where I can apply my expertise, continue learning, and contribute to impactful projects.',
                      style: TextStyle(
                        fontFamily: 'Abhaya Libre',
                        fontSize: 14,
                        height: 1.6,
                        color: AppColors.customDarkBrown,
                      ),
                    ),
                    const SizedBox(height: 80),
                  ],
                ),
              ),
            ),
            
            // Footer
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: const BoxDecoration(
                  color: AppColors.customAmber,
                  border: Border(
                    top: BorderSide(color: AppColors.customBrownDark, width: 1),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [
                        Text(
                          'Cretu Claudia',
                          style: TextStyle(
                            fontFamily: 'Abhaya Libre',
                            fontSize: 12,
                            color: AppColors.customBrownDark,
                          ),
                        ),
                        SizedBox(width: 8),
                        Text(
                          '|',
                          style: TextStyle(
                            fontFamily: 'Abhaya Libre',
                            fontSize: 12,
                            color: AppColors.customBrownDark,
                          ),
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Portfolio',
                          style: TextStyle(
                            fontFamily: 'Abhaya Libre',
                            fontSize: 12,
                            color: AppColors.customBrownDark,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            
            // Navigation arrows
            Positioned(
              bottom: 16,
              left: 16,
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: AppColors.customOrange,
                  size: 40,
                ),
              ),
            ),
            Positioned(
              bottom: 16,
              right: 16,
              child: IconButton(
                onPressed: () {
                  // Navigate to expertise page
                  // Navigator.pushNamed(context, '/expertise');
                },
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  color: AppColors.customOrange,
                  size: 40,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DesktopIntroduction extends StatelessWidget {
  const _DesktopIntroduction();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Left text panel
        Expanded(
          child: Container(
            color: AppColors.customAmber,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Header
                      const Text(
                        'PORTFOLIO',
                        style: TextStyle(
                          fontFamily: 'Abhaya Libre',
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          letterSpacing: 2.0,
                          color: AppColors.customDarkBrown,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        height: 1,
                        color: AppColors.customBrownDark,
                      ),
                      
                      // Centered content
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 80.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Introduction',
                                style: TextStyle(
                                  fontFamily: 'Abhaya Libre',
                                  fontSize: 36,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.customDarkBrown,
                                ),
                              ),
                              const SizedBox(height: 24),
                              const SizedBox(
                                width: 500,
                                child: Text(
                                  'My name is Cretu Claudia, and I am a 24-year-old ICT student at Fontys University of Applied Sciences. My passion lies in mobile development, frontend development and UX design.',
                                  style: TextStyle(
                                    fontFamily: 'Abhaya Libre',
                                    fontSize: 18,
                                    height: 1.6,
                                    color: AppColors.customDarkBrown,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 24),
                              const SizedBox(
                                width: 500,
                                child: Text(
                                  'Currently in my fifth semester, I am gaining valuable experience as a mobile developer during my internship with WildlifeNL. My journey has equipped me with strong technical skills in design and mobile app development. I am currently seeking job opportunities where I can apply my expertise, continue learning, and contribute to impactful projects. I am excited by environments that encourage growth, innovation, and teamwork, and I am eager to make a positive difference as I advance in my career.',
                                  style: TextStyle(
                                    fontFamily: 'Abhaya Libre',
                                    fontSize: 18,
                                    height: 1.6,
                                    color: AppColors.customDarkBrown,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      
                      // Footer
                      Container(
                        padding: const EdgeInsets.only(top: 12),
                        decoration: const BoxDecoration(
                          border: Border(
                            top: BorderSide(color: AppColors.customBrownDark, width: 1),
                          ),
                        ),
                        child: const Row(
                          children: [
                            Text(
                              'Cretu Claudia',
                              style: TextStyle(
                                fontFamily: 'Abhaya Libre',
                                fontSize: 12,
                                color: AppColors.customBrownDark,
                              ),
                            ),
                            SizedBox(width: 16),
                            Text(
                              '|',
                              style: TextStyle(
                                fontFamily: 'Abhaya Libre',
                                fontSize: 12,
                                color: AppColors.customBrownDark,
                              ),
                            ),
                            SizedBox(width: 16),
                            Text(
                              'Portfolio',
                              style: TextStyle(
                                fontFamily: 'Abhaya Libre',
                                fontSize: 12,
                                color: AppColors.customBrownDark,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                
                // Left nav arrow
                Positioned(
                  left: 32,
                  top: MediaQuery.of(context).size.height / 2 - 24,
                  child: IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: AppColors.customOrange,
                      size: 48,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        
        // Right image panel
        Expanded(
          child: Container(
            color: AppColors.customDarkBrown,
            child: Stack(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/cretu-claudia.jpg',
                        fit: BoxFit.contain,
                        height: MediaQuery.of(context).size.height * 0.82,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            height: MediaQuery.of(context).size.height * 0.82,
                            width: 400,
                            color: AppColors.customGrayLight,
                            child: const Icon(
                              Icons.person,
                              size: 120,
                              color: AppColors.customDarkBrown,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
                
                // Right nav arrow
                Positioned(
                  right: 32,
                  top: MediaQuery.of(context).size.height / 2 - 24,
                  child: IconButton(
                    onPressed: () {
                      // Navigate to expertise page
                      // Navigator.pushNamed(context, '/expertise');
                    },
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.customOrange,
                      size: 48,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
