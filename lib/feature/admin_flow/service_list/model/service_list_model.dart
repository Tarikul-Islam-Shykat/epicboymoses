class ServiceListModel {
  final String serviceName;
  final String serviceDes;
  final String money;
  final int rating;

  ServiceListModel(this.serviceName, this.serviceDes, this.money, this.rating);

  static List<ServiceListModel> service_list = [
    ServiceListModel(
      'Regular Cleaning',
      'Weekly or fortnightly; same cleaner each time.',
      '£18.90/h',
      4,
    ),
    ServiceListModel(
      'Regular Cleaning',
      'Weekly or fortnightly; same cleaner each time.',
      '£18.90/h',
      4,
    ),
    ServiceListModel(
      'Regular Cleaning',
      'Weekly or fortnightly; same cleaner each time.',
      '£18.90/h',
      4,
    ),
    ServiceListModel(
      'Regular Cleaning',
      'Weekly or fortnightly; same cleaner each time.',
      '£18.90/h',
      4,
    )
  ];
}
