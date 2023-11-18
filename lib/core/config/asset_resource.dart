class ImageResource {
  String iconPath({required String name, String ext = ".svg"}) => "lib/assets/icons/$name$ext";
  String imagePath({required String name, String ext = ".png"}) => "lib/assets/images/$name$ext";
}
