# Servidor para generar un Bearer Token de Firebase

[Documentación oficial de Firebase](https://firebase.google.com/docs/cloud-messaging/auth-server)

## Pasos

1. Instalar las dependencias
```
npm install
```

2. Obtener el archivo de configuración de Firebase (firebase-admin.json)
3. Levantar el servidor
```
node app
```

## Pasos Docker

1. Crear archivo firebase-admin.json
```bash
cp firebase-admin.example.json firebase-admin.json
```

2. Construir la imagen
```bash
docker build -t firebase-get-bearer-token:v1 .
```

3. Ejecutar contenedor
```bash
docker run -p 3001:3001 firebase-get-bearer-token:v1
```



