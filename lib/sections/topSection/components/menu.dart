import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  final Function(int) scrollToSection;

  const Menu({Key? key, required this.scrollToSection}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int selectedIndex = 0;
  int hoverIndex = 0;
  List<String> menuItems = [
    "Inicio",
    "Sobre",
    "Tecnologias",
    "Portfólio",
    "Formação",
    "Contato"
  ];

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 100,
      backgroundColor: Colors.black,
      elevation: 0,
      centerTitle: true,
      title: MediaQuery.of(context).size.width < 1000
          ? PopupMenuButton<int>(
              icon: const Icon(Icons.menu,
                  size: 40, color: Colors.white), // Ícone de menu de hamburguer
              itemBuilder: (context) {
                return List<PopupMenuEntry<int>>.generate(
                  menuItems.length,
                  (index) => PopupMenuItem<int>(
                    value: index,
                    child: Text(menuItems[index]),
                  ),
                );
              },
              onSelected: (index) {
                setState(() {
                  selectedIndex = index;
                });
                widget.scrollToSection(index);
              },
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                menuItems.length,
                (index) => buildMenuItem(index),
              ),
            ),
    );
  }

  Widget buildMenuItem(int index) {
    final isHovered = hoverIndex == index;
    final isSelected = selectedIndex == index;

    return InkWell(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
        widget.scrollToSection(index);
      },
      onHover: (value) {
        setState(() {
          value ? hoverIndex = index : hoverIndex = selectedIndex;
        });
      },
      child: Container(
        constraints: const BoxConstraints(minWidth: 122),
        height: 50,
        child: Center(
          child: Text(
            menuItems[index],
            style: TextStyle(
              fontSize: isHovered ? 22 : 20,
              color: isSelected ? Colors.white : Colors.grey,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}
