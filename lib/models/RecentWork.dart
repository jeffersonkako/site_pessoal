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
    title:
        "Site Pessoal - Site desenvolvido com Flutter Web, ainda sendo aperfeiçoado",
    category: "Flutter Web",
    image: "assets/images/sitepessoal.png",
    url: "https://jefferson.dev/",
  ),
  RecentWork(
    id: 2,
    title: "Tasks - Sistema de todo list, com autenticação e banco de dados",
    category: "Typescrit, NextJs , Firebase",
    image: "assets/images/tasks.png",
    url: "https://tasks-estacio.vercel.app/",
  ),
  RecentWork(
    id: 3,
    title:
        "Tabela DKC - Sistema simples com tabela de preços que esta sendo usado pela DEKRA no Ceará",
    category: "Html, Css, Javascript",
    image: "assets/images/tabeladkc.png",
    url: "https://tabela.dekraceara.com/",
  ),
  RecentWork(
    id: 4,
    title:
        "Kips.tech - Site em desenvolvimento das paginas internas logadas ...",
    category: "Reactjs, Nextjs, Tailwind",
    image: "assets/images/kips.png",
    url: "https://kips.tech/",
  ),
  RecentWork(
    id: 5,
    title:
        "NiteLive app - SuperApp para vida noturna da Holanda. Em desenvolvimento privado",
    category: "Dart, Flutter, Firebase, Api, Banco de dados",
    image: "assets/images/nitelive.png",
    url: "https://jefferson.dev/",
  ),
  RecentWork(
    id: 6,
    title: "KipSmart - SuperApp em desenvolvimento ...",
    category: "Dart, Flutter, AWS, Api, Banco de dados",
    image: "assets/images/kipsmart.png",
    url: "https://jefferson.dev/",
  ),
  RecentWork(
    id: 7,
    title: "Atualização Site Local - Dekra Ceará, em desenvolvimento ...",
    category: "Javascript, Vuejs, Nuxt, Tailwind",
    image: "assets/images/dekraceara.png",
    url: "https://dekrabrasil.com.br/ceara/",
  ),
];
