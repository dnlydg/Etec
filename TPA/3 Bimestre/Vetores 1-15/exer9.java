import java.util.Scanner;
public class exer9 {
	public static void main(String[]args) {
		
		Scanner in = new Scanner(System.in);
		int a[] = new int [10];
		int b[] = new int [10];
		int t=0;
		int c[] = new int [10];
		for(int i=0;i<10;i++) {
			System.out.println("Digite o "+(i+1)+"� valor do vetor A");
			a[i] = in.nextInt();
			System.out.println("Digite o "+(i+1)+"� valor do vetor B");
			b[i] = in.nextInt();
		}
		for(int i=0;i<10;i++) {
			for(int con=0;con<10;con++) {
				if(a[i]==b[con]) {
					c[t]=a[i];
					t++;
				}
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
