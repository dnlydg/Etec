import java.util.Scanner;
public class Exer01_MetodoComMenu {
	static String sexo;
	public static void main(String[]args) {
		Scanner in = new Scanner(System.in);
		int escolha,x,r,y;
		System.out.println("Digite o exercício que deseja executar: |1 - Fatorial|2 - Tabuada|3 - Aposentadoria|4 - Potência|");
		escolha = in.nextInt();
		switch(escolha) {
			case 1:
				System.out.println("Digite o número desejado:");
				x = in.nextInt();
				r = fator(x);
				System.out.println("Fatorial de "+x+" é igual a "+r);
				break;
			case 2:
				System.out.println("Digite o número desejado:");
				x = in.nextInt();
				r = tabuada(x);
				break;
			case 3:
				System.out.println("Digite o seu sexo: |M - Masculino|F - Feminino|");
				sexo = in.next();
				System.out.println("Digite sua idade:");
				x = in.nextInt();
				r = aposentadoria(x);
				System.out.println("Restam "+r+" anos para você se aposentar");
				break;
				
			case 4:
				System.out.println("Digite a base:");
				x = in.nextInt();
				System.out.println("Digite o expoente");
				y = in.nextInt();
				r = potencia (x,y);
				System.out.println(r);
				break;
			default:
				System.out.println("Valor inválido");
				break;
		}
		
	}
	public static int fator(int x) {
		int c = x;
		for(int i=1;i<x;i++) {
			c = c*i;
		}
		return c;
		
	}
	public static int tabuada (int x) {
		int r=0;
		for (int i=0;i<=10;i++) {
			r=x*i;
			System.out.println(x+" X "+i+" = "+r);
		}
		return x;
	}
	public static int aposentadoria (int x) {
		int restante=0;
		if(sexo.contentEquals("M")||sexo.contentEquals("m")) {
			restante = 60-x;
			
		}else if(sexo.contentEquals("F")||sexo.contentEquals("f")) {
			restante = 55-x;
		}else {
			System.out.println("Sexo Inválido");
		}
		return restante;
	}
	public static int potencia (int x, int y) {
		int r=x;
		for (int i=1;i<y;i++) {
			r = r*x;
		}
		return r;
	}
}
