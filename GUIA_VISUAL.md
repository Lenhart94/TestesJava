# Guia Visual do Jogo da Snake

## Layout da Tela do Jogo

```
┌────────────────────────────────────────────────┐
│                  Score: 5                      │
│                                                │
│    ╔════════════════════════════════════╗     │
│    ║                                    ║     │
│    ║    ⬤  ← Comida (bolinha preta)    ║     │
│    ║                                    ║     │
│    ║                                    ║     │
│    ║         █████                      ║     │
│    ║         █ ← Cabeça da Snake       ║     │
│    ║                                    ║     │
│    ║                                    ║     │
│    ║                                    ║     │
│    ║                                    ║     │
│    ╚════════════════════════════════════╝     │
│                                                │
│   Controles: Use as setas do teclado          │
└────────────────────────────────────────────────┘
```

## Elementos Visuais

### Snake (Cobra)
- **Cabeça**: Retângulo verde escuro (RGB: 0, 255, 0)
- **Corpo**: Retângulos verde claro (RGB: 45, 180, 0)
- **Tamanho**: 25x25 pixels por segmento

### Comida
- **Forma**: Círculo (bolinha)
- **Cor**: Preta (RGB: 0, 0, 0)
- **Tamanho**: 25x25 pixels

### Área de Jogo
- **Tamanho**: 600x600 pixels
- **Cor de Fundo**: Cinza escuro (RGB: 50, 50, 50)
- **Grade**: Linhas cinza escuras (opcional, para visualização)

## Mecânicas Visuais

### 1. Atravessar Paredes

```
Saindo pela Direita → Aparece na Esquerda
╔════════════════╗    ╔════════════════╗
║            ███→║ →  ║→███            ║
║               ║║    ║║               ║
╚════════════════╝    ╚════════════════╝

Saindo por Baixo → Aparece em Cima
╔════════════════╗    ╔════════════════╗
║               ║║    ║║      ↓        ║
║               ↓║    ║║     ███       ║
║              ███    ║                ║
╚════════════════╝    ╚════════════════╝
```

### 2. Crescimento da Snake

```
Antes de Comer:          Depois de Comer:
╔════════════════╗      ╔════════════════╗
║    ⬤          ║      ║                ║
║               ║  →   ║     ████       ║
║     ███       ║      ║                ║
╚════════════════╝      ╚════════════════╝
    Score: 0               Score: 1
```

### 3. Game Over (Colisão com o Corpo)

```
╔═══════════════════════════════╗
║                               ║
║         GAME OVER             ║
║          Score: 15            ║
║                               ║
║      Press R to Restart       ║
║                               ║
╚═══════════════════════════════╝
```

## Cores do Jogo

| Elemento          | Cor RGB        | Cor Nome      |
|-------------------|----------------|---------------|
| Fundo             | (50, 50, 50)   | Cinza Escuro  |
| Grade             | (64, 64, 64)   | Cinza         |
| Cabeça da Snake   | (0, 255, 0)    | Verde         |
| Corpo da Snake    | (45, 180, 0)   | Verde Claro   |
| Comida            | (0, 0, 0)      | Preto         |
| Texto Score       | (255, 255, 255)| Branco        |
| Game Over         | (255, 0, 0)    | Vermelho      |

## Controles

```
┌─────────────────────────────────────┐
│         Teclas de Controle          │
├─────────────────────────────────────┤
│                                     │
│            ↑ (Cima)                 │
│              ▲                      │
│              │                      │
│      ◄───────┼───────►              │
│    ← (Esq)   │   (Dir) →           │
│              │                      │
│              ▼                      │
│            ↓ (Baixo)                │
│                                     │
│         R = Reiniciar               │
│                                     │
└─────────────────────────────────────┘
```

## Sequência de Tela

### 1. Tela Inicial
```
O jogo começa imediatamente
com a snake no centro
```

### 2. Durante o Jogo
```
- Snake se move continuamente
- Comida aparece aleatoriamente
- Score aumenta a cada comida
- Snake cresce a cada comida
```

### 3. Game Over
```
- Texto "Game Over" em vermelho
- Score final exibido
- Instrução para reiniciar (R)
```

## Dimensões

- **Janela Total**: 600x600 pixels
- **Unidade Base**: 25x25 pixels
- **Grid**: 24x24 unidades
- **Snake Inicial**: 3 segmentos
- **Velocidade**: 100ms por movimento (10 movimentos/segundo)

## Comportamento da Snake

### Movimento Normal
```
Direção: Direita (→)
Tick 1: ███→
Tick 2:  ███→
Tick 3:   ███→
```

### Mudança de Direção
```
Tick 1: ███→      (direita)
Tick 2:  ██       (muda para baixo)
         ↓█
Tick 3:  █        (continua baixo)
         █
         ↓█
```

### Crescimento
```
Tamanho 3: ███
Tamanho 4: ████
Tamanho 5: █████
... continua crescendo
```

## Notas Importantes

1. **Grid Visual**: As linhas da grade são opcionais e ajudam a visualizar o movimento
2. **Suavização**: Não há animação suave - movimento é discreto (quadro a quadro)
3. **Cor de Contraste**: O fundo cinza foi escolhido para contraste com a comida preta
4. **Fonte**: "Ink Free" é usada para texto (ou fonte padrão se não disponível)
