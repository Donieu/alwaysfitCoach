# 💪 AlwaysFit

Aplicativo mobile criado com **Flutter** para gerenciamento de treinos e plano nutricional personalizado.

Projeto estruturado usando:
- 🧠 **Arquitetura MVVM**
- ⚙️ **Gerenciamento de estado com BLoC**
- 🎨 **SVG Assets para identidade visual**
- 🧪 **Dados mockados** para exibição de progresso de treino e plano alimentar
- 📱 Foco em **Android**, com animações de navegação personalizadas

---

## 📌 O que foi feito

Durante o desenvolvimento, foram aplicadas as seguintes práticas:

- [x] Estruturação com **MVVM**: separação clara entre model, view e lógica.
- [x] Implementação do **BLoC** para autenticação, progresso de treino e plano nutricional.
- [x] Uso de **dados mockados** para simular funcionalidades reais.
- [x] Utilização de **SVGs** no AppBar e outros elementos da UI com o pacote `flutter_svg`.
- [x] **Componentização** de widgets como cards de treino, cards de refeição e inputs reutilizáveis.
- [x] Tela de **Login** com feedback de loading e erro usando BLoC.
- [x] Tela de **Dashboard** com acesso aos recursos principais do app.
- [x] **Página de progresso de treino** mostrando dias concluídos e restantes com barra de progresso.
- [x] **Página de plano nutricional** exibindo refeições do dia com receitas e descrições.

---

## 🚀 Instalação e execução (Android)

### ✅ Pré-requisitos obrigatórios

- Flutter SDK 3.27.1 instalado
- Dart 3.6.0 (vem com o Flutter)
- Android Studio ou VSCode com extensão Flutter
- Emulador Android configurado ou dispositivo via USB
- Git instalado

---

### 📥 Passo a passo

1. **Clone o repositório**

```bash
git clone https://github.com/Donieu/alwaysfitCoach.git
cd alwaysfit
```

2. **Instale o Flutter SDK** (caso ainda não tenha)

Acesse: https://docs.flutter.dev/get-started/install  
Depois rode:

```bash
flutter --version
```

Resultado esperado:

```
Flutter 3.27.1 • Dart 3.6.0
```

3. **Instale as dependências**

```bash
flutter pub get
```

4. **Execute o projeto**

```bash
flutter run
```

> Certifique-se de que há um dispositivo Android conectado ou emulador rodando.

---

## 📱 Build APK (Android)

Para gerar o APK para instalação manual:

```bash
flutter build apk --release
```

APK gerado em:

```
build/app/outputs/flutter-apk/app-release.apk
```

Você pode instalar no seu Android com:

```bash
adb install build/app/outputs/flutter-apk/app-release.apk
```

---

## 🧱 Estrutura do Projeto

```
lib/
├── data/
│   └── datasources/
│       └── local/
│           └── mocks/               # Dados mockados (treinos e refeições)
├── domain/
│   └── entities/                    # Models, rotas, temas, validações
├── presentation/
│   ├── bloc/                        # LoginBloc, MealsBloc, ProgressBloc
│   ├── pages/                       # Telas (Login, Dashboard, Plano etc.)
│   ├── widgets/                     # Componentes reutilizáveis
├── main.dart                        # Ponto de entrada
```

---

## 🧠 Arquitetura Utilizada

**MVVM (Model-View-ViewModel) + BLoC**

- **Model**: `MealModel`, `TrainingProgressModel`
- **View**: `LoginScreen`, `NutritionalPlan`, `Dashboard`, etc.
- **ViewModel (Bloc)**: `LoginBloc`, `MealsBloc`, `ProgressBloc`

---

## 🎯 Funcionalidades

| Tela / Componente       | Descrição                                                                 |
|--------------------------|--------------------------------------------------------------------------|
| 🔐 Login                | Validação com BLoC, loading e erro                                       |
| 📊 Dashboard            | Acesso aos módulos principais do app                                     |
| 🏋️ Progresso de Treino | Mostra treinos com dias completados e restantes via barra animada        |
| 🥗 Plano Nutricional    | Cards de refeições do dia com receitas e descrições                      |
| ⬅️➡️ Navegação         | Transições personalizadas da esquerda para a direita                      |
| 🎨 SVGs no AppBar       | Logo AlwaysFit em SVG com o pacote `flutter_svg`                         |

---

## 🖼️ SVG Assets

Todos os ícones SVG estão na pasta `assets/svg` e são utilizados assim:

```dart
SvgPicture.asset('assets/svg/logo_always.svg');
```

No `pubspec.yaml`:

```yaml
dependencies:
  flutter_svg: ^2.0.10+1
```

---

## 🧪 Login Mock

Para testar o login:

| Campo   | Valor                 |
|---------|------------------------|
| E-mail  | roberto@always.com     |
| Senha   | 123456                |

---

## 🔧 Versão utilizada no desenvolvimento

```bash
Flutter 3.27.1 • channel stable
Framework • revision 17025dd882 • 2024-12-17
Engine • revision cb4b5fff73
Tools • Dart 3.6.0 • DevTools 2.40.2
```

---

## 👨‍💻 Autor

Desenvolvido por **Donieu**

- 📧 dbreno09@gmail.com  
- 🔗 https://www.linkedin.com/in/donmartins/

---

## 🪪 Licença

MIT License © 2025 — sinta-se livre para usar, estudar, adaptar e evoluir o projeto!

---

🦾
