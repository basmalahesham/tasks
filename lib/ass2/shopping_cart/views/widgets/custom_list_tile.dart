import 'package:flutter/material.dart';
import 'package:optical/ass2/shopping_cart/models/model.dart';

/*class CustomListTile extends StatefulWidget {
  const CustomListTile({
    super.key,
    required this.model, required this.onTap, required this.child,
  });

  final CartModel model;
  final void Function() onTap;
  final Widget child;
  @override
  State<CustomListTile> createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomListTile> {
  bool click = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 40,
        height: 40,
        color: widget.model.color,
      ),
      trailing: GestureDetector(
        onTap: widget.onTap,
        child: widget.child,
      ),
      title: Text(widget.model.title),
      subtitle: Text(widget.model.subtitle.toString()),
    );
  }
}*/
class CustomListTile extends StatefulWidget {
  const CustomListTile({
    super.key,
    required this.model, required this.index,
  });

  final CartModel model;
  final int index;
  @override
  State<CustomListTile> createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomListTile> {

  bool click = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 40,
        height: 40,
        color: widget.model.color,
      ),
      trailing: GestureDetector(
        onTap: (){
          setState(() {
            click = true;
            addListColorsNames(widget.index);
            addTotalPrice(widget.index);
            // removeListColorItem(index);
            // removeItemPrice(index);
            //list[widget.index];
            //c[index] = !c[index];
          });

        },
        child: click? const Icon(Icons.check):const Text('Add'),
      ),
      title: Text(widget.model.title),
      subtitle: Text(widget.model.subtitle.toString()),
    );
  }
  addListColorsNames(int index) {
    setState(() {
      selectedColorsNames.add(list[index].title);
    });
  }
  removeListColorItem(int index) {
    setState(() {
      selectedColorsNames.remove(list[index].title);
    });
  }

  addTotalPrice(int index) {
    setState(() {
      totalPrice += list[index].subtitle;
    });
  }
  removeItemPrice(int index) {
    setState(() {
      totalPrice -= list[index].subtitle;
    });
  }
}