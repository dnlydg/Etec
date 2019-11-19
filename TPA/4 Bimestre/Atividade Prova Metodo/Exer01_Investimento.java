import java.text.DecimalFormat;
import java.util.Scanner;
public class Exer01_Investimento {
	double retorno;
	static double x;
	public static void main(String[]args) {
		double dinheiro;
		int meses;
		Scanner in = new Scanner(System.in);
		DecimalFormat df = new DecimalFormat("#.00");
		System.out.println("Digite o valor investido:");
		x = in.nextDouble();
		System.out.println("Digite o número de meses em que o dinheiro ficou investido:");
		meses = in.nextInt();
		for(int i=1;i<=meses;i++) {
			investimento();
			System.out.println(i+"º Mês: R$ "+df.format(x));
		}
	}
	public static double investimento() {
		x += x*0.01;
		return x;
	}
}