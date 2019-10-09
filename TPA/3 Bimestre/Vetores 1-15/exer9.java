import java.util.Scanner;
public class exer9 {
	public static void main(String[]args) {
		
		Scanner in = new Scanner(System.in);
		int a[] = new int [10];
		int b[] = new int [10];
		int x=0,con=0;
		int c[] = new int [10];
		for(int i=0;i<10;i++) {
			System.out.println("Digite o "+(i+1)+"º valor do vetor A");
			a[i] = in.nextInt();
			System.out.println("Digite o "+(i+1)+"º valor do vetor B");
			b[i] = in.nextInt();
		}
		for(int i=0;i<10;i++) {
			con = 0;
			while(con<10) {
				if(a[i]==b[con]) {
					x++;
					c[i]=a[i];
				}
				con++;
			}
		}
		System.out.print("[");
		for(int i=0;i<10;i++) {
			if(i==9) {
				System.out.print(c[i]+"]");
			}else {
				System.out.print(c[i]+" ,");
			}
		}
	}
}
