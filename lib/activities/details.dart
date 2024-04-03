import 'package:flutter/material.dart';
import '../res/resorces_list.dart';

class Details extends StatefulWidget {
  final int index;
  const Details(this.index, {super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  var s = true;
  var m = false;
  var l = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            )),
            height: MediaQuery.of(context).size.height * 0.6,
            width: double.infinity,
            child: Stack(
              children: [
                Image(
                  height: MediaQuery.of(context).size.height * 0.6,
                  width: double.infinity,
                  image: images[widget.index],
                  fit: BoxFit.cover,
                ),
                SafeArea(
                  child: Container(
                    padding: const EdgeInsets.only(
                      top: 20,
                      right: 20,
                      left: 20,
                    ),
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios_outlined,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Icon(Icons.favorite,
                                color: Colors.orange))
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding:
                        const EdgeInsets.only(top: 30, right: 30, left: 30),
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(.6),
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  names[widget.index],
                                  style: const TextStyle(
                                      fontSize: 25,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.none),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(with_[widget.index],
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.white.withOpacity(.5),
                                        decoration: TextDecoration.none)),
                                const SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.star,
                                      color: Colors.orange,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      s
                                          ? ratting[widget.index].toString()
                                          : m
                                              ? mediumRating[widget.index]
                                                  .toString()
                                              : largeRating[widget.index]
                                                  .toString(),
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      s
                                          ? prefix[widget.index]
                                          : m
                                              ? prefixMedium[widget.index]
                                              : prefixLarge[widget.index],
                                      style: TextStyle(
                                        color: Colors.white.withOpacity(.5),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Icon(
                                          Icons.coffee,
                                          color: Colors.orange,
                                        ),
                                        Text(
                                          "Coffee",
                                          style: TextStyle(
                                            color: Colors.white.withOpacity(.5),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Icon(
                                          Icons.water_drop_rounded,
                                          color: Colors.orange,
                                        ),
                                        Text(
                                          "Milk",
                                          style: TextStyle(
                                            color: Colors.white.withOpacity(.5),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 40,
                              width: 140,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                child: Text(
                                  s
                                      ? "Small Roasted"
                                      : m
                                          ? "Medium Roasted"
                                          : "Large Roasted",
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(.5),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 20, left: 20, right: 30),
              height: double.infinity,
              width: double.infinity,
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Description",
                        style: TextStyle(
                          color: Colors.white.withOpacity(.5),
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "A cappuccino is the perfect balance of espresso, steamed milk. This coffee is all about the structure.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Size",
                        style: TextStyle(
                          color: Colors.white.withOpacity(.5),
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            borderRadius: BorderRadius.circular(20),
                            onTap: () {
                              s = true;
                              m = false;
                              l = false;
                              setState(() {});
                            },
                            child: Container(
                              height: 40,
                              width: MediaQuery.of(context).size.width * 0.25,
                              decoration: BoxDecoration(
                                  color: s
                                      ? Colors.black
                                      : Colors.white.withOpacity(.1),
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border(
                                      right: BorderSide(
                                          color:
                                              s ? Colors.orange : Colors.black),
                                      left: BorderSide(
                                          color:
                                              s ? Colors.orange : Colors.black),
                                      top: BorderSide(
                                          color:
                                              s ? Colors.orange : Colors.black),
                                      bottom: BorderSide(
                                          color: s
                                              ? Colors.orange
                                              : Colors.black))),
                              child: Center(
                                child: Text(
                                  "S",
                                  style: TextStyle(
                                      color: s
                                          ? Colors.orange
                                          : Colors.white.withOpacity(.8),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            borderRadius: BorderRadius.circular(20),
                            onTap: () {
                              s = false;
                              m = true;
                              l = false;
                              setState(() {});
                            },
                            child: Container(
                              height: 40,
                              width: MediaQuery.of(context).size.width * 0.25,
                              decoration: BoxDecoration(
                                  color: m
                                      ? Colors.black
                                      : Colors.white.withOpacity(.1),
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border(
                                      right: BorderSide(
                                          color:
                                              m ? Colors.orange : Colors.black),
                                      left: BorderSide(
                                          color:
                                              m ? Colors.orange : Colors.black),
                                      top: BorderSide(
                                          color:
                                              m ? Colors.orange : Colors.black),
                                      bottom: BorderSide(
                                          color: m
                                              ? Colors.orange
                                              : Colors.black))),
                              child: Center(
                                child: Text(
                                  "M",
                                  style: TextStyle(
                                      color: m
                                          ? Colors.orange
                                          : Colors.white.withOpacity(.8),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            borderRadius: BorderRadius.circular(20),
                            onTap: () {
                              s = false;
                              m = false;
                              l = true;
                              setState(() {});
                            },
                            child: Container(
                              height: 40,
                              width: MediaQuery.of(context).size.width * 0.25,
                              decoration: BoxDecoration(
                                  color: l
                                      ? Colors.black
                                      : Colors.white.withOpacity(.1),
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border(
                                      right: BorderSide(
                                          color:
                                              l ? Colors.orange : Colors.black),
                                      left: BorderSide(
                                          color:
                                              l ? Colors.orange : Colors.black),
                                      top: BorderSide(
                                          color:
                                              l ? Colors.orange : Colors.black),
                                      bottom: BorderSide(
                                          color: l
                                              ? Colors.orange
                                              : Colors.black))),
                              child: Center(
                                child: Text(
                                  "L",
                                  style: TextStyle(
                                      color: l
                                          ? Colors.orange
                                          : Colors.white.withOpacity(.8),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Price",
                        style: TextStyle(
                          color: Colors.white.withOpacity(.5),
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(
                          width: 5,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                const Text(
                                  "\$",
                                  style: TextStyle(
                                      color: Colors.orange,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  s
                                      ? prices[widget.index]
                                      : m
                                          ? mediumPrice[widget.index]
                                          : largePrice[widget.index],
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Container(
                          height: 60,
                          width: 200,
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(20)),
                          child: const Center(
                            child: Text(
                              "Buy Now",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
