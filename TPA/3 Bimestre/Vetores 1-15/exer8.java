import java.util.Scanner;
public class exer8 {
	public static void main(String[]args) {
		
		Scanner in =  new Scanner(System.in);
		int a[] = new int [10];
		int b[] = new int [10];
		int j=0,s=0,n=0;
		for(int i=0;i<10;i++) {
			System.out.println("Digite o valor do "+(i+1)+"º Elemento:");
			a[i] = in.nextInt();
		}
		for(int i=0;i<10;i++) {
			for(int c=0;c<a[i];c++) {
				while(n<a[c]) {
					s=s+n;
					n++;
				}
				b[i]=s;
				n=0;
				s=0;
			}
		}
		for(int i=0;i<10;i++) {
			System.out.print(b[i]+", ");
		}
	}
}
