// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

List<UserModel> userModelFromJson(String str) => List<UserModel>.from(json.decode(str).map((x) => UserModel.fromJson(x)));

String userModelToJson(List<UserModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UserModel {
  UserModel({
    this.chilli,
    this.onion,
    this.coriander,
    this.soyabean,
    this.maize,
    this.tobacco,
    this.mesta,
    this.redgram,
    this.greengram,
    this.blackgram,
    this.cowpea,
    this.horsegram,
    this.linseed,
    this.groundnut,
    this.sunflower,
    this.castor,
    this.sorghum,
    this.safflower,
    this.wheat,
    this.soil,
    this.fertilizer,
  });

  Chilli chilli;
  Onion onion;
  Coriander coriander;
  Soyabean soyabean;
  Maize maize;
  Tobacco tobacco;
  Mesta mesta;
  Redgram redgram;
  Greengram greengram;
  Blackgram blackgram;
  Cowpea cowpea;
  Horsegram horsegram;
  Linseed linseed;
  Groundnut groundnut;
  Sunflower sunflower;
  Castor castor;
  Sorghum sorghum;
  Safflower safflower;
  Wheat wheat;
  Soil soil;
  UserModelFertilizer fertilizer;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    chilli: json["chilli"] == null ? null : Chilli.fromJson(json["chilli"]),
    onion: json["onion"] == null ? null : Onion.fromJson(json["onion"]),
    coriander: json["coriander"] == null ? null : Coriander.fromJson(json["coriander"]),
    soyabean: json["soyabean"] == null ? null : Soyabean.fromJson(json["soyabean"]),
    maize: json["maize"] == null ? null : Maize.fromJson(json["maize"]),
    tobacco: json["tobacco"] == null ? null : Tobacco.fromJson(json["tobacco"]),
    mesta: json["mesta"] == null ? null : Mesta.fromJson(json["mesta"]),
    redgram: json["redgram"] == null ? null : Redgram.fromJson(json["redgram"]),
    greengram: json["greengram"] == null ? null : Greengram.fromJson(json["greengram"]),
    blackgram: json["blackgram"] == null ? null : Blackgram.fromJson(json["blackgram"]),
    cowpea: json["cowpea"] == null ? null : Cowpea.fromJson(json["cowpea"]),
    horsegram: json["horsegram"] == null ? null : Horsegram.fromJson(json["horsegram"]),
    linseed: json["linseed"] == null ? null : Linseed.fromJson(json["linseed"]),
    groundnut: json["groundnut"] == null ? null : Groundnut.fromJson(json["groundnut"]),
    sunflower: json["sunflower"] == null ? null : Sunflower.fromJson(json["sunflower"]),
    castor: json["castor"] == null ? null : Castor.fromJson(json["castor"]),
    sorghum: json["sorghum"] == null ? null : Sorghum.fromJson(json["sorghum"]),
    safflower: json["safflower"] == null ? null : Safflower.fromJson(json["safflower"]),
    wheat: json["wheat"] == null ? null : Wheat.fromJson(json["wheat"]),
    soil: json["soil"] == null ? null : Soil.fromJson(json["soil"]),
    fertilizer: json["fertilizer"] == null ? null : UserModelFertilizer.fromJson(json["fertilizer"]),
  );

  Map<String, dynamic> toJson() => {
    "chilli": chilli == null ? null : chilli.toJson(),
    "onion": onion == null ? null : onion.toJson(),
    "coriander": coriander == null ? null : coriander.toJson(),
    "soyabean": soyabean == null ? null : soyabean.toJson(),
    "maize": maize == null ? null : maize.toJson(),
    "tobacco": tobacco == null ? null : tobacco.toJson(),
    "mesta": mesta == null ? null : mesta.toJson(),
    "redgram": redgram == null ? null : redgram.toJson(),
    "greengram": greengram == null ? null : greengram.toJson(),
    "blackgram": blackgram == null ? null : blackgram.toJson(),
    "cowpea": cowpea == null ? null : cowpea.toJson(),
    "horsegram": horsegram == null ? null : horsegram.toJson(),
    "linseed": linseed == null ? null : linseed.toJson(),
    "groundnut": groundnut == null ? null : groundnut.toJson(),
    "sunflower": sunflower == null ? null : sunflower.toJson(),
    "castor": castor == null ? null : castor.toJson(),
    "sorghum": sorghum == null ? null : sorghum.toJson(),
    "safflower": safflower == null ? null : safflower.toJson(),
    "wheat": wheat == null ? null : wheat.toJson(),
    "soil": soil == null ? null : soil.toJson(),
    "fertilizer": fertilizer == null ? null : fertilizer.toJson(),
  };
}

class Blackgram {
  Blackgram({
    this.generic,
    this.soil,
    this.seed,
    this.manure,
    this.fertilizer,
    this.weed,
    this.cultivation,
    this.intercultivation,
    this.blackgramYield,
    this.variety,
  });

  String generic;
  String soil;
  String seed;
  String manure;
  BlackgramFertilizer fertilizer;
  String weed;
  BlackgramCultivation cultivation;
  String intercultivation;
  String blackgramYield;
  BlackgramVariety variety;

  factory Blackgram.fromJson(Map<String, dynamic> json) => Blackgram(
    generic: json["generic"],
    soil: json["soil"],
    seed: json["seed"],
    manure: json["manure"],
    fertilizer: BlackgramFertilizer.fromJson(json["fertilizer"]),
    weed: json["weed"],
    cultivation: BlackgramCultivation.fromJson(json["cultivation"]),
    intercultivation: json["intercultivation"],
    blackgramYield: json["yield"],
    variety: BlackgramVariety.fromJson(json["variety"]),
  );

  Map<String, dynamic> toJson() => {
    "generic": generic,
    "soil": soil,
    "seed": seed,
    "manure": manure,
    "fertilizer": fertilizer.toJson(),
    "weed": weed,
    "cultivation": cultivation.toJson(),
    "intercultivation": intercultivation,
    "yield": blackgramYield,
    "variety": variety.toJson(),
  };
}

class BlackgramCultivation {
  BlackgramCultivation({
    this.sowing,
  });

  String sowing;

  factory BlackgramCultivation.fromJson(Map<String, dynamic> json) => BlackgramCultivation(
    sowing: json["sowing"],
  );

  Map<String, dynamic> toJson() => {
    "sowing": sowing,
  };
}

class BlackgramFertilizer {
  BlackgramFertilizer({
    this.nitrogen,
    this.phosphorouspentoxide,
    this.rhizobium,
    this.phosphatesolubilizingbacteria,
    this.potassiumoxide,
    this.zincsulphate,
  });

  String nitrogen;
  String phosphorouspentoxide;
  String rhizobium;
  String phosphatesolubilizingbacteria;
  String potassiumoxide;
  String zincsulphate;

  factory BlackgramFertilizer.fromJson(Map<String, dynamic> json) => BlackgramFertilizer(
    nitrogen: json["nitrogen"],
    phosphorouspentoxide: json["phosphorouspentoxide"],
    rhizobium: json["rhizobium"] == null ? null : json["rhizobium"],
    phosphatesolubilizingbacteria: json["phosphatesolubilizingbacteria"] == null ? null : json["phosphatesolubilizingbacteria"],
    potassiumoxide: json["potassiumoxide"] == null ? null : json["potassiumoxide"],
    zincsulphate: json["zincsulphate"] == null ? null : json["zincsulphate"],
  );

