Proceso Taller2Algoritmos3
	
	//Variables Men� A Opci�n 1 y 2 -> IMC y Edad
	Definir estatura como Numerico;
	Definir peso como Numerico;
	Definir PGC como Numerico; //Porcentaje de grasa corporal
	Definir IMC Como Numerico; //Indice de masa corporal
	
	//Variables Men� A Opci�n 2 -> Edad
	Definir edad como Numerico;
	
	//Variables Variables Men� B Opci�n 1 -> Conteo Regresivo
	Definir regresivo como Numerico;
	
	//Variables Variables Men� B Opci�n 2 -> Promedio
	Definir valordigitado como Numerico;
	Definir retornovalor Como Logico;
	Definir n como entero;
	Definir opcionvalor Como Entero;
	Definir promedio como Numerico;
	Definir acumulavalor como Numerico;
	
	//Variables Variables Men� B Opci�n 3 -> Fibonacci	
	Definir a como numerico;
	Definir b como numerico;
	Definir c como numerico;
	Definir numveces como numerico;
	Definir i como numerico;
	
	//Variables Variables Men� C -> Numero Mayor
	Definir numero1 como numerico;
	Definir numero2 como numerico;
	
	//Variables Comunes
	Definir opcionMP como Caracter;
	Definir opcionSM como Entero;
	Definir respuestaMP como Texto;
	Definir respuestaSM como Texto;	
	Definir retornoMP como Logico;
	Definir retornoSM como Logico;
	Definir retornoSM2 Como Logico;
	Definir retornoSM3 Como Logico;
	
	retornoMP = Verdadero;		
	Mientras retornoMP = verdadero Hacer
		Limpiar Pantalla;
		Escribir "+=================+";
		Escribir "�  TALLER 3 AADS  �";
		Escribir "� =============== �";
		Escribir "� A. Personas     �";
		Escribir "� B. Matem�ticas  �";
		Escribir "� C. Comprobaci�n �";
		Escribir "� D. Salir        �";
		Escribir "+=================+";
		Leer opcionMP;
		opcionMP = Mayusculas(opcionMP);
		opcionMP = Mayusculas(opcionMP);
		Segun opcionMP Hacer
			"A":
				retornoSM = verdadero;
				Mientras retornoSM = verdadero Hacer
					Limpiar Pantalla;
					Escribir "+--------------------------------------------------------+";
					Escribir "|                  OPCION A. PERSONAS                    |";
					Escribir "+--------------------------------------------------------+";
					Escribir "� Digite la opci�n a ejecutar:                           �";
					Escribir "� 1. Calcular el �ndice de masa muscular de una persona  �";
					Escribir "� 2. Eres mayor de edad?                                 �";
					Escribir "� 3. Regresar al men� principal                          �";
					Escribir "� 4. Salir                                               �";
					Escribir "+--------------------------------------------------------+";
					Leer opcionSM;
					Segun opcionSM hacer
						
							// Si el usuario escoge la opci�n 1. Calcular el �ndice de masa muscular de una persona, 
							// se deber� solicitar al usuario la estatura en cent�metros y el peso en kilogramos,
							// se debe mostrar la composici�n corporal y el �ndice de masa muscular al que hace referencia.
						
						1:
							retornoSM2 = Verdadero;
							retornoSM3 = Verdadero;
							Mientras  retornoSM2 = Verdadero Hacer
								Limpiar Pantalla;
								Escribir "Digite la estatura en cent�metros de la persona:";
								Leer estatura;
								Escribir "Digite el peso en kilogramos de la persona:";
								Leer peso;
								IMC = peso / ((estatura/100)^ 2);
								Si IMC < 20 entonces
									Escribir "El �ndice de masa muscular es ",TRUNC(IMC*100)/100,". La persona presenta peso BAJO";
								SiNo
									Si IMC >= 20 y IMC <25 entonces
										Escribir "El �ndice de masa muscular es ",TRUNC(IMC*100)/100,". La persona presenta peso NORMAL";
									SiNo
										SI IMC >= 25 y IMC <30 entonces
											Escribir "El �ndice de masa muscular es ",TRUNC(IMC*100)/100,". La persona presenta OBESIDAD LEVE";
										SiNo
											SI IMC >= 30 y IMC <40 entonces
												Escribir "El �ndice de masa muscular es ",TRUNC(IMC*100)/100,". La persona presenta OBESIDAD SEVERA";
											SiNo
												SI IMC >= 40 entonces
													Escribir "El �ndice de masa muscular es ",TRUNC(IMC*100)/100,". La persona presenta OBESIDAD MUY SEVERA";
												FinSi	
											FinSi
										FinSi
									FinSi
								FinSi
								Mientras retornoSM3 = Verdadero Hacer
									Escribir "";
									Escribir "Desea repetir el proceso?. Digite 1(SI) o 2(NO)";
									Leer opcionSM;
									Si opcionSM = 1 Entonces
										IMC = 0;
										retornoSM2 = Verdadero;
										retornoSM3 = Falso;
									SiNo
										Si opcionSM = 2 Entonces
											retornoSM2 = Falso;
											retornoSM3 = Falso;
											Escribir "";
											Escribir "Espere un momento, se retornara al submen�";
											Esperar 2 Segundos;
										SiNo
											Escribir "Digito una opci�n incorrecta. Intente de nuevo.";
											retornoSM3 = Verdadero;
											Esperar 1 Segundos;
										FinSi
									FinSi
								FinMientras
								retornoSM3 = Verdadero;
							FinMientras
							
							// Si el usuario escoge la opci�n 2. �Eres mayor de edad?,
							// se deber� solicitar al usuario la edad. Se debe evaluar si la edad ingresada es superior a 18,
							// debe mostrar un mensaje indicando que la persona es mayor de edad, de lo contrario debe decir 
							// que es menor de edad. Tenga en cuenta que si el valor ingresado es menor a 1 entonces deber� 
							// mostrar un mensaje indicando que la edad ingresada no es permitida
							
						2:
							retornoSM2 = Verdadero;
							retornoSM3 = Verdadero;
							Mientras  retornoSM2 = Verdadero Hacer
								Limpiar Pantalla;
								Escribir "Digite la edad de la persona:";
								Leer edad;
								Si edad < 1 Entonces
									Escribir "La edad de la persona no es permitida";
								SiNo
									Si edad >= 1 y edad < 18 entonces
										Escribir "La persona es menor de edad";
									SiNo
										Escribir "La persona es mayor de edad";
									FinSi
								FinSi
								Mientras retornoSM3 = Verdadero Hacer
									Escribir "";
									Escribir "Desea repetir el proceso?. Digite 1(SI) o 2(NO)";
									Leer opcionSM;
									Si opcionSM = 1 Entonces
										retornoSM2 = Verdadero;
										retornoSM3 = Falso;
									SiNo
										Si opcionSM = 2 Entonces
											retornoSM2 = Falso;
											retornoSM3 = Falso;
											Escribir "";
											Escribir "Espere un momento, se retornara al submen�";
											Esperar 2 Segundos;
										SiNo
											Escribir "Digito una opci�n incorrecta. Intente de nuevo.";
											retornoSM3 = Verdadero;
											Esperar 1 Segundos;
										FinSi
									FinSi
								FinMientras
								retornoSM3 = Verdadero;
							FinMientras
							
							// Regresa al men� principal
							
						3:	
							retornoSM = Falso;
							
							//Salida de la aplicaci�n
						4:	
							retornoSM = Falso;
							retornoMP = Falso;
							
						De Otro Modo:
							Escribir "Digito una opci�n incorrecta. Intente de nuevo.";
							retornoSM = Verdadero;
							Esperar 1 Segundos;
					FinSegun
					
				FinMientras
				
			"B":
				retornoSM = verdadero;
				Mientras retornoSM = verdadero Hacer
					Limpiar Pantalla;
					Escribir "+---------------------------------------------+";
					Escribir "|         OPCION B. MATEMATICAS               |";
					Escribir "+---------------------------------------------+";
					Escribir "� Digite la opci�n a ejecutar:                �";
					Escribir "� 1. Mostrar conteo regresivo                 �";
					Escribir "� 2. Obtener cantidad y promedio de n datos   �";
					Escribir "� 3. Serie Fibonacci                          �";
					Escribir "� 4. Regresar al men� principal.              �";
					Escribir "� 5. Salir                                    �";
					Escribir "+---------------------------------------------+";
					Leer opcionSM;
					Segun opcionSM hacer
						
							// Si el usuario escoge la opci�n 1. Mostrar conteo regresivo,
							// se deber� solicitar un n�mero superior a 0 e inferior o igual a 100,
							// cuando el usuario ingrese ese n�mero se deber� mostrar en pantalla los n�meros consecutivos
							// de manera descendente. Es decir, si ingresa el 10 se debe mostrar:
						
						1: 	
							retornoSM2 = Verdadero;
							retornoSM2 = Verdadero;
							retornoSM3 = Verdadero;
							Mientras  retornoSM2 = Verdadero Hacer
								Limpiar Pantalla;
								Escribir "Digite un numero para establecer un conteo regresivo: ";
								Leer regresivo;
								Si regresivo > 0 y regresivo <= 100 Entonces
									Repetir
										Escribir regresivo;
										regresivo = regresivo - 1;
									Hasta Que regresivo = 0;
									Mientras retornoSM3 = Verdadero Hacer
										Escribir "";
										Escribir "Desea repetir el proceso?. Digite 1(SI) o 2(NO)";
										Leer opcionSM;
										Si opcionSM = 1 Entonces
											retornoSM2 = Verdadero;
											retornoSM3 = Falso;
										SiNo
											Si opcionSM = 2 Entonces
												retornoSM2 = Falso;
												retornoSM3 = Falso;
												Escribir "";
												Escribir "Espere un momento, se retornara al submen�";
												Esperar 2 Segundos;
											SiNo
												Escribir "Digito una opci�n incorrecta. Intente de nuevo.";
												retornoSM3 = Verdadero;
												Esperar 1 Segundos;
											FinSi
										FinSi
									FinMientras
									retornoSM3 = Verdadero;
								SiNo
									Escribir "Digito un valor no permitido. El numero debe ser superior a 0 y menor o igual a 100.";
									Esperar 3.5 Segundos;
									Limpiar Pantalla;
								FinSi
							FinMientras
							
							// Si el usuario escoge la opci�n 2. Obtener promedio de n datos,
							// se deber� pedir al usuario n�meros, cada vez que se ingrese un n�mero se deber� preguntar
							// si se desea agregar otro n�mero. Cuando el usuario indique que no va a ingresar m�s n�mero,
							// se deber� calcular el promedio de los n�meros ingresados y la cantidad de n�meros ingresados.
							
						2: 	
							retornoSM2 = Verdadero;
							retornoSM3 = Verdadero;
							Mientras  retornoSM2 = Verdadero Hacer
								Limpiar Pantalla;
								Escribir "Se va a calcular el promedio de los valores digitados";
								retornovalor = Verdadero;
								n = 1;
								acumulavalor = 0;
								Mientras retornovalor = Verdadero Hacer
									Escribir "Digite un valor:";
									Leer valordigitado;
									Escribir "Desea agregar otro valor? . Digite 1(SI) o 2(NO)";
									Leer opcionvalor;
									Si opcionvalor = 1 Entonces
										n = n+1;
										acumulavalor = acumulavalor + valordigitado;
										retornovalor = Verdadero;
									SiNo
										Si opcionvalor = 2 Entonces
											acumulavalor = acumulavalor + valordigitado;
											promedio = acumulavalor / n;
											retornovalor = Falso;
											Escribir "";
											Escribir "El promedio de los valores digitados es ",promedio;
											Mientras retornoSM3 = Verdadero Hacer
												Escribir "";
												Escribir "Desea repetir el proceso?. Digite 1(SI) o 2(NO)";
												Leer opcionSM;
												Si opcionSM = 1 Entonces
													retornoSM2 = Verdadero;
													retornoSM3 = Falso;
													retornovalor = Falso;
													n = 1;
													acumulavalor = 0;
												SiNo
													Si opcionSM = 2 Entonces
														retornoSM2 = Falso;
														retornoSM3 = Falso;
														Escribir "";
														Escribir "Espere un momento, se retornara al submen�";
														Esperar 2 Segundos;
													SiNo
														Escribir "Digito una opci�n incorrecta. Intente de nuevo.";
														retornoSM3 = Verdadero;
														Esperar 1 Segundos;
													FinSi
												FinSi
											FinMientras
											retornoSM3 = Verdadero;
										SiNo
											Escribir "Digito una opci�n incorrecta. Intente de nuevo.";
											retornoSM3 = Verdadero;
											Esperar 1 Segundos;
										FinSi
									FinSi
								FinMientras
							FinMientras
							
							// Si el usuario escoge la opci�n 3. Serie Fibonacci,
							// se deber� solicitar un n�mero al usuario, el sistema deber� mostrar la sucesi�n Fibonacci
							// de acuerdo con el valor ingresado
							
						3:
							retornoSM2 = Verdadero;
							retornoSM3 = Verdadero;
							Mientras  retornoSM2 = Verdadero Hacer
								Limpiar Pantalla;
								a = 0;
								b = 1;
								i = 0;
								Escribir "Digite la cantidad de veces que se ejecutar� la sucesi�n Fibonacci";
								Leer numveces;
								escribir a;
								escribir b;
								Repetir
									c = a + b;
									Escribir c;
									a = b;
									b=c;
									i = i + 1;
								Hasta Que  i = numveces - 2;
								Mientras retornoSM3 = Verdadero Hacer
									Escribir "";
									Escribir "Desea repetir el proceso?. Digite 1(SI) o 2(NO)";
									Leer opcionSM;
									Si opcionSM = 1 Entonces
										retornoSM2 = Verdadero;
										retornoSM3 = Falso;
									SiNo
										Si opcionSM = 2 Entonces
											retornoSM2 = Falso;
											retornoSM3 = Falso;
											Escribir "";
											Escribir "Espere un momento, se retornara al submen�";
											Esperar 2 Segundos;
										SiNo
											Escribir "Digito una opci�n incorrecta. Intente de nuevo.";
											retornoSM3 = Verdadero;
											Esperar 1 Segundos;
										FinSi
									FinSi
								FinMientras
								retornoSM3 = Verdadero;
							FinMientras
							
							// Regresa al men� principal
						4:	retornoSM = Falso;
							
							//Salida de la aplicaci�n
						5:	retornoSM = Falso;
							retornoMP = Falso;
							
						De Otro Modo:
							Escribir "Digito una opci�n incorrecta. Intente de nuevo.";
							retornoSM = Verdadero;
							Esperar 1 Segundos;
					FinSegun
				FinMientras
				
				// Si se ingresa a la opci�n C. Comprobaci�n, el usuario deber� ingresar 2 n�meros,
				// el sistema comprobar� cuando de los 2 n�meros ingresados es el mayor. Tenga en cuenta que
				// puede presentarse que ambos n�meros son iguales.
				
			"C":
				retornoSM = verdadero;
				retornoSM3 = verdadero;
				Mientras retornoSM = verdadero Hacer
					Limpiar Pantalla;
					Escribir "Ingrese el primer numero";
					Leer numero1;
					Escribir "Ingrese el segundo numero";
					Leer numero2;
					Si numero1 > numero2 Entonces
						Escribir "El numero mayor es: ",numero1;
					SiNo
						Si numero2 > numero1 Entonces
							Escribir "El numero mayor es: ",numero2;
						SiNo
							Si numero1 = numero2 Entonces
								Escribir "Los numeros ",numero1," y ",numero2," son iguales";
							SiNo
								Escribir "Los numeros ",numero1," y ",numero2," son diferentes";
							FinSi
						FinSi
					FinSi
					Mientras retornoSM3 = Verdadero Hacer
						Escribir "";
						Escribir "Desea repetir el proceso?. Digite 1(SI) o 2(NO)";
						Leer opcionSM;
						Si opcionSM = 1 Entonces
							retornoSM = Verdadero;
							retornoSM3 = Falso;
						SiNo
							Si opcionSM = 2 Entonces
								retornoSM = Falso;
								retornoSM3 = Falso;
								Escribir "";
								Escribir "Espere un momento, se retornara al men�";
								Esperar 2 Segundos;
							SiNo
								Escribir "Digito una opci�n incorrecta. Intente de nuevo.";
								retornoSM3 = Verdadero;
								Esperar 1 Segundos;
							FinSi
						FinSi
					FinMientras
					retornoSM3 = Verdadero;
				FinMientras
				
				//Salida de la aplicaci�n
			"D":
				retornoMP = Falso;
				
			De Otro Modo:
				Escribir "Digito una opci�n incorrecta. Intente de nuevo.";
				retornoMP = Verdadero;
				Esperar 1 Segundos;	
				
		FinSegun
	FinMientras
	Escribir "                  \|||/";
	Escribir "                  (o o)";
	Escribir "---------------ooO-(_)-Ooo---------------";
	Escribir "GRACIAS POR UTILIZAR NUESTRA APLICACION!!";	
FinProceso