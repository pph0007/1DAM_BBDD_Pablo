# 📘 Tema 7: Modelo Relacional y Normalización (1FN, 2FN, 3FN)

---

## 1. Introducción y contextualización práctica  

El **modelo relacional** es el puente entre el diseño conceptual (E/R) y la base de datos real.  
A partir del diagrama entidad/relación, se generan **tablas, claves primarias, claves foráneas y relaciones**.

Después, este modelo debe ser optimizado aplicando **normalización**, un conjunto de reglas que eliminan redundancia y mejoran la integridad de los datos.

🎯 **Objetivos del tema:**  
- Comprender cómo se transforma un diagrama E/R en un modelo relacional.  
- Conocer las formas normales y sus reglas.  
- Aplicar normalización con ejemplos reales paso a paso.  

---

## 2. Del modelo E/R al modelo Relacional  

El proceso de transformación convierte los elementos del diagrama en componentes del modelo relacional.

### 2.1. Transformaciones básicas  

| Elemento E/R | Se convierte en… |
|---------------|---------------------|
| Entidad fuerte | Tabla |
| Entidad débil | Tabla con PK heredada + PK propia |
| Atributo | Columna |
| Identificador | Clave primaria (PK) |
| Relación 1:N | Clave foránea en el lado N |
| Relación N:M | Nueva tabla intermedia |
| Atributo multivaluado | Nueva tabla |

---

📄 **Referencia teórica recomendada:**  
👉 https://josejuansanchez.org/bd/unidad-03-teoria/index.html

📌 **En este punto el modelo ya funciona, pero aún NO está optimizado.**  
Ahora aplicamos **normalización**.

---

# 3. Normalización (1FN, 2FN, 3FN)

La normalización es un proceso que reorganiza las tablas para eliminar redundancia y mejorar la integridad (Evitar dependencias erróneas entre elementos).

## 3.1. Conceptos fundamentales  

### 🔹 Dependencia funcional  
A → B  
*El valor de A determina el valor de B.*

### 🔹 Dependencia parcial  
Un atributo depende solo de **parte** de una clave compuesta.

### 🔹 Dependencia transitiva  
Un atributo depende de otro atributo, no directamente de la clave.

---

# 4. Primera Forma Normal (1FN)

### ✔ Reglas  
La primera forma normal prohíbe el uso de atributos con múltiples valores

### ❌ Ejemplo NO 1FN  
![alt text](./img/1FN.png)

### ✔ Solución 1FN  

![alt text](./img/1FN_SOL.png)

---

# 5. Segunda Forma Normal (2FN)

### ✔ Reglas  
- Cumple 1FN.  
- No existen dependencias parciales.  
- Aplicable **solo** si la PK es compuesta.

### ❌ Ejemplo NO 2FN  

PK = (id_pedido, id_producto)

| id_pedido | id_producto | nombre_producto | Cantidad |
|-----------|-------------|-----------------|----------|

`nombre_producto` depende solo de `id_producto`.

### ✔ Solución 2FN  

Separar en dos tablas:

**Productos**  
| id_producto | nombre_producto |

**Pedidos_productos**  
| id_pedido | id_producto | Cantidad |

---

# 6. Tercera Forma Normal (3FN)

### ✔ Reglas  
- Cumple 2FN.  
- Ningún atributo debe depender de otro atributo no clave (sin dependencias transitivas).

### ❌ Ejemplo NO 3FN  

| DNI | nombre | ciudad | cp |
|----|--------|--------|----|

`ciudad` depende de `cp`.

### ✔ Solución  

Separar:

**Clientes**  
| DNI | nombre | idCiudad |
|----|--------|--------|

**CodigosPostales**  
| idCiudad | cp | ciudad |
|--------|----|--------|

---

# 9. Resumen del tema  

📌 Transformación E/R → Relacional  
📌 Normalización: 1FN, 2FN, 3FN  
📌 Eliminación de redundancia  
📌 Ejemplo completo paso a paso  

Dominar el modelo relacional y la normalización es esencial para evitar inconsistencias y crear bases de datos de calidad profesional.

---

