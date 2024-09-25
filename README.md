# API DemoBlaze Challenge

La página https://www.demoblaze.com/ proporciona la funcionalidad de registro (signup) y login. 

Se ha realizado una prueba de los dos servicios de acuerdo a los siguientes casos:
  - Crear un nuevo usuario en signup
  - Intentar crear un usuario ya existente
  - Usuario y password correcto en login
  - Usuario y password incorrecto en login

## 1. Prerequisitos
  - Maquina local con el sistema operativo Windows 11
  - IntelliJ IDE Community Edition version 2024.2.1
  - Maven version 3.9.9
  - JDK versión 11.0.12
  - Karate version 1.4.0

## 2. Comandos de Instalación
  - mvn install -DskipTests
  - mvn clean
  - mvn clean install

## 3. Instrucciones para ejecutar el Test
Para verificar las pruebas y obtener el reporte en karate se puede ejecutar el siguiente comando en la terminal del IDE o en Maven Goal:
  ```
  mvn clean test
  ```
Con este comando se generan los reportes de karate en una url similar a esta file:///C:/Users/Cindy/karate-demoblaze/target/karate-reports/karate-summary.html 
Dando click sobre ella se abrirá un html para ver el reporte de las pruebas.

## 4. Información adicional 

### Verificaión de las pruebas en los servicios

![image](https://github.com/user-attachments/assets/12f7bb52-0308-4ecd-87d1-55c57b412a53)
![image](https://github.com/user-attachments/assets/2ad95a7b-50b8-45b3-998c-b189586f4d5a)
![image](https://github.com/user-attachments/assets/72eb8bc5-4497-4712-9b3e-ee946c11965b)
![image](https://github.com/user-attachments/assets/51113c26-f1ef-48a0-a11d-35c43aeab57c)
![image](https://github.com/user-attachments/assets/e6e31d59-3c7a-419b-a9f1-ea83c3441370)
![image](https://github.com/user-attachments/assets/8cd75503-b24c-43f9-8390-6783ca1c528e)

### Referencias

Los servicios se pueden encontrar en las siguientes direcciones

Signup: https://api.demoblaze.com/signup

Login: https://api.demoblaze.com/login

Documentación Karate: https://github.com/karatelabs/karate





