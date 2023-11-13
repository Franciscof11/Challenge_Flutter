# Decisão de Arquitetura: Clean Architecture

Ao decidir a arquitetura para o projeto, optei por implementar a Clean Architecture, utilizando as camadas de Data, Domain e Presentation, pois ao meu ver combina com a utilização do Flutter Bloc como gerenciador de estado. Essa escolha foi guiada pela necessidade de estruturar o código de forma modular, escalável e de fácil manutenção.


# Bibliotecas Utilizadas

- **another_flushbar** -> Usado para criação e utilização de toasts.
- **bloc** -> Gerenciador de estado.
- **dio** -> Pacote de rede para efetuar requisições http.
- **google_fonts** -> Utilização de fontes nativa do Google.
- **flutter_launcher_icons** -> Customização e configuração do ícone do applicativo.
- **flutter_native_splash** -> Criação da Splash Screen nativa do aplicativo.
- **flutter_staggered_animations** -> Criar animações para listas.
- **flutter_svg** -> Utilização de arquivos ".svg".
- **mask_text_input_formatter** -> Criação de máscaras para campos de texto nos formulários.
- **freezed** -> Gerador de código para classes de estados e eventos do bloc.


# Melhorias

Se eu tivesse mais tempo para desenvolver, implementaria melhor a parte do login, não usando uma api de crud mas algo pra authenticação como firebase_auth. Tambem criaria mais testes, e escreveria testes de integração, para completar os 3 tipos de testes.

# Login's para autenticação

email: test@test.com
password: 123456

email: chico@test.com
password: test123
