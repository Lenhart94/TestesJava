# Jogo da Snake (Cobra) em Java

Um jogo clássico da Snake implementado em Java com interface gráfica Swing.

## Características

- **Cobra crescente**: A cobra aumenta de tamanho ao comer a comida (bolinha preta)
- **Sem morte nas paredes**: A cobra atravessa as paredes e aparece do outro lado
- **Morte apenas ao colidir consigo mesma**: O jogo termina apenas quando a cobra bate em seu próprio corpo
- **Pontuação**: Sistema de pontuação que aumenta conforme a cobra come
- **Reinício rápido**: Pressione 'R' para reiniciar o jogo após game over

## Requisitos

- Java Development Kit (JDK) 8 ou superior
- Sistema operacional com suporte gráfico (Windows, Linux, macOS)

## Como Jogar

### Opção 1: Usando o arquivo JAR (mais fácil)

Basta executar o arquivo JAR:
```bash
java -jar SnakeGame.jar
```

No Windows, você também pode dar um duplo clique no arquivo `SnakeGame.jar`.

### Opção 2: Usando os scripts prontos

#### Linux/macOS:
```bash
./run_snake.sh
```

#### Windows:
```cmd
run_snake.bat
```

### Opção 3: Compilação e execução manual

1. **Compilar o jogo:**
```bash
javac -d bin src/com/snakegame/*.java
```

2. **Executar o jogo:**
```bash
java -cp bin com.snakegame.SnakeGame
```

## Controles

- **Setas Direcionais**: Controlar a direção da cobra
  - ⬆️ Seta para cima: Move para cima
  - ⬇️ Seta para baixo: Move para baixo
  - ⬅️ Seta para esquerda: Move para esquerda
  - ➡️ Seta para direita: Move para direita
- **R**: Reiniciar o jogo após game over

## Regras do Jogo

1. A cobra começa com 3 segmentos de corpo
2. Use as setas do teclado para mover a cobra
3. Coma a comida (bolinha preta) para crescer e aumentar sua pontuação
4. A cobra pode atravessar as paredes - ela aparecerá do outro lado
5. O jogo termina se a cobra colidir com seu próprio corpo
6. Tente obter a maior pontuação possível!

## Estrutura do Projeto

```
TestesJava/
├── src/
│   └── com/
│       └── snakegame/
│           ├── SnakeGame.java      # Classe principal
│           ├── GameFrame.java      # Frame do jogo
│           └── GamePanel.java      # Painel e lógica do jogo
├── bin/                            # Classes compiladas
├── SnakeGame.jar                   # Arquivo JAR executável
├── run_snake.sh                    # Script para Linux/macOS
└── run_snake.bat                   # Script para Windows
```

## Tecnologias Utilizadas

- **Java**: Linguagem de programação
- **Swing**: Biblioteca gráfica para interface do usuário
- **AWT**: Abstract Window Toolkit para eventos e gráficos

## Desenvolvimento

O jogo foi desenvolvido usando programação orientada a objetos com as seguintes classes:

- **SnakeGame**: Classe principal que inicia o jogo
- **GameFrame**: Janela principal do jogo
- **GamePanel**: Contém toda a lógica do jogo, renderização e controles

## Licença

Este projeto é de código aberto e está disponível para uso educacional.
