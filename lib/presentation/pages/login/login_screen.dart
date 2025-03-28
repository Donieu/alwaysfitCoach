import 'package:alwaysfit/domain/entities/routes/routes.dart';
import 'package:alwaysfit/domain/entities/theme/app_colors.dart';
import 'package:alwaysfit/domain/entities/theme/theme_constants.dart';
import 'package:alwaysfit/domain/entities/validators/validator.dart';
import 'package:alwaysfit/presentation/pages/login/bloc/login_bloc.dart';
import 'package:alwaysfit/presentation/widgets/custom_app_bar.dart/custom_app_bar.dart';
import 'package:alwaysfit/presentation/widgets/custom_button.dart';
import 'package:alwaysfit/presentation/widgets/custom_input/custom_input_always_fit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailEC = TextEditingController();
  final passwordEC = TextEditingController();
  final FocusNode _emailFocus = FocusNode();
  final FocusNode _passwordFocus = FocusNode();
  final Validators _validators = Validators();
  final formKey = GlobalKey<FormState>();
  bool loginError = false;

  @override
  void dispose() {
    emailEC.dispose();
    passwordEC.dispose();
    _emailFocus.dispose();
    _passwordFocus.dispose();
    super.dispose();
  }

  void _onLogin() {
    if (formKey.currentState?.validate() ?? false) {
      FocusScope.of(context).unfocus();
      context.read<LoginBloc>().add(SignEvent(
            email: emailEC.text.trim(),
            password: passwordEC.text,
          ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      resizeToAvoidBottomInset: false,
      
      appBar: const CustomAppBarAlwaysFit(),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: ThemeConstants.padding,
                vertical: ThemeConstants.doublePadding,
              ),
              child: Center(
                child: BlocConsumer<LoginBloc, LoginState>(
                  listener: (context, state) {
                    if (state is LoginSuccess) {
                      Navigator.of(context).pushReplacementNamed(NamedRoutes.bottomappbar.route);
                    } else if (state is LoginError) {
                      setState(() => loginError = true);
                    }
                  },
                  builder: (context, state) {
                    return Stack(
                      children: [
                        Opacity(
                          opacity: state is LoginLoading ? 0.3 : 1.0,
                          child: AbsorbPointer(
                            absorbing: state is LoginLoading,
                            child: SizedBox(
                              height: constraints.maxHeight,
                              width: constraints.maxWidth,
                              child: Card(
                                elevation: 6,
                                color: Theme.of(context).cardColor,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 30),
                                  child: Form(
                                    key: formKey,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(height: 40),
                                        Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            'Login',
                                            style: Theme.of(context).textTheme.bodyLarge,
                                          ),
                                        ),
                                        const SizedBox(height: 40),
                                        Text('Olá!',
                                            style: Theme.of(context).textTheme.displaySmall),
                                        const SizedBox(height: 20),
                                        Text(
                                          'Este é o ambiente seguro de login\n da Always Fit ® ',
                                          style: Theme.of(context).textTheme.displayMedium,
                                        ),
                                        const SizedBox(height: 40),
                                        Text('Para acessar, informe suas credenciais.',
                                            style: Theme.of(context).textTheme.displaySmall),
                                        const SizedBox(height: 16),
                                        if (loginError)
                                          Padding(
                                            padding: const EdgeInsets.only(bottom: 8),
                                            child: Text(
                                              'E-mail ou senha incorretos.',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .displaySmall
                                                  ?.copyWith(
                                                    color: AppColors.error,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                          ),
                                        CustomInputAlwaysFit(
                                          focus: _emailFocus,
                                          validator: _validators.email,
                                          label: 'E-mail',
                                          controller: emailEC,
                                          type: TextInputType.emailAddress,
                                        ),
                                        CustomInputAlwaysFit(
                                          focus: _passwordFocus,
                                          validator: _validators.password,
                                          type: TextInputType.visiblePassword,
                                          label: 'Senha',
                                          controller: passwordEC,
                                        ),
                                        PrimaryButton(
                                          label: 'Logar',
                                          onPressed: _onLogin,
                                        ),
                                        const SizedBox(height: 40),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        if (state is LoginLoading)
                          const Center(
                            child: CircularProgressIndicator(),
                          ),
                      ],
                    );
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
