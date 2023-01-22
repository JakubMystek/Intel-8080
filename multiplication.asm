	 ORG 800H ; JAKUB MYSTEK F11  
START 	 LXI H,POWITANIE  
	 RST 3  
PLB 	 LXI H,PIERWSZA  
	 RST 3  
	 RST 5  
	 MOV A,D  
	 CPI 0  
	 JNZ PLB  
	 MOV B,D  
	 MOV C,E  
DLB 	 LXI H,DRUGA  
	 RST 3  
	 RST 5  
	 MOV A,D  
	 CPI 0  
	 JNZ DLB  
	 LXI H,WYNIK  
	 RST 3  
	 LXI H,0  
MNOZ 	 DAD D  
	 DCX B  
	 MOV A,C  
	 CPI 0  
	 JNZ MNOZ  
	 MOV A,H  
	 RST 4  
	 MOV A,L  
	 RST 4  
END 	 LXI H,KONIEC  
	 RST 3  
	 HLT  
POWITANIE 	 DB 'mnozenie liczb@'                           
PIERWSZA 	 DB 10,13,'podaj pierwsza liczbe: @'                 
DRUGA 	 DB 10,13,'podaj druga liczbe: @'                          
WYNIK 	 DB 10,13,'wynik: @'                          
KONIEC 	 DB 10,13,'koniec programu@'                                      
