import 'package:flutter/material.dart';

class SearchBarApp extends StatefulWidget {
  final Function(String) searchCallback;
  const SearchBarApp({super.key, required this.searchCallback});

  @override
  State<SearchBarApp> createState() => _SearchBarApp();
}

class _SearchBarApp extends State<SearchBarApp> {
  final SearchController controller = SearchController();
  var queryList = <String> [];
  @override
  Widget build(BuildContext context) {
    return SearchAnchor(
          searchController: controller,
          viewBackgroundColor: Colors.green.shade50,
          viewTrailing: [
            IconButton(
              onPressed: (){
              if(queryList.indexWhere((element) => element == controller.text) == -1){
                if(controller.text != "") { 
                  queryList.add(controller.text);
                  queryList = queryList.reversed.toSet().toList();
                }
                setState(() {
                  widget.searchCallback(controller.text);
                });
              }
                controller.closeView(controller.text);
              },
              icon: const Icon(Icons.search)
            ),
            IconButton(
              onPressed: (){controller.clear();},
              icon: const Icon(Icons.clear)
            )
          ],
          builder: (context,controller) {
          return SearchBar(
          hintText: 'Search plant...',
          controller: controller,
          padding: const MaterialStatePropertyAll<EdgeInsets>(
              EdgeInsets.symmetric(horizontal: 24.0)),
          onTap: () {
            controller.openView();
          },
          onChanged: (query) {
            controller.openView();
          },
          onSubmitted: (query){
            controller.closeView(query);
          },
          backgroundColor: MaterialStatePropertyAll<Color>(
            Colors.green.shade50
          ),
          leading: const Icon(Icons.search),
          elevation: const MaterialStatePropertyAll<double>(1.0),
        );
        }, 
        suggestionsBuilder:
            (context, controller) {
            return List<ListTile>.generate(queryList.length, (int index) {
              final String item = queryList[index];
              return ListTile(
                title: Text(item),
                onTap: () {
                  setState(() {
                    widget.searchCallback(item);
                    controller.closeView(item);
                });
              },
            );
          });
      });
  }
}