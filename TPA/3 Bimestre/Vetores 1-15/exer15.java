import java.util.Scanner;
public class exer15 {
	public static void main(String[]args) {
		
		Scanner in = new Scanner(System.in);
		int a[] = new int[10];
		int b[] = new int[10];
		int c[] = new int[10];
		int co=0,x;
		for(int i=0;i<10;i++) {
			co=0;
			System.out.println("Digite o "+(i+1)+"º valor:");
			a[i] = in.nextInt();
		}
		for(int i=0;i<10;i++) {
			co=0;
			while(co<10) {
				if(a[i]>c[co]) {
					x = c[co];
					c[i] = a[i];
					co++;
					c[i] = x;
				}
				co++;
			}
		}
		for(int i=0;i<10;i++) {
			System.out.print(c[i]+", ");
		}
	}
}
