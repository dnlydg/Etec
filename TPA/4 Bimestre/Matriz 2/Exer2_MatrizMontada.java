import java.util.Scanner;
import java.util.Random;
public class Exer2_MatrizMontada {
	public static void main(String[]args) {
		Random rand = new Random();
		Scanner in = new Scanner(System.in);
		int x=0,y=0;
		System.out.println("Digite a quantidade de linhas:");
		x = in.nextInt();
		System.out.println("Digite a quantidade de colunas:");
		y = in.nextInt();
		int a[][] = new int [x][y];
		for(int i=0;i<x;i++) {
			for(int j=0;j<y;j++) {
				a [i][j]= rand.nextInt()%100;
			}
		}
		for(int i=0;i<x;i++) {
			for(int j=0;j<y;j++) {
				System.out.print(a [i][j]+" ");
			}
			System.out.print("\n");
		}
	}
}

