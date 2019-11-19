import java.util.Scanner;
import java.util.Random;
public class Exer1_DiagonaleNegativo {
	public static void main(String[]args) {
		Random sx = new Random();
		Scanner in = new Scanner(System.in);
		int tam, neg=0;
		System.out.println("Digite o tamanho da matriz:");
		tam = in.nextInt();
		int mat[][] = new int [tam][tam];
		for(int i=0;i<tam;i++) {
			for(int j=0;j<tam;j++) {
				mat [i][j]= sx.nextInt()%100;
				if (mat[i][j]<0) {
					neg++;
				}
			}
		}
		for(int i=0;i<tam;i++) {
			for(int j=0;j<tam;j++) {
				System.out.print(mat [i][j]+" ");
			}
			System.out.print("\n");
		}
		System.out.print("\n\n");
		System.out.println("Main diagonal:");
		for (int i=0;i<tam;i++) {
			System.out.print(mat[i][i]+", ");
		}
		System.out.println("\nNegative Numbers: \n"+neg);
	}
}
