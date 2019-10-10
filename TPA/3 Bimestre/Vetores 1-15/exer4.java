import java.util.Scanner;
public class exer4 {
	public static void main(String[]args) {
		Scanner in = new Scanner(System.in);
		int a[] = new int [10];
		int p=0;
		double d;
		for(int i=0;i<10;i++) {
			System.out.println("Digite o "+(i+1)+"º valor:");
			a[i] = in.nextInt();
		}
		for(int i=0;i<10;i++) {
			while(p<=a[i]) {
				d=p%2;
				if(d==0) {
					System.out.println(a[i]+":"+p);
				}p++;
			}
			System.out.println("____________________");
			p=0;
		}
	}
}
