var profile = {
  "name": "Sangvaleap",
  "image": "https://avatars.githubusercontent.com/u/86506519?v=4",
  "email": "sangvaleap.vanny@gmail.com"
};

List categories = [
  {"name": "All", "icon": "assets/icons/home.svg"},
  {"name": "7's", "icon": "assets/icons/home.svg"},
  {"name": "5's", "icon": "assets/icons/home.svg"},
  {"name": "11's", "icon": "assets/icons/home.svg"},
  {"name": "5's", "icon": "assets/icons/home.svg"},
  {"name": "7's", "icon": "assets/icons/home.svg"},
  {"name": "11's", "icon": "assets/icons/home.svg"},
  {"name": "7's", "icon": "assets/icons/home.svg"},
  {"name": "5's", "icon": "assets/icons/home.svg"},
];

List cities = [
  {"name": "Thalassery", "icon": "assets/icons/home.svg"},
  {"name": "3 mile", "icon": "assets/icons/home.svg"},
  {"name": "Kadiroor", "icon": "assets/icons/home.svg"},
  {"name": "Koothuparamba", "icon": "assets/icons/home.svg"},
  {"name": "Chungam", "icon": "assets/icons/home.svg"},
];

List<String> albumImages = [
  "https://images.unsplash.com/photo-1509077613385-f89402467146?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=627&q=80",
  "https://images.unsplash.com/photo-1509077613385-f89402467146?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=627&q=80",
  "https://images.unsplash.com/photo-1509077613385-f89402467146?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=627&q=80",
  "https://images.unsplash.com/photo-1529900748604-07564a03e7a6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
];

List features = [
  {
    "id": 100,
    "name": "King Arena",
    "image":
        "https://images.unsplash.com/photo-1509077613385-f89402467146?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=627&q=80",
    "price": "₹800",
    "type": categories[1]["name"],
    "rate": "4.5",
    "location": "Chungam",
    "is_favorited": false,
    "album_images": albumImages,
    "description":
        "Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document",
  },
  {
    "id": 101,
    "name": "Emirates Turf",
    "image":
        "https://images.unsplash.com/photo-1550881111-7cfde14b8073?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
    "price": "₹850",
    "type": categories[3]["name"],
    "rate": "4.5",
    "location": "Thalassery",
    "is_favorited": true,
    "album_images": albumImages,
    "description":
        "Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document",
  },
  {
    "id": 102,
    "name": "Elite Turf",
    "image":
        "https://images.unsplash.com/photo-1621929209157-b69c5183d01e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80",
    "price": "₹950",
    "type": categories[2]["name"],
    "rate": "4.5",
    "location": "3 mile",
    "is_favorited": false,
    "album_images": albumImages,
    "description":
        "Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document",
  },
  {
    "id": 103,
    "name": "Kingdom",
    "image":
        "https://images.unsplash.com/photo-1495143881214-47a7d7f2e7fa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
    "price": "₹1000",
    "type": categories[2]["name"],
    "rate": "4.5",
    "location": "Kadiroor",
    "is_favorited": false,
    "album_images": albumImages,
    "description":
        "Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document",
  },
  {
    "id": 104,
    "name": "Classic Turf",
    "image":
        "https://images.unsplash.com/photo-1448683583252-f787c5c96f4d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1172&q=80",
    "price": "₹600",
    "type": categories[4]["name"],
    "rate": "4.5",
    "location": "Koothuparamba",
    "is_favorited": false,
    "album_images": albumImages,
    "description":
        "Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document",
  },
  {
    "id": 105,
    "name": "Play time",
    "image":
        "https://images.unsplash.com/photo-1528552904359-07bab3b488ab?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
    "price": "₹1050",
    "type": categories[1]["name"],
    "rate": "4.5",
    "location": "Kadiroor",
    "is_favorited": false,
    "album_images": albumImages,
    "description":
        "Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document",
  },
];

List recommends = [
  {
    "id": 110,
    "name": "Luxury Turf",
    "image":
        "https://images.unsplash.com/photo-1610729866389-fbf90649c302?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
    "price": "₹800",
    "type": categories[1]["name"],
    "rate": "4.5",
    "location": "Phnom Penh",
    "is_favorited": false,
    "album_images": albumImages,
    "description":
        "Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document",
  },
  {
    "id": 111,
    "name": "Emirates kingdom",
    "image":
        "https://images.unsplash.com/photo-1522947961977-67fe74257c16?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80",
    "price": "₹1300",
    "type": categories[2]["name"],
    "rate": "4.5",
    "location": "Phnom Penh",
    "is_favorited": false,
    "album_images": albumImages,
    "description":
        "Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document",
  },
  {
    "id": 112,
    "name": "Arena play",
    "image":
        "https://images.unsplash.com/photo-1509077613385-f89402467146?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=627&q=80",
    "price": "₹1500",
    "type": categories[1]["name"],
    "rate": "4.5",
    "location": "Phnom Penh",
    "album_images": albumImages,
    "is_favorited": false,
    "description":
        "Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document",
  },
];
