import java.util.Scanner;
public class exer11 {
	public static void main(String[]args) {
		
		Scanner in = new Scanner(System.in);
		int a[] = new int [10];
		int x;
		for(int i=0;i<10;i++) {
			System.out.println("Digite o "+(i+1)+"º valor do Vetor:");
			a[i] = in.nextInt();
		}
		System.out.println("Digite o número a ser buscado:");
		x = in.nextInt();
		for(int i=0;i<10;i++) {
			if(x==a[i]) {
				System.out.println("Elemento Encontrado!: "+a[i]+", ele foi o "+(i+1)+"º número inserido!");
				break;
			}else if(i==9 && x!=a[i]) {
				System.out.println("Elemento inexistente no vetor");
			}
		}
	}
}
