# 🐍 Snake Game - Implementação Completa

## ✅ Requisitos Atendidos

### 1. Jogo da Snake em Java
- ✅ Implementado usando Java 17 (compatível com Java 8+)
- ✅ Interface gráfica usando Java Swing
- ✅ Código organizado com programação orientada a objetos

### 2. Comida como Bolinha Preta
- ✅ A comida é renderizada como um círculo preto (`fillOval`)
- ✅ Aparece em posições aleatórias no grid
- ✅ Snake cresce ao comer a comida

### 3. Atravessar Paredes (Wrapping)
- ✅ Snake NÃO morre ao bater nas paredes
- ✅ Snake atravessa e aparece do outro lado
- ✅ Funciona em todas as 4 direções (cima, baixo, esquerda, direita)

### 4. Morte Apenas ao Colidir com o Próprio Corpo
- ✅ Única condição de game over: snake bate em si mesma
- ✅ Sem colisão com paredes
- ✅ Jogo continua indefinidamente até auto-colisão

### 5. Pronto para Jogar
- ✅ JAR executável pronto: `SnakeGame.jar`
- ✅ Scripts de execução para Linux/macOS e Windows
- ✅ Pode ser jogado localmente em qualquer sistema com Java
- ✅ Interface gráfica responsiva e jogável

## 📁 Estrutura do Projeto

```
TestesJava/
├── src/com/snakegame/
│   ├── SnakeGame.java      # Classe principal (main)
│   ├── GameFrame.java      # Janela do jogo
│   └── GamePanel.java      # Lógica e renderização
├── SnakeGame.jar           # JAR executável (4.9KB)
├── run_snake.sh            # Script Linux/macOS
├── run_snake.bat           # Script Windows
├── README.md               # Documentação principal
├── DOCUMENTACAO.md         # Documentação técnica
├── GUIA_VISUAL.md          # Guia visual
└── .gitignore              # Ignora arquivos compilados
```

## 🎮 Como Jogar

### Método 1: JAR (Recomendado)
```bash
java -jar SnakeGame.jar
```

### Método 2: Scripts
Linux/macOS:
```bash
./run_snake.sh
```

Windows:
```cmd
run_snake.bat
```

### Método 3: Manual
```bash
javac -d bin src/com/snakegame/*.java
java -cp bin com.snakegame.SnakeGame
```

## 🎯 Controles

- **⬆️ Seta Cima**: Move para cima
- **⬇️ Seta Baixo**: Move para baixo
- **⬅️ Seta Esquerda**: Move para esquerda
- **➡️ Seta Direita**: Move para direita
- **R**: Reinicia o jogo (após game over)

## 🎨 Características Visuais

- **Tela**: 600x600 pixels
- **Fundo**: Cinza escuro (para contraste com comida preta)
- **Snake**: Verde (cabeça) e verde claro (corpo)
- **Comida**: Círculo preto
- **Grid**: Linhas de grade opcionais
- **Pontuação**: Exibida no topo da tela

## 🔧 Detalhes Técnicos

### Classes Principais

1. **SnakeGame**: Ponto de entrada (main)
2. **GameFrame**: Janela JFrame
3. **GamePanel**: Lógica do jogo, renderização, controles

### Características do Código

- Timer com delay de 100ms (10 FPS)
- Arrays para armazenar posições da snake
- Verificação de colisão apenas com corpo
- Geração aleatória de comida
- Sistema de pontuação
- Reinício do jogo sem fechar aplicação

### Requisitos do Sistema

- Java 8 ou superior
- Sistema operacional com GUI (Windows, Linux, macOS)
- Mínimo 600x600 pixels de tela

## 📝 Documentação

- **README.md**: Guia completo em português
- **DOCUMENTACAO.md**: Arquitetura e detalhes técnicos
- **GUIA_VISUAL.md**: Diagramas e layouts visuais

## ✨ Funcionalidades Extras

- Tela de game over com pontuação
- Reinício rápido com tecla R
- Grid visual para melhor jogabilidade
- Cores suaves e interface limpa
- Prevenção de movimento reverso (180°)

## 🧪 Testes Realizados

- ✅ Compilação bem-sucedida
- ✅ JAR criado e funcional
- ✅ Wall wrapping testado
- ✅ Colisão apenas com corpo verificada
- ✅ Comida renderizada como bolinha preta
- ✅ Crescimento da snake funcional
- ✅ Sistema de pontuação correto
- ✅ Controles responsivos

## 🚀 Próximos Passos Possíveis

1. Adicionar níveis de dificuldade
2. Implementar placar de recordes
3. Adicionar sons e efeitos
4. Criar power-ups especiais
5. Modo multiplayer
6. Temas de cores personalizáveis

## 📄 Licença

Código aberto para fins educacionais.

---

**Status**: ✅ COMPLETO E PRONTO PARA JOGAR!
