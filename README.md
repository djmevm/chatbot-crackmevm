# 🤖 Chatbot Crack MEVM - Sistema de Agendamiento

Chatbot inteligente en español para agendar servicios de soporte técnico. Desarrollado con [Rasa Open Source](https://rasa.com/) y guardado automático de citas en Excel.

## 📋 Requisitos

- Python 3.8 o 3.9 (recomendado)
- pip

## 🚀 Instalación desde cero

```bash
# 1. Clonar el repositorio
git clone https://github.com/tu-usuario/chatbot-crackmevm.git
cd chatbot-crackmevm

# 2. Crear entorno virtual
python -m venv venv

# 3. Activar entorno virtual
# Windows:
.\venv\Scripts\activate
# Linux/Mac:
source venv/bin/activate

# 4. Instalar dependencias
pip install -r requirements.txt

# 5. Entrenar el modelo
rasa train
```

## ▶️ Ejecutar el chatbot

Necesitas **dos terminales** abiertas:

**Terminal 1 - Servidor de acciones:**
```bash
.\venv\Scripts\activate
rasa run actions
```

**Terminal 2 - Servidor Rasa:**
```bash
.\venv\Scripts\activate
rasa run --enable-api --cors "*"
```

Luego abre `index.html` en tu navegador.

> También puedes usar los archivos `1_iniciar_servidor_acciones.bat` y `2_iniciar_servidor_rasa.bat` en Windows.

## 📊 Historial de citas (Excel)

Cada cita agendada se guarda automáticamente en `historial_citas.xlsx` con:

| Campo | Descripción |
|-------|-------------|
| Fecha Registro | Fecha en que se agendó |
| Hora Registro | Hora en que se agendó |
| Nombre | Cliente o empresa |
| Servicio | Tipo de servicio solicitado |
| Fecha Cita | Fecha acordada |
| Hora Cita | Hora acordada |
| Teléfono | Contacto del cliente |
| Especificación | Detalles del problema |

> El archivo `historial_citas.xlsx` está en `.gitignore` para proteger los datos de los clientes.

## 🔄 Flujo de conversación

1. Saludo
2. Nombre del cliente o empresa
3. Servicio requerido
4. Fecha de la cita
5. Hora de la cita
6. Teléfono de contacto
7. Descripción del problema
8. ✅ Cita confirmada → guardada en Excel → reinicio automático

## 🛠️ Servicios disponibles

- 🔧 Mantenimiento
- 💾 Formateo
- 🌐 Instalación de redes
- 🛠️ Reparación
- 🔄 Actualización
- 🦠 Limpieza de virus
- 💿 Recuperación de datos

## 📁 Estructura del proyecto

```
chatbot_crackmevm/
├── actions/
│   ├── __init__.py
│   └── actions.py          # Acción para guardar en Excel
├── data/
│   ├── nlu.yml             # Ejemplos de entrenamiento
│   ├── rules.yml           # Reglas de conversación
│   └── stories.yml         # Historias de conversación
├── config.yml              # Configuración del pipeline NLU
├── domain.yml              # Intents, slots, respuestas
├── endpoints.yml           # Configuración del servidor de acciones
├── index.html              # Interfaz web del chatbot
├── requirements.txt        # Dependencias Python
└── README.md
```

## 📞 Contacto

**Crack MEVM Soluciones Informáticas**
- 📱 310 2456 461
- 📧 djmevm@ingenieros.com
