List<int> nums = [3, 2, 4];
int target = 6;
Solution2 test = new Solution2();
void main() {
  List<int> result = test.twoSum(nums, target);
  print(result);
}

/* Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
You may assume that each input would have exactly one solution, and you may not use the same element twice.
You can return the answer in any order. */
// Solution#1: Test passed, runtime not passed
class Solution1 {
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

//Solution #2: test passed runtime passsed @ 470ms & 144.9MB. Beats 13.86% & 8.94%

class Solution2 {
  List<int> twoSum(List<int> nums, int target) {
    List<int> indices = [];
    late List<int> nums2;
    late int indice1;
    late int indice2;
    var halfTarget = target / 2;
    for (int i = 0; i < nums.length; i++) {
      if (nums[i] == target / 2) {
        nums2 = [...nums];
        final val = nums2.removeAt(i);
        var target_half = (target / 2).round();
        if (nums2.contains(target_half) && target / 2 == target_half) {
          indice1 = i;
          if (nums2.indexOf(target_half) >= i) {
            indice2 = nums2.indexOf(target_half) + 1;
            indices.add(indice1);
            indices.add(indice2);
            return indices;
          } else {
            indice2 = nums2.indexOf(target_half);
            indices.add(indice1);
            indices.add(indice1);
            return indices;
          }
        }
      } else if (nums.contains(target - nums[i])) {
        indice1 = i;
        indice2 = nums.indexOf(target - nums[i]);
        if (indice1 < indice2) {
          //indices = nums;

          //indices.add(nums[i]); indices.add(target-nums[i]);
          indices.add(indice1);
          indices.add(indice2);
          return indices;
        } else {
          //indices = nums;
          //indices.add(nums[i]); indices.add(target-nums[i]);
          indices.add(indice2);
          indices.add(indice1);
          return indices;
        }

        return indices;
      }
    }
    return indices;
  }
}

//Leetcode solution: https://leetcode.com/problems/two-sum/solutions/3738199/solution-for-two-sum-works-well-good-runtime-and-ram/