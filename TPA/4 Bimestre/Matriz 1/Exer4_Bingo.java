import java.util.Scanner;
import java.lang.Math;
public class Exer4_Bingo {
	public static void main(String[]args) {
		int t=0, l=0, c=0, p=0;
		int tabela[][] = new int [4][4];
		int a [] = new int [17];
		int lixeira,contador=0,ns,vitoria=0,cr=0,ca=0;
		for(int i=0;i<4;i++) {
			for(int j=0;j<4;j++) {
				tabela[i][j] = (int) (Math.random()*75);
				a [t] = tabela[i][j];
				while(c<t) {
					while(p<t) {
						if (a[t]==tabela[i][j]) {
							tabela[i][j] = (int) (Math.random()*75);
							p=0;
							c=0;
							t--;
						}
						t++;
						p++;
					}
					c++;
				}
			}
		}
		System.out.println("Xx-CARTELA-xX");
		for(int i=0;i<4;i++) {
			System.out.print("\n");
			for(int j=0;j<4;j++) {
				System.out.print(tabela[i][j]+" ");
			}
		}
		System.out.print("\n");
		System.out.print("\n");
		while(vitoria==0) {
			ns = (int) (Math.random()*75);
			for(int i=0;i<4;i++) {
				for(int j=0;j<4;j++) {
					if(ns == tabela[i][j]) {
						ca++;
					}
				}
			}
			System.out.println("Número sorteado: "+ns);
			cr++;
			if(ca==16) {
				vitoria=1;
			}
		}
		System.out.print("\n");
		System.out.print("\n");
		System.out.println("BINGO!!!");
		System.out.println("Você demorou "+cr+" rodadas para acertar");
	}
}
