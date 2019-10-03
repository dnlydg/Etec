import java.util.Scanner;
public class exer5 {
	public static void main(String[]args) {
		
		Scanner in = new Scanner(System.in);
		int a[] =  new int [10];
		int d;
		double v;
		for(int i=0;i<10;i++) {
			System.out.println("Digite o "+(i+1)+"º valor:");
			a[i] = in.nextInt();
		}
		for(int i=0;i<10;i++) {
			d = a[i];
			while(d!=0) {
				v = a[i]%d;
				if(v==0) {
					System.out.println(a[i]+" é divisivel por: "+d);
				}
				d--;
			}
			System.out.println("________________________");
		}
	}
}
