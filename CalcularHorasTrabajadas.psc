Algoritmo CalcularHorasTrabajadas
    Definir maxHoras, minHoras, indiceMax, indiceMin  Como Entero
	Dimension horasTrabajadas[5]
    
    // Inicializar el m�ximo con un valor bajo y el m�nimo con un valor alto
    maxHoras <- -1
    minHoras <- 9999
    
    // Pedir al usuario que ingrese las horas trabajadas por cada empleado
    Para i <- 0 Hasta 4 Con Paso 1 Hacer
        Escribir "Ingrese las horas trabajadas para el empleado ", i + 1, ":"
        leer horas 
        
        // Actualizar el m�ximo de horas y el �ndice del empleado
        Si horas > maxHoras Entonces
            maxHoras <- horas
            indiceMax <- i
        FinSi
        Si horas < minHoras Entonces
            minHoras <- horas
            indiceMin <- i
        FinSi
    FinPara
    // Mostrar el resumen de horas trabajadas
    Escribir "--- Resumen de Horas Trabajadas ---"
    Para i <- 0 Hasta 4 Con Paso 1 Hacer
        Escribir "Empleado ", i + 1, ": ", horas, " horas"
    FinPara
    
    // Mostrar qu� empleado trabaj� m�s horas y cu�l menos
    Escribir "El empleado que trabaj� m�s horas fue el Empleado ", indiceMax + 1, " con ", maxHoras, " horas."
    Escribir "El empleado que trabaj� menos horas fue el Empleado ", indiceMin + 1, " con ", minHoras, " horas."
    
FinAlgoritmo
	

