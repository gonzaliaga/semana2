Algoritmo Ticket
	//definir los descuentos (Constantes)
	Definir Descuento_10, Descuento_20, Descuento_30, IVA Como Real
	Descuento_10 <- 0.10
	Descuento_20 <- 0.20
	Descuento_30 <- 0.30
	IVA <- 0.19
	
	//definir variables
	Definir nombreProducto Como Cadena
	Definir precioUnitario, cantidad, subtotal, descuento, totalIva, total, montoPagar, cambio Como Real
	
	//Solicitar datos al usuario
	Escribir "Ingrese nombre del producto: "
	Leer nombreProducto
	Escribir "ingrese el precio unitario de cada producto: $"
	Leer precioUnitario
	Escribir "Ingrese la cantidad a comprar"
	Leer cantidad
	
	//Calcular el subtotal
	subtotal <- precioUnitario*cantidad
	
	//cual es el descuento
	si cantidad > 50 Entonces
		descuento <- subtotal * Descuento_30
	Sino Si cantidad >= 20 Entonces
			descuento <- subtotal * Descuento_20
	Sino Si cantidad >= 10 Entonces
			descuento <- subtotal * Descuento_10
	Sino descuento <- 0

	FinSi
	FinSi
	FinSi

	
	//realizamos el total
	total <- subtotal - descuento
	totalIva <- total * IVA
	totalConIva <- total + totalIva
	
	// Detalle de compra
	Escribir "-------------------------------------------"
	Escribir "Producto: ", nombreProducto
	Escribir "Cantidad Comprada: ", cantidad
	Escribir "El subtotal es: $", subtotal
	Escribir "El descuento aplicado es: ", descuento
	Escribir "El IVA es: $", totalIva
	Escribir "El total es: $", totalConIva
	Escribir "-------------------------------------------"
	
	//solicitar monto a pagar
	Escribir "Ingrese el monto a pagar"
	Leer montoPagar
	
	//Evaluamos el Cambio o vuelto Tarea: hacerlo con segun Hacer
    // Evaluar el pago utilizando 'si entonces'
    Si montoPagar = totalConIva Entonces
        Escribir "Pago exacto. ¡Gracias por su compra!"
    Sino Si montoPagar > totalConIva Entonces
			cambio <- montoPagar - totalConIva
			Escribir "Pago recibido. Su cambio es: $", cambio
		Sino
			Escribir "Monto insuficiente. Falta $", totalConIva - montoPagar
		FinSi
	FinSi
	
FinAlgoritmo
