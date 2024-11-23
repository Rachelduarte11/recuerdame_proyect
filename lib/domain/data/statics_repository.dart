

import '../models/statics_model.dart';

class StatisticsRepository {
  var stats = StatisticsModel(
    daysCompleted: 20,
    prescriptions: 2,
  );
  StatisticsModel fetchStatistics()  {
    // Mock data
    return stats ;
  }

  void newReceipt() {
    stats = StatisticsModel(daysCompleted: stats.daysCompleted, prescriptions: stats.prescriptions + 1 );
  }
}

final statsRepo = StatisticsRepository();