  Map<String, dynamic> toJson() => {
    "nitrogen": nitrogen,
    "phosphorouspentoxide": phosphorouspentoxide,
    "rhizobium": rhizobium == null ? null : rhizobium,
    "phosphatesolubilizingbacteria": phosphatesolubilizingbacteria == null ? null : phosphatesolubilizingbacteria,
    "potassiumoxide": potassiumoxide == null ? null : potassiumoxide,
    "zincsulphate": zincsulphate == null ? null : zincsulphate,
  };
}

class BlackgramVariety {
  BlackgramVariety({
    this.du1,
    this.dbgv5,
  });

  Dbgv5 du1;
  Dbgv5 dbgv5;

  factory BlackgramVariety.fromJson(Map<String, dynamic> json) => BlackgramVariety(
    du1: Dbgv5.fromJson(json["du-1"]),
    dbgv5: Dbgv5.fromJson(json["dbgv-5"]),
  );

  Map<String, dynamic> toJson() => {
    "du-1": du1.toJson(),
    "dbgv-5": dbgv5.toJson(),
  };
}

class Dbgv5 {
  Dbgv5({
    this.zone,
    this.features,
  });

  String zone;
  String features;

  factory Dbgv5.fromJson(Map<String, dynamic> json) => Dbgv5(
    zone: json["zone"],
    features: json["features"],
  );

  Map<String, dynamic> toJson() => {
    "zone": zone,
    "features": features,
  };
}

class Castor {
  Castor({
    this.generic,
    this.soil,
    this.variety,
    this.seed,
    this.manure,
    this.fertilizer,
    this.cultivation,
    this.intercultivation,
    this.castorYield,
  });

  String generic;
  String soil;
  Map<String, Dbgv5> variety;
  String seed;
  String manure;
  CastorFertilizer fertilizer;
  BlackgramCultivation cultivation;
  String intercultivation;
  String castorYield;

  factory Castor.fromJson(Map<String, dynamic> json) => Castor(
    generic: json["generic"],
    soil: json["soil"],
    variety: Map.from(json["variety"]).map((k, v) => MapEntry<String, Dbgv5>(k, Dbgv5.fromJson(v))),
    seed: json["seed"],
    manure: json["manure"],
    fertilizer: CastorFertilizer.fromJson(json["fertilizer"]),
    cultivation: BlackgramCultivation.fromJson(json["cultivation"]),
    intercultivation: json["intercultivation"],
    castorYield: json["yield"],
  );

  Map<String, dynamic> toJson() => {
    "generic": generic,
    "soil": soil,
    "variety": Map.from(variety).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
    "seed": seed,
    "manure": manure,
    "fertilizer": fertilizer.toJson(),
    "cultivation": cultivation.toJson(),
    "intercultivation": intercultivation,
    "yield": castorYield,
  };
}

class CastorFertilizer {
  CastorFertilizer({
    this.nitrogen,
    this.phosphorous,
    this.potash,
    this.azospirillum,
  });

  String nitrogen;
  String phosphorous;
  String potash;
  String azospirillum;

  factory CastorFertilizer.fromJson(Map<String, dynamic> json) => CastorFertilizer(
    nitrogen: json["nitrogen"],
    phosphorous: json["phosphorous"],
    potash: json["potash"],
    azospirillum: json["azospirillum"] == null ? null : json["azospirillum"],
  );

  Map<String, dynamic> toJson() => {
    "nitrogen": nitrogen,
    "phosphorous": phosphorous,
    "potash": potash,
    "azospirillum": azospirillum == null ? null : azospirillum,
  };
}

class Chilli {
  Chilli({
    this.generic,
    this.soil,
    this.season,
    this.weed,
    this.fertilizer,
    this.seed,
    this.manure,
    this.variety,
    this.cultivation,
    this.irrigation,
    this.planthormone,
  });

  String generic;
  String soil;
  String season;
  String weed;
  ChilliFertilizer fertilizer;
  String seed;
  String manure;
  ChilliVariety variety;
  ChilliCultivation cultivation;
  String irrigation;
  String planthormone;

  factory Chilli.fromJson(Map<String, dynamic> json) => Chilli(
    generic: json["generic"],
    soil: json["soil"],
    season: json["season"],
    weed: json["weed"],
    fertilizer: ChilliFertilizer.fromJson(json["fertilizer"]),
    seed: json["seed"],
    manure: json["manure"],
    variety: ChilliVariety.fromJson(json["variety"]),
    cultivation: ChilliCultivation.fromJson(json["cultivation"]),
    irrigation: json["irrigation"],
    planthormone: json["planthormone"],
  );

  Map<String, dynamic> toJson() => {
    "generic": generic,
    "soil": soil,
    "season": season,
    "weed": weed,
    "fertilizer": fertilizer.toJson(),
    "seed": seed,
    "manure": manure,
    "variety": variety.toJson(),
    "cultivation": cultivation.toJson(),
    "irrigation": irrigation,
    "planthormone": planthormone,
  };
}

class ChilliCultivation {
  ChilliCultivation({
    this.irrigatedcrop,
    this.rainfedcrop,
    this.drylands,
  });

  Irrigatedcrop irrigatedcrop;
  String rainfedcrop;
  String drylands;

  factory ChilliCultivation.fromJson(Map<String, dynamic> json) => ChilliCultivation(
    irrigatedcrop: Irrigatedcrop.fromJson(json["irrigatedcrop"]),
    rainfedcrop: json["rainfedcrop"],
    drylands: json["drylands"],
  );

  Map<String, dynamic> toJson() => {
    "irrigatedcrop": irrigatedcrop.toJson(),
    "rainfedcrop": rainfedcrop,
    "drylands": drylands,
  };
}

class Irrigatedcrop {
  Irrigatedcrop({
    this.nursery,
    this.transplanting,
  });

  String nursery;
  String transplanting;

  factory Irrigatedcrop.fromJson(Map<String, dynamic> json) => Irrigatedcrop(
    nursery: json["nursery"],
    transplanting: json["transplanting"],
  );

  Map<String, dynamic> toJson() => {
    "nursery": nursery,
    "transplanting": transplanting,
  };
}

class ChilliFertilizer {
  ChilliFertilizer({
    this.nitrogen,
    this.phosphorouspentoxide,
    this.potassiumoxide,
  });

  String nitrogen;
  String phosphorouspentoxide;
  String potassiumoxide;

  factory ChilliFertilizer.fromJson(Map<String, dynamic> json) => ChilliFertilizer(
    nitrogen: json["nitrogen"],
    phosphorouspentoxide: json["phosphorouspentoxide"],
    potassiumoxide: json["potassiumoxide"],
  );

  Map<String, dynamic> toJson() => {
    "nitrogen": nitrogen,
    "phosphorouspentoxide": phosphorouspentoxide,
    "potassiumoxide": potassiumoxide,
  };
}

class ChilliVariety {
  ChilliVariety({
    this.byadagi,
    this.sankeshwar,
    this.pusajwala,
  });

