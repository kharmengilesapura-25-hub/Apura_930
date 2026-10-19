import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  static const Color blue = Color(0xFF0866FF);
  static const Color gray = Color(0xFFE4E6EB);

  final String name = 'Kharmen Giles';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // COVER PHOTO AND PROFILE PICTURE
              SizedBox(
                height: 260,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned.fill(
                      child: Image.network(
                        'https://images.unsplash.com/photo-1449824913935-59a10b8d2000?auto=format&fit=crop&w=900&q=80',
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            color: const Color(0xFF24364B),
                          );
                        },
                      ),
                    ),

                    // Cover photo action icons
                    Positioned(
                      top: 12,
                      left: 14,
                      right: 14,
                      child: Row(
                        children: [
                          _topIcon(Icons.menu),
                          const Spacer(),
                          _topIcon(Icons.edit_outlined),
                          const SizedBox(width: 12),
                          _topIcon(Icons.search),
                          const SizedBox(width: 12),
                          _topIcon(Icons.more_horiz),
                        ],
                      ),
                    ),

                    // Cover camera
                    Positioned(
                      bottom: 12,
                      right: 14,
                      child: _cameraButton(),
                    ),

                    // White curved profile background
                    Positioned(
                      bottom: -1,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 18,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(24),
                          ),
                        ),
                      ),
                    ),

                    // Overlapping circular profile picture
                    Positioned(
                      bottom: -34,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              width: 118,
                              height: 118,
                              padding: const EdgeInsets.all(5),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: ClipOval(
                                child: Image.network(
                                  'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=400&q=80',
                                  fit: BoxFit.cover,
                                  errorBuilder: (context, error, stackTrace) {
                                    return const CircleAvatar(
                                      backgroundColor: Color(0xFFDCE6F4),
                                      child: Icon(
                                        Icons.person,
                                        size: 70,
                                        color: Color(0xFF385D91),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 3,
                              right: 1,
                              child: _cameraButton(small: true),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // PROFILE INFORMATION
              const SizedBox(height: 35),
              Center(
                child: Column(
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 2),
                    const Text(
                      '3 posts',
                      style: TextStyle(fontSize: 12),
                    ),
                    const SizedBox(height: 12),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.location_on, size: 17),
                        SizedBox(width: 4),
                        Text(
                          'Iloilo City',
                          style: TextStyle(fontSize: 13),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // ACTION BUTTONS
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 16, 14, 12),
                child: Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 42,
                        child: ElevatedButton.icon(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.add_circle_outline,
                            size: 17,
                          ),
                          label: const Text('Add to story'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: blue,
                            foregroundColor: Colors.white,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: SizedBox(
                        height: 42,
                        child: ElevatedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.edit, size: 16),
                          label: const Text('Edit profile'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: gray,
                            foregroundColor: Colors.black,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // PRIVACY NOTICE
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 4, 16, 14),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 19,
                      backgroundColor: gray,
                      child: Icon(
                        Icons.shield,
                        color: Colors.black,
                        size: 21,
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'You locked your profile',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          'Learn more',
                          style: TextStyle(
                            fontSize: 12,
                            color: blue,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // PROFILE TABS
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Row(
                  children: [
                    _tab('All', true),
                    _tab('Photos', false),
                    _tab('Reels', false),
                  ],
                ),
              ),

              const Divider(
                height: 22,
                indent: 14,
                endIndent: 14,
                color: Color(0xFFE4E6EB),
              ),

              // PERSONAL DETAILS
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Expanded(
                          child: Text(
                            'Personal details',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.edit_outlined,
                            size: 19,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    _detail(
                      Icons.location_on_outlined,
                      'Iloilo City, Philippines',
                    ),
                    const SizedBox(height: 13),
                    _detail(
                      Icons.home_outlined,
                      'Tabuc Suba, Iloilo',
                    ),
                    const SizedBox(height: 13),
                    _detail(
                      Icons.calendar_month_outlined,
                      'October 19, 2026',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _topIcon(IconData icon) {
    return Icon(
      icon,
      color: Colors.white,
      size: 24,
    );
  }

  Widget _cameraButton({bool small = false}) {
    return Container(
      width: small ? 32 : 35,
      height: small ? 32 : 35,
      decoration: BoxDecoration(
        color: small ? gray : Colors.white,
        shape: BoxShape.circle,
        border: small ? Border.all(color: Colors.white, width: 2) : null,
      ),
      child: Icon(
        Icons.camera_alt,
        size: small ? 17 : 21,
        color: Colors.black,
      ),
    );
  }

  Widget _tab(String label, bool selected) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      padding: const EdgeInsets.symmetric(
        horizontal: 13,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        color: selected ? const Color(0xFFE7F0FF) : Colors.transparent,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 12,
          color: selected ? blue : Colors.black,
          fontWeight: selected ? FontWeight.w600 : FontWeight.normal,
        ),
      ),
    );
  }

  Widget _detail(IconData icon, String text) {
    return Row(
      children: [
        SizedBox(
          width: 29,
          child: Icon(icon, size: 21),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(fontSize: 13),
          ),
        ),
      ],
    );
  }
}
