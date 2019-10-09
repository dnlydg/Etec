import java.util.Scanner;
public class exer14 {
	public static void main(String[]args){
		
		Scanner in =  new Scanner(System.in);
		int a[] = new int [10];
		int b[] = new int [10];
		int c[] = new int [10];
		for(int i=0;i<10;i++){
			System.out.println("Digite o "+(i+1)+"º valor de A");
			a[i] = in.nextInt();
			System.out.println("Digite o "+(i+1)+"º valor de B");
			b[i] = in.nextInt();
			if(a[i]==b[i]) {
				c[i] = 0;
			}else if(a[i]>b[i]) {
				c[i] = 1;
			}else if(a[i]<b[i]) {
				c[i] = -1;		
			}
		}
		for(int i=0;i<10;i++) {
			System.out.print(c[i]+" ,");
		}
	}
}