  Dbgv5 byadagi;
  Dbgv5 sankeshwar;
  Dbgv5 pusajwala;

  factory ChilliVariety.fromJson(Map<String, dynamic> json) => ChilliVariety(
    byadagi: Dbgv5.fromJson(json["byadagi"]),
    sankeshwar: Dbgv5.fromJson(json["sankeshwar"]),
    pusajwala: Dbgv5.fromJson(json["pusajwala"]),
  );

  Map<String, dynamic> toJson() => {
    "byadagi": byadagi.toJson(),
    "sankeshwar": sankeshwar.toJson(),
    "pusajwala": pusajwala.toJson(),
  };
}

class Coriander {
  Coriander({
    this.generic,
    this.soil,
    this.season,
    this.fertilizer,
    this.weed,
    this.seed,
    this.manure,
    this.cultivation,
    this.harvesting,
    this.corianderYield,
    this.variety,
  });

  String generic;
  String soil;
  String season;
  CorianderFertilizer fertilizer;
  String weed;
  String seed;
  String manure;
  String cultivation;
  String harvesting;
  String corianderYield;
  String variety;

  factory Coriander.fromJson(Map<String, dynamic> json) => Coriander(
    generic: json["generic"],
    soil: json["soil"],
    season: json["season"],
    fertilizer: CorianderFertilizer.fromJson(json["fertilizer"]),
    weed: json["weed"],
    seed: json["seed"],
    manure: json["manure"],
    cultivation: json["cultivation"],
    harvesting: json["harvesting"],
    corianderYield: json["yield"],
    variety: json["variety"],
  );

  Map<String, dynamic> toJson() => {
    "generic": generic,
    "soil": soil,
    "season": season,
    "fertilizer": fertilizer.toJson(),
    "weed": weed,
    "seed": seed,
    "manure": manure,
    "cultivation": cultivation,
    "harvesting": harvesting,
    "yield": corianderYield,
    "variety": variety,
  };
}

class CorianderFertilizer {
  CorianderFertilizer({
    this.nitrogen,
    this.phosphorouspentoxide,
    this.pottasiumoxide,
  });

  String nitrogen;
  String phosphorouspentoxide;
  String pottasiumoxide;

  factory CorianderFertilizer.fromJson(Map<String, dynamic> json) => CorianderFertilizer(
    nitrogen: json["nitrogen"],
    phosphorouspentoxide: json["phosphorouspentoxide"],
    pottasiumoxide: json["pottasiumoxide"],
  );

  Map<String, dynamic> toJson() => {
    "nitrogen": nitrogen,
    "phosphorouspentoxide": phosphorouspentoxide,
    "pottasiumoxide": pottasiumoxide,
  };
}

class Cowpea {
  Cowpea({
    this.generic,
    this.seed,
    this.fertilizer,
    this.cultivation,
    this.intercultivation,
    this.cowpeaYield,
    this.variety,
    this.season,
  });

  String generic;
  String seed;
  BlackgramFertilizer fertilizer;
  BlackgramCultivation cultivation;
  String intercultivation;
  String cowpeaYield;
  CowpeaVariety variety;
  String season;

  factory Cowpea.fromJson(Map<String, dynamic> json) => Cowpea(
    generic: json["generic"],
    seed: json["seed"],
    fertilizer: BlackgramFertilizer.fromJson(json["fertilizer"]),
    cultivation: BlackgramCultivation.fromJson(json["cultivation"]),
    intercultivation: json["intercultivation"],
    cowpeaYield: json["yield"],
    variety: CowpeaVariety.fromJson(json["variety"]),
    season: json["season"],
  );

  Map<String, dynamic> toJson() => {
    "generic": generic,
    "seed": seed,
    "fertilizer": fertilizer.toJson(),
    "cultivation": cultivation.toJson(),
    "intercultivation": intercultivation,
    "yield": cowpeaYield,
    "variety": variety.toJson(),
    "season": season,
  };
}

class CowpeaVariety {
  CowpeaVariety({
    this.c152,
  });

  Dbgv5 c152;

  factory CowpeaVariety.fromJson(Map<String, dynamic> json) => CowpeaVariety(
    c152: Dbgv5.fromJson(json["c-152"]),
  );

  Map<String, dynamic> toJson() => {
    "c-152": c152.toJson(),
  };
}

class UserModelFertilizer {
  UserModelFertilizer({
    this.generic,
    this.nitrogen,
    this.phosphate,
    this.potassium,
    this.npk,
    this.organic,
  });

  String generic;
  String nitrogen;
  String phosphate;
  String potassium;
  String npk;
  String organic;

  factory UserModelFertilizer.fromJson(Map<String, dynamic> json) => UserModelFertilizer(
    generic: json["generic"],
    nitrogen: json["nitrogen"],
    phosphate: json["phosphate"],
    potassium: json["potassium"],
    npk: json["npk"],
    organic: json["organic"],
  );

  Map<String, dynamic> toJson() => {
    "generic": generic,
    "nitrogen": nitrogen,
    "phosphate": phosphate,
    "potassium": potassium,
    "npk": npk,
    "organic": organic,
  };
}

class Greengram {
  Greengram({
    this.generic,
    this.soil,
    this.seed,
    this.fertilizer,
    this.cultivation,
    this.intercultivation,
    this.weed,
    this.intercropping,
    this.variety,
    this.greengramYield,
  });

  String generic;
  String soil;
  String seed;
  GreengramFertilizer fertilizer;
  BlackgramCultivation cultivation;
  String intercultivation;
  String weed;
  String intercropping;
  Map<String, Dbgv5> variety;
  String greengramYield;

  factory Greengram.fromJson(Map<String, dynamic> json) => Greengram(
    generic: json["generic"],
    soil: json["soil"],
    seed: json["seed"],
    fertilizer: GreengramFertilizer.fromJson(json["fertilizer"]),
    cultivation: BlackgramCultivation.fromJson(json["cultivation"]),
    intercultivation: json["intercultivation"],
    weed: json["weed"],
    intercropping: json["intercropping"],
    variety: Map.from(json["variety"]).map((k, v) => MapEntry<String, Dbgv5>(k, Dbgv5.fromJson(v))),
    greengramYield: json["yield"],
  );

  Map<String, dynamic> toJson() => {
    "generic": generic,
    "soil": soil,
    "seed": seed,
    "fertilizer": fertilizer.toJson(),
    "cultivation": cultivation.toJson(),
    "intercultivation": intercultivation,
    "weed": weed,
    "intercropping": intercropping,
    "variety": Map.from(variety).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
    "yield": greengramYield,
  };
}

class GreengramFertilizer {
  GreengramFertilizer({
    this.nitrogen,
    this.phosphorouspentoxide,
    this.sulphur,
    this.rhizobium,
    this.phosphorussolubilizingbiofertilizer,
  });

  String nitrogen;
  String phosphorouspentoxide;
  String sulphur;
  String rhizobium;
  String phosphorussolubilizingbiofertilizer;

  factory GreengramFertilizer.fromJson(Map<String, dynamic> json) => GreengramFertilizer(
    nitrogen: json["nitrogen"],
    phosphorouspentoxide: json["phosphorouspentoxide"],
    sulphur: json["sulphur"],
    rhizobium: json["rhizobium"],
    phosphorussolubilizingbiofertilizer: json["phosphorussolubilizingbiofertilizer"],
  );

