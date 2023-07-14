//Given a string s containing '(', ')', '{', '}', '[' and ']', determine if the input string is valid
//An input string is valid if:
//  Open brackets must be closed by the same type of brackets.
//  Open brackets must be closed in the correct order.
//  Every close bracket has a corresponding open bracket of the same type.

class Solution {
  bool isValid(String s) {
    var list = s.split('');
    var map = {'(': ')', '{': '}', '[': ']'};
    late var delete;
    late var delete2;
    if (list.length % 2 != 0) {
      return false;
    } else {
      for (int i = 0; i <= list.length / 2; i++) {
        for (int j = list.length - 1; j > 0; j--) {
          print(j);
          if (list[j] == map[list[0]]) {
            delete = list.removeAt(j);
            delete2 = list.removeAt(0);
          } else if (j == 1 && list[j] != map[list[0]]) {
            return false;
          }
        }
      }
      return true;
    }
  }
}
