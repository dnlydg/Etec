import java.util.Scanner;
import java.math.*;;
public class exer6 {
	public static void main(String[]args) {
		
		Scanner in = new Scanner(System.in);
		int a[] =  new int [11];
		int c=0,p=0;
		for(int i=0;i<11;i++) {
			c=0;
			while(c<i) {
				p += 2*2;
				a[i] = a[i]+p;
				c++;
			}
		}
		for(int i=0;i<11;i++) {
			System.out.println(a[i]);
		}
	}
}