  Map<String, dynamic> toJson() => {
    "nitrogen": nitrogen,
    "phosphorouspentoxide": phosphorouspentoxide,
    "sulphur": sulphur,
    "rhizobium": rhizobium,
    "phosphorussolubilizingbiofertilizer": phosphorussolubilizingbiofertilizer,
  };
}

class Groundnut {
  Groundnut({
    this.generic,
    this.variety,
    this.seed,
    this.groundnutYield,
    this.cultivation,
    this.intercultivation,
    this.manure,
    this.fertilizer,
  });

  String generic;
  Map<String, Dbgv5> variety;
  String seed;
  String groundnutYield;
  GroundnutCultivation cultivation;
  String intercultivation;
  String manure;
  GroundnutFertilizer fertilizer;

  factory Groundnut.fromJson(Map<String, dynamic> json) => Groundnut(
    generic: json["generic"],
    variety: Map.from(json["variety"]).map((k, v) => MapEntry<String, Dbgv5>(k, Dbgv5.fromJson(v))),
    seed: json["seed"],
    groundnutYield: json["yield"],
    cultivation: GroundnutCultivation.fromJson(json["cultivation"]),
    intercultivation: json["intercultivation"],
    manure: json["manure"],
    fertilizer: GroundnutFertilizer.fromJson(json["fertilizer"]),
  );

  Map<String, dynamic> toJson() => {
    "generic": generic,
    "variety": Map.from(variety).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
    "seed": seed,
    "yield": groundnutYield,
    "cultivation": cultivation.toJson(),
    "intercultivation": intercultivation,
    "manure": manure,
    "fertilizer": fertilizer.toJson(),
  };
}

class GroundnutCultivation {
  GroundnutCultivation({
    this.sowing,
    this.skipsowing,
  });

  String sowing;
  String skipsowing;

  factory GroundnutCultivation.fromJson(Map<String, dynamic> json) => GroundnutCultivation(
    sowing: json["sowing"],
    skipsowing: json["skipsowing"],
  );

  Map<String, dynamic> toJson() => {
    "sowing": sowing,
    "skipsowing": skipsowing,
  };
}

class GroundnutFertilizer {
  GroundnutFertilizer({
    this.nitrogen,
    this.phosphorous,
    this.potash,
    this.rhizobium,
    this.vermicompost,
  });

  String nitrogen;
  String phosphorous;
  String potash;
  String rhizobium;
  String vermicompost;

  factory GroundnutFertilizer.fromJson(Map<String, dynamic> json) => GroundnutFertilizer(
    nitrogen: json["nitrogen"],
    phosphorous: json["phosphorous"],
    potash: json["potash"],
    rhizobium: json["rhizobium"],
    vermicompost: json["vermicompost"],
  );

  Map<String, dynamic> toJson() => {
    "nitrogen": nitrogen,
    "phosphorous": phosphorous,
    "potash": potash,
    "rhizobium": rhizobium,
    "vermicompost": vermicompost,
  };
}

class Horsegram {
  Horsegram({
    this.generic,
    this.seed,
    this.soil,
    this.fertilizer,
    this.cultivation,
    this.intercultivation,
    this.yeild,
    this.variety,
  });

  String generic;
  String seed;
  String soil;
  HorsegramFertilizer fertilizer;
  BlackgramCultivation cultivation;
  String intercultivation;
  String yeild;
  HorsegramVariety variety;

  factory Horsegram.fromJson(Map<String, dynamic> json) => Horsegram(
    generic: json["generic"],
    seed: json["seed"],
    soil: json["soil"],
    fertilizer: HorsegramFertilizer.fromJson(json["fertilizer"]),
    cultivation: BlackgramCultivation.fromJson(json["cultivation"]),
    intercultivation: json["intercultivation"],
    yeild: json["yeild"],
    variety: HorsegramVariety.fromJson(json["variety"]),
  );

  Map<String, dynamic> toJson() => {
    "generic": generic,
    "seed": seed,
    "soil": soil,
    "fertilizer": fertilizer.toJson(),
    "cultivation": cultivation.toJson(),
    "intercultivation": intercultivation,
    "yeild": yeild,
    "variety": variety.toJson(),
  };
}

class HorsegramFertilizer {
  HorsegramFertilizer({
    this.nitrogen,
    this.phosphorouspentoxide,
  });

  String nitrogen;
  String phosphorouspentoxide;

  factory HorsegramFertilizer.fromJson(Map<String, dynamic> json) => HorsegramFertilizer(
    nitrogen: json["nitrogen"],
    phosphorouspentoxide: json["phosphorouspentoxide"],
  );

  Map<String, dynamic> toJson() => {
    "nitrogen": nitrogen,
    "phosphorouspentoxide": phosphorouspentoxide,
  };
}

class HorsegramVariety {
  HorsegramVariety({
    this.gmp6,
  });

  Dbgv5 gmp6;

  factory HorsegramVariety.fromJson(Map<String, dynamic> json) => HorsegramVariety(
    gmp6: Dbgv5.fromJson(json["gmp-6"]),
  );

  Map<String, dynamic> toJson() => {
    "gmp-6": gmp6.toJson(),
  };
}

class Linseed {
  Linseed({
    this.generic,
    this.seed,
    this.manure,
    this.fertilizer,
    this.cultivation,
    this.intercropping,
    this.linseedYield,
    this.variety,
  });

  String generic;
  String seed;
  String manure;
  ChilliFertilizer fertilizer;
  BlackgramCultivation cultivation;
  String intercropping;
  String linseedYield;
  LinseedVariety variety;

  factory Linseed.fromJson(Map<String, dynamic> json) => Linseed(
    generic: json["generic"],
    seed: json["seed"],
    manure: json["manure"],
    fertilizer: ChilliFertilizer.fromJson(json["fertilizer"]),
    cultivation: BlackgramCultivation.fromJson(json["cultivation"]),
    intercropping: json["intercropping"],
    linseedYield: json["yield"],
    variety: LinseedVariety.fromJson(json["variety"]),
  );

  Map<String, dynamic> toJson() => {
    "generic": generic,
    "seed": seed,
    "manure": manure,
    "fertilizer": fertilizer.toJson(),
    "cultivation": cultivation.toJson(),
    "intercropping": intercropping,
    "yield": linseedYield,
    "variety": variety.toJson(),
  };
}

class LinseedVariety {
  LinseedVariety({
    this.nl115,
  });

  Dbgv5 nl115;

  factory LinseedVariety.fromJson(Map<String, dynamic> json) => LinseedVariety(
    nl115: Dbgv5.fromJson(json["nl-115"]),
  );

  Map<String, dynamic> toJson() => {
    "nl-115": nl115.toJson(),
  };
}

class Maize {
  Maize({
    this.generic,
    this.soil,
    this.season,
    this.seed,
    this.manure,
    this.fertilizer,
    this.weed,
    this.irrigation,
    this.cultivation,
  });

  String generic;
  String soil;
  String season;
  String seed;
  String manure;
  BlackgramFertilizer fertilizer;
  String weed;
  String irrigation;
  MaizeCultivation cultivation;

  factory Maize.fromJson(Map<String, dynamic> json) => Maize(
    generic: json["generic"],
    soil: json["soil"],
    season: json["season"],
    seed: json["seed"],
    manure: json["manure"],
    fertilizer: BlackgramFertilizer.fromJson(json["fertilizer"]),
    weed: json["weed"],
    irrigation: json["irrigation"],
    cultivation: MaizeCultivation.fromJson(json["cultivation"]),
  );

  Map<String, dynamic> toJson() => {
    "generic": generic,
    "soil": soil,
    "season": season,
    "seed": seed,
    "manure": manure,
    "fertilizer": fertilizer.toJson(),
    "weed": weed,
    "irrigation": irrigation,
    "cultivation": cultivation.toJson(),
  };
}

class MaizeCultivation {
  MaizeCultivation({
    this.rainfed,
    this.irrigated,
  });

  String rainfed;
  String irrigated;

  factory MaizeCultivation.fromJson(Map<String, dynamic> json) => MaizeCultivation(
    rainfed: json["rainfed"],
    irrigated: json["irrigated"],
  );

  Map<String, dynamic> toJson() => {
    "rainfed": rainfed,
    "irrigated": irrigated,
  };
}

class Mesta {
  Mesta({
    this.generic,
    this.soil,
    this.fertilizer,
    this.cultivation,
    this.intercultivation,
    this.intercropping,
    this.harversting,
    this.mestaYield,
    this.seed,
    this.variety,
    this.season,
  });

  String generic;
  String soil;
  ChilliFertilizer fertilizer;
  BlackgramCultivation cultivation;
  String intercultivation;
  String intercropping;
  String harversting;
  String mestaYield;
  String seed;
  MestaVariety variety;
  String season;

  factory Mesta.fromJson(Map<String, dynamic> json) => Mesta(
    generic: json["generic"],
    soil: json["soil"],
    fertilizer: ChilliFertilizer.fromJson(json["fertilizer"]),
    cultivation: BlackgramCultivation.fromJson(json["cultivation"]),
    intercultivation: json["intercultivation"],
    intercropping: json["intercropping"],
    harversting: json["harversting"],
    mestaYield: json["yield"],
    seed: json["seed"],
    variety: MestaVariety.fromJson(json["variety"]),
    season: json["season"],
  );

  Map<String, dynamic> toJson() => {
    "generic": generic,
    "soil": soil,
    "fertilizer": fertilizer.toJson(),
    "cultivation": cultivation.toJson(),
    "intercultivation": intercultivation,
    "intercropping": intercropping,
    "harversting": harversting,
    "yield": mestaYield,
    "seed": seed,
    "variety": variety.toJson(),
    "season": season,
  };
}

class MestaVariety {
  MestaVariety({
    this.dharwadmesta,
    this.hc583,
  });

  String dharwadmesta;
  String hc583;

  factory MestaVariety.fromJson(Map<String, dynamic> json) => MestaVariety(
    dharwadmesta: json["dharwadmesta"],
    hc583: json["hc-583"],
  );

  Map<String, dynamic> toJson() => {
    "dharwadmesta": dharwadmesta,
    "hc-583": hc583,
  };
}

class Onion {
  Onion({
    this.generic,
    this.soil,
    this.season,
    this.fertilizer,
    this.weed,
    this.manure,
    this.seed,
    this.cultivation,
    this.variety,
  });

  String generic;
  String soil;
  String season;
  OnionFertilizer fertilizer;
  String weed;
  String manure;
  Seed seed;
  OnionCultivation cultivation;
  OnionVariety variety;

  factory Onion.fromJson(Map<String, dynamic> json) => Onion(
    generic: json["generic"],
    soil: json["soil"],
    season: json["season"],
    fertilizer: OnionFertilizer.fromJson(json["fertilizer"]),
    weed: json["weed"],
    manure: json["manure"],
    seed: Seed.fromJson(json["seed"]),
    cultivation: OnionCultivation.fromJson(json["cultivation"]),
    variety: OnionVariety.fromJson(json["variety"]),
  );

  Map<String, dynamic> toJson() => {
    "generic": generic,
    "soil": soil,
    "season": season,
    "fertilizer": fertilizer.toJson(),
    "weed": weed,
    "manure": manure,
    "seed": seed.toJson(),
    "cultivation": cultivation.toJson(),
    "variety": variety.toJson(),
  };
}

class OnionCultivation {
  OnionCultivation({
    this.nursery,
    this.transplanting,
    this.broadcastingsowing,
    this.irrigation,
    this.plantgrowthregulators,
  });

  String nursery;
  String transplanting;
  Broadcastingsowing broadcastingsowing;
  Irrigation irrigation;
  String plantgrowthregulators;

  factory OnionCultivation.fromJson(Map<String, dynamic> json) => OnionCultivation(
    nursery: json["nursery"],
    transplanting: json["transplanting"],
    broadcastingsowing: Broadcastingsowing.fromJson(json["broadcastingsowing"]),
    irrigation: Irrigation.fromJson(json["irrigation"]),
    plantgrowthregulators: json["plantgrowthregulators"],
  );

  Map<String, dynamic> toJson() => {
    "nursery": nursery,
    "transplanting": transplanting,
    "broadcastingsowing": broadcastingsowing.toJson(),
    "irrigation": irrigation.toJson(),
    "plantgrowthregulators": plantgrowthregulators,
  };
}

class Broadcastingsowing {
  Broadcastingsowing({
    this.broadcasting,
    this.drillsowing,
    this.plantingbulb,
  });

  String broadcasting;
  String drillsowing;
  String plantingbulb;

  factory Broadcastingsowing.fromJson(Map<String, dynamic> json) => Broadcastingsowing(
    broadcasting: json["broadcasting"],
    drillsowing: json["drillsowing"],
    plantingbulb: json["plantingbulb"],
  );

  Map<String, dynamic> toJson() => {
    "broadcasting": broadcasting,
    "drillsowing": drillsowing,
    "plantingbulb": plantingbulb,
  };
}

class Irrigation {
  Irrigation({
    this.generic,
    this.dripirrigation,
  });

  String generic;
  String dripirrigation;

  factory Irrigation.fromJson(Map<String, dynamic> json) => Irrigation(
    generic: json["generic"],
    dripirrigation: json["dripirrigation"],
  );

  Map<String, dynamic> toJson() => {
    "generic": generic,
    "dripirrigation": dripirrigation,
  };
}

class OnionFertilizer {
  OnionFertilizer({
    this.nitrogen,
    this.phosophorouspentoxide,
    this.potassiumoxide,
  });

  String nitrogen;
  String phosophorouspentoxide;
  String potassiumoxide;

  factory OnionFertilizer.fromJson(Map<String, dynamic> json) => OnionFertilizer(
    nitrogen: json["nitrogen"],
    phosophorouspentoxide: json["phosophorouspentoxide"],
    potassiumoxide: json["potassiumoxide"],
  );

  Map<String, dynamic> toJson() => {
    "nitrogen": nitrogen,
    "phosophorouspentoxide": phosophorouspentoxide,
    "potassiumoxide": potassiumoxide,
  };
}

