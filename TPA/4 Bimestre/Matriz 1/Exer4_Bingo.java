import java.util.Scanner;
import java.lang.Math;
public class Exer4_Bingo {
	public static void main(String[]args) {
		int tabela[][] = new int [4][4];
		int lixeira,contador=0,ns,vitoria=0,cr=0,ca=0;
		for(int i=0;i<4;i++) {
			for(int j=0;j<4;j++) {
				tabela[i][j] = (int) (Math.random()*75);
				lixeira = tabela[i][j];
				for(int y=0;y<4;y++) {
					for(int x=0;x<4;x++) {
						if(lixeira == tabela[y][x]) {
							contador++;
						}
						if(contador==2) {
							tabela[y][x] = (int) (Math.random()*75);
							break;
						}else if(lixeira==0) {
							tabela[y][x] = (int) (Math.random()*75);
							break;
						}
						for(int t=0;t<4;t++) {
							for(int o=0;o<4;o++) {
								if(lixeira == tabela[t][o]) {
									contador++;
								}
								if(contador==2) {
									tabela[t][o] = (int) (Math.random()*75);
									break;
								}else if(lixeira==0) {
									tabela[t][o] = (int) (Math.random()*75);
									break;
								}
							}
						}
					}
				}
			}
		}
		System.out.println("Xx-TABELA-xX");
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
