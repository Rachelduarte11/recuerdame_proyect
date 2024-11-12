

import '../models/statics_model.dart';

class StatisticsRepository {
  StatisticsModel fetchStatistics()  {
    // Mock data
    return StatisticsModel(
      daysCompleted: 20,
      prescriptions: 2,
    );
  }
}