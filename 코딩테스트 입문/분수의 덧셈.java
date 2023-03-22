class Solution {
    public int[] solution(int numer1, int denom1, int numer2, int denom2) {
        int[] answer = {};
        
        if(denom1 > denom2) {
            if(denom1 % denom2 == 0) {
                int multi = denom1 / denom2;
                int numer = numer1 + (numer2 * multi);
                int denom = denom1;
                answer = new int[]{numer, denom};
            } else {
                int numer = (numer1 * denom2) + (numer2 * denom1);
                int denom = denom1 * denom2;
                answer = new int[]{numer, denom};
            }
        } else {
            if(denom2 % denom1 == 0) {
                int multi = denom2 / denom1;
                int numer = (numer1 * multi) + numer2;
                int denom = denom2;
                answer = new int[]{numer, denom};
            } else {
                int numer = (numer1 * denom2) + (numer2 * denom1);
                int denom = denom1 * denom2;
                answer = new int[]{numer, denom};
            }
        }

        return answer;
    }
}