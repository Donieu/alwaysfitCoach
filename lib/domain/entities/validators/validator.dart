class Validators {
  bool _validateEmail(String value) {
    final RegExp regExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (regExp.hasMatch(value)) {
      return true;
    }
    return false;
  }

  String? email(String? value) {
    if (value == null || value.isEmpty) {
      return 'O endereço de email está incorreto \nou não corresponde a uma conta existente.';
    }

    if (!_validateEmail(value)) {
      return 'O endereço de email está incorreto \nou não corresponde a uma conta existente.';
    }

    return null;
  }

  String? emailForgot(String? value) {
    if (value == null || value.isEmpty) {
      return 'O endereço de email está vazio.';
    }

    if (!_validateEmail(value)) {
      return 'O endereço de email está incorreto \nou não corresponde a uma conta existente.';
    }

    return null;
  }

  

  String? password(String? value) {
   
    if (value == null || value.isEmpty) {
      return 'Informe uma senha';
    }
    if (value.length < 6) {
      return 'A senha deve ter pelo menos 6 caracteres';
    }

   

    return null;
  }

}