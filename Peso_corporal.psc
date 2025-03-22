Algoritmo Peso_corporal
	
	IMC_BAJO_PESO <- 18.5 
	IMC_SOBREPESO <- 25
	IMC_OBESIDAD <- 30
	
	//Declarar Variables
	peso <- 0
	altura <- 0
	IMC <- 0
	
	
	//Solicitar al usuario que ingrese su peso en kilogramos y su altura en metros.
	ESCRIBIR "Ingrese su peso en kilogramos:"
	LEER peso
	ESCRIBIR "Ingrese su altura en metros:"
	LEER altura
	
	//Calcular el IMC utilizando la fórmula: IMC = peso / (altura * altura).
	IMC <- peso / (altura * altura)
	
	//Mostrar el resultado del cálculo del IMC
	ESCRIBIR "Su IMC es: ", IMC
	
	// Clasificar el estado de peso segun IMC
	SI IMC < IMC_BAJO_PESO Entonces
		ESCRIBIR "Clasificación: Bajo Peso"
	SINO SI IMC >= IMC_BAJO_PESO Y IMC < IMC_SOBREPESO Entonces
		ESCRIBIR "Clasificación: Peso Normal"
		
			SINO SI IMC >= IMC_SOBREPESO Y IMC < IMC_OBESIDAD Entonces
				ESCRIBIR "Clasificación: Sobrepeso"
			
	SiNo
			ESCRIBIR "Clasificación: Obesidad"
			Fin SI
		Fin SI
	Fin SI
	
	
	
	// tecla de windows + Shift + s | IF - ELSE /  >=  <=
	
FinAlgoritmo
