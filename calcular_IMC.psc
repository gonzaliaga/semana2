Algoritmo calcular_IMC
	Definir peso, altura, imc Como Real
	//constantes
	Definir Bajo_Peso, Peso_Normal, Sobrepeso, Obesidad Como Real
	Bajo_Peso <- 18.5
	Peso_Normal <- 25
	Sobrepeso <- 30
	obesidad <- 31
	
	//Solicitar datos al usuario.
	Escribir "Ingrese su peso en kilogramos: "
	Leer peso
	Escribir "Ingrese su altura en metros: "
	Leer altura
	
	//calcular el IMC
	imc <- peso / (altura*altura)
	
	//Mostrar el IMC calculado
	Escribir "Su IMC es: ", imc
	
	//Clasificacion del IMC
	Si imc < Bajo_Peso Entonces
		Escribir "Clasificacion bajo peso"
	Sino Si imc >= Bajo_Peso Y imc < Peso_Normal Entonces
			Escribir "Clasificación peso normal"
	Sino Si imc >= Peso_Normal Y imc < Sobrepeso Entonces
		Escribir "Clasificacion: Sobrepeso"
	Sino Escribir "Clasificacion: Obesidad"
	FinSi
	FinSi
	FinSi	
	Escribir "Bajo peso es ", Bajo_Peso
	Escribir "Peso Normal es: ", Peso_Normal
	
FinAlgoritmo

