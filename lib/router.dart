// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:lettutorapp/BecomeToTeacher/become2teacher_page.dart';
import 'package:lettutorapp/Courses/courses_page.dart';
import 'package:lettutorapp/ForgotPassword/forgot_password_page.dart';
import 'package:lettutorapp/Home/room.dart';
import 'package:lettutorapp/Login/login_page.dart';
import 'package:lettutorapp/Home/home_page.dart';
import 'package:lettutorapp/Message/message_page.dart';
import 'package:lettutorapp/Profile/edit_profile.dart';
import 'package:lettutorapp/Profile/profile_page.dart';
import 'package:lettutorapp/Register/register_page.dart';
import 'package:lettutorapp/Setting/advanced_settings.dart';
import 'package:lettutorapp/Setting/booking_history.dart';
import 'package:lettutorapp/Setting/session_history.dart';
import 'package:lettutorapp/Setting/settings_page.dart';
import 'package:lettutorapp/Setting/view_feedbacks.dart';
import 'package:lettutorapp/TeacherDetail/teacher_detail.dart';
import 'package:lettutorapp/Tutors/tutors_page.dart';
import 'package:lettutorapp/Upcoming/upcoming_page.dart';
import 'package:lettutorapp/Welcome/welcome_page.dart';
import 'package:lettutorapp/notfound.dart';

class Routers {
  static const String Welcome = '/welcome';
  static const String Login = '/login';
  static const String Home = '/home';
  static const String Message = '/message';
  static const String Upcoming = '/upcoming';
  static const String Tutors = '/tutors';
  static const String Settings = '/settings';
  static const String ForgotPassword = '/forgot-password';
  static const String Register = '/register';
  static const String Profile = '/profile';
  static const String EditProfile = '/edit-profile';
  static const String TeacherDetail = '/teacher-detail';
  static const String RoomMeeting = '/room-meeting';
  static const String Courses = '/courses';
  static const String Become2Teacher = '/settings/become-to-teacher';
  static const String AdvSettings = '/settings/advanced-settings';
  static const String BookingHistory = '/settings/booking-history';
  static const String SessionHistory = '/settings/session-history';
  static const String ViewFeedback = '/settings/view-feedback';
  static const String CourseDetail = '/courses/course-detail';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Welcome:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const WelcomePage(),
        );
      case Login:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const LoginPage(),
        );
      case Register:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const RegisterPage(),
        );
      case ForgotPassword:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const ForgotPasswordPage(),
        );
      case Home:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const HomeScreen(),
        );
      case Message:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const MessagePage(),
        );
      case Upcoming:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const UpcomingPage(),
        );
      case Tutors:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const TutorsPage(),
        );
      case Settings:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const SettingPage(),
        );
      case Courses:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const CoursePage(),
        );
      case TeacherDetail:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const TeacherPage(),
        );
      case Profile:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const ProfilePage(),
        );
      case EditProfile:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const EditProfilePage(),
        );
      case Become2Teacher:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const BecomeToTeacherPage(),
        );
      case RoomMeeting:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const RoomPage(),
        );
      case AdvSettings:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const AdvSettingPage(),
        );
      case BookingHistory:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const BookingHistoryPage(),
        );
      case SessionHistory:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const SessionHistoryPage(),
        );
      case ViewFeedback:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const FeedbackListPage(),
        );
      case CourseDetail:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const CoursePage(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const NotFoundPage(),
        );
    }
  }
}
