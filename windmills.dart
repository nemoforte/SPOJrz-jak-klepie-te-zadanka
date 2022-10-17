/*
FANGEN - Wiatraczki
Wiatraczek (lewo- lub prawoskrętny) rzędu n >= 1 jest macierzą znaków o rozmiarze 2n x 2n. Każdy element wiatraczka jest albo kropką ('.'), albo gwiazdką ('*'). Wiatraczki definiujemy rekurencyjnie:
 
Wszystkie (cztery) elementy wiatraczka rzędu 1 są gwiazdkami, niezależnie od jego skrętności:
**
**
Dla n ≥ 1, wiatraczek rzędu n + 1 konstruujemy następująco (przykłady ilustrują kolejne kroki konstruowania lewo- i prawoskrętnego wiatraczka o rozmiarze 2, '?' - znak do ustalenia):
 
W macierz wklejamy wycentrowany w pionie i w poziomie wiatraczek rzędu n o tej samej skrętności:
????    ????
?**?    ?**?
?**?    ?**?
????    ????
We wszystkie narożniki nowego wiatraczka wstawiamy gwiazdki:
*??*    *??*
?**?    ?**?
?**?    ?**?
*??*    *??*
Odwiedzamy kolejno wszystkie nie ustalone jeszcze znaki (jest ich dokładnie 8n), startując z dowolnego narożnika i poruszając się wzdłuż brzegu macierzy. Jeśli konstruujemy wiatraczek prawoskrętny, poruszamy się zgodnie z ruchem wskazówek zegara; jeśli lewoskrętny - przeciwnie. Wzdłuż każdej mijanej krawędzi stawiamy n kolejnych gwiazdek, a następnie n kolejnych kropek:
*.**    **.*
***.    .***
.***    ***.
**.*    *.**
Twój program powinien wcztywać kolejne liczby całkowite. Dla każdej wczytanej liczby r:
 
jeśli r > 0, generujemy wiatraczek lewoskrętny rzędu r, a następnie pusty wiersz,
jeśli r < 0, generujemy wiatraczek prawoskrętny rzędu -r, a następnie pusty wiersz,
r = 0 oznacza koniec wejścia, program powinien się zakończyć (wczytanego zera nie przetwarzamy).
Wejście
r1 [ -200 ≤ r1 ≤ 200, r1 <> 0; pierwsza liczba do przetworzenia ]
...
ri [ jw.; i-ta liczba do przetworzenia ]
0
 
[ można założyć, że przynajmniej pierwsza wartość będzie niezerowa, tj. że i ≥ 1 ]
 
Wyjście
[ wiatraczek wygenerowany dla r1 - dokładnie 2|r1| wierszy tekstu, w każdym wierszu dokładnie 2|r1| znaków (nie licząc '\n') ]
[ pusty wiersz ]
...
[ wiatraczek wygenerowany dla ri ]
[ pusty wiersz ]
 
Przykład
Wejście:
3
-4
0
 
Wyjście:
*..***
**.**.
****..
..****
.**.**
***..*
 
****...*
.***..**
..**.***
...*****
*****...
***.**..
**..***.
*...****
*/
 
import 'dart:io';
 
main() {
 
	int r = int.parse(stdin.readLineSync());
 
	while (r != 0) {
 
		List table = windmill(r);
 
 
 
		for (int i = 0; i <= r; i++) {
 
			print(table[i].join(' '));
 
		}
 
		r = int.parse(stdin.readLineSync());
 
	}
} 
 
List windmill(int a) {
 
	if (a == 1) {
 
		var x = List.generate(2*a, (i) => List.generate(2*a, (j) => '*'));
 
		return x;
 
	}
}