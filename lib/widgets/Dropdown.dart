import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';

class MyDropdown extends StatefulWidget {
  final List<String> items;
  final String? initialValue;

  const MyDropdown({
    super.key,
    required this.items,
    this.initialValue,
  });

  @override
  State<MyDropdown> createState() => _MyDropdownState();
}

class _MyDropdownState extends State<MyDropdown> {
  late String dropdownValue;

  final Map<String, Map<String, String>> animalData = {
    'Acropora globiceps Coral': {
      'image': 'https://www.fisheries.noaa.gov/s3//2023-05/A-globiceps-DF-Tutuila1.JPG',
      'title': 'Acropora globiceps Coral',
      'description': 'A species of stony coral found in tropical reefs.'
    },
    'Argentine Angelshark': {
      'image': 'https://www.fisheries.noaa.gov/s3//styles/original/s3/dam-migration/640x427-argentine-angelshark.png?itok=AN9pPy0Q',
      'title': 'Argentine Angelshark',
      'description': 'A species of angelshark found in the southwestern Atlantic Ocean.'
    },
    'Boulder Star Coral': {
      'image': 'https://www.fisheries.noaa.gov/s3/styles/full_width/s3/dam-migration/BoulderStarCoralNOAA.jpg',
      'title': 'Boulder Star Coral',
      'description': 'A slow-growing coral species important for reef building.'
    },
    '	African Coelacanth': {
      'image': 'https://www.fisheries.noaa.gov/s3//styles/original/s3/dam-migration/640x427-african-coelacanth.png?itok=126qO2nN',
      'title': 'African Coelacanth',
      'description': 'The African coelacanth belongs to an ancient lineage of bony, lobe-finned fish. The species was believed to have gone extinct over 65 million years ago but was rediscovered off the coast of South Africa in 1938.'
    },
    'Atlantic Humpback Dolphin': {
      'image': 'https://www.fisheries.noaa.gov/s3//styles/original/s3/dam-migration/640x427-african-coelacanth.png?itok=126qO2nNhttps://www.fisheries.noaa.gov/s3//styles/full_width/s3/2024-03/atlantic-humpback-dolphin-guinea-2022-tilen-genov.jpg?itok=D9lZaMfv',
      'title': 'Atlantic Humpback Dolphin',
      'description': 'The Atlantic humpback dolphin is a coastal species endemic to tropical and subtropical eastern Atlantic nearshore waters of western Africa, ranging from Morocco to Angola. This species occurs exclusively in shallow (<30 m) depths, in warm nearshore waters, and in dynamic habitats strongly influenced by tidal patterns (e.g., sandbanks, deltas, estuaries, and mangrove systems). '
    }
  };

  @override
  void initState() {
    super.initState();
    dropdownValue = widget.initialValue ?? widget.items.first;
  }

  @override
  Widget build(BuildContext context) {
    final selectedAnimal = animalData[dropdownValue];

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 20),
        const Text(
          'Searchbar Detector',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: DropdownSearch<String>(
            items: widget.items,
            selectedItem: dropdownValue,
            popupProps: const PopupProps.menu(
              showSearchBox: true,
            ),
            dropdownDecoratorProps: const DropDownDecoratorProps(
              dropdownSearchDecoration: InputDecoration(
                labelText: "Select an animal",
                border: OutlineInputBorder(),
              ),
            ),
            onChanged: (value) {
              setState(() {
                dropdownValue = value!;
              });
            },
          ),
        ),
        const SizedBox(height: 20),
        if (selectedAnimal != null) ...[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24.0),
            child: Image.network(
              selectedAnimal['image']!,
              fit: BoxFit.contain,
              width: 300,
            ),
          ),
          Text(
            selectedAnimal['title']!,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              selectedAnimal['description']!,
              style: const TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
        ]
      ],
    );
  }
}
