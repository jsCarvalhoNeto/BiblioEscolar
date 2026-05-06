import os
import requests
import json

# Configurações do Supabase (obtidas do contexto anterior se necessário, mas vou usar MCP)
# Na verdade, como não tenho a API Key e URL aqui para requests diretos, vou usar a ferramenta execute_sql do mcp.

def execute_batches():
    batches = sorted([f for f in os.listdir('D:/Projetos/BiblioEdu/scratch') if f.startswith('batch_') and f.endswith('.sql')])
    
    for batch_file in batches:
        print(f"Executing {batch_file}...")
        path = os.path.join('D:/Projetos/BiblioEdu/scratch', batch_file)
        with open(path, 'r', encoding='utf-8') as f:
            sql = f.read()
            
        # Eu não posso chamar a ferramenta mcp de dentro do script python.
        # Então vou apenas imprimir o comando para eu mesmo executar ou algo assim.
        # Mas como sou um agente, eu mesmo chamarei as ferramentas.
        
if __name__ == "__main__":
    execute_batches()
