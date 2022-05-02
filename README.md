Configuración KPrepublic BM40v2
===

Esta es la configuración para [Vial](https://get.vial.today) de la distribución de teclado que uso en mi teclado mecánico ortolineal de tipo 40 %.

Decisiones de diseño:

- Códigos de tecla (_keycodes_ o _scancodes_) relativos a la configuración de teclado estándar en España; es decir, la distribución ISO QWERTY variante española de España (`es-ES`).
- Virtualización de la distribución de letras Dvorak variante española.
- Simetría de teclas modificadoras en ambas manos.
- Capa específica para símbolos.
  - Siguiendo uno de los principios de diseño de Dvorak, los dígrafos de símbolos (p. ej. `¡!` o `{}`) se escriben con gestos de fuera hacia dentro; es decir, en la mano derecha, los símbolos están intercambiados con respecto a la dirección de lectura.
- Media capa específica para movimiento (mano derecha).
  - Movimiento tipo Vim (`h`, `j`, `k`, `l`), pero partiendo de la tecla de reposo.
  - Movimientos de medio y largo alcance  en la fila superior.
  - Virtualización del movimiento del ratón en la fila inferior.
- Media capa específica para el bloque numérico (mano izquierda).
  - Símbolos matemáticos en la capa inferior.
- Media capa específica para teclas de función (mano izquierda).


Capa 0 (letras)
---

```
|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|
| TAB |  .  |  ,  |  Ñ  |  P  |  Y  |  F  |  G  |  C  |  H  |  L  | RET |
|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|
|C-ESC|  A  |  O  |  E  |  U  |  I  |  D  |  R  |  T  |  N  |  S  |CTR-´|
|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|
|MAY-Ç|  -  |  Q  |  J  |  K  |  X  |  B  |  M  |  W  |  V  |  Z  |M-INT|
|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|
|BQMAY| (3) | ALT | GUI | (1) |  ESPACIO  | (2) | GUI |ALTGR|ARCHV| SIL |
|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|
```

Leyenda:

- `(1)`: mientras se presiona, cambiar a la capa 1
- `(2)`: mientras se presiona, cambiar a la capa 2
- `(3)`: mientras se presiona, cambiar a la capa 3
- `ALT`: alternativa (alt.)
- `ALTGR`: alternativa gráfica (alt. gr.)
- `ARCHV`: abrir la carpeta personal de archivos [función]
- `BQMAY`: bloqueo de mayúsculas (bloq. mayús.)
- `CTR`: control (ctrl.)
- `CTR-´`: cuando se pulsa, ce cedilla (ç); mientras se presiona, control (ctrl.)
- `C-ESC`:  cuando se pulsa, escape (esc.); mientras se presiona, control (ctrl.)
- `GUI`: súper (Windows o comando, en Mac)
- `MAY`: mayúsculas (mayús.)
- `MAY-<`: cuando se pulsa, signo menor que (`<`); mientras se presiona, mayúsculas (mayús.)
- `M-INT`: cuando se pulsa, entrar (intro.); mientras se presiona, mayúsculas (mayús.)
- `RET`: retroceso
- `SIL`: silenciar volumen [función]
- `TAB`: tabulador (tab.)

Capa 1 (símbolos)
------------------

```
|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|
|  º  |  !  |  "  |  ·  |  $  |  %  |  `  |  ]  |  [  |  ?  |  ¿  | SUP |
|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|
|  ª  |  &  |  /  |  (  |  )  |  =  |  '  |  }  |  {  |  !  |  ¡  |     |
|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|
|  \  |  |  |  @  |  #  |  ~  |  ¬  |  ^  |  >  |  <  |  »  |  «  |     |
|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|
|     |     |     |     |     |           |     |     |     |     |     |
|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|
```

Leyenda:

- `SUP`: suprimir (supr.)

Capa 2 (números y navegación)
---

```
|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|
|     |  1  |  2  |  3  |  4  |  5  |     | INI |AVPÁG|REPÁG| FIN | RET |
|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|
|     |  6  |  7  |  8  |  9  |  0  |     |  ←  |  ↓  |  ↑  |  →  |     |
|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|
|     |  /  |  *  |  -  |  +  |INTNM|CLDCH| RT← | RT↓ | RT↑ | RT→ |CLIZQ|
|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|
|BQNUM|     |     |     |     |   . NUM   |     |     |     |     |     |
|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|
```


Leyenda:

- `. NUM`: punto (´.`) numérico
- `AVPÁG`: avanzar página (av. pág.)
- `BQNUM`: bloqueo numérico (bloq. num.)
- `CLIZQ`: clic izquierdo del ratón
- `CLDCH`: clic derecho del ratón
- `INI`: inicio
- `INTNM`: entrar (intro.) numérico
- `REPÁG`: retroceder página (re. pág.)
- `RET`: retroceso
- `RT←`: mover el ratón hacia la izquierda
- `RT↓`: mover el ratón hacia abajo
- `RT↑`: mover el ratón hacia arriba
- `RT→`: mover el ratón hacia la derecha

Capa 3 (función y miscelánea)
---

```
|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|
|     | FN1 | FN2 | FN3 | FN4 | FN5 |     | (*) | (*) | (*) | (*) |RESET|
|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|
|     | FN6 | FN7 | FN8 | FN9 | F10 |     | (*) | (*) | (*) | (*) |     |
|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|
|     | F11 | F12 |     |     |CAPTP|CAPTS| (*) | (*) | (*) | (*) |     |
|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|
|     |     |     |     |     |           | (*) | (*) | (*) | (*) |     |
|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|-- --|
```


Leyenda:

- `CAPTP`: capturar pantalla (completa)
- `CAPTS`: capturar pantalla (selección)
- `RESET`: reinicia al cargador de arranque del teclado
- `FNx` o `Fxx`: tecla de función con el número que figura (F1, F2... hasta F12)
- `(*)`: tecla específica del _firmware_ QMK para controlar las luces led traseras y por tecla
