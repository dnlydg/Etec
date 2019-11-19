import java.util.Scanner;
import java.text.DecimalFormat;
public class Exer02_Compra {
	static double d;
	static int q, p, o;
	static Scanner in = new Scanner(System.in);
	public static void main(String[] args) {
		DecimalFormat df = new DecimalFormat("#.00");
		menu();
		if (o==1) {
			System.out.println("O valor será de R$"+df.format(avista()));
		}else if (o==2) {
			System.out.println("O valor de cada parcela será de: R$"+df.format(parcela2()));
		}else if (o==3) {
			if (d<=100) {
				System.out.println("Não é possível realizar compras abaixo de R$100,00 com esta opção");
			}else{
				System.out.println("Quantas parcelas?");
				q = in.nextInt();
				if (q>=3 && q<=10) {
					System.out.println("O valor de cada parcela será de: R$"+df.format(parcela3()));
				}else {
					System.out.println("Quantidade de parcelas inválida");
				}
			}
		}else {
			System.out.println("Opção inválida");
		}
	}
	public static double parcela2 (){
		double x=0;
		x = d/2;
		return (x);
	}
	public static double parcela3 (){
		for (int i=0;i<q;i++) {
			d += d*0.03;
		}
		d = d/q;
		return (d);
	}
	public static double avista (){
		double x=d;
		x -= d*0.1;
		return (x);
	}
	public static void menu() {
		System.out.println("Digite o valor da compra:");
		d = in.nextDouble();
		System.out.println("Digite opção de pagamento: \n1) Opção: a vista com 10% de desconto \n2) Opção: em duas vezes(preço da etiquete) \n3) Opção: de 3 até 10 vezes com 3% de juros ao mês(somente compras acima de R$ 100,00)");
		o = in.nextInt();
		System.out.print("Você escolheu ");
		if (o==1) {
			System.out.println("A Vista");
		}else if (o==2) {
			System.out.println("Parcelado em 2 vezes");
		}else if (o==3) {
			System.out.println("Parcelado entre 3 e 10 vezes");
		}
	}
}