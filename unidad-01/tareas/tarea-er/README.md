<div align="justify">

# PARQUES NATURALES
    El Consejero de Medio Ambiente de la Comunidad Autónoma Canaria ha decidido crear un sistema de información sobre los parques naturales que gestiona cada cabildo insular. Después de realizar un detallado análisis, se han establecido las siguientes conclusiones:

	• Un Cabildo Insular (CI) puede tener varios parques naturales. En todos los Cabildos existe uno y sólo un organismo responsable de los parques.

	• Un Parque natural se identifica por un nombre, fue declarado en una fecha, se compone de varias áreas identificadas por un nombre y caracterizadas por una determinada extensión. Por motivos de eficiencia se desea favorecer las consultas referentes al número de parques existentes en cada Cabildo y la superficie total declarada parque natural de cada Cabildo.

	• En cada área forzosamente residen especies que pueden ser de tres tipos: vegetales, animales y minerales. Cada especie tiene una denominación científica, una denominación vulgar y un número inventariado de individuos por área. De las especies vegetales se desea saber si tienen floración y en qué periodo se produce ésta; de los animales se desea saber su tipo de alimentación (herbívora, carnívora u omnívora) y sus periodos de celo;  de los minerales se desea saber si se trata de cristales o de rocas. 

    Además interesa registrar qué especies sirven de alimento a otras especies, teniendo en cuenta que ninguna especie mineral se considera alimento de cualquier otra especie y que una especie vegetal no se alimenta de ninguna especie.

	• Del personal de parque se guarda su DNI, número de la seguridad social, nombre y apellidos, dirección, teléfonos (domicilio y móvil) y sueldo. Se distinguen los siguientes tipos de personal:

	• Personal de gestión: registra los datos de los visitantes del parque y están destinados en una entrada del parque (Las entradas se identifican por un número).
	• Personal de vigilancia: vigila un área determinada del parque que recorre en un vehículo (Tipo y matrícula).
	• Personal de conservación: mantiene y conserva un área determinada del parque. Cada uno lo realiza en una especialidad determinada (Limpieza, caminos, …)
	• Personal investigador: Tiene una titulación que ha de recogerse y pueden realizar proyectos (incluso conjuntamente) de investigación sobre una determinada especie.

	• Un proyecto de investigación tiene un presupuesto y un periodo de realización.

	• Un visitante (DNI, nombre, domicilio, profesión  y teléfono) también puede alojarse dentro de los alojamientos de que dispone el parque; éstos tienen una capacidad limitada y tienen una determinada categoría.

## **Frases que describen las relaciones:**

[Cabildo Insular] tiene [Parque Natural]
```
Un Cabildo Insular puede tener varios parques naturales →(1,n) 
Un parque pertenece a un solo Cabildo Insular  → (1,1)
Total: N:1
```
[Parque] compone [Áreas]
```
Un parque se compone de varias áreas → (1,n)
Un área se compone de un parque → (1,1)
Total → N:1
```

[Área] reside [Especie]
```
En un área residen varias especies → (1.n)
Una especie reside en un área → (1,1)
Total → N:1
```

[Animal] alimenta [Animal]
```
Una especie animal se puede alimentar de varias especies animales. → (1,n)
Total: N:M
```
[Animal] alimenta [Vegetal]
```
Una especie animal se alimenta de una especie vegetal → (1,1)
Una especie vegetal no puede alimentarse de una especie animal. → (1,0)
Total: 1:1
```
[Parque] tiene [personal]
```
Un parque tiene muchos personal → (1, n)
Un empleado trabaja en un parque → (1,1)
Total → N:1
```

[Visitante] visita [Parque]
```
Un visitante visita un parque → (1,1)
Un parque es visitado por muchos visitantes → (1, n)
Total: 1:N
```

[Visitante] hospeda [Alojamiento]
```
Un visitante puede alojarse dentro de los alojamientos de que dispone el parque → (1,1)
En un alojamiento se hospedan muchos visitantes → (1,n)
Total: 1:N
```

[Investigador] realiza [Proyecto]
```
Un investigador realiza un proyecto → (1,1)
Un proyecto puede ser realizado por varios investigadores. → (1,n)
Total → 1:N
```

[Vigilante] vigila [Área]
```
Un vigila una área determinada → (1,1)
Una área es vigilada por un vigilante → (1,1)
Total → 1:1
```

[Conservación] mantiene [Area]
```
Un miembro del personal de conservación mantiene un área →(1,1) 
Un área es mantenida por varios miembros del personal de conservación → (1,n)
Total →  1:N
```
[Gestión] registra [Visitantes]
```
Un miembro del personal de gestión registra datos de muchos visitantes. → (1,n)
Los datos de un visitante so registrados por un miembro del personal de gestión → (1,1)
Total → N:1
```

## Atributos

- Parques naturales: nombre.
- Áreas: nombre y caracterizadas por una determinada extensión.
- Especies: denominación científica, una denominación vulgar y un número inventariado de individuos por área.
   - Animal: alimentación (herbívora, carnívora u omnívora) y sus periodos de celo.
   - Vegetal:  floración y en qué periodo se produce ésta
   - Mineral: cristales o de rocas.
- Personal: DNI, número de la seguridad social, nombre y apellidos, dirección, teléfonos (domicilio y móvil) y sueldo.
   - Gestión: nº de entrada.
   - Vigilancia: vehículo (tipo y matrícula).
   - Conservación:  especialidad determinada (limpieza, caminos, otros)
   - Investigador: titulación.
- Proyecto:  presupuesto y un periodo de realización.
- Alojamientos: capacidad, categoría.


## Modelo E/R:
<img src=images/BAE4definitivo.drawio.png>

