class RecentWork {
  final String image, category, title, url;
  final int id;

  RecentWork(
      {required this.id,
      required this.image,
      required this.category,
      required this.url,
      required this.title});
}

List<RecentWork> recentWorks = [
  RecentWork(
    id: 1,
    title: "Site Pessoal",
    category: "Flutter Web",
    image: "assets/images/sitepessoal.png",
    url: "https://site-pessoal-alpha.vercel.app/",
  ),
  RecentWork(
    id: 2,
    title: "Tasks",
    category: "Typescrip, NextJs , Firebase",
    image: "assets/images/tasks.png",
    url: "https://tasks-estacio.vercel.app/",
  ),
  RecentWork(
    id: 3,
    title: "Tabela DKC",
    category: "Html, Css, Javascript",
    image: "assets/images/tabeladkc.png",
    url: "https://tabeladkc.vercel.app/",
  ),
  RecentWork(
    id: 4,
    title: "Organo",
    category: "Html, Css, Javascript",
    image: "assets/images/organo.png",
    url: "https://organo-kako.vercel.app/",
  ),
];
