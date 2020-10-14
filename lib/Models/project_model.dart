class ProjectModel {
  String image;
  String title;
  String description;

  ProjectModel({this.image, this.title, this.description});
}

List<ProjectModel> projects = [
  ProjectModel(image: "30Days.png", title: "30 Days Challenge"),
  ProjectModel(image: "Cosmo.png", title: "Cosmo-Concepts"),
];
