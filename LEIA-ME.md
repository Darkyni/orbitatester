# ORBITA — versão profissional

## Conteúdo
- `index.html`: estrutura da aplicação.
- `css/orbita.css`: estilos originais refinados, layout responsivo, animações e estados de foco.
- `js/orbita.js`: lógica da aplicação, autenticação Supabase e salvamento/sincronização do progresso.
- `supabase_setup.sql`: schema e políticas RLS da tabela `orbita_progress`.

## Publicação na Vercel
Envie os quatro arquivos/pastas para a raiz do repositório GitHub, mantendo a estrutura de diretórios. O deploy da Vercel deverá iniciar após o commit.

## Supabase
O HTML usa a URL e a chave publishable do projeto configuradas no JavaScript. Nunca coloque uma chave `secret` ou `service_role` no front-end. A tabela `orbita_progress` deve existir com RLS e as políticas do SQL. No painel Supabase, Authentication → URL Configuration, configure Site URL como `https://estudoemorbita.vercel.app` e permita o redirect desse domínio.

## O que foi ajustado
- Removido o item ORBITA PETS da navegação e o módulo correspondente do JavaScript.
- Removida a recompensa de pet da conclusão de aulas.
- Mantidas as áreas de visão geral, jornada/calendário, estudos detalhados, biblioteca, audiovisual, notas, exportação/importação de backup, mapa galáctico com zoom e integração de login/progresso Supabase.
- Separados HTML, CSS e JavaScript.
- Refinados contraste, hierarquia visual, espaçamentos, estados de botão, transições e layout para celular.

## Validação
Esta versão foi gerada a partir do HTML existente. Antes de substituir a produção, teste login/cadastro, mapa galáctico, abrir uma aula, concluir aula, anotações e sincronização em dois dispositivos.
