void main() {
  Solution solve = new Solution();
  String sampleString = "heyoooasdfebsd";
  print(solve.lengthOfLongestSubstring(sampleString));
}

/*Given a string s, find the length of the longest substring  without repeating characters.*/
//Credit to SachinBhankhar

class Solution {
  int lengthOfLongestSubstring(String s) {
    if (s.isEmpty) {
      return 0;
    }
    Set<String> subString = {};
    int longestSubString = 1;
    for (int i = 0; i < s.length; i++) {
      while (subString.contains(s[i])) {
        ///checking for repeating string in [s]
        subString.remove(subString.first);
      }
      subString.add(s[i]);

      ///In case there are all unique elements we assign [longestSubString]
      if (longestSubString < subString.length) {
        longestSubString = subString.length;
      }
    }
    return longestSubString;
  }
}
