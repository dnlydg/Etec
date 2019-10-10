import java.util.Scanner;
public class exer13 {
	public static void main(String[]args) {
		
		Scanner in = new Scanner(System.in);
		int a[] = new int [10];
		int b[] = new int [10];
		int x;
		for(int i=0;i<10;i++) {
			System.out.println("Digite o "+(i+1)+"º Valor:");
			a[i] = in.nextInt();
			x = a[i]%2;
			if(x==0) {
				b[i] = 1;
			}else {
				b[i] = 0;
			}
		}
		System.out.print("[");
		for(int i=0;i<10;i++) {
			if(i==9) {
				System.out.print(b[i]+"]");
			}else {
			System.out.print(b[i]+", ");
			}
		}
	}
}
