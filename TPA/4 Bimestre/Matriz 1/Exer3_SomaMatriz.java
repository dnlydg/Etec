import java.lang.Math;
public class Exer3_SomaMatriz {
	public static void main(String[]args) {
		
		int a[][] = new int[3][4];
		for (int i=0;i<3;i++) {
			for (int j=0;j<3;j++) {
					a[i][j] = (int) (Math.random()*100);
					a[i][3] += a[i][j];
			}
		}
		
		for (int i=0;i<3;i++) {
			System.out.print("\n");
			for (int j=0;j<4;j++) {
				if(j==3) {
					System.out.print(" = "+a[i][3]);
				}else {
					if(j==2) {
						System.out.print(a[i][2]);
					}else {
						System.out.print(a[i][j]+" + ");
					}
				}
			}
		}
		
	}
}
