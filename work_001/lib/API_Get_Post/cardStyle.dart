 import 'package:flutter/material.dart';
/**
 * 卡片式布局
 */
class CardWidgetStyle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListView(
        children: <Widget>[
          ListTile(
            leading: Image.network("https://image.zhongyibaike.com/image/%E7%99%BD%E8%8A%B7/%E7%99%BD%E8%8A%B7.jpg"),
            title:
                Text("White Zhi", style: TextStyle(fontWeight: FontWeight.w500)),
            subtitle: Text("Indications: headache, brow rib pain, toothache, rhinitis, cold and wet abdominal pain, intestinal wind hemorrhoid leakage, red vaginal discharge, ulcer sore, dry skin and itching."),
          ),
          Divider(),
          ListTile(
            leading: Image.network("https://image.zhongyibaike.com/image/%E7%BE%8C%E6%B4%BB/%E7%BE%8C%E6%B4%BB.jpg"),
            title: Text("Qiang Huo",
                style: TextStyle(fontWeight: FontWeight.w500)),
            subtitle: Text("Rhizomes and roots live for umbelliferous plants or broad-leaved beetles. After 3 to 4 years of cultivation, the above-ground part is cut off after the seedlings fall to early spring, and the rhizomes are dug, the soil is shaken, the reeds are cut off, the fibrous roots are cut, and the short sections of 10 to 13 cm long are cut and dried or dried."),
          ),
          Divider(),
          ListTile(
              leading: Image.network("https://image.zhongyibaike.com/image/%E8%96%84%E8%8D%B7/%E8%96%84%E8%8D%B7.jpg"),
              title: Text("mint",
                  style: TextStyle(fontWeight: FontWeight.w500)),
              subtitle: Text("This product is the dry aerial part of the mint of the genus Lamiaceae. It is used for wind and cold, early onset of wind temperature, headache, red eyes, paralysis of throat, mouth sores, rubella, measles, chest tightness.")),
          Divider(),
             ListTile(
              leading:Image.network("https://image.zhongyibaike.com/image/%E9%87%91%E9%93%B6%E8%8A%B1/%E9%87%91%E9%93%B6%E8%8A%B1.jpg"),
              title: Text("honeysuckle",
                  style: TextStyle(fontWeight: FontWeight.w500)),
              subtitle: Text("Flower buds of the honeysuckle family Lonicera. Indications of fever, blood poisoning, blood clots, ulcers, swollen poisons, boils, and hemorrhoids.")),
          Divider(),
              ListTile(
              leading:Image.network("https://image.zhongyibaike.com/image/%E5%A4%A7%E8%95%89%E7%9A%AE/%E5%A4%A7%E8%95%89%E7%9A%AE.jpg"),
              title: Text("Banana peel",
                  style: TextStyle(fontWeight: FontWeight.w500)),
              subtitle: Text("Indications for dysentery, cholera, itchy skin, hypertension.")),
          Divider(),
              ListTile(
              leading:Image.network("https://image.zhongyibaike.com/image/%E4%BA%91%E8%8A%9D/%E4%BA%91%E8%8A%9D.jpg"),
              title: Text("rainbow conk",
                  style: TextStyle(fontWeight: FontWeight.w500)),
              subtitle: Text("Invigorating spleen and invigorating dampness, relieving cough and wheezing, clearing heat and detoxifying, anti-tumor. Main chronic active hepatitis, cirrhosis, chronic bronchitis, infantile spastic bronchitis, sore throat, various tumors, rheumatoid arthritis, leukemia.")),
          Divider(),
              ListTile(
              leading:Image.network("https://image.zhongyibaike.com/image/%E8%8F%B1/%E8%8F%B1%E8%A7%92%E6%9E%9C%E8%82%89.jpg"),
              title: Text("ling",
                  style: TextStyle(fontWeight: FontWeight.w500)),
              subtitle: Text("Raw food: clear the heat and quench the thirst; Cooked food: qi, spleen. Main spleen deficiency diarrhea, summer heat thirst, excessive drinking, dysentery.")),
          Divider(),
              ListTile(
              leading:Image.network("https://image.zhongyibaike.com/image/%E5%85%AB%E8%A7%92%E8%8E%B2/%E5%85%AB%E8%A7%92%E8%8E%B2.jpg"),
              title: Text("Octagonal lotus",
                  style: TextStyle(fontWeight: FontWeight.w500)),
              subtitle: Text(" Take the root and wash the sediment, dry, cut off and set aside. Also can use fresh.")),
          Divider(),
              ListTile(
              leading:Image.network("https://image.zhongyibaike.com/image/%E5%9C%B0%E4%B8%8D%E5%AE%B9/%E5%9C%B0%E4%B8%8D%E5%AE%B9.jpg"),
              title: Text("Epigeal Srephaia Root",
                  style: TextStyle(fontWeight: FontWeight.w500)),
              subtitle: Text("Harvest in autumn and winter, remove fibrous roots, wash, slice and dry in the sun.")),
          Divider(),
                 ListTile(
              leading:Image.network("https://image.zhongyibaike.com/image/%E5%B0%8F%E9%87%91%E9%92%B1%E8%8D%89/%E5%B0%8F%E9%87%91%E9%92%B1%E8%8D%89.jpg"),
              title: Text("Creeping Dichondra Herb",
                  style: TextStyle(fontWeight: FontWeight.w500)),
              subtitle: Text("External application is used to treat injuries caused by falls.")),
          Divider(),
            ListTile(
              leading:Image.network("https://image.zhongyibaike.com/image/%E6%9C%A8%E8%B4%BC/%E6%9C%A8%E8%B4%BC2.jpg"),
              title: Text("Herb of Scouring Rush",
                  style: TextStyle(fontWeight: FontWeight.w500)),
              subtitle: Text("It is brittle, easy to break, hollow in section, and has grayish white or light green thin crickets inside. No gas, sweet, slightly bitter. The stems are thick, green, thick, and non-disjointed.")),
          Divider(),
            ListTile(
              leading:Image.network("https://image.zhongyibaike.com/image/%E8%91%9B%E6%A0%B9/%E6%9F%B4%E8%91%9B%E6%A0%B9.jpg"),
              title: Text("Root of Lobed Kudzuvine",
                  style: TextStyle(fontWeight: FontWeight.w500)),
              subtitle: Text("The outer skin is yellowish white or pale yellow, and the outer skin is grayish brown. The quality is hard and heavy, and the fiber is weak. Some are wooly and powdery. Large, solid, white, powdery, and less fiber are preferred.")),
          Divider(),
            ListTile(
              leading:Image.network("https://image.zhongyibaike.com/image/%E8%8B%A6%E4%B8%81%E8%8C%B6/%E8%8B%A6%E4%B8%81%E8%8C%B6.jpg"),
              title: Text("Broadleaf Holly Leaf",
                  style: TextStyle(fontWeight: FontWeight.w500)),
              subtitle: Text("Can clear the heat and dispel wind, remove annoyance and quench thirst. Treatment of headache, toothache, tinnitus, red eyes and phlegm.")),
          Divider(),
            ListTile(
              leading:Image.network("https://image.zhongyibaike.com/image/%E6%A0%80%E5%AD%90/%E7%94%9F%E6%A0%80%E5%AD%90.jpg"),
              title: Text("Cape Jasmine Fruit",
                  style: TextStyle(fontWeight: FontWeight.w500)),
              subtitle: Text("The fruits are harvested from September to November when they are red-yellow and mature. The stems and impurities are removed, steamed to steam or slightly boiled in boiling water, removed and dried. Roots are dug in summer and autumn, washed and dried.")),
          Divider(),
            ListTile(
              leading:Image.network("https://image.zhongyibaike.com/image/%E7%A7%A6%E7%9A%AE/%E7%A7%A6%E7%9A%AE2.jpg"),
              title: Text("Ash Bark",
                  style: TextStyle(fontWeight: FontWeight.w500)),
              subtitle: Text("This product is the dry branch bark or dry bark of Fraxinus rhynchophylla Hance, Fraxinus chinensis Roxb., Fraxinus szaboana Lingelsh. Or Fraxinus stylosa Lingelsh. Strip in spring and autumn and dry.")),
          Divider(),
            ListTile(
              leading:Image.network("https://image.zhongyibaike.com/image/%E5%BD%93%E8%8D%AF/%E5%BD%93%E8%8D%AF2.jpg"),
              title: Text("Swertiae Herba",
                  style: TextStyle(fontWeight: FontWeight.w500)),
              subtitle: Text("Calyx 5-parted, lobes linear. Corolla pale blue-purple or dark yellow, 5-parted, with 2 glands on the inner base of the lobes and long hairs around the glands. Capsule oval. Weiqi, bitter taste.")),
          Divider(),
        ],
      ),
    );
  }
}