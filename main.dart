List<int> nums = <int>[1, 2, 5, 3];
List<int> nums2 = [...nums];
void main() {
  var val = nums2.removeAt(1);
  print(nums);
  print(val.runtimeType);
}
