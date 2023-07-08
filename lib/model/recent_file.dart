class RecentFiles{
  final String? icon, title, date, size;

  RecentFiles({this.icon, this.title, this.date, this.size});
}

List demoRecentFiles = [
  RecentFiles(
    icon: "assets/icons/xd_file.svg",
    title: "XD File",
    date: "01-03-2021",
    size: "3.5mb",
  ),
  RecentFiles(
    icon: "assets/icons/Figma_file.svg",
    title: "Figma File",
    date: "27-02-2021",
    size: "19.0mb",
  ),
  RecentFiles(
    icon: "assets/icons/doc_file.svg",
    title: "Document",
    date: "23-02-2021",
    size: "32.5mb",
  ),
  RecentFiles(
    icon: "assets/icons/sound_file.svg",
    title: "Sound File",
    date: "21-02-2021",
    size: "3.5mb",
  ),
  RecentFiles(
    icon: "assets/icons/media_file.svg",
    title: "Media File",
    date: "23-02-2021",
    size: "2.5gb",
  ),
  RecentFiles(
    icon: "assets/icons/pdf_file.svg",
    title: "Sales PDF",
    date: "25-02-2021",
    size: "3.5mb",
  ),
  RecentFiles(
    icon: "assets/icons/excel_file.svg",
    title: "Excel File",
    date: "25-02-2021",
    size: "34.5mb",
  ),
];
