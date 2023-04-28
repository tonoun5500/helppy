import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  const Detail({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 5,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: const Text('toto')),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Center(
            child: Container(
               width: MediaQuery.of(context).size.width * 0.8,
               height: MediaQuery.of(context).size.height * 0.25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          width: 2,
                        ),
                      ),
              child: Image.asset('assets/images/aloha.jpeg'),
            ),
          ),
        ),
        SizedBox(child: Column(
          
          // ignore: prefer_const_literals_to_create_immutables
          children: [
             const Text('ເດີ່ນບານອາໂລຮ່າ'),
             const Text('ຕັ້ງຢູ່ບ້ານຮ່ອງເເກ ເມືອງສີສັດຕະນາກ'),
            
          ],
        )),

       

      ]),
      
    );
  }

  container() {}
}