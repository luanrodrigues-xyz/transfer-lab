# Transfer Lab

Projeto pessoal de engenharia full-stack para transferências financeiras
simuladas em BRL, com iOS nativo, Java/Spring Boot e PostgreSQL.
Não movimenta dinheiro real.

## Tecnologias

**iOS**
- Swift
- SwiftUI e MVVM-C
- Swift Package Manager
- Injeção de dependências
- URLSession
- Swift Concurrency
- Swift Testing e XCUITest

**Backend (planejado)**
- Java
- Spring Boot
- APIs REST
- Monólito modular por funcionalidades
- PostgreSQL e Flyway
- Maven
- JUnit e Testcontainers

## Estrutura do projeto

```text
TransferLab/
├── ios/
├── backend/
└── README.md
```

- `ios/` — aplicativo iOS nativo.
- `backend/` — diretório reservado para a API em Spring Boot.

## Estado atual

O projeto está na fase inicial.

Os diretórios `ios/` e `backend/` foram criados e o repositório Git foi inicializado. O aplicativo iOS ainda não foi implementado.

O backend ainda não foi implementado.

## Executando o aplicativo

O projeto Xcode ainda não foi criado. As instruções de execução serão adicionadas após a criação e validação do aplicativo no simulador.

## Próximas implementações

- Criação do aplicativo SwiftUI e da navegação inicial.
- Modelos de domínio e testes para valores monetários.
- Consulta de conta e saldo.
- Cadastro e seleção de beneficiários fictícios.
- Entrada de valor, revisão e confirmação de transferências.
- Histórico e detalhes das operações.
- API REST com Java e Spring Boot.
- Persistência, autenticação e autorização.
- Integração do aplicativo iOS com o backend.
- Recuperação de operações com resultado desconhecido.
- Publicação do backend em ambiente remoto.
- Integração posterior com um provedor de pagamentos em sandbox.

## Decisões de implementação

O backend será a fonte de verdade para saldos e resultados das transferências. As operações deverão garantir autorização, saldo suficiente, atomicidade, idempotência e consistência sob concorrência.

Todos os valores monetários serão representados em centavos inteiros de BRL, sem utilizar `Float` ou `Double` para armazenar dinheiro. Operações aritméticas deverão tratar overflow.

A integração de pagamentos será definida em uma etapa posterior, separada das transferências internas e utilizando exclusivamente ambiente sandbox. O fluxo precisará considerar situações como requisições duplicadas, falhas de comunicação e respostas desconhecidas, sem assumir que uma falha de rede significa que o pagamento não aconteceu.
