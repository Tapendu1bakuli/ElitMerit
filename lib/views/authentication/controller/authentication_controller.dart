import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../utils/colors/app_colors.dart';
import '../../../utils/text_utils/text_utils.dart';

class AuthenticationController extends GetxController {
  String editProfileBirthday = "";
   TextEditingController dateController = TextEditingController();
   TextEditingController contractEndDateController = TextEditingController();
   TextEditingController chequeDateController = TextEditingController();
   TextEditingController chequeDate1Controller = TextEditingController();
   DateTime? selectedDate;
  RxBool favotitesSelected = true.obs;
  RxBool savedSelected = false.obs;
  RxBool favotitesSelected1 = true.obs;
  RxBool savedSelected1 = false.obs;
  RxBool favotitesSelected2 = true.obs;
  RxBool savedSelected2 = false.obs;
  RxString temporaryVehicleImageName = "".obs;
  RxString temporaryVehicleImagePath = "".obs;
  RxString temporaryDocImageName = "".obs;
  RxString temporaryDocImagePath = "".obs;

  RxBool obscurePassword = true.obs;
  RxBool checkBoxValue = false.obs;
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var isLoading = false.obs;
  var isLoadingTimer = false.obs;
  var signUpPasswordIndicator = true.obs;
  final signUpFormKey = GlobalKey<FormState>();
  var isPasswordError = false.obs;
  var isEmailError = false.obs;
  var isUserNameError = false.obs;
  var isUserSurNameError = false.obs;
  var isUserPhoneError = false.obs;
  var isAgreeTermsAndPrivacy = false.obs;
  var isEmailErrorForForgotPassword = false.obs;
  var isPasswordErrorForForgotPassword = false.obs;
  var isPasswordErrorForConfirmForgotPassword = false.obs;

  TextEditingController loginEmailController = TextEditingController();
  TextEditingController loginPasswordController = TextEditingController();
  TextEditingController createNewAccountFirstNameController =
      TextEditingController();
  TextEditingController createNewAccountLastNameController =
      TextEditingController();
  TextEditingController createNewAccountEmailController =
      TextEditingController();
  TextEditingController createNewAccountPhoneController =
      TextEditingController();
  TextEditingController accountSettingsLanguageController =
      TextEditingController();
  TextEditingController accountSettingsPasswordController =
      TextEditingController();

  TextEditingController forgotPasswordController = TextEditingController();
  TextEditingController verifyOTPController = TextEditingController();
  TextEditingController createNewPasswordController = TextEditingController();
  TextEditingController createNewConfirmPasswordController =
      TextEditingController();
  final forgotPasswordFormKey = GlobalKey<FormState>();
  final verifyOTPFormKey = GlobalKey<FormState>();
  final createNewPasswordFormKey = GlobalKey<FormState>();
  RxString temporaryTokenForForgotPassword = "".obs;
  final loginFormKey = GlobalKey<FormState>();
  final createAccountFormKey = GlobalKey<FormState>();
  final passwordRecoveryFormKey = GlobalKey<FormState>();
  final accountSettingsFormKey = GlobalKey<FormState>();
  var forgotPasswordIndicator = true.obs;
  var forgotConfirmPasswordIndicator = true.obs;

  //For timer
  Rx<int> secondsRemaining = 0.obs;
  Rx<bool> enableResend = false.obs;
  Timer? timer;

  List<String> locations = ['A', 'B', 'C', 'D']; // Option 2
  String? selectedLocation = "";

  addTimer() {
    print("enableResend:$enableResend");
    secondsRemaining.value = 20;
    if (timer != null && timer!.isActive) {
      timer!.cancel();
    }
    timer = Timer.periodic(Duration(seconds: 1), (_) {
      if (secondsRemaining != 0) {
        secondsRemaining.value--;
        print(secondsRemaining);
      } else {
        enableResend.value = false;
      }
    });
  }

  void resendCode() {
    addTimer();
    secondsRemaining.value = 20;
    enableResend.value = false;
  }

  @override
  dispose() {
    timer!.cancel();
    super.dispose();
  }

