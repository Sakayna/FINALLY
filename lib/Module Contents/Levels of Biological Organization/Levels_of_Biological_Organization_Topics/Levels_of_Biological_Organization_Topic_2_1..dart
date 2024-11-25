import 'package:capstone/Module%20Contents/Levels%20of%20Biological%20Organization/Levels_of_Biological_Organization_ILO/Levels_of_Biological_Organization_ILO.dart';
import 'package:capstone/Module%20Contents/Levels%20of%20Biological%20Organization/Levels_of_Biological_Organization_TLA/Levels_of_Biological_Organization_TLA_2_1.dart';
import 'package:capstone/categories/levels_of_biological_organization_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:capstone/globals/global_variables_notifier.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Biological_Organization_Topic_2_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var globalVariables = Provider.of<GlobalVariables>(context);

    return WillPopScope(
      onWillPop: () async {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => Levels_of_biological_organization_Screen(),
          ),
        );
        return false;
      },
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    backgroundColor:
                        Color(0xFF9463FF), // Background color of appbar
                    floating: false,
                    pinned: false,
                    snap: false,
                    expandedHeight: 120.0, // Adjusted expanded height
                    flexibleSpace: LayoutBuilder(
                      builder: (context, constraints) {
                        final isTop = constraints.biggest.height <=
                            kToolbarHeight + 16.0; // Margin size

                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (!isTop) ...[
                              // Only show when expanded (not at the top)
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 25.0, left: 50.0), // Add left padding
                                child: Text(
                                  'Levels of Biological Organization', // Title text for the appbar
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.normal,
                                    color:
                                        Colors.white, // Set text color to white
                                  ),
                                ),
                              ),
                              SizedBox(
                                  height: 5), // Adjusted spacing between texts
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 50.0), // Add left padding
                                child: Text(
                                  'Topics', // Subtitle text for the appbar
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w600,
                                    color:
                                        Colors.white, // Set text color to white
                                  ),
                                ),
                              ),
                              SizedBox(height: 5),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 50.0,
                                    right: 18.0), // Add left padding
                                child: Text(
                                  '2.1', // Additional text for the appbar
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w600,
                                    color:
                                        Colors.white, // Set text color to white
                                  ),
                                ),
                              ),
                            ],
                          ],
                        );
                      },
                    ),
                    leading: Padding(
                      padding: const EdgeInsets.only(
                        top: 20, // Adjusted top padding of the leading icon
                      ),
                      child: IconButton(
                        icon: Icon(Icons.arrow_back_ios),
                        color: Colors.white, // Back button icon color
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                Levels_of_biological_organization_Screen(),
                          ));
                        },
                      ),
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildListDelegate(
                      [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(
                            25.0,
                            30.0,
                            25.0,
                            80.0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text.rich(
                                TextSpan(
                                  children: [
                                    WidgetSpan(
                                      child: SizedBox(
                                        width: 40,
                                      ),
                                    ),
                                    TextSpan(
                                      text:
                                          'There are many levels of organization. Biologists differ in terms of the number of levels they consider In this section, we will look into thirteen levels of organization. '
                                          'The levels will be presented from the simplest to the most complex level in a hierarchy. Take note, however, that these levels are all related to each other and that the level below is more complex than the level before it or the level below contains all the levels above it.',
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.justify,
                              ),
                              SizedBox(height: 20),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    WidgetSpan(
                                      child: SizedBox(
                                        width: 40,
                                      ),
                                    ),
                                    TextSpan(
                                      text:
                                          'Subatomic particles are the particles (protons, neutrons, and electrons) that compose an atom. Protons are the positively charged particles; neutrons have no charge; while the electrons are the negatively charged particles.',
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.justify,
                              ),
                              SizedBox(height: 20),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    WidgetSpan(
                                      child: SizedBox(
                                        width: 40,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Atom ',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                      text:
                                          'is the smallest unit of matter that possesses physical and chemical properties. Matter that is composed of only one kind of atom is called an element. An atom contains the nucleus at its center. The protons and the neutrons are found within it. The electrons are located outside the nucleus moving around a path called orbit, shell, or energy level.',
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.justify,
                              ),
                              SizedBox(height: 10),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 0.0), // Add left padding
                                child: Container(
                                  width: 300, // Adjust width as needed
                                  height: 350, // Adjust height as needed
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/images/organization/atom.png',
                                        height: 250, // Adjust height as needed
                                        width: 300, // Adjust width as needed
                                        fit: BoxFit
                                            .contain, // Ensure the image is fully visible
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        'A configuration of an atom. The neurons and protons are found within the nucleus.',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    WidgetSpan(
                                      child: SizedBox(
                                        width: 40,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'A ',
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'molecule ',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                      text:
                                          'consists of two or more atoms that are chemically bonded together. They range from small molecules to micromolecules to large, gigantic macromolecules. Small molecules may be composed of only two atoms like oxygen (O2) or three atoms like carbon dioxide (CO2). Micromolecules are composed of many atoms that function as subunits from where large molecules are built. An example of micromolecule is glucose (C6H12O6), which serves as the subunit of a carbohydrate molecule. Macromolecules are molecules that are made up of many subunits like carbohydrates, protein, fats, and DNA.',
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.justify,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 10.0), // Add left padding
                                child: Container(
                                  width: 300, // Adjust width as needed
                                  height: 350, // Adjust height as needed
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/images/organization/molecule.png',
                                        height: 250, // Adjust height as needed
                                        width: 300, // Adjust width as needed
                                        fit: BoxFit
                                            .contain, // Ensure the image is fully visible
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        'A configuration of a molecule. The different colors represent the different atoms that compose the molecule.',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 20),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    WidgetSpan(
                                      child: SizedBox(
                                        width: 40,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Organelles ',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                      text:
                                          'are highly organized assemblies of several macromolecules bonded together to perform a specific function in the cell. The organelles are most often membrane-bound. Examples of organelles are mitochondria, nucleus, chloroplasts, and lysosomes. ',
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.justify,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 10.0), // Add left padding
                                child: Container(
                                  width: 300, // Adjust width as needed
                                  height: 350, // Adjust height as needed
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/images/organization/cell.png',
                                        height: 250, // Adjust height as needed
                                        width: 300, // Adjust width as needed
                                        fit: BoxFit
                                            .contain, // Ensure the image is fully visible
                                      ),
                                      Text(
                                        'The animal cell is composed of various parts called organelles that perform specific functions.',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 20),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    WidgetSpan(
                                      child: SizedBox(
                                        width: 40,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'A ',
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'cell ',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                      text:
                                          'is a collection of organelles that are functioning together. It is considered as the basic unit of life that is capable of carrying out all the functions of living things. Cells have varied sizes and shapes.',
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.justify,
                              ),
                              SizedBox(height: 20),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    WidgetSpan(
                                      child: SizedBox(
                                        width: 40,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Tissue ',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                      text:
                                          'is a group of distinct and similar cells that work together to perform a specific set of functions. Examples of tissues in plants are parenchyma, collenchyma, and sclerenchyma tissues. Examples of tissues in animals are epithelial, connective, muscular, and nervous tissues. ',
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.justify,
                              ),
                              SizedBox(height: 20),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.black,
                                              width: 1), // Thin border
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                              height:
                                                  200, // Ensure the same height for all containers
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Image.asset(
                                                    'assets/images/organization/cardiac muscle.jpg',
                                                    height:
                                                        100, // Adjust height as needed
                                                    width:
                                                        100, // Adjust width as needed
                                                    fit: BoxFit.contain,
                                                  ),
                                                  SizedBox(height: 10),
                                                  Text(
                                                    'The Cardiac Muscle is a group of muscle cells.',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontSize: 10,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                        width:
                                            8), // Add spacing between columns
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.black,
                                              width: 1), // Thin border
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                              height:
                                                  200, // Ensure the same height for all containers
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Image.asset(
                                                    'assets/images/organization/heart.jpg',
                                                    height:
                                                        100, // Adjust height as needed
                                                    width:
                                                        100, // Adjust width as needed
                                                    fit: BoxFit.contain,
                                                  ),
                                                  SizedBox(height: 10),
                                                  Text(
                                                    'The Heart is an organ composed primarily of cardiac muscles.',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontSize: 10,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                        width:
                                            8), // Add spacing between columns
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.black,
                                              width: 1), // Thin border
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                              height:
                                                  200, // Ensure the same height for all containers
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Image.asset(
                                                    'assets/images/organization/system.jpg',
                                                    height:
                                                        100, // Adjust height as needed
                                                    width:
                                                        100, // Adjust width as needed
                                                    fit: BoxFit.contain,
                                                  ),
                                                  SizedBox(height: 10),
                                                  Text(
                                                    'The heart is an organ of the cardiovascular system.',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontSize: 10,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 20),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    WidgetSpan(
                                      child: SizedBox(
                                        width: 40,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Organ ',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                      text:
                                          'consists of different tissues organized together to perform a certain function. For example, the heart is made up of different tissues that enables it to perform the task of pumping blood to all parts of the body. ',
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.justify,
                              ),
                              SizedBox(height: 20),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    WidgetSpan(
                                      child: SizedBox(
                                        width: 40,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Organ system ',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                      text:
                                          'consists of several different organs that work together to perform a broad spectrum of functions. For example, the excretory system is composed of the kidneys, ureters, urinary bladder, and blood vessels that function in removing wastes from the various parts of the body and eliminating them through sweating and urination. ',
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.justify,
                              ),
                              SizedBox(height: 20),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    WidgetSpan(
                                      child: SizedBox(
                                        width: 40,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Organism ',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                      text:
                                          'is an aggregation of the organ systems that work together to bring about various life activities. Humans have eleven organ systems. An organism is an individual belonging to a particular species that has its own distinct existence as a complex, self-reproducing unit. ',
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.justify,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 10.0), // Add left padding
                                child: Container(
                                  width: 300, // Adjust width as needed
                                  height: 300, // Adjust height as needed
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/images/organization/bison.jpg',
                                        height: 250, // Adjust height as needed
                                        width: 300, // Adjust width as needed
                                        fit: BoxFit
                                            .contain, // Ensure the image is fully visible
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    WidgetSpan(
                                      child: SizedBox(
                                        width: 40,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Population ',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                      text:
                                          'is a group of organisms of the same species occupying a given area. These organisms are freely interacting with one another. Populations are sometimes composed of small groups-a pack of wolves, pride of lions, towns of squirrels, herd of cattle, and colony of termites. ',
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.justify,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 10.0), // Add left padding
                                child: Container(
                                  width: 300, // Adjust width as needed
                                  height:
                                      200, // Adjust height to match the image height
                                  alignment:
                                      Alignment.center, // Center the content
                                  child: Image.asset(
                                    'assets/images/organization/group.jpg',
                                    height: 200, // Adjust height as needed
                                    width: 300, // Adjust width as needed
                                    fit: BoxFit
                                        .contain, // Ensure the image is fully visible
                                  ),
                                ),
                              ),
                              SizedBox(height: 20),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    WidgetSpan(
                                      child: SizedBox(
                                        width: 40,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Community ',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                      text:
                                          'consists of all the populations of different species of organisms living together in a given area. These organisms are interacting with one another. Their interactions may be harmful, symbiotic, or cooperative. Examples are all the living things in a freshwater pond, all the species in a rice field, and all the living things in a prairie. ',
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.justify,
                              ),
                              SizedBox(height: 20),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 10.0), // Add left padding
                                child: Container(
                                  width: 350, // Adjust width as needed
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/images/organization/community.jpg',
                                        height: 120, // Adjust height as needed
                                        width: 350, // Adjust width as needed
                                        fit: BoxFit
                                            .contain, // Ensure the image is fully visible
                                      ),
                                      Text(
                                        'Hawk, snake, bison, prairie dog, grass',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 30),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    WidgetSpan(
                                      child: SizedBox(
                                        width: 40,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Ecosystem ',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                      text:
                                          'consists of all the communities of organisms (biotic components) that inhabit the same area, as well as the nonliving (abiotic components) of the area and the sets of interactions that exist between these two components. ',
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.justify,
                              ),
                              SizedBox(height: 20),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 10.0), // Add left padding
                                child: Container(
                                  width: 300, // Adjust width as needed
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color:
                                          Colors.grey[300]!, // Thin grey border
                                      width: 1.0,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/images/organization/ecosystem.jpg',
                                        height: 150, // Adjust height as needed
                                        width: 300, // Adjust width as needed
                                        fit: BoxFit
                                            .contain, // Ensure the image is fully visible
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        'A freshwater pond is an example of an ecosystem.',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 10.0), // Add left padding
                                child: Container(
                                  width: 300, // Adjust width as needed
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color:
                                          Colors.grey[300]!, // Thin grey border
                                      width: 1.0,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/images/organization/savana.jpg',
                                        height: 150, // Adjust height as needed
                                        width: 300, // Adjust width as needed
                                        fit: BoxFit
                                            .contain, // Ensure the image is fully visible
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        'A savanna is an example of an ecosystem covering a large geographical area.',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 30),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    WidgetSpan(
                                      child: SizedBox(
                                        width: 40,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Biome ',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                      text:
                                          'pertains to a collection of ecosystems with similar climates and covering a large geographical area. Grasslands, savanna, deserts, and tropical rainforests are examples of ecosystems that cover a large geographical area. ',
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.justify,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 10.0), // Add left padding
                                child: Container(
                                  width: 300, // Adjust width as needed
                                  height: 350, // Adjust height as needed
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/images/organization/biosphere.jpg',
                                        height: 250, // Adjust height as needed
                                        width: 300, // Adjust width as needed
                                        fit: BoxFit
                                            .contain, // Ensure the image is fully visible
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        'The world of life',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    WidgetSpan(
                                      child: SizedBox(
                                        width: 40,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Biosphere ',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                      text:
                                          'consists of the totality of the ecosystems of planet Earth. It also pertains to any part of Earth\'s sphere where life exists. It is also referred to as the world of life ',
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.justify,
                              ),
                              SizedBox(height: 30),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'Watch this video to learn more about the different biolological levels',
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      launch(
                                          'https://www.youtube.com/watch?v=52B7Edcc7y4');
                                    },
                                    child: Text(
                                      'Click this link to Watch on YouTube',
                                      style: TextStyle(
                                        color: Colors.blue,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  YoutubePlayer(
                                    controller: YoutubePlayerController(
                                      initialVideoId: YoutubePlayer.convertUrlToId(
                                          'https://www.youtube.com/watch?v=52B7Edcc7y4')!,
                                      flags: YoutubePlayerFlags(
                                        autoPlay: false,
                                        mute: false,
                                      ),
                                    ),
                                    showVideoProgressIndicator: true,
                                    progressIndicatorColor: Colors.amber,
                                    onReady: () {
                                      // Add custom logic if needed
                                    },
                                    onEnded: (metaData) {
                                      // Add custom logic if needed
                                    },
                                  ),
                                  SizedBox(height: 15),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white, // Set the background color to white
              width: double.infinity, // Set the width to fill the screen
              padding: EdgeInsets.symmetric(
                  vertical: 16.0), // Add padding vertically
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0), // Adjusted left padding
                    child: FloatingActionButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                Biological_Organization_ILOScreen(),
                          ),
                        );
                      },
                      heroTag: 'prevBtn',
                      child: Icon(
                        Icons.navigate_before,
                        color: Colors.white, // Set icon color to white
                      ),
                      backgroundColor: Color(0xFF9463FF),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 15.0), // Adjusted right padding
                    child: FloatingActionButton(
                      onPressed: () {
                        globalVariables.setTopic('lesson2', 2, true);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                Biological_Organization_TLA_2_1(),
                          ),
                        );
                      },
                      heroTag: 'nextBtn',
                      child: Icon(
                        Icons.navigate_next,
                        color: Colors.white,
                      ),
                      backgroundColor: Color(0xFF9463FF),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Biological_Organization_Topic_2_1(),
    ),
  ));
}
