Algoritmo ControlStock
	Definir stock_tienda Como Entero 
	
	// Variables para calcular el stock total y por pasillo
	Definir stock_total_tienda, stock_por_pasillo, max_stock_pasillo, pasillo_con_mas_stock Como Entero
	
	// Inicializar el stock total y el m�ximo stock por pasillo
	stock_total_tienda <- 0
	max_stock_pasillo <- 0
	pasillo_con_mas_stock <- -1 
	// Inicializar con un valor que no sea un pasillo real
	
	// Inicializar el stock por pasillo a cero
	Para i <- 0 Hasta 2 Con Paso 1 Hacer
		stock_por_pasillo <- 0
	Fin Para
	Escribir "--- Ingresando stock aleatorio ---"
	// Ingresar aleatoriamente la cantidad de unidades disponibles en cada ubicaci�n
	Para pasillo <- 0 Hasta 2 Con Paso 1 Hacer
		Para estanteria <- 0 Hasta 3 Con Paso 1 Hacer
			stock_tienda <- Aleatorio(0, 100) // Simula la funci�n de n�mero aleatorio
			Escribir "Pasillo ", pasillo + 1, ", Estanter�a ", estanteria + 1, "unidades"
		Fin Para
	Fin Para
	
	Escribir "" // Salto de l�nea
	Escribir "--- Resumen del Stock ---"
	
	// Calcular el stock total en la tienda y el stock por pasillo
	Para pasillo <- 0 Hasta 2 Con Paso 1 Hacer
		Para estanteria <- 0 Hasta 3 Con Paso 1 Hacer
			stock_total_tienda <- stock_total_tienda + stock_tienda
			stock_por_pasillo <- stock_por_pasillo + stock_tienda
		Fin Para
	Fin Para
	
	Escribir "El stock total en la tienda es: ", stock_total_tienda, " unidades."
	
	Escribir "" // Salto de l�nea
	
	// Indicar cu�l pasillo tiene m�s stock total
	Para i <- 0 Hasta 2 Con Paso 1 Hacer
		Escribir "Stock en Pasillo ", i + 1, ": ", stock_por_pasillo, " unidades"
		Si stock_por_pasillo > max_stock_pasillo Entonces
			max_stock_pasillo <- stock_por_pasillo
			pasillo_con_mas_stock <- i + 1 
			// Se suma1 para mostrar el n�mero de pasillo real 
		Fin Si
	Fin Para
	
	Escribir "" // Salto de l�nea
	Escribir "El pasillo con m�s stock total es el Pasillo ", pasillo_con_mas_stock, ", con ", max_stock_pasillo, " unidades."
FinAlgoritmo