  String? validatePassword(String? password) {
    String pattern =
        r"(^(?=.*[a-z])(?=.*[A-Z])(?=.*[@$!%*?&.*':;€#])[A-Za-z\d@$!%*?&.*':;€#]{6,}$)";
    RegExp regExp = RegExp(pattern);
    if (password == null || password.isEmpty) {
      isPasswordError.value = true;
      return "Password is required";
    } else if (password.length < 8 || password.length > 15) {
      isPasswordError.value = true;
      return AppStrings.passwordValid.tr;
    } else if (!regExp.hasMatch(password)) {
      isPasswordError.value = true;
      return "Password must contain at least one uppercase letter, one lowercase letter, one special character and one number";
    }
    isPasswordError.value = false;
    return null;
  }

  String? validatePasswordForSignIn(String? password) {
    Future.delayed(Duration.zero, () async {
      if (password == null || password.isEmpty) {
        isPasswordError.value = true;
        return null;
      }
      isPasswordError.value = false;
    });
    return null;
  }

  String? validateEmail(String? email) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = RegExp(pattern);
    Future.delayed(Duration.zero, () async {
      if (email == null || email.isEmpty) {
        isEmailError.value = true;
        return null;
      } else if (!regex.hasMatch(email)) {
        isEmailError.value = true;
        return null;
      } else {
        isEmailError.value = false;
      }
      isEmailError.value = false;
    });
    return null;
  }

  String? validateEmailForForgotPassword(
    String? email,
  ) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = RegExp(pattern);
    if (email == null || email.isEmpty) {
      isEmailErrorForForgotPassword.value = true;
      return "Email is required";
    } else if (!regex.hasMatch(email)) {
      isEmailErrorForForgotPassword.value = true;
      return AppStrings.pleaseEnterValidEmailAddress.tr;
    } else {
      isEmailErrorForForgotPassword.value = false;
    }
    isEmailErrorForForgotPassword.value = false;
    return null;
  }

  String? validateName(String? name) {
    Future.delayed(Duration.zero, () async {
      if (name == null || name.trim().isEmpty) {
        isUserNameError.value = true;
        return null;
      } else if (!RegExp(r'^[a-zA-Z\s]*$').hasMatch(name)) {
        isUserNameError.value = true;
        return null;
      } else {
        isUserNameError.value = false;
      }
    });
    return null;
  }
  String? validateSurName(String? name) {
    Future.delayed(Duration.zero, () async {
      if (name == null || name.trim().isEmpty) {
        isUserSurNameError.value = true;
        return null;
      } else if (!RegExp(r'^[a-zA-Z\s]*$').hasMatch(name)) {
        isUserSurNameError.value = true;
        return null;
      } else {
        isUserSurNameError.value = false;
      }
    });
    return null;
  }

  String? validatePhone(String? name) {
    Future.delayed(Duration.zero, () async {
      if (name == null || name.trim().isEmpty) {
        isUserPhoneError.value = true;
        return null;
      } else if (!RegExp(r'^[0-9\s]*$').hasMatch(name)) {
        isUserPhoneError.value = true;
        return null;
      } else {
        isUserPhoneError.value = false;
      }
    });
    return null;
  }

  String? validatePasswordForForgotPassowrd(String? password) {
    String pattern =
        r"(^(?=.*[a-z])(?=.*[A-Z])(?=.*[@$!%*?&.*':;€#])[A-Za-z\d@$!%*?&.*':;€#]{6,}$)";
    RegExp regExp = RegExp(pattern);
    if (password == null || password.isEmpty) {
      isPasswordErrorForForgotPassword.value = true;
      return "Password is required";
    } else if (password.length < 8 || password.length > 15) {
      isPasswordErrorForForgotPassword.value = true;
      return AppStrings.passwordValid.tr;
    } else if (!regExp.hasMatch(password)) {
      isPasswordErrorForForgotPassword.value = true;
      return "Password must contain at least one uppercase letter, one lowercase letter, one special character and one number";
    }
    isPasswordErrorForForgotPassword.value = false;
    return null;
  }

  String? validateConfirmPassword(String? password, String? cPassword) {
    if (cPassword == null || cPassword.isEmpty) {
      isPasswordErrorForConfirmForgotPassword.value = true;
      return "Password is required";
    } else if (cPassword != password) {
      isPasswordErrorForConfirmForgotPassword.value = true;
      return "Password don’t match";
    } else
      isPasswordErrorForConfirmForgotPassword.value = false;
    return null;
  }

  // String? validateName(String? name) {
  //   if (name == null || name.isEmpty) {
  //     isUserNameError.value = true;
  //     return "Full Name is required";
  //   } else {
  //     isUserNameError.value = false;
  //   }
  //   return null;
  // }
}
