import java.util.Scanner;
public class exer15 {
	public static void main(String[]args) {
		
		//CÓDIGO NÃO FUNCIONA!
		//CÓDIGO NÃO FUNCIONA!
		//CÓDIGO NÃO FUNCIONA!
		
		Scanner in = new Scanner(System.in);
		int a[] = new int[10];
		int b[] = new int[10];
		int c[] = new int[10];
		int co=0;
		for(int i=0;i<10;i++) {
			co=0;
			System.out.println("Digite o "+(i+1)+"º valor:");
			a[i] = in.nextInt();
		}
		for(int i=0;i<10;i++) {
			co=0;
			for(int x=0;x<10;x++) {
				if(a[i]>c[x]) {
					c[x] = a[i];
				}
				co++;
				i++;
			}
		}
		for(int i=0;i<10;i++) {
			System.out.print(c[i]+", ");
		}
	}
}
