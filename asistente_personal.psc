Algoritmo asistente_personal
	Definir opcion, totalActividades, i, j, idBuscar, siguienteID Como Entero
	Definir encontrado Como Logico
	Definir id Como Entero
	Definir actividad, descripcion, categoria, fecha, hora, prioridad, estado, observacion Como Cadena
	Dimension id[100]
	Dimension actividad[100]
	Dimension descripcion[100]
	Dimension categoria[100]
	Dimension fecha[100]
	Dimension hora[100]
	Dimension prioridad[100]
	Dimension estado[100]
	Dimension observacion[100]
	totalActividades <- 0
	siguienteID <- 1
	//---------------------------------------//
	//--|menu_principal_asistente_personal|--//
	//---------------------------------------//
	Repetir
		Escribir "menu principal asistente personal"
		Escribir "1) registrar actividad personal"
		Escribir "2) editar actividad personal"
		Escribir "3) eliminar actividad personal"
		Escribir "4) buscar actividad personal"
		Escribir "5) listar actividades personales"
		Escribir "6) ver detalles de la actividad"
		Escribir "7) mostrar estadisticas"
		Escribir "8) salir"
		Escribir "seleccione una opcion:"
		Leer opcion
		Segun opcion Hacer
			//----------------------------------//
			//--|registrar_actividad_personal|--//
			//----------------------------------//
			1:
				Escribir "registrar actividad personal"
				Si totalActividades >= 100 Entonces
					Escribir "no se pueden registrar mas actividades."
				SiNo
					id[totalActividades + 1] <- siguienteID
					siguienteID <- siguienteID + 1
					Escribir "ingrese el nombre de la actividad:"
					Leer actividad[totalActividades + 1]
					Escribir "ingrese la descripcion:"
					Leer descripcion[totalActividades + 1]
					Escribir "ingrese la categoria:"
					Leer categoria[totalActividades + 1]
					Escribir "ingrese la fecha:"
					Leer fecha[totalActividades + 1]
					Escribir "ingrese la hora:"
					Leer hora[totalActividades + 1]
					Escribir "ingrese la prioridad (alta/media/baja):"
					Leer prioridad[totalActividades + 1]
					Escribir "ingrese el estado (pendiente/en proceso/completado/cancelado):"
					Leer estado[totalActividades + 1]
					Escribir "ingrese una observacion:"
					Leer observacion[totalActividades + 1]
					totalActividades <- totalActividades + 1
					Escribir "actividad personal registrada correctamente."
				FinSi
			//-------------------------------//
			//--|editar_actividad_personal|--//
			//-------------------------------//
			2:
				Escribir "editar actividad personal"
				Si totalActividades = 0 Entonces
					Escribir "no hay actividades registradas."
				SiNo
					Escribir "datos registrados a editar"
					Para i <- 1 Hasta totalActividades Hacer
						Escribir id[i]," | ",actividad[i]," | ",descripcion[i]," | ",categoria[i]," | ",fecha[i]," | ",hora[i]," | ",prioridad[i]," | ",estado[i]," | ",observacion[i]
					FinPara
					Escribir "ingrese el id de la actividad:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalActividades Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "nuevo nombre de la actividad:"
							Leer actividad[i]
							Escribir "nueva descripcion:"
							Leer descripcion[i]
							Escribir "nueva categoria:"
							Leer categoria[i]
							Escribir "nueva fecha:"
							Leer fecha[i]
							Escribir "nueva hora:"
							Leer hora[i]
							Escribir "nueva prioridad (alta/media/baja):"
							Leer prioridad[i]
							Escribir "nuevo estado (pendiente/en proceso/completado/cancelado):"
							Leer estado[i]
							Escribir "nueva observacion:"
							Leer observacion[i]
							Escribir "actividad personal editada correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontro una actividad con ese id."
					FinSi
				FinSi				
			//---------------------------------//
			//--|eliminar_actividad_personal|--//
			//---------------------------------//
			3:
				Escribir "eliminar actividad personal"
				Si totalActividades = 0 Entonces
					Escribir "no hay actividades registradas."
				SiNo
					Escribir "datos registrados a eliminar"
					Para i <- 1 Hasta totalActividades Hacer
						Escribir id[i]," | ",actividad[i]," | ",descripcion[i]," | ",categoria[i]," | ",fecha[i]," | ",hora[i]," | ",prioridad[i]," | ",estado[i]," | ",observacion[i]
					FinPara
					Escribir "ingrese el id de la actividad:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalActividades Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Si i < totalActividades Entonces
								Para j <- i Hasta totalActividades - 1 Hacer
									id[j] <- id[j + 1]
									actividad[j] <- actividad[j + 1]
									descripcion[j] <- descripcion[j + 1]
									categoria[j] <- categoria[j + 1]
									fecha[j] <- fecha[j + 1]
									hora[j] <- hora[j + 1]
									prioridad[j] <- prioridad[j + 1]
									estado[j] <- estado[j + 1]
									observacion[j] <- observacion[j + 1]
								FinPara
							FinSi
							totalActividades <- totalActividades - 1
							Escribir "actividad personal eliminada correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontro una actividad con ese id."
					FinSi
				FinSi
			//-------------------------------//
			//--|buscar_actividad_personal|--//
			//-------------------------------//
			4:
				Escribir "buscar actividad personal"
				Si totalActividades = 0 Entonces
					Escribir "no hay actividades registradas."
				SiNo
					Escribir "ingrese el id de la actividad:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalActividades Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "datos encontrados"
							Escribir "id: ",id[i]
							Escribir "actividad: ",actividad[i]
							Escribir "descripcion: ",descripcion[i]
							Escribir "categoria: ",categoria[i]
							Escribir "fecha: ",fecha[i]
							Escribir "hora: ",hora[i]
							Escribir "prioridad: ",prioridad[i]
							Escribir "estado: ",estado[i]
							Escribir "observacion: ",observacion[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontro una actividad con ese id."
					FinSi
				FinSi
			//-----------------------------------//
			//--|listar_actividades_personales|--//
			//-----------------------------------//
			5:
				Escribir "listar actividades personales"
				Si totalActividades = 0 Entonces
					Escribir "no hay actividades registradas."
				SiNo
					Escribir "datos registrados"
					Para i <- 1 Hasta totalActividades Hacer
						Escribir id[i]," | ",actividad[i]," | ",descripcion[i]," | ",categoria[i]," | ",fecha[i]," | ",hora[i]," | ",prioridad[i]," | ",estado[i]," | ",observacion[i]
					FinPara
				FinSi
			//-------------------------------------//
			//--|ver_detalles_actividad_personal|--//
			//-------------------------------------//
			6:
				Escribir "ver detalles de la actividad personal"
				Si totalActividades = 0 Entonces
					Escribir "no hay actividades registradas."
				SiNo
					Escribir "ingrese el id de la actividad:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalActividades Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "detalles de la actividad personal"
							Escribir "id: ",id[i]
							Escribir "actividad: ",actividad[i]
							Escribir "descripcion: ",descripcion[i]
							Escribir "categoria: ",categoria[i]
							Escribir "fecha: ",fecha[i]
							Escribir "hora: ",hora[i]
							Escribir "prioridad: ",prioridad[i]
							Escribir "estado: ",estado[i]
							Escribir "observacion: ",observacion[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontro una actividad con ese id."
					FinSi
				FinSi
			//--------------------------//
			//--|mostrar_estadisticas|--//
			//--------------------------//
			7:
				Escribir "mostrar estadisticas"
				Si totalActividades = 0 Entonces
					Escribir "no hay actividades registradas."
				SiNo
					totalPendientes <- 0
					totalEnProceso <- 0
					totalCompletadas <- 0
					totalCanceladas <- 0
					totalAlta <- 0
					totalMedia <- 0
					totalBaja <- 0
					Para i <- 1 Hasta totalActividades Hacer
						Si estado[i] = "pendiente" Entonces
							totalPendientes <- totalPendientes + 1
						FinSi
						Si estado[i] = "en proceso" Entonces
							totalEnProceso <- totalEnProceso + 1
						FinSi
						Si estado[i] = "completado" Entonces
							totalCompletadas <- totalCompletadas + 1
						FinSi
						Si estado[i] = "cancelado" Entonces
							totalCanceladas <- totalCanceladas + 1
						FinSi
						Si prioridad[i] = "alta" Entonces
							totalAlta <- totalAlta + 1
						FinSi
						Si prioridad[i] = "media" Entonces
							totalMedia <- totalMedia + 1
						FinSi
						Si prioridad[i] = "baja" Entonces
							totalBaja <- totalBaja + 1
						FinSi
					FinPara
					Escribir "estadisticas generales"
					Escribir "total de actividades: ",totalActividades
					Escribir "actividades pendientes: ",totalPendientes
					Escribir "actividades en proceso: ",totalEnProceso
					Escribir "actividades completadas: ",totalCompletadas
					Escribir "actividades canceladas: ",totalCanceladas
					Escribir "actividades con prioridad alta: ",totalAlta
					Escribir "actividades con prioridad media: ",totalMedia
					Escribir "actividades con prioridad baja: ",totalBaja
				FinSi
			//------------------------------//
			//--|salir_del_menu_principal|--//
			//------------------------------//
			8:
				Escribir "gracias por utilizar asistente personal."
			De Otro Modo:
				Escribir "opcion no valida."
		FinSegun
	Hasta Que opcion = 8
FinAlgoritmo