class Seed {
  Seed({
    this.broadcastingdrillsowing,
    this.transplanting,
    this.bulbplanting,
  });

  String broadcastingdrillsowing;
  String transplanting;
  String bulbplanting;

  factory Seed.fromJson(Map<String, dynamic> json) => Seed(
    broadcastingdrillsowing: json["broadcastingdrillsowing"],
    transplanting: json["transplanting"],
    bulbplanting: json["bulbplanting"],
  );

  Map<String, dynamic> toJson() => {
    "broadcastingdrillsowing": broadcastingdrillsowing,
    "transplanting": transplanting,
    "bulbplanting": bulbplanting,
  };
}

class OnionVariety {
  OnionVariety({
    this.bellaryred,
    this.pusared,
    this.arkapragati,
    this.arkaniketan,
    this.arkapitambar,
    this.arkabindu,
    this.arkakalyan,
    this.n35,
    this.beemasuper,
  });

  String bellaryred;
  String pusared;
  String arkapragati;
  String arkaniketan;
  String arkapitambar;
  String arkabindu;
  String arkakalyan;
  String n35;
  String beemasuper;

  factory OnionVariety.fromJson(Map<String, dynamic> json) => OnionVariety(
    bellaryred: json["bellaryred"],
    pusared: json["pusared"],
    arkapragati: json["arkapragati"],
    arkaniketan: json["arkaniketan"],
    arkapitambar: json["arkapitambar"],
    arkabindu: json["arkabindu"],
    arkakalyan: json["arkakalyan"],
    n35: json["n-35"],
    beemasuper: json["beemasuper"],
  );

  Map<String, dynamic> toJson() => {
    "bellaryred": bellaryred,
    "pusared": pusared,
    "arkapragati": arkapragati,
    "arkaniketan": arkaniketan,
    "arkapitambar": arkapitambar,
    "arkabindu": arkabindu,
    "arkakalyan": arkakalyan,
    "n-35": n35,
    "beemasuper": beemasuper,
  };
}

class Redgram {
  Redgram({
    this.generic,
    this.seed,
    this.soil,
    this.fertilizer,
    this.cultivation,
    this.intercultivation,
    this.weed,
    this.harvesting,
    this.yeild,
    this.variety,
    this.manure,
  });

  String generic;
  String seed;
  String soil;
  RedgramFertilizer fertilizer;
  RedgramCultivation cultivation;
  String intercultivation;
  String weed;
  String harvesting;
  String yeild;
  RedgramVariety variety;
  String manure;

  factory Redgram.fromJson(Map<String, dynamic> json) => Redgram(
    generic: json["generic"],
    seed: json["seed"],
    soil: json["soil"],
    fertilizer: RedgramFertilizer.fromJson(json["fertilizer"]),
    cultivation: RedgramCultivation.fromJson(json["cultivation"]),
    intercultivation: json["intercultivation"],
    weed: json["weed"],
    harvesting: json["harvesting"],
    yeild: json["yeild"],
    variety: RedgramVariety.fromJson(json["variety"]),
    manure: json["manure"],
  );

  Map<String, dynamic> toJson() => {
    "generic": generic,
    "seed": seed,
    "soil": soil,
    "fertilizer": fertilizer.toJson(),
    "cultivation": cultivation.toJson(),
    "intercultivation": intercultivation,
    "weed": weed,
    "harvesting": harvesting,
    "yeild": yeild,
    "variety": variety.toJson(),
    "manure": manure,
  };
}

class RedgramCultivation {
  RedgramCultivation({
    this.sowing,
    this.transplanting,
  });

  String sowing;
  String transplanting;

  factory RedgramCultivation.fromJson(Map<String, dynamic> json) => RedgramCultivation(
    sowing: json["sowing"],
    transplanting: json["transplanting"],
  );

  Map<String, dynamic> toJson() => {
    "sowing": sowing,
    "transplanting": transplanting,
  };
}

class RedgramFertilizer {
  RedgramFertilizer({
    this.nitrogen,
    this.phosphorouspentoxide,
    this.potash,
    this.zincsulphate,
    this.sulphur,
    this.sodiumtetraborate,
  });

  String nitrogen;
  String phosphorouspentoxide;
  String potash;
  String zincsulphate;
  String sulphur;
  String sodiumtetraborate;

  factory RedgramFertilizer.fromJson(Map<String, dynamic> json) => RedgramFertilizer(
    nitrogen: json["nitrogen"],
    phosphorouspentoxide: json["phosphorouspentoxide"],
    potash: json["potash"],
    zincsulphate: json["zincsulphate"],
    sulphur: json["sulphur"],
    sodiumtetraborate: json["sodiumtetraborate"],
  );

  Map<String, dynamic> toJson() => {
    "nitrogen": nitrogen,
    "phosphorouspentoxide": phosphorouspentoxide,
    "potash": potash,
    "zincsulphate": zincsulphate,
    "sulphur": sulphur,
    "sodiumtetraborate": sodiumtetraborate,
  };
}

class RedgramVariety {
  RedgramVariety({
    this.ts3R,
    this.s1,
    this.gc1139,
    this.bsmr736,
    this.grg811,
  });

  Dbgv5 ts3R;
  Dbgv5 s1;
  Dbgv5 gc1139;
  Dbgv5 bsmr736;
  Dbgv5 grg811;

  factory RedgramVariety.fromJson(Map<String, dynamic> json) => RedgramVariety(
    ts3R: Dbgv5.fromJson(json["ts-3r"]),
    s1: Dbgv5.fromJson(json["s-1"]),
    gc1139: Dbgv5.fromJson(json["gc-11-39"]),
    bsmr736: Dbgv5.fromJson(json["bsmr-736"]),
    grg811: Dbgv5.fromJson(json["grg-811"]),
  );

  Map<String, dynamic> toJson() => {
    "ts-3r": ts3R.toJson(),
    "s-1": s1.toJson(),
    "gc-11-39": gc1139.toJson(),
    "bsmr-736": bsmr736.toJson(),
    "grg-811": grg811.toJson(),
  };
}

class Safflower {
  Safflower({
    this.generic,
    this.soil,
    this.variety,
    this.seed,
    this.manure,
    this.fertilizer,
  });

  String generic;
  String soil;
  SafflowerVariety variety;
  String seed;
  String manure;
  SafflowerFertilizer fertilizer;

  factory Safflower.fromJson(Map<String, dynamic> json) => Safflower(
    generic: json["generic"],
    soil: json["soil"],
    variety: SafflowerVariety.fromJson(json["variety"]),
    seed: json["seed"],
    manure: json["manure"],
    fertilizer: SafflowerFertilizer.fromJson(json["fertilizer"]),
  );

  Map<String, dynamic> toJson() => {
    "generic": generic,
    "soil": soil,
    "variety": variety.toJson(),
    "seed": seed,
    "manure": manure,
    "fertilizer": fertilizer.toJson(),
  };
}

class SafflowerFertilizer {
  SafflowerFertilizer({
    this.nitrogen,
    this.phosphorous,
    this.potassium,
    this.sulphur,
    this.zincsulphate,
  });

  String nitrogen;
  String phosphorous;
  String potassium;
  String sulphur;
  String zincsulphate;

