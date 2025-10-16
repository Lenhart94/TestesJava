# Documentação Técnica - Jogo da Snake

## Visão Geral

Este é um jogo clássico da Snake implementado em Java usando a biblioteca Swing para a interface gráfica. O jogo atende a todos os requisitos especificados:

1. **Comida (bolinha preta)**: A snake cresce ao comer
2. **Atravessar paredes**: A snake não morre ao bater nas paredes, atravessa para o outro lado
3. **Morte apenas no corpo**: O jogo termina apenas quando a snake colide com seu próprio corpo
4. **Pronto para jogar**: Executável via JAR, scripts ou compilação manual

## Arquitetura do Código

### 1. SnakeGame.java (Classe Principal)
```java
public class SnakeGame {
    public static void main(String[] args) {
        new GameFrame();
    }
}
```
- Ponto de entrada da aplicação
- Cria e inicializa o GameFrame

### 2. GameFrame.java (Janela do Jogo)
```java
public class GameFrame extends JFrame
```
- Estende JFrame para criar a janela principal
- Configura propriedades da janela (título, tamanho, fechar, etc.)
- Adiciona o GamePanel à janela
- Centraliza a janela na tela

### 3. GamePanel.java (Lógica e Renderização)
```java
public class GamePanel extends JPanel implements ActionListener
```

Esta é a classe principal que contém toda a lógica do jogo:

#### Constantes
- `SCREEN_WIDTH/HEIGHT = 600`: Tamanho da tela
- `UNIT_SIZE = 25`: Tamanho de cada unidade (segmento da snake e comida)
- `DELAY = 100`: Velocidade do jogo (ms entre cada movimento)

#### Variáveis de Estado
- `x[], y[]`: Arrays para armazenar posições de cada segmento da snake
- `bodyParts`: Número atual de segmentos da snake
- `foodX, foodY`: Posição da comida
- `direction`: Direção atual ('U', 'D', 'L', 'R')
- `running`: Estado do jogo (true = jogando, false = game over)
- `score`: Pontuação do jogador

#### Métodos Principais

##### startGame()
- Inicializa a snake no centro da tela
- Posiciona os segmentos iniciais
- Gera a primeira comida
- Inicia o timer do jogo

##### paintComponent(Graphics g)
- Método de renderização principal
- Chama draw() para desenhar todos os elementos

##### draw(Graphics g)
- Desenha a grade (opcional, para visualização)
- Desenha a comida como um círculo preto
- Desenha a snake (cabeça verde, corpo verde claro)
- Mostra a pontuação no topo
- Mostra tela de game over quando necessário

##### move()
- Move todos os segmentos da snake
- Cada segmento assume a posição do segmento anterior
- A cabeça move na direção atual
- **Implementa wrapping**: Se a snake sai de um lado, aparece do outro

```java
// Wrap around walls (pass through walls)
if (x[0] < 0) {
    x[0] = SCREEN_WIDTH - UNIT_SIZE;
} else if (x[0] >= SCREEN_WIDTH) {
    x[0] = 0;
}
```

##### checkFood()
- Verifica se a cabeça da snake está na posição da comida
- Se sim, aumenta bodyParts e score
- Gera nova comida em posição aleatória

##### checkCollisions()
- **Apenas verifica colisão com o próprio corpo**
- Não verifica colisão com paredes
- Compara posição da cabeça com cada segmento do corpo

```java
// Check if head collides with body
for (int i = bodyParts; i > 0; i--) {
    if ((x[0] == x[i]) && (y[0] == y[i])) {
        running = false;
    }
}
```

##### gameOver(Graphics g)
- Exibe mensagem "Game Over"
- Mostra pontuação final
- Instrui como reiniciar (pressionar R)

##### actionPerformed(ActionEvent e)
- Chamado pelo Timer a cada DELAY milissegundos
- Executa a sequência: move() → checkFood() → checkCollisions()
- Repinta a tela

#### Classe Interna: MyKeyAdapter
```java
public class MyKeyAdapter extends KeyAdapter
```

Gerencia entrada do teclado:
- **Setas direcionais**: Muda a direção (com validação para não reverter 180°)
- **Tecla R**: Reinicia o jogo quando em game over

## Características Especiais

### 1. Wall Wrapping (Atravessar Paredes)
A snake não morre ao bater nas paredes. Em vez disso, ela "atravessa" para o outro lado:
- Se sair pela esquerda, aparece na direita
- Se sair pela direita, aparece na esquerda
- Se sair pelo topo, aparece embaixo
- Se sair por baixo, aparece no topo

### 2. Comida como Bolinha Preta
A comida é renderizada usando `fillOval()` com cor preta:
```java
g.setColor(Color.black);
g.fillOval(foodX, foodY, UNIT_SIZE, UNIT_SIZE);
```
O fundo é cinza escuro para contraste.

### 3. Morte Apenas por Auto-Colisão
O jogo termina apenas quando a cabeça da snake toca qualquer outro segmento do seu corpo. Não há morte por paredes.

### 4. Sistema de Pontuação
- Cada comida coletada = +1 ponto
- Pontuação exibida no topo da tela
- Pontuação final mostrada na tela de game over

## Fluxo do Jogo

1. **Inicialização**:
   - Snake começa com 3 segmentos
   - Posição inicial no centro
   - Primeira comida é gerada

2. **Loop Principal** (a cada 100ms):
   - Move a snake na direção atual
   - Verifica se comeu a comida
   - Verifica colisão com o próprio corpo
   - Repinta a tela

3. **Controles do Jogador**:
   - Teclas de seta mudam a direção
   - Direção oposta à atual é bloqueada

4. **Game Over**:
   - Ocorre quando snake colide consigo mesma
   - Exibe pontuação final
   - Jogador pode pressionar R para reiniciar

## Como Executar

### Opção 1: Arquivo JAR (Recomendado)
```bash
java -jar SnakeGame.jar
```
Ou duplo clique no Windows.

### Opção 2: Compilar e Executar
```bash
javac -d bin src/com/snakegame/*.java
java -cp bin com.snakegame.SnakeGame
```

### Opção 3: Scripts Prontos
- Linux/macOS: `./run_snake.sh`
- Windows: `run_snake.bat`

## Requisitos do Sistema

- Java Runtime Environment (JRE) 8 ou superior
- Sistema operacional com suporte gráfico (GUI)
- Mínimo 600x600 pixels de resolução de tela

## Melhorias Futuras Possíveis

1. Níveis de dificuldade (velocidade variável)
2. Obstáculos no cenário
3. Power-ups especiais
4. Placar de recordes (high score)
5. Sons e efeitos sonoros
6. Temas de cores personalizáveis
7. Modo multiplayer

## Licença

Código aberto para fins educacionais.
