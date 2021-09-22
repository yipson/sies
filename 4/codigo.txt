package prueba;

public class cuatro {
    public static void main(String[] args) {
        int validar;
        for (int i = 1; i <= 100; i++) {
            validar =0;
            if (i%3 == 0 && i%5 == 0) {
                validar = 1;
                System.out.println("FizzBuzz");
            }
            
            if (i%3 == 0 && validar<1) {
                validar = 1;
                System.out.println("Fizz");
            } 
            
            if (i%5 == 0 && validar<1){
                validar = 1;
                System.out.println("Buzz");
            }
            
            if(validar != 1){
                System.out.println(i);
            }
            
        }
        
    }
}
