import java.util.Scanner;
public class exer1 {
	public static void main(String[] args) {
		Scanner in = new Scanner(System.in);
		int d, c=0;
		int a[] = new int [20];
		int b[] = new int [20];
		for(int i=0;i<20;i++) {
			System.out.println("Digite o "+(i+1)+" valor:");
			a[i] = in.nextInt();
			d = a[i]%2;
			if(d==0) {
				b[c] = a[i];
				c++;
			}
		}
		for(int i=0;i<20;i++) {
			d = a[i]%2;
			if(d!=0) {
				b[c] = a[i];
				c++;
			}
		}
		System.out.print("[");
		for(int i=0;i<20;i++) {
			System.out.print(b[i]+" - ");
		}
		System.out.print("]");
	}
}
