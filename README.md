# NKM Labs IoT Stack

NKM Labs IoT Stack son varios contenedores de #Docker para #RaspberryPi que puede ser utilizado como _**Gateway IoT**_ local o _**sandbox**_ para experimentar con una solución IoT completa (Producción, Recolección, Transformación, Almacenamiento y Visualización de datos).

Inspirado en [influxdata sandbox](https://github.com/influxdata/sandbox)

Para más detalle, por favor, mira nuestro [blog](http://nakamalabs.info/nkm-labs-iot-stack/).

## CHANGELOG
### 2019-03
- Influxdb Latest version
- Telegraf Latest version
- Chronograf Latest version
- Mosquitto Latest version

## Inicio Rapido

Para iniciar: 
```bash
git clone https://github.com/NakamaLab/iotstack.git
cd iotstack
docker-compose up -d
```
Para detener
```bash
docker-compose stop
```

Para detener y eliminar imagenes 
```bash
docker-compose down
```

**IMPORTANTE:** Como tiene configurado volumenes los datos se persisten en el disco, esto es bueno pro que si por error bajan un contenedor los datos se mantiene. Malo por que cualquier inconsistencia en los archivos puede causar una falla en el sistema, en ese caso, revisen los volumenes y solo dejen los archivos del repositorio de codigo

