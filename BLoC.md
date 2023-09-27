# BLoC Architecture

## Introducción
El `patrón BLoC` (**Business Logic Component**) es un patrón arquitectural basado en la separación de componentes (*BLoC Components*)

Muchos desarrolladores de *Flutter* eligen esta arquitectura, porque puesto que Flutter está basado en widgets, la arquitectura `BLoC` permite fácilmente que nuestros widgets se comuniquen con otras capas de la aplicación

Los *BLoC Components* contienen sólo lógica de negocio, la cuál puede ser fácilmente compartida entre diferentes aplicaciones de Dart

Los objetivos principales de `BLoC` son la separación entre la capa de **Presentación o UI** y la capa de la **Lógica de Negocio**, y la posibilidad de escribir código rápido, probarlo fácilmente, y facilitar su reutilización

Otras ventajas que aporta `BLoC` es la de conocer el estado de la aplicación en cualquier momento, y probar que la aplicación está respondiendo como se espera

Adicionalmente, también podemos grabar cada interacción del usuario dentro de la aplicación, para posteriormente, tomar decisiones dirigas de acuerdo a esas acciones y *journeys* del usuario dentro de la aplicación

El hecho de que se use una arquitectura como modelo de desarrollo, permite que los desarrolladores puedan seguir, mantener y trabajar, con los patrones y convenciones preestablecidas

Los desarrolladores que trabajan con `stateful widgets`, utilizan `setState` varias veces. Esto inicia un *rebuild* que impacta en el rendimiento

`BLoC` por su parte, nos permite definir la lógica de negocio en clases `BLoC`, y previene múltiples *rebuilds*, gestionar de una forma más óptima los estados, y teniendo por lo tanto, un mejor rendimiento

![image](https://github.com/J0rgeSerran0/Flutter-Samples/assets/6237500/adfd699c-0a36-4e85-9161-d9315d3fcf6c)


## Conceptos de BLoC

![image](https://github.com/J0rgeSerran0/Flutter-Samples/assets/6237500/8952087b-b037-404e-ab73-cb3c3cbb903f)

- Events and Actions
  * Corresponde con la entrada a la arquitectura `BLoC`
  * Normalmente son creados en respuesta a las interacciones por parte del usuario con la UI (cargar una página, hacer clic en un botón, etc)

- States
  * Corresponde con las salidas de la arquitectura `BLoC`
  * Representan partes del estado común de la aplicación
  * Los componentes de UI pueden recibir notificaciones sobre los estados y volver a dibujar partes de la UI en función del estado

- BLoC (Business Logic Component)
  * Debemos pensar en un `BLoC` como el cerebro que recibe una información, la procesa y devuelve una salida
  * Siguiendo ese criterio, convierte un stream de eventos de entrada en un stream de estados de salida

- Stream
  * Es una secuencia de datos asíncronos
  * Tanto la UI como un `BLoC`, escuchan a estos streams y responden a cualquier cambio que se produzca


## Referencias
- [How to Implement the BLoC Architecture in Flutter: Benefits and Best Practices](https://www.mobindustry.net/blog/how-to-implement-the-bloc-architecture-in-flutter-benefits-and-best-practices/)



---
[Home](README.md)
