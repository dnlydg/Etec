import java.util.Scanner;
public class exer2 {
	public static void main(String[]args) {
		int c=1;
		Scanner in = new Scanner(System.in);
		int[] a = new int[5];
		int[] b = new int[11];
		for(int i=0;i<5;i++) {
			System.out.println("Digite o "+(i+1)+" valor");
			a[i] = in.nextInt();
			c=0;
			while(c<=10) {
				b[c]=a[i]*c;
				c++;
			}
			
			for(int p=0;p<=10;p++) {
				System.out.println(a[i]+" X "+p+" = "+b[p]);
			
			}
		}
	}
	
}
