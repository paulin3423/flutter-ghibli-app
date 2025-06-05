# Flutter Studio Ghibli App

## Descrição do Projeto
Este projeto foi desenvolvido com o objetivo de praticar integração com APIs públicas, manipulação de dados JSON, e construção de interfaces modernas utilizando Flutter. A aplicação lista todos os filmes da Studio Ghibli, com imagens e informações relevantes como diretor, produtor, data de lançamento e sinopse.

## Funcionalidades
- 🔎 Listagem dos filmes com título e imagem.
- ✅ Navegação para tela de detalhes com informações completas.
- 🎨 Animações suaves utilizando Hero Animation.
- 🌐 Consumo de API REST.
- 📶 Tratamento de erros e carregamento assíncrono.
- 📱 Layout responsivo para diferentes tamanhos de tela.
- 🖼️ Cache de imagens para otimização de performance.

## Tecnologias Utilizadas
- Flutter – SDK para desenvolvimento multiplataforma.
- Dart – Linguagem de programação.
- HTTP – Realização de requisições REST.
- CachedNetworkImage – Carregamento otimizado de imagens com cache.
- Studio Ghibli API – Fonte de dados pública e gratuita.

## Estrutura do Projeto
lib/
├── models/
│ └── movie.dart → Modelagem dos dados da API.
├── services/
│ └── api_service.dart → Serviço de requisição HTTP.
├── screens/
│ ├── movie_list_screen.dart → Tela de listagem.
│ └── movie_detail_screen.dart → Tela de detalhes.
├── widgets/
│ └── movie_card.dart → Componente reutilizável (opcional).
├── main.dart → Ponto de entrada da aplicação.

## Como Executar

```bash
# Clone este repositório:
git clone https://github.com/seuusuario/flutter-ghibli-app.git
cd flutter-ghibli-app

# Instale as dependências:
flutter pub get

# Execute o aplicativo:
flutter run
