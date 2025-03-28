class MealModel {
  final String title;
  final List<String> recipes;
  final List<String> descriptions;

  MealModel({
    required this.title,
    required this.recipes,
    required this.descriptions,
  });

  factory MealModel.mock({
    required String title,
    required List<String> recipes,
    required List<String> descriptions,
  }) {
    return MealModel(
      title: title,
      recipes: recipes,
      descriptions: descriptions,
    );
  }

  static List<MealModel> getMockList() {
    return [
      MealModel.mock(
        title: '☕ Café da manhã',
        recipes: [
          'Omelete Proteico 🍳',
          'Vitamina de Banana e Aveia 🥄🥛',
        ],
        descriptions: [
          '3 claras e 1 gema, tomate, cebola e queijo branco',
          'Leite desnatado, banana e 2 colheres de aveia',
        ],
      ),
      MealModel.mock(
        title: '🍇 Lanche da Manhã',
        recipes: [
          'Iogurte Natural com Granola 🥣',
        ],
        descriptions: [
          'Iogurte desnatado, granola e mel',
        ],
      ),
      MealModel.mock(
        title: '🍽️ Almoço',
        recipes: [
          'Peito de Frango Grelhado com Quinoa 🍗',
          'Batata Doce Assada 🍠',
        ],
        descriptions: [
          'Frango grelhado servido com quinoa cozida',
          'Assada com azeite e ervas',
        ],
      ),
      MealModel.mock(
        title: '🍞 Lanche da Tarde',
        recipes: [
          'Pasta de Amendoim com Pão Integral 🥜🍞',
          'Suco de Laranja Natural 🍊',
        ],
        descriptions: [
          '2 colheres de pasta de amendoim + 2 fatias de pão integral',
          'Laranja espremida na hora, sem açúcar',
        ],
      ),
      MealModel.mock(
        title: '🍲 Jantar',
        recipes: [
          'Salmão Grelhado com Legumes 🐟🥦',
          'Arroz integral 🍚',
        ],
        descriptions: [
          'Salmão grelhado com mix de legumes cozidos',
          '1 xícara de arroz integral cozido',
        ],
      ),
    ];
  }
}