  factory SafflowerFertilizer.fromJson(Map<String, dynamic> json) => SafflowerFertilizer(
    nitrogen: json["nitrogen"],
    phosphorous: json["phosphorous"],
    potassium: json["potassium"],
    sulphur: json["sulphur"],
    zincsulphate: json["zincsulphate"],
  );

  Map<String, dynamic> toJson() => {
    "nitrogen": nitrogen,
    "phosphorous": phosphorous,
    "potassium": potassium,
    "sulphur": sulphur,
    "zincsulphate": zincsulphate,
  };
}

class SafflowerVariety {
  SafflowerVariety({
    this.a1,
    this.s144,
    this.a2,
  });

  Dbgv5 a1;
  Dbgv5 s144;
  Dbgv5 a2;

  factory SafflowerVariety.fromJson(Map<String, dynamic> json) => SafflowerVariety(
    a1: Dbgv5.fromJson(json["A1"]),
    s144: Dbgv5.fromJson(json["S144"]),
    a2: Dbgv5.fromJson(json["A2"]),
  );

  Map<String, dynamic> toJson() => {
    "A1": a1.toJson(),
    "S144": s144.toJson(),
    "A2": a2.toJson(),
  };
}

class Soil {
  Soil({
    this.black,
    this.red,
    this.loam,
    this.sandy,
    this.clay,
  });

  Black black;
  Black red;
  Black loam;
  Black sandy;
  Black clay;

  factory Soil.fromJson(Map<String, dynamic> json) => Soil(
    black: Black.fromJson(json["black"]),
    red: Black.fromJson(json["red"]),
    loam: Black.fromJson(json["loam"]),
    sandy: Black.fromJson(json["sandy"]),
    clay: Black.fromJson(json["clay"]),
  );

  Map<String, dynamic> toJson() => {
    "black": black.toJson(),
    "red": red.toJson(),
    "loam": loam.toJson(),
    "sandy": sandy.toJson(),
    "clay": clay.toJson(),
  };
}

class Black {
  Black({
    this.generic,
    this.crop,
    this.fertilizer,
  });

  String generic;
  String crop;
  String fertilizer;

  factory Black.fromJson(Map<String, dynamic> json) => Black(
    generic: json["generic"],
    crop: json["crop"],
    fertilizer: json["fertilizer"],
  );

  Map<String, dynamic> toJson() => {
    "generic": generic,
    "crop": crop,
    "fertilizer": fertilizer,
  };
}

class Sorghum {
  Sorghum({
    this.generic,
    this.variety,
    this.seed,
    this.manure,
    this.fertilizer,
    this.cultivation,
    this.intercultivation,
    this.irrigation,
    this.weed,
  });

  String generic;
  Map<String, Dbgv5> variety;
  String seed;
  String manure;
  SorghumFertilizer fertilizer;
  BlackgramCultivation cultivation;
  String intercultivation;
  String irrigation;
  String weed;

  factory Sorghum.fromJson(Map<String, dynamic> json) => Sorghum(
    generic: json["generic"],
    variety: Map.from(json["variety"]).map((k, v) => MapEntry<String, Dbgv5>(k, Dbgv5.fromJson(v))),
    seed: json["seed"],
    manure: json["manure"],
    fertilizer: SorghumFertilizer.fromJson(json["fertilizer"]),
    cultivation: BlackgramCultivation.fromJson(json["cultivation"]),
    intercultivation: json["intercultivation"],
    irrigation: json["irrigation"],
    weed: json["weed"],
  );

  Map<String, dynamic> toJson() => {
    "generic": generic,
    "variety": Map.from(variety).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
    "seed": seed,
    "manure": manure,
    "fertilizer": fertilizer.toJson(),
    "cultivation": cultivation.toJson(),
    "intercultivation": intercultivation,
    "irrigation": irrigation,
    "weed": weed,
  };
}

class SorghumFertilizer {
  SorghumFertilizer({
    this.nitrogen,
    this.phosophorouspentoxide,
    this.pottasiumoxide,
    this.zincsulfate,
    this.azospirillum,
    this.sulphur,
    this.calciumchloride,
  });

  String nitrogen;
  String phosophorouspentoxide;
  String pottasiumoxide;
  String zincsulfate;
  String azospirillum;
  String sulphur;
  String calciumchloride;

  factory SorghumFertilizer.fromJson(Map<String, dynamic> json) => SorghumFertilizer(
    nitrogen: json["nitrogen"],
    phosophorouspentoxide: json["phosophorouspentoxide"],
    pottasiumoxide: json["pottasiumoxide"],
    zincsulfate: json["Zincsulfate"],
    azospirillum: json["azospirillum"],
    sulphur: json["sulphur"],
    calciumchloride: json["calciumchloride"],
  );

  Map<String, dynamic> toJson() => {
    "nitrogen": nitrogen,
    "phosophorouspentoxide": phosophorouspentoxide,
    "pottasiumoxide": pottasiumoxide,
    "Zincsulfate": zincsulfate,
    "azospirillum": azospirillum,
    "sulphur": sulphur,
    "calciumchloride": calciumchloride,
  };
}

class Soyabean {
  Soyabean({
    this.generic,
    this.soil,
    this.seed,
    this.manure,
    this.fertilizer,
    this.weed,
    this.cultivation,
    this.irrigation,
    this.variety,
  });

  String generic;
  String soil;
  String seed;
  String manure;
  SoyabeanFertilizer fertilizer;
  String weed;
  String cultivation;
  String irrigation;
  Map<String, Dbgv5> variety;

  factory Soyabean.fromJson(Map<String, dynamic> json) => Soyabean(
    generic: json["generic"],
    soil: json["soil"],
    seed: json["seed"],
    manure: json["manure"],
    fertilizer: SoyabeanFertilizer.fromJson(json["fertilizer"]),
    weed: json["weed"],
    cultivation: json["cultivation"],
    irrigation: json["irrigation"],
    variety: Map.from(json["variety"]).map((k, v) => MapEntry<String, Dbgv5>(k, Dbgv5.fromJson(v))),
  );

  Map<String, dynamic> toJson() => {
    "generic": generic,
    "soil": soil,
    "seed": seed,
    "manure": manure,
    "fertilizer": fertilizer.toJson(),
    "weed": weed,
    "cultivation": cultivation,
    "irrigation": irrigation,
    "variety": Map.from(variety).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
  };
}

class SoyabeanFertilizer {
  SoyabeanFertilizer({
    this.nitrogen,
    this.phosphorouspentoxide,
    this.potassiumoxide,
    this.zincsulphate,
    this.sulfur,
    this.phosphatesolubilisingbacteria,
    this.biozymegrowthregulators,
  });

  String nitrogen;
  String phosphorouspentoxide;
  String potassiumoxide;
  String zincsulphate;
  String sulfur;
  String phosphatesolubilisingbacteria;
  String biozymegrowthregulators;

  factory SoyabeanFertilizer.fromJson(Map<String, dynamic> json) => SoyabeanFertilizer(
    nitrogen: json["nitrogen"],
    phosphorouspentoxide: json["phosphorouspentoxide"],
    potassiumoxide: json["potassiumoxide"],
    zincsulphate: json["zincsulphate"],
    sulfur: json["sulfur"],
    phosphatesolubilisingbacteria: json["phosphatesolubilisingbacteria"],
    biozymegrowthregulators: json["biozymegrowthregulators"],
  );

  Map<String, dynamic> toJson() => {
    "nitrogen": nitrogen,
    "phosphorouspentoxide": phosphorouspentoxide,
    "potassiumoxide": potassiumoxide,
    "zincsulphate": zincsulphate,
    "sulfur": sulfur,
    "phosphatesolubilisingbacteria": phosphatesolubilisingbacteria,
    "biozymegrowthregulators": biozymegrowthregulators,
  };
}

class Sunflower {
  Sunflower({
    this.generic,
    this.season,
    this.soil,
    this.variety,
    this.seed,
    this.manure,
    this.fertilizer,
    this.cultivation,
    this.intercultivation,
    this.weed,
    this.sunflowerYield,
  });

  String generic;
  String season;
  String soil;
  Map<String, Dbgv5> variety;
  String seed;
  String manure;
  SunflowerFertilizer fertilizer;
  BlackgramCultivation cultivation;
  String intercultivation;
  String weed;
  String sunflowerYield;

  factory Sunflower.fromJson(Map<String, dynamic> json) => Sunflower(
    generic: json["generic"],
    season: json["season"],
    soil: json["soil"],
    variety: Map.from(json["variety"]).map((k, v) => MapEntry<String, Dbgv5>(k, Dbgv5.fromJson(v))),
    seed: json["seed"],
    manure: json["manure"],
    fertilizer: SunflowerFertilizer.fromJson(json["fertilizer"]),
    cultivation: BlackgramCultivation.fromJson(json["cultivation"]),
    intercultivation: json["intercultivation"],
    weed: json["weed"],
    sunflowerYield: json["yield"],
  );

  Map<String, dynamic> toJson() => {
    "generic": generic,
    "season": season,
    "soil": soil,
    "variety": Map.from(variety).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
    "seed": seed,
    "manure": manure,
    "fertilizer": fertilizer.toJson(),
    "cultivation": cultivation.toJson(),
    "intercultivation": intercultivation,
    "weed": weed,
    "yield": sunflowerYield,
  };
}

class SunflowerFertilizer {
  SunflowerFertilizer({
    this.nitrogen,
    this.phosphorous,
    this.potash,
    this.gypsum,
    this.azospirillum,
  });

  String nitrogen;
  String phosphorous;
  String potash;
  String gypsum;
  String azospirillum;

  factory SunflowerFertilizer.fromJson(Map<String, dynamic> json) => SunflowerFertilizer(
    nitrogen: json["nitrogen"],
    phosphorous: json["phosphorous"],
    potash: json["potash"],
    gypsum: json["gypsum"],
    azospirillum: json["azospirillum"],
  );

  Map<String, dynamic> toJson() => {
    "nitrogen": nitrogen,
    "phosphorous": phosphorous,
    "potash": potash,
    "gypsum": gypsum,
    "azospirillum": azospirillum,
  };
}

class Tobacco {
  Tobacco({
    this.generic,
    this.soil,
    this.season,
    this.manure,
    this.fertilizer,
    this.cultivation,
    this.intercultivation,
    this.seed,
    this.seedling,
    this.raisingseedling,
    this.variety,
  });

  String generic;
  String soil;
  String season;
  String manure;
  BlackgramFertilizer fertilizer;
  TobaccoCultivation cultivation;
  String intercultivation;
  String seed;
  String seedling;
  String raisingseedling;
  TobaccoVariety variety;

  factory Tobacco.fromJson(Map<String, dynamic> json) => Tobacco(
    generic: json["generic"],
    soil: json["soil"],
    season: json["season"],
    manure: json["manure"],
    fertilizer: BlackgramFertilizer.fromJson(json["fertilizer"]),
    cultivation: TobaccoCultivation.fromJson(json["cultivation"]),
    intercultivation: json["intercultivation"],
    seed: json["seed"],
    seedling: json["seedling"],
    raisingseedling: json["raisingseedling"],
    variety: TobaccoVariety.fromJson(json["variety"]),
  );

  Map<String, dynamic> toJson() => {
    "generic": generic,
    "soil": soil,
    "season": season,
    "manure": manure,
    "fertilizer": fertilizer.toJson(),
    "cultivation": cultivation.toJson(),
    "intercultivation": intercultivation,
    "seed": seed,
    "seedling": seedling,
    "raisingseedling": raisingseedling,
    "variety": variety.toJson(),
  };
}

class TobaccoCultivation {
  TobaccoCultivation({
    this.transplanting,
  });

  String transplanting;

  factory TobaccoCultivation.fromJson(Map<String, dynamic> json) => TobaccoCultivation(
    transplanting: json["transplanting"],
  );

  Map<String, dynamic> toJson() => {
    "transplanting": transplanting,
  };
}

class TobaccoVariety {
  TobaccoVariety({
    this.anand119,
    this.bhagyashree,
    this.bhavyashree,
    this.vedaganga,
    this.nbd209,
  });

  Dbgv5 anand119;
  Dbgv5 bhagyashree;
  Dbgv5 bhavyashree;
  Dbgv5 vedaganga;
  Dbgv5 nbd209;

  factory TobaccoVariety.fromJson(Map<String, dynamic> json) => TobaccoVariety(
    anand119: Dbgv5.fromJson(json["anand119"]),
    bhagyashree: Dbgv5.fromJson(json["bhagyashree"]),
    bhavyashree: Dbgv5.fromJson(json["bhavyashree"]),
    vedaganga: Dbgv5.fromJson(json["vedaganga"]),
    nbd209: Dbgv5.fromJson(json["nbd209"]),
  );

  Map<String, dynamic> toJson() => {
    "anand119": anand119.toJson(),
    "bhagyashree": bhagyashree.toJson(),
    "bhavyashree": bhavyashree.toJson(),
    "vedaganga": vedaganga.toJson(),
    "nbd209": nbd209.toJson(),
  };
}

class Wheat {
  Wheat({
    this.generic,
    this.variety,
    this.soil,
    this.manure,
    this.fertilizer,
    this.cultivation,
    this.weed,
    this.wheatYield,
  });

  String generic;
  Map<String, Dbgv5> variety;
  String soil;
  String manure;
  CastorFertilizer fertilizer;
  BlackgramCultivation cultivation;
  String weed;
  String wheatYield;

  factory Wheat.fromJson(Map<String, dynamic> json) => Wheat(
    generic: json["generic"],
    variety: Map.from(json["variety"]).map((k, v) => MapEntry<String, Dbgv5>(k, Dbgv5.fromJson(v))),
    soil: json["soil"],
    manure: json["manure"],
    fertilizer: CastorFertilizer.fromJson(json["fertilizer"]),
    cultivation: BlackgramCultivation.fromJson(json["cultivation"]),
    weed: json["weed"],
    wheatYield: json["yield"],
  );

  Map<String, dynamic> toJson() => {
    "generic": generic,
    "variety": Map.from(variety).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
    "soil": soil,
    "manure": manure,
    "fertilizer": fertilizer.toJson(),
    "cultivation": cultivation.toJson(),
    "weed": weed,
    "yield": wheatYield,
  };
}
