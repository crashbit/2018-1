public class Factorial{
    int total;

    // El constructor en Java
    public Factorial(){
        total = 1;
    }


    int calcula(int n){
        while(n > 1){
            total = total * n;
            n = n - 1;
        }
        return total;
    }

}

