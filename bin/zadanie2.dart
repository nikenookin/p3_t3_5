double calculateAreaArrow({required double width, required double height}) => width * height;

void main() {
  double area = calculateAreaArrow(width: 5.0, height: 3.0);
  print('Площадь (стрелочная функция): $area');
}