import java.util.Scanner;
public class exer7 {
	public static void main(String[]args) {
		Scanner in = new Scanner(System.in);
		int a [] = new int [15];
		int b [] = new int [15];
		for(int i=0;i<15;i++) {
			System.out.println("Digite o "+(i+1)+"º valor");
			a[i] = in.nextInt();
			b[i] = 1;
			for(int c=1;c<a[i];c++) {
				b[i] += b[i] * c;  
			}
			System.out.println(b[i]+" ");
		}
		
	}

}
