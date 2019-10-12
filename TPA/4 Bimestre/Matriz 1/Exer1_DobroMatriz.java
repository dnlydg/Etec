public class Exer1_DobroMatriz {
	public static void main(String[]args) {
		int a [][]= new int [4][4];
		int i=0,j=0,x=2;
		for(i=0;i<4;i++) {
			System.out.print("\n");
			for(j=0;j<4;j++) {
				a[i][j] = x;
				x=x*2;
				System.out.print(a[i][j]+" ");
			}
		}
	}
}
