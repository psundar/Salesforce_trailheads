public class StringArrayTest {
    public static String[] generateStringArray(Integer n){
        String[] result = new String[n];
        
        for (Integer i=0; i < n; i++){
            result[i] = 'Test '+String.valueOf(i);
        }
        return result;
    }
}