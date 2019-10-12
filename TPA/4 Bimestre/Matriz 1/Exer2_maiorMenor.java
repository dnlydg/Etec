import java.lang.Math;
public class Exer2_maiorMenor {
	public static void main(String[]args) {
		int a [][]= new int [3][3];
		int ma=0, me=101, cormax=0,cormay=0,cormex=0,cormey=0;
		for (int i=0;i<3;i++) {
			for (int j=0;j<3;j++) {
					a[i][j] = (int) (Math.random()*100);
				}
			}
		for (int i=0;i<3;i++) {
			for (int j=0;j<3;j++) {
				if (a[i][j]>ma) {
					ma=a[i][j];
					cormax = j;
					cormay = i;
				}else if (a[i][j]<me) {
					me = a[i][j];
					cormex = j;
					cormey = i;
				}
			}
		}
		for (int i=0;i<3;i++) {
			System.out.print("\n");
			for (int j=0;j<3;j++) {
				System.out.print(a[i][j]+" ");
			}
		}
		System.out.println("\n\nO Maior número é: "+ma+", foi encontrano em "+(cormax+1)+","+(cormay+1));
		System.out.println("O Menor número é: "+me+", foi encontrano em "+(cormex+1)+","+(cormey+1));
	}
}