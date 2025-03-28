class TrainingProgressModel {
  final String name;
  final String description;
  final DateTime startDate;
  final int daysCompleted;
  final int daysRemaining;

  TrainingProgressModel({
    required this.name,
    required this.description,
    required this.startDate,
    required this.daysCompleted,
    required this.daysRemaining,
  });

  factory TrainingProgressModel.mock({
    required String name,
    required String description,
    DateTime? startDate,
    int daysCompleted = 23,
    int daysRemaining = 7,
  }) {
    return TrainingProgressModel(
      name: name,
      description: description,
      startDate: startDate ?? DateTime(2024, 3, 13),
      daysCompleted: daysCompleted,
      daysRemaining: daysRemaining,
    );
  }

  static List<TrainingProgressModel> getMockList() {
    return [
      TrainingProgressModel.mock(
        name: 'Supino Reto',
        description: '5 séries de 15 repetições cada\nIniciar com 5kg e aumentar conforme possível',
      ),
      TrainingProgressModel.mock(
        name: 'Agachamento',
        description: '4 séries de 12 repetições\nAumentar peso gradualmente',
      ),
      TrainingProgressModel.mock(
        name: 'Tríceps Pulley',
        description: '3 séries de 20 repetições\nUsar carga moderada',
      ),
    ];
  }
}
