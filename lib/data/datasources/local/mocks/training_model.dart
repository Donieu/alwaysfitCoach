class TrainingModel {
  final String name;
  final bool isCompleted;
  final int daysCompleted;
  final int daysRemaining;

  TrainingModel({
    required this.name,
    required this.isCompleted,
    required this.daysCompleted,
    required this.daysRemaining,
  });

  factory TrainingModel.mock({
    required String name,
    bool isCompleted = false,
    int daysCompleted = 23,
    int daysRemaining = 7,
  }) {
    return TrainingModel(
      name: name,
      isCompleted: isCompleted,
      daysCompleted: daysCompleted,
      daysRemaining: daysRemaining,
    );
  }

  static List<TrainingModel> getMockList() {
    return [
      TrainingModel.mock(name: 'Supino Reto'),
      TrainingModel.mock(name: 'Agachamento'),
      TrainingModel.mock(name: 'Rosca Direta', isCompleted: false),
      TrainingModel.mock(name: 'Tríceps Pulley'),
    ];
  }


  TrainingModel copyWith({
  String? name,
  bool? isCompleted,
  int? daysCompleted,
  int? daysRemaining,
}) {
  return TrainingModel(
    name: name ?? this.name,
    isCompleted: isCompleted ?? this.isCompleted,
    daysCompleted: daysCompleted ?? this.daysCompleted,
    daysRemaining: daysRemaining ?? this.daysRemaining,
  );
}

}
