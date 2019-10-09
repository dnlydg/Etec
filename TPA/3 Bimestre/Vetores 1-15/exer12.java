import java.util.Scanner;
public class exer12 {
	public static void main(String[]args) {
		
		Scanner in = new Scanner(System.in);
		int a[] = new int [10];
		int b=9,v=0;
		for(int i=0;i<10;i++) {
			System.out.println("Digite o "+(i+1)+"º Algarismo:");
			a[i] = in.nextInt();
		}
		for(int i=0;i<10;i++) {
			if(a[i]==a[b]) {
				v++;
			}
			b--;
		}
		if(v==10) {
			System.out.println("Número Palíndromo");
		}else {
			System.out.println("Número não Palíndromo");
		}
	}
}
