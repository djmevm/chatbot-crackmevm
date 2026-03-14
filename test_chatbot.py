"""
Script de prueba para verificar el funcionamiento básico del chatbot
"""
import asyncio
from rasa.core.agent import Agent

async def test_chatbot():
    """Prueba básica del chatbot"""
    # Cargar el agente (no es async en Rasa 3.x)
    agent = Agent.load("models")
    
    # Conversación de prueba
    test_messages = [
        "hola",
        "quiero agendar un servicio",
        "mantenimiento",
        "mañana",
        "10 de la mañana",
        "3102456461",
        "es una laptop hp que está muy lenta"
    ]
    
    print("=" * 60)
    print("PRUEBA DEL CHATBOT DE AGENDAMIENTO - CRACK MEVM")
    print("=" * 60)
    print()
    
    for message in test_messages:
        print(f"Usuario: {message}")
        responses = await agent.handle_text(message)
        for response in responses:
            if "text" in response:
                print(f"Bot: {response['text']}")
        print()
    
    print("=" * 60)
    print("PRUEBA COMPLETADA")
    print("=" * 60)

if __name__ == "__main__":
    asyncio.run(test_chatbot())
