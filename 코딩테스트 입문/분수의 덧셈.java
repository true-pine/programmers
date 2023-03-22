class Solution {
    public int[] solution(int numer1, int denom1, int numer2, int denom2) {
        int[] answer = {};
        
        int numer = (numer1 * denom2) + (numer2 * denom1);
        int denom = denom1 * denom2;
        
        int gcd = 0;
        if(numer > denom) {
            gcd = gcd(numer, denom);
        } else {
            gcd = gcd(denom, numer);
        }
        
        numer = numer / gcd;
        denom = denom / gcd;
        
        answer = new int[]{numer, denom};

        return answer;
    }
    
    private int gcd(int b, int s) {
        while(s != 0) {
            int tmp = b % s;
            b = s;
            s = tmp;
        }
        
        return b;
    }
}