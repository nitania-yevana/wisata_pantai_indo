import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:wisata_pantai_indo/models/pantai.dart';

class InfoPantaiScreen extends StatelessWidget {
  Pantai pantai;
  InfoPantaiScreen({super.key, required this.pantai});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            children: [
              Stack(
                  children: [
                    //detail header
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.8),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(28),
                        child: Image.asset(
                          pantai.imageAsset,
                          width: double.infinity,
                          height: 300,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.lightBlueAccent[100]?.withOpacity(0.8),
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_back,
                          ),
                        ),
                      ),

                    ),
                  ]
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 16,),
                    //info atas
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          pantai.name,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.favorite_border),
                        )
                      ],
                    ),
                    //info tengah
                    SizedBox(height: 16,),
                    Row(children: [
                      Icon(Icons.place, color: Colors.red,),
                      SizedBox(width: 8,),
                      SizedBox(width: 70,
                        child: Text('Lokasi', style: TextStyle(
                            fontWeight: FontWeight.bold),),),
                      Text(': ${pantai.location}'),
                    ],),
                    Row(children: [
                      Icon(Icons.beach_access, color: Colors.pinkAccent,),
                      SizedBox(width: 8,),
                      SizedBox(width: 78,
                        child: Text('Fasilitas', style: TextStyle(
                            fontWeight: FontWeight.bold),),),
                      Text(': ${pantai.facility}'),
                    ],),
                    SizedBox(height: 16,),
                    Divider(color: Colors.lightBlueAccent.shade100,),
                    SizedBox(height: 16,),
                    //info bawah
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Divider(color: Colors.lightBlueAccent.shade100,),
                    Text('Galeri',style: TextStyle(
                      fontSize: 16,fontWeight: FontWeight.bold,
                    ),),
                    SizedBox(height: 10,),
                    SizedBox(
                      height: 100,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: pantai.imageUrls.length,
                        itemBuilder: (context, index){
                          return Padding(padding: EdgeInsets.only(left: 8),
                            child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                      color: Colors.lightBlueAccent.shade100,
                                      width: 2,
                                    )
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(18),
                                  child: CachedNetworkImage(
                                    imageUrl: pantai.imageUrls[index],
                                    width: 120,
                                    height: 120,
                                    fit: BoxFit.cover,
                                    placeholder: (context, url) => Container(
                                      width: 120,
                                      height: 120,
                                      color: Colors.lightBlueAccent[50],
                                    ),
                                    errorWidget: (context, url, error) => Icon(Icons.error),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 4,),
                    Text('Tap untuk memperbesar', style: TextStyle(
                      fontSize: 12, color: Colors.black54,
                    ),),
                  ],
                ),
              )
            ]
        )
    );
  }
}