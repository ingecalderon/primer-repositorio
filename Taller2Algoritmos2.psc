Proceso Taller2Algoritmos2
	
	// Para la primera opción tuve como base el ejercicio de "Tarifas de Llamadas":
	// Una empresa de llamadas al exterior tiene las siguientes tarifas:
	// - Estados Unidos: 900 pesos por minuto
	// - Canadá: 800 pesos por minuto
	// - Europa: 950 pesos por minuto
	// - Resto del Mundo: 1250 pesos por minuto
	// Si la duración de la llamada es superior a 15 minutos, se aplica un descuento del 20% al valor de la llamada
	// Elaborar un algoritmo que permita calcular el costo total de la llamada
	
	// =============================================================================
	
	// Para la segunda opción realice un algoritmo con la siguiente información:
	// Una Papelería presta los siguientes servicios:
	//	- Copiado si es a color tiene un valor de $500 si es en negro a $50
	//	- Escaneo a un valor de $300
	//	- Impresión si es a color vale $500 y si es en negro vale la mitad
	// Elaborar un algoritmo que permita calcular el valor por servicio y total de la compra
	
	//Variables Primer Ejercicio
	Definir tiempollamada como Numerico;
	Definir valorllamada como Numerico;
	Definir valortotalllamadas como Numerico;
	Definir destino Como Caracter;;
	Definir menudestino como Entero;
	
	//Variables Segundo Ejercicio
	Definir servicio como Texto;
	Definir cantidad como Numerico;
	Definir valorservicio1, valorservicio2, valortotalservicio como Numerico;
	Definir valortotalpapeleria como Numerico;
	
	//Variables Comunes
	Definir opcionMP como Entero;
	Definir opcionSM como Entero;
	Definir respuestaMP como Texto;
	Definir respuestaSM como Texto;	
	Definir retornoMP como Logico;
	Definir retornoSM como Logico;
	
	retornoMP = Verdadero;		
	Mientras retornoMP = verdadero Hacer
		Limpiar Pantalla;
		Escribir "+===========================+";
		Escribir "¦      PAPELERIA CENSA      ¦";
		Escribir "¦ ========================= ¦";
		Escribir "¦ 1. Venta de Minutos       ¦";
		Escribir "¦ 2. Servicios de Papelería ¦";
		Escribir "¦ 3. Salir                  ¦";
		Escribir "+===========================+";
		Leer opcionMP;
		Segun opcionMP Hacer
			1:
				valortotalllamadas = 0;
				retornoSM = verdadero;
				Mientras retornoSM = verdadero Hacer
					Limpiar Pantalla;
					Escribir "+-------------------------------------------------_---+";
					Escribir "|              OPCION VENTA DE MINUTOS               |";
					Escribir "+----------------------------------------------------+";
					Escribir "¦ Seleccione una opción para el país a donde quiere  ¦";
					Escribir "¦ realizar la llamada:                               ¦";
					Escribir "¦ 1. Estados Unidos                                  ¦";
					Escribir "¦ 2. Canadá                                          ¦";
					Escribir "¦ 3. Europa                                          ¦";
					Escribir "¦ 4. Resto del Mundo                                 ¦";
					Escribir "¦ 5. Volver al menú principal                        ¦";
					Escribir "+----------------------------------------------------+";
					Leer opcionSM;
					
					Segun opcionSM hacer
						1: destino = "Estados Unidos";
							valorllamada = 0;
							Escribir "Digite la duración de la llamada en minutos:";
							Leer tiempollamada;
							Si tiempollamada > 15 entonces
								valorllamada = (tiempollamada * 900) - (tiempollamada * 900 * 0.2);
							SiNo
								valorllamada = tiempollamada * 900;
							FinSi
							Escribir "El costo total de la llamada a ",destino," es : $",valorllamada,"=";
							Escribir "";
							Escribir "Desea realizar otra llamada?. Digite 1(SI) o 2(NO)";
							Leer opcionSM;
							valortotalllamadas = valortotalllamadas + valorllamada;
							Si opcionSM = 1 Entonces
								retornoSM = Verdadero;
							SiNo
								Si opcionSM = 2 Entonces
									Escribir "";
									Escribir "El costo total de todas sus llamadas es $",valortotalllamadas;
									Escribir "";
									Escribir "Presiona cualquier tecla para continuar...";
									Esperar Tecla;
									retornoSM = Falso;
								SiNo
									Escribir "Digito una opción incorrecta. Intente de nuevo.";
									retornoSM = Verdadero;
									Esperar 1 Segundos;
								FinSi
							FinSi
							
						2: destino = "Canadá";
							valorllamada = 0;
							Escribir "Digite la duración de la llamada en minutos:";
							Leer tiempollamada;
							Si tiempollamada > 15 entonces
								valorllamada = (tiempollamada * 800) - (tiempollamada * 800 * 0.2);
							SiNo
								valorllamada = tiempollamada * 800;
							FinSi
							Escribir "El costo total de la llamada a ",destino," es : $",valorllamada,"=";
							Escribir "";
							Escribir "Desea realizar otra llamada?. Digite 1(SI) o 2(NO)";
							Leer opcionSM;
							valortotalllamadas = valortotalllamadas + valorllamada;
							Si opcionSM = 1 Entonces
								retornoSM = Verdadero;
							SiNo
								Si opcionSM = 2 Entonces
									Escribir "";
									Escribir "El costo total de todas sus llamadas es $",valortotalllamadas;
									Escribir "";
									Escribir "Presiona cualquier tecla para continuar...";
									Esperar Tecla;
									retornoSM = Falso;
								SiNo
									Escribir "Digito una opción incorrecta. Intente de nuevo.";
									retornoSM = Verdadero;
									Esperar 1 Segundos;
								FinSi
							FinSi
							
						3: destino = "Europa";
							valorllamada = 0;
							Escribir "Digite la duración de la llamada en minutos:";
							Leer tiempollamada;
							Si tiempollamada > 15 entonces
								valorllamada = (tiempollamada * 950) - (tiempollamada * 950 * 0.2);
							SiNo
								valorllamada = tiempollamada * 950;
							FinSi
							Escribir "El costo total de la llamada a ",destino," es : $",valorllamada,"=";
							Escribir "";
							Escribir "Desea realizar otra llamada?. Digite 1(SI) o 2(NO)";
							Leer opcionSM;
							valortotalllamadas = valortotalllamadas + valorllamada;
							Si opcionSM = 1 Entonces
								retornoSM = Verdadero;
							SiNo
								Si opcionSM = 2 Entonces
									Escribir "";
									Escribir "El costo total de todas sus llamadas es $",valortotalllamadas;
									Escribir "";
									Escribir "Presiona cualquier tecla para continuar...";
									Esperar Tecla;
									retornoSM = Falso;
								SiNo
									Escribir "Digito una opción incorrecta. Intente de nuevo.";
									retornoSM = Verdadero;
									Esperar 1 Segundos;
								FinSi
							FinSi
							
						4: destino = "Resto del Mundo";
							valorllamada = 0;
							Escribir "Digite la duración de la llamada en minutos:";
							Leer tiempollamada;
							Si tiempollamada > 15 entonces
								valorllamada = (tiempollamada * 1250) - (tiempollamada * 1250 * 0.2);
							SiNo
								valorllamada = tiempollamada * 1250;
							FinSi
							Escribir "El costo total de la llamada a ",destino," es : $",valorllamada,"=";
							Escribir "";
							Escribir "Desea realizar otra llamada?. Digite 1(SI) o 2(NO)";
							Leer opcionSM;
							valortotalllamadas = valortotalllamadas + valorllamada;
							Si opcionSM = 1 Entonces
								retornoSM = Verdadero;
							SiNo
								Si opcionSM = 2 Entonces
									Escribir "";
									Escribir "El costo total de todas sus llamadas es $",valortotalllamadas;
									Escribir "";
									Escribir "Presiona cualquier tecla para continuar...";
									Esperar Tecla;
									retornoSM = Falso;
								SiNo
									Escribir "Digito una opción incorrecta. Intente de nuevo.";
									retornoSM = Verdadero;
									Esperar 1 Segundos;
								FinSi
							FinSi
							
						5:	retornoSM = Falso;
							
						De Otro Modo:
							Escribir "Digito una opción incorrecta. Intente de nuevo.";
							retornoSM = Verdadero;
							Esperar 1 Segundos;
					FinSegun
				FinMientras
				
			2:
				valortotalpapeleria = 0;
				retornoSM = verdadero;
				Mientras retornoSM = verdadero Hacer
					Limpiar Pantalla;
					Escribir "+---------------------------------+";
					Escribir "|  OPCION SERVICIOS DE PAPELERIA  |";
					Escribir "+---------------------------------+";
					Escribir "¦ Digite el servicio que desea:   ¦";
					Escribir "¦ 1. Fotocopia                    ¦";
					Escribir "¦ 2. Escaneo                      ¦";
					Escribir "¦ 3. Impresión                    ¦";
					Escribir "¦ 4. Volver al menú principal     ¦";
					Escribir "+---------------------------------+";
					Leer opcionSM;
					
					Segun opcionSM hacer
						1: servicio = "Fotocopias";
							Escribir "Digite la cantidad de copias tramitadas en negro: ";
							Leer cantidad;
							valorservicio1 = cantidad * 50;
							Escribir "Digite la cantidad de copias tramitadas en color: ";
							Leer cantidad;
							valorservicio2 = cantidad * 500;
							valortotalservicio = valorservicio1 + valorservicio2;
							Escribir "";
							Escribir "El costo total por concepto de ",servicio," es : $",valortotalservicio,"=";
							Escribir "";
							Escribir "Desea se le brinde otro servicio de papelería?. Digite 1(SI) o 2(NO)";
							Leer opcionSM;
							valortotalpapeleria = valortotalpapeleria + valortotalservicio;
							Si opcionSM = 1 Entonces
								retornoSM = Verdadero;
							SiNo
								Si opcionSM = 2 Entonces
									Escribir "";
									Escribir "El costo total por concepto de servidio de papelería es $",valortotalpapeleria;
									Escribir "";
									Escribir "Presiona cualquier tecla para continuar...";
									Esperar Tecla;
									retornoSM = Falso;
								SiNo
									Escribir "Digito una opción incorrecta. Intente de nuevo.";
									retornoSM = Verdadero;
									Esperar 1 Segundos;
								FinSi
							FinSi
							
						2: servicio = "Escaneo";
							Escribir "Digite la cantidad de documentos escaneados: ";
							Leer cantidad;
							valorservicio1 = cantidad * 300;
							Escribir "El costo total por concepto de ",servicio," es : $",valorservicio1,"=";
							Escribir "";
							Escribir "Desea se le brinde otro servicio de papelería?. Digite 1(SI) o 2(NO)";
							Leer opcionSM;
							valortotalpapeleria = valortotalpapeleria + valorservicio1;
							Si opcionSM = 1 Entonces
								retornoSM = Verdadero;
							SiNo
								Si opcionSM = 2 Entonces
									Escribir "";
									Escribir "El costo total por concepto de servidio de papelería es $",valortotalpapeleria;
									Escribir "";
									Escribir "Presiona cualquier tecla para continuar...";
									Esperar Tecla;
									retornoSM = Falso;
								SiNo
									Escribir "Digito una opción incorrecta. Intente de nuevo.";
									retornoSM = Verdadero;
									Esperar 1 Segundos;
								FinSi
							FinSi
							
						3: servicio = "Impresión";
							Escribir "Digite la cantidad de documentos impresos en negro: ";
							Leer cantidad;
							valorservicio1 = cantidad * 250;
							Escribir "Digite la cantidad de documentos impresos en color: ";
							Leer cantidad;
							valorservicio2 = cantidad * 500;
							valortotalservicio = valorservicio1 + valorservicio2;
							Escribir "El costo total por concepto de ",servicio," es : $",valortotalservicio,"=";
							Escribir "";
							Escribir "Desea se le brinde otro servicio de papelería?. Digite 1(SI) o 2(NO)";
							Leer opcionSM;
							valortotalpapeleria = valortotalpapeleria + valortotalservicio;
							Si opcionSM = 1 Entonces
								retornoSM = Verdadero;
							SiNo
								Si opcionSM = 2 Entonces
									Escribir "";
									Escribir "El costo total por concepto de servidio de papelería es $",valortotalpapeleria;
									Escribir "";
									Escribir "Presiona cualquier tecla para continuar...";
									Esperar Tecla;
									retornoSM = Falso;
								SiNo
									Escribir "Digito una opción incorrecta. Intente de nuevo.";
									retornoSM = Verdadero;
									Esperar 1 Segundos;
								FinSi
							FinSi
							
						4:
							retornoSM = Falso;
							
						De Otro Modo:
							Escribir "Digito una opción incorrecta. Intente de nuevo.";
							retornoSM = Verdadero;
							Esperar 1 Segundos;
							
					FinSegun
				FinMientras
			3:
				retornoMP = Falso;
		FinSegun
	FinMientras
	Escribir "                  \|||/";
	Escribir "                  (o o)";
	Escribir "---------------ooO-(_)-Ooo---------------";
	Escribir "GRACIAS POR UTILIZAR NUESTRA APLICACION!!";	
FinProceso