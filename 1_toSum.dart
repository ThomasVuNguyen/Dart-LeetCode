List<int> nums = [3, 2, 4];
int target = 6;
Solution test = new Solution();
void main() {
  List<int> result = test.twoSum(nums, target);
  print(result);
}

/* Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
You may assume that each input would have exactly one solution, and you may not use the same element twice.
You can return the answer in any order. */

class Solution {
  List<int> twoSum(List<int> nums, int target) {
    late int i;
    late int o;
    late int k;
    late int j;
    List<int> list = [];
    for (var count = 0; count < nums.length; count++) {
      i = nums[count];
      o = target - i;
      if (i == target / 2) {
        int i_index = nums.indexOf(i);
        nums[i_index] = i + 1;
        if (nums.contains(i)) {
          int o_index = nums.indexOf(i);
          list.add(i_index);
          list.add(o_index);
          list.sort((a, b) => a.compareTo(b));
          break;
        } else {
          nums[i_index] = i;
        }
      } else if (nums.contains(o) == true) {
        if (nums.indexOf(i) != nums.indexOf(o)) {
          j = nums.indexOf(i);
          k = nums.indexOf(o);
          list.add(j);
          list.add(k);
          list.sort((a, b) => a.compareTo(b));
          break;
        }
      }
    }
    ;

    return list;
  }
}
