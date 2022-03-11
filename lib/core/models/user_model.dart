class UserModelJson {
  Map myUser = {
    "name": "",
    "ball": 0.0,
    "picture": "",
    "nomer": "",
    "location": {
      "long": 0.0,
      "lat": 0.0,
    },
    "pasportID": "",
    "jobCategories": [],
    "disc": "",
    "ratings": [
      {"ball": 0.0, "pictures": [], "comment": ""}
    ], 
    "jobsDone": [
      {
        "pictures": [],
        "title": "",
        "disc": "",
        "tel_num": "",
        "location": {
          "long": 0.0,
          "lat": 0.0,
        },
        "price": 0.0,
        "categories": [],
        "date": "",
      }
    ],
  };

  Map rating = {"ball": 0.0, "pictures": [], "comment": ""};

  Map post = {
    "pictures": [],
    "title": "",
    "disc": "",
    "tel_num": "",
    "location": {
      "long": 0.0,
      "lat": 0.0,
    },
    "price": 0.0,
    "categories": [],
    "date": "",
  };
}
