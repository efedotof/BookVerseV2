import 'package:flutter/material.dart';

class CardProfile extends StatefulWidget {
  const CardProfile({super.key});

  @override
  State<CardProfile> createState() => _CardProfileState();
}

class _CardProfileState extends State<CardProfile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height * 0.1,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(7),
                  ),
                  width: MediaQuery.of(context).size.width * 0.2,
                  height: MediaQuery.of(context).size.width * 0.2,
                ),
                const SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Name Author', style: Theme.of(context).primaryTextTheme.bodyText1,),
                    Text('id', style: Theme.of(context).primaryTextTheme.bodyText2)
                  ],
                )


              ],),
    );
  }
}