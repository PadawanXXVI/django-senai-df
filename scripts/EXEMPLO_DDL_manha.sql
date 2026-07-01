CREATE DATABASE db_senai_play;
USE db_senai_play;
CREATE TABLE curso (
    id INT PRIMARY KEY auto_increment,
    banner varchar(80) NOT NULL,
    nome varchar(100) NOT NULL,
    descricao TEXT NOT NULL,
    estrelas INT,
    mini_ementa TEXT NOT NULL,
    publico_alvo TEXT NOT NULL,
    fk_area_id INT,
    fk_categoria_id INT
);
-- ALTER TABLE nome_da_tabela MODIFY COLUMN nome_da_coluna VARCHAR(100);
-- ALTER TABLE curso ADD publico_alvo TEXT;
CREATE TABLE categoria (
    id INT PRIMARY KEY auto_increment,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE area (
    id INT PRIMARY KEY auto_increment,
    nome VARCHAR(100) NOT NULL
); 
ALTER TABLE curso ADD CONSTRAINT FK_curso_area
    FOREIGN KEY (fk_area_id)
    REFERENCES area (id)
    ON DELETE CASCADE;
 
ALTER TABLE curso ADD CONSTRAINT FK_curso_categoria
    FOREIGN KEY (fk_categoria_id)
    REFERENCES categoria (id)
    ON DELETE CASCADE;
    
    
    /*DML - inserir, deletar e alterar*/
    
    /*  INSERIR areas */
INSERT INTO area(nome)values('mecânica');
INSERT INTO area(nome)values('tecnologia da informação');
INSERT INTO area(nome)values('design');
/* INSERIR areas - Especialidade: Tecnologia */
INSERT INTO area(nome)values('desenvolvimento de software');
INSERT INTO area(nome)values('engenharia de dados');
INSERT INTO area(nome)values('ciência de dados');
INSERT INTO area(nome)values('segurança da informação');
INSERT INTO area(nome)values('inteligência artificial');
INSERT INTO area(nome)values('computação em nuvem');
INSERT INTO area(nome)values('redes de computadores');
INSERT INTO area(nome)values('administração de banco de dados');
INSERT INTO area(nome)values('arquitetura de software');
INSERT INTO area(nome)values('desenvolvimento web frontend');
INSERT INTO area(nome)values('desenvolvimento web backend');
INSERT INTO area(nome)values('desenvolvimento mobile ios');
INSERT INTO area(nome)values('desenvolvimento mobile android');
INSERT INTO area(nome)values('engenharia de devops');
INSERT INTO area(nome)values('análise de sistemas');
INSERT INTO area(nome)values('governança de ti');
INSERT INTO area(nome)values('suporte técnico e helpdesk');
INSERT INTO area(nome)values('qualidade de software e testes');
INSERT INTO area(nome)values('design de experiência do usuário ui ux');
INSERT INTO area(nome)values('gestão de produtos digitais product management');
INSERT INTO area(nome)values('metodologias ágeis scrum master');
INSERT INTO area(nome)values('business intelligence bi');
INSERT INTO area(nome)values('big data analytics');
INSERT INTO area(nome)values('aprendizado de máquina machine learning');
INSERT INTO area(nome)values('processamento de linguagem natural pln');
INSERT INTO area(nome)values('visão computacional');
INSERT INTO area(nome)values('computação quântica');
INSERT INTO area(nome)values('blockchain e criptoativos');
INSERT INTO area(nome)values('internet das coisas iot');
INSERT INTO area(nome)values('sistemas embarcados');
INSERT INTO area(nome)values('robótica industrial');
INSERT INTO area(nome)values('automação de processos robóticos rpa');
INSERT INTO area(nome)values('defesa cibernética');
INSERT INTO area(nome)values('perícia forense digital');
INSERT INTO area(nome)values('gestão de vulnerabilidades');
INSERT INTO area(nome)values('pentest e testes de intrusão');
INSERT INTO area(nome)values('criptografia e chaves públicas');
INSERT INTO area(nome)values('infraestrutura de ti');
INSERT INTO area(nome)values('virtualização de sistemas');
INSERT INTO area(nome)values('orquestração de containers kubernetes');
INSERT INTO area(nome)values('desenvolvimento fullstack');
INSERT INTO area(nome)values('desenvolvimento de jogos digitais');
INSERT INTO area(nome)values('arquitetura de soluções em nuvem');
INSERT INTO area(nome)values('engenharia de confiabilidade de sites sre');
INSERT INTO area(nome)values('análise de segurança soc');
INSERT INTO area(nome)values('resposta a incidentes cibernéticos');
INSERT INTO area(nome)values('arquitetura de dados');
INSERT INTO area(nome)values('data warehousing');
INSERT INTO area(nome)values('data lakes e governança de dados');
INSERT INTO area(nome)values('engenharia de prompt');
INSERT INTO area(nome)values('modelos de linguagem em larga escala llm');
INSERT INTO area(nome)values('desenvolvimento low code e no code');
INSERT INTO area(nome)values('sistemas operacionais');
INSERT INTO area(nome)values('compiladores e linguagens de programação');
INSERT INTO area(nome)values('desenvolvimento em metodologias devsecops');
INSERT INTO area(nome)values('análise de negócios de ti business analyst');
INSERT INTO area(nome)values('gestão de projetos de ti');
INSERT INTO area(nome)values('direção de tecnologia cto');
INSERT INTO area(nome)values('arquitetura de segurança da informação');
INSERT INTO area(nome)values('auditoria de tecnologia da informação');
INSERT INTO area(nome)values('privacidade de dados e conformidade lgpd');
INSERT INTO area(nome)values('desenvolvimento de firmware');
INSERT INTO area(nome)values('engenharia de hardware');
INSERT INTO area(nome)values('telecomunicações e redes 5g');
INSERT INTO area(nome)values('computação de borda edge computing');
INSERT INTO area(nome)values('sistemas distribuídos');
INSERT INTO area(nome)values('integração de sistemas de ti api');
INSERT INTO area(nome)values('desenvolvimento de sistemas erp');
INSERT INTO area(nome)values('consultoria de sistemas crm');
INSERT INTO area(nome)values('e commerce e plataformas digitais');
INSERT INTO area(nome)values('tecnologia educacional edtech');
INSERT INTO area(nome)values('tecnologia para saúde healthtech');
INSERT INTO area(nome)values('tecnologia financeira fintech');
INSERT INTO area(nome)values('tecnologia jurídica legaltech');
INSERT INTO area(nome)values('tecnologia agrícola agrotech');
INSERT INTO area(nome)values('desenvolvimento de mapas e geoprocessamento gis');
INSERT INTO area(nome)values('bioinformática');
INSERT INTO area(nome)values('realidade virtual e aumentada vr ar');
INSERT INTO area(nome)values('computação gráfica e renderização 3d');
INSERT INTO area(nome)values('redes neurais artificiais e deep learning');
INSERT INTO area(nome)values('mineração de dados data mining');
INSERT INTO area(nome)values('arquitetura microservices');
INSERT INTO area(nome)values('gerenciamento de identidades e acessos iam');
INSERT INTO area(nome)values('segurança em aplicações appsec');
INSERT INTO area(nome)values('infraestrutura como código iac');
INSERT INTO area(nome)values('monitoramento de sistemas e observabilidade');
INSERT INTO area(nome)values('análise de desempenho de aplicações apm');
INSERT INTO area(nome)values('automação de testes de software');
INSERT INTO area(nome)values('arquitetura de redes sem fio');
INSERT INTO area(nome)values('sistemas de missão crítica');
INSERT INTO area(nome)values('armazenamento de dados em nuvem cloud storage');
INSERT INTO area(nome)values('redes de distribuição de conteúdo cdn');
INSERT INTO area(nome)values('metodologia lean it');
INSERT INTO area(nome)values('gestão de serviços de ti itil');
INSERT INTO area(nome)values('otimização de motores de busca seo técnico');
INSERT INTO area(nome)values('web analytics e rastreamento de dados');
INSERT INTO area(nome)values('desenvolvimento de acessibilidade web');
INSERT INTO area(nome)values('sistemas de gerenciamento de conteúdo cms');
INSERT INTO area(nome)values('computação verde e sustentabilidade digital');
INSERT INTO area(nome)values('pesquisa e desenvolvimento tecnológico p e d');
    /* QUERY - CONSULTA - PESQUISA - DQL */
SELECT * FROM area;
SELECT nome FROM area;
SELECT id,nome FROM area ORDER BY nome ASC;
SELECT nome FROM area ORDER BY nome DESC;
SELECT id,nome FROM area;
TRUNCATE area;
    /*  INSERIR categoria */
INSERT INTO categoria(nome)values('mini-curso');
INSERT INTO categoria(nome)values('micro-curso');
INSERT INTO categoria(nome)values('curso');
SELECT id,nome FROM categoria ORDER by nome DESC;

   /* INSERIR CURSO */

DELETE FROM area WHERE id = 4;
DELETE FROM area WHERE id = 5;
DELETE FROM area WHERE id = 6;
select * from categoria;
select * from area;
describe curso;
INSERT INTO curso(banner,
                  nome,
				  descricao,
                  estrelas,
                  mini_ementa,
                  publico_alvo,
                  fk_area_id,
                  fk_categoria_id)VALUES('img/mecanica.png',
                  'fundamentos de mecânica',
                  'o curso ensina montar motores',
                  5,
                  '1-introdução 2- carro elétrico',
                  'alunos do ensino médio',
                  1,2);

SELECT * FROM curso;
                  
SELECT 
    c.id AS curso_id,
    c.nome AS nome_do_curso,
    c.banner,
    c.descricao,
    c.estrelas,
    c.mini_ementa,
    c.publico_alvo,
    a.nome AS area,       -- Traz o nome real da área
    cat.nome AS categoria -- Traz o nome real da categoria
FROM 
    curso c
INNER JOIN 
    area a ON c.fk_area_id = a.id
INNER JOIN 
    categoria ca ON c.fk_categoria_id = ca.id;
    
SELECT * FROM categoria;
SELECT * FROM area;
 
 
/* INSERIR CURSOS (100 registros) */
INSERT INTO curso(banner, nome, descricao, estrelas, mini_ementa, publico_alvo, fk_area_id, fk_categoria_id) VALUES
('img/ti_01.png', 'Lógica de Programação para Iniciantes', 'Aprenda os fundamentos da programação estruturada, variáveis e estruturas condicionais.', 5, '1-Introdução; 2-Variáveis; 3-Estruturas de Decisão; 4-Laços de Repetição', 'Jovens e adultos buscando transição de carreira', 2, 1),
('img/mecanica_02.png', 'Mecânica Automotiva Básica', 'Entenda o funcionamento básico do motor a combustão e sistemas de transmissão.', 4, '1-Bloco do Motor; 2-Sistema de Arrefecimento; 3-Troca de Óleo', 'Proprietários de veículos e entusiastas', 1, 3),
('img/design_01.png', 'Fundamentos do Design Gráfico', 'Domine as teorias das cores, tipografia e composição visual para criar peças incríveis.', 5, '1-Teoria das Cores; 2-Tipografia; 3-Composição Visual', 'Estudantes de comunicação e artes', 3, 3),
('img/ti_02.png', 'Desenvolvimento Web com HTML e CSS', 'Crie suas primeiras páginas de internet responsivas do absoluto zero.', 5, '1-Estrutura HTML; 2-Estilização CSS; 3-Flexbox e Grid; 4-Responsividade', 'Iniciantes em desenvolvimento web', 10, 2),
('img/ti_03.png', 'Introdução ao Python e Análise de Dados', 'Utilize a linguagem mais popular do mercado para manipular e analisar tabelas de dados.', 4, '1-Sintaxe Python; 2-Biblioteca Pandas; 3-Gráficos com Matplotlib', 'Profissionais de finanças, administração e TI', 9, 3),
('img/ti_04.png', 'Bancos de Dados Relacionais e SQL', 'Aprenda a criar tabelas, fazer consultas complexas e gerenciar dados de forma eficiente.', 5, '1-Modelagem de Dados; 2-Comandos DDL; 3-Comandos DML; 4-Joins e Agrupamentos', 'Estudantes de tecnologia e analistas de dados', 14, 3),
('img/ti_05.png', 'Segurança da Informação no Dia a Dia', 'Proteja seus dados pessoais e profissionais contra ataques cibernéticos e engenharia social.', 4, '1-Conceitos de Segurança; 2-Malwares; 3-Engenharia Social; 4-Boas Práticas', 'Colaboradores de empresas e usuários gerais', 10, 1),
('img/ti_06.png', 'Fundamentos de Inteligência Artificial', 'Descubra como funcionam os algoritmos de IA e os impactos dessa tecnologia no mercado.', 5, '1-História da IA; 2-Redes Neurais; 3-IAs Generativas; 4-Ética na IA', 'Profissionais do futuro e curiosos por inovação', 11, 1),
('img/mecanica_03.png', 'Sistemas de Freios Automotivos', 'Análise técnica, manutenção preventiva e corretiva de sistemas de freios a disco e tambor.', 5, '1-Fluido de Freio; 2-Pastilhas e Discos; 3-Sistema ABS', 'Mecânicos iniciantes e auxiliares de oficina', 1, 2),
('img/design_02.png', 'UX/UI Design: Experiência do Usuário', 'Aprenda a projetar interfaces focadas na usabilidade e na jornada do usuário digital.', 4, '1-Pesquisa com Usuários; 2-Wireframes; 3-Prototipagem no Figma', 'Designers e desenvolvedores frontend', 25, 3),
('img/ti_07.png', 'Git e GitHub para Equipes Ágeis', 'Controle o versionamento dos seus códigos e colabore em projetos de software sem dor de cabeça.', 5, '1-Instalação do Git; 2-Commits e Branchs; 3-Pull Requests; 4-Resolução de Conflitos', 'Programadores de todos os níveis', 7, 2),
('img/ti_08.png', 'Introdução ao Cloud Computing (AWS)', 'Conheça os principais serviços de nuvem da Amazon Web Services e aprenda a subir uma aplicação.', 4, '1-Conceito de Nuvem; 2-Instâncias EC2; 3-Armazenamento S3; 4-Segurança IAM', 'Administradores de redes e desenvolvedores', 12, 3),
('img/ti_09.png', 'JavaScript Essencial para Web', 'Adicione interatividade e dinamismo às suas páginas web utilizando JavaScript moderno.', 5, '1-Variáveis e Escopo; 2-Manipulação do DOM; 3-Eventos; 4-Consumo de APIs', 'Desenvolvedores frontend iniciantes', 16, 3),
('img/mecanica_04.png', 'Injeção Eletrônica Avançada', 'Diagnóstico de falhas e mapeamento de sensores e atuadores em veículos modernos.', 5, '1-Sensores de Fluxo; 2-Mapeamento de Combustível; 3-Uso de Scanner Diagnóstico', 'Mecânicos profissionais', 1, 3),
('img/design_03.png', 'Edição de Imagens Profissional com Photoshop', 'Aprenda técnicas de tratamento, recorte e manipulação de imagens digitais profissionalmente.', 4, '1-Ferramentas de Seleção; 2-Camadas e Máscaras; 3-Correção de Cores', 'Fotógrafos, designers e criadores de conteúdo', 3, 3),
('img/ti_10.png', 'Metodologias Ágeis: Scrum e Kanban', 'Otimize a produtividade da sua equipe gerenciando projetos com os frameworks ágeis.', 4, '1-Manifesto Ágil; 2-Papéis do Scrum; 3-Cerimônias; 4-Métricas com Kanban', 'Gerentes de projeto, líderes e desenvolvedores', 27, 2),
('img/ti_11.png', 'Desenvolvimento de APIs RESTful com Node.js', 'Construa backends rápidos, escaláveis e seguros utilizando o ecossistema do Node e Express.', 5, '1-Conceito de REST; 2-Roteamento; 3-Middlewares; 4-Integração com Banco de Dados', 'Programadores backend', 17, 3),
('img/ti_12.png', 'Introdução ao Linux e Linha de Comando', 'Perca o medo do terminal e domine os principais comandos do sistema operacional mais usado em servidores.', 5, '1-Estrutura de Diretórios; 2-Permissões de Arquivos; 3-Manipulação de Textos; 4-Shell Scripting', 'Profissionais de infraestrutura, DevOps e segurança', 59, 2),
('img/ti_13.png', 'Machine Learning na Prática', 'Crie modelos preditivos utilizando algoritmos de classificação e regressão com Scikit-Learn.', 5, '1-Regressão Linear; 2-Árvores de Decisão; 3-Validação de Modelos', 'Cientistas de dados e estatísticos', 30, 3),
('img/design_04.png', 'Ilustração Digital no Illustrator', 'Crie vetores, logotipos e identidades visuais escaláveis utilizando ferramentas profissionais.', 4, '1-Ferramenta Caneta (Pen Tool); 2-Pathfinder; 3-Vetorização de Imagens', 'Ilustradores e designers gráficos', 3, 3),
('img/ti_14.png', 'Desenvolvimento Mobile com Flutter', 'Escreva um único código fonte e publique aplicativos nativos de alta performance para Android e iOS.', 5, '1-Introdução ao Dart; 2-Widgets Estruturais; 3-Gerenciamento de Estado; 4-Build e Publicação', 'Desenvolvedores mobile', 18, 3),
('img/ti_15.png', 'Cybersecurity: Fundamentos de Pentest', 'Entenda como os hackers éticos encontram e exploram vulnerabilidades para proteger redes corporativas.', 5, '1-Fases do Pentest; 2-Scanners de Rede; 3-Exploração de Falhas Web', 'Profissionais de segurança da informação', 42, 3),
('img/mecanica_05.png', 'Alinhamento e Balanceamento Veicular', 'Teoria da geometria veicular, cambagem, cáster e técnicas precisas de calibração.', 4, '1-Geometria de Suspensão; 2-Uso do Alinhador a Laser; 3-Balanceamento de Rodas', 'Profissionais de autocentros e borracharias', 1, 2),
('img/ti_16.png', 'Excel Avançado com Dashboards', 'Transforme planilhas confusas em painéis dinâmicos e interativos para tomadas de decisão rápidas.', 5, '1-Fórmulas Complexas; 2-Tabelas Dinâmicas; 3-Criação de Gráficos e Dashboards', 'Analistas, administradores e profissionais de negócios', 28, 3),
('img/ti_17.png', 'Introdução ao Docker e Containers', 'Aprenda a empacotar suas aplicações garantindo que funcionem perfeitamente em qualquer máquina.', 5, '1-O que são Containers; 2-Criação de Dockerfile; 3-Docker Compose', 'Desenvolvedores e engenheiros de DevOps', 46, 2),
('img/ti_18.png', 'Construindo Aplicativos iOS nativos com Swift', 'Entre no ecossistema Apple desenvolvendo interfaces modernas utilizando SwiftUI.', 4, '1-Linguagem Swift; 2-Componentes SwiftUI; 3-Navegação e Listas', 'Programadores focados em mobile', 18, 3),
('img/ti_19.png', 'Business Intelligence com Power BI', 'Conecte diferentes fontes de dados, limpe arquivos e monte relatórios corporativos automáticos.', 5, '1-ETL com Power Query; 2-Modelagem de Dados; 3-Fórmulas DAX Básicas; 4-Publicação de Relatórios', 'Gestores, analistas de BI e engenheiros de dados', 28, 3),
('img/ti_20.png', 'Deep Learning e Redes Neurais com TensorFlow', 'Entre no universo do aprendizado profundo construindo redes para reconhecimento de imagens.', 5, '1-Perceptron; 2-Redes Convolucionais (CNN); 3-Classificação de Imagens', 'Cientistas de dados seniores', 86, 3),
('img/ti_21.png', 'DevOps Fundamentals: CI/CD Pipeline', 'Automatize os testes e o deploy do seu software reduzindo erros humanos de entrega.', 4, '1-Cultura DevOps; 2-Integração Contínua; 3-GitHub Actions e Jenkins', 'Desenvolvedores seniores e analistas de infraestrutura', 20, 2),
('img/design_05.png', 'Design de Interiores Residencial', 'Aprenda a planejar ambientes funcionais, ergonômicos, considerando iluminação e paleta de materiais.', 5, '1-Ergonomia de Ambientes; 2-Iluminação Residencial; 3-Escolha de Revestimentos', 'Estudantes de arquitetura e design de interiores', 44, 3),
('img/ti_22.png', 'Desenvolvimento de Jogos 2D com Unity', 'Crie a lógica, movimentação de personagens, física e animações para um jogo completo.', 4, '1-Interface da Unity; 2-Programação em C#; 3-Física 2D e Colisores', 'Entusiastas de games e programadores iniciantes', 48, 3),
('img/mecanica_06.png', 'Metrologia Aplicada à Mecânica', 'Uso preciso de instrumentos de medição industrial como paquímetro, micrômetro e relógio comparador.', 5, '1-Unidades de Medida; 2-Leitura de Paquímetro; 3-Uso de Micrômetro', 'Torneiros, fresadores e mecânicos de precisão', 1, 1),
('img/ti_23.png', 'Introdução à Engenharia de Prompt', 'Aprenda a estruturar perguntas e comandos eficientes para extrair o máximo de IAs como o ChatGPT.', 5, '1-Conceito de Prompt; 2-Técnicas de Contextualização; 3-Evitando Alucinações', 'Profissionais de todas as áreas interessados em IA', 56, 1),
('img/ti_24.png', 'NoSQL: Dominando o MongoDB', 'Aprenda a trabalhar com bancos de dados não-relacionais baseados em documentos JSON.', 4, '1-Estruturas de Documentos; 2-Operações CRUD; 3-Agregações e Índices', 'Desenvolvedores fullstack e engenheiros de dados', 14, 2),
('img/ti_25.png', 'Product Management: Gestão de Produtos Digitais', 'Aprenda a mapear o ciclo de vida de um produto de software desde a descoberta até o lançamento.', 5, '1-Product Discovery; 2-Mapeamento de MVP; 3-Métricas de Engajamento (North Star)', 'Gerentes de produto e coordenadores de TI', 26, 3),
('img/ti_26.png', 'React.js: Construindo Interfaces Modernas', 'Crie componentes reutilizáveis e gerencie estados complexos com a biblioteca mais usada do mercado.', 5, '1-Componentes e Props; 2-React Hooks (useState, useEffect); 3-Roteamento de Páginas', 'Desenvolvedores frontend', 16, 3),
('img/ti_27.png', 'LGPD na Prática para Empresas de TI', 'Compreenda a Lei Geral de Proteção de Dados e adapte sistemas de software às regras de conformidade.', 4, '1-Princípios da LGPD; 2-Direitos do Titular; 3-Segurança no Armazenamento', 'DPOs, administradores e desenvolvedores backend', 67, 2),
('img/ti_28.png', 'Redes de Computadores: Roteamento e Switches', 'Configuração de sub-redes, topologias locais, protocolos TCP/IP, roteadores e switches Cisco.', 5, '1-Modelo OSI; 2-Máscaras de Sub-rede; 3-Protocolos IPv4/IPv6', 'Técnicos de redes e administradores de infraestrutura', 13, 3),
('img/ti_29.png', 'Programação de CLP (Controlador Lógico Programável)', 'Automatize esteiras e braços mecânicos industriais utilizando programação em linguagem Ladder.', 5, '1-Arquitetura de CLP; 2-Linguagem Ladder; 3-Temporizadores e Contadores', 'Técnicos de automação e eletricistas industriais', 89, 3),
('img/ti_30.png', 'Introdução ao Blockchain e Contratos Inteligentes', 'Entenda como funciona a tecnologia de registros distribuídos e crie seu primeiro Smart Contract.', 4, '1-Hash e Criptografia; 2-Rede Ethereum; 3-Introdução à Linguagem Solidity', 'Desenvolvedores de inovação e entusiastas de web3', 34, 3),
('img/mecanica_07.png', 'Mecânica de Motocicletas de Alta Cilindrada', 'Particularidades de motores de 2 e 4 cilindros, sincronismo e sistemas de injeção de motos esportivas.', 5, '1-Motores Multicilíndricos; 2-Sistemas de Transmissão por Corrente; 3-Ajuste de Suspensão', 'Mecânicos de motocicletas', 1, 3),
('img/design_06.png', 'Design de Embalagens e Facas de Corte', 'Crie embalagens funcionais, atraentes e prontas para a indústria gráfica e linhas de produção.', 4, '1-Estrutura e Volumetria; 2-Fechamento de Arquivo Gráfico; 3-Escolha de Papelaria', 'Designers de produto e profissionais gráficos', 42, 2),
('img/ti_31.png', 'Internet das Coisas (IoT) com Arduino', 'Monte circuitos inteligentes utilizando sensores de presença, temperatura e módulos de comunicação.', 5, '1-Eletrônica Básica; 2-C++ para Arduino; 3-Leitura de Sensores digitais/analógicos', 'Estudantes de engenharia e hobbistas de tecnologia', 35, 3),
('img/ti_32.png', 'TypeScript para Projetos Robustos', 'Evite erros em tempo de execução adicionando tipagem estática aos seus códigos JavaScript.', 4, '1-Tipos Básicos e Interfaces; 2-Generics; 3-Configuração de tsconfig', 'Desenvolvedores fullstack avançados', 7, 2),
('img/ti_33.png', 'SEO Técnico para Programadores', 'Otimize a arquitetura de sites, velocidade de carregamento e tags HTML para alcançar o topo do Google.', 5, '1-Core Web Vitals; 2-Dados Estruturados (JSON-LD); 3-Sitemaps e Robots.txt', 'Desenvolvedores web e profissionais de marketing digital', 101, 1),
('img/ti_34.png', 'Administração de Servidores Windows Server', 'Gerencie Active Directory, políticas de grupo (GPO), usuários e compartilhamento em redes corporativas.', 4, '1-Instalação do SO; 2-Configuração de Active Directory; 3-DNS e DHCP', 'Suporte técnico nível 2 e administradores de redes', 44, 3),
('img/ti_35.png', 'Big Data com Apache Spark', 'Processe volumes massivos de terabytes de dados de maneira distribuída e em alta velocidade.', 5, '1-Arquitetura Spark; 2-Dataframes com PySpark; 3-Otimização de Clusters', 'Engenheiros de dados e arquitetos cloud', 29, 3),
('img/ti_36.png', 'Automação de Processos com RPA (UiPath)', 'Elimine tarefas manuais repetitivas criando robôs de software para preencher formulários e ler relatórios.', 5, '1-Introdução ao Studio; 2-Seletores e Variáveis; 3-Leitura de PDFs e Excel', 'Analistas de processos e desenvolvedores de automação', 38, 3),
('img/ti_37.png', 'Testes Automatizados com Cypress', 'Garanta que suas aplicações web funcionem de ponta a ponta criando cenários de testes e2e ágeis.', 4, '1-Instalação do Cypress; 2-Criação de Asserções; 3-Simulação de Cliques e Rotas', 'Analistas de QA (Quality Assurance)', 24, 2),
('img/ti_38.png', 'Arquitetura de Microserviços na Prática', 'Divida sistemas monolíticos gigantescos em pequenos serviços independentes que se comunicam via APIs.', 5, '1-Monólitos vs Microserviços; 2-Padrão API Gateway; 3-Mensageria com RabbitMQ', 'Arquitetos de software e desenvolvedores sênior', 88, 3),
('img/mecanica_08.png', 'Soldagem Industrial (MIG/MAG e TIG)', 'Prática completa em processos de soldagem para estruturas de aço carbono, inox e alumínio.', 5, '1-Tipos de Gases de Proteção; 2-Regulagem de Corrente; 3-Cordão de Solda Perfeito', 'Soldadores, caldeireiros e metalúrgicos', 1, 3),
('img/design_07.png', 'Prototipagem de Aplicativos no Figma', 'Aprenda a desenhar telas interativas, criar componentes dinâmicos e simular fluxos reais de apps.', 5, '1-Auto Layout; 2-Design Systems Básicos; 3-Animações Inteligentes (Smart Animate)', 'Designers gráficos e entusiastas de UI', 25, 2),
('img/ti_39.png', 'Processamento de Linguagem Natural (PLN)', 'Crie algoritmos capazes de analisar sentimentos, traduzir textos e gerar resumos textuais automáticos.', 4, '1-Tokenização; 2-Stop Words; 3-Modelos de Linguagem Pré-treinados (NLTK)', 'Cientistas de dados e engenheiros de IA', 31, 3),
('img/ti_40.png', 'Monitoramento com Zabbix e Grafana', 'Crie painéis visuais fantásticos para acompanhar a saúde de servidores, roteadores e switches em tempo real.', 5, '1-Instalação de Agentes; 2-Configuração de Triggers; 3-Criação de Dashboards no Grafana', 'Analistas de infraestrutura e SysAdmins', 92, 3),
('img/ti_41.png', 'Desenvolvimento Low-Code com Microsoft Power Apps', 'Crie aplicativos corporativos internos úteis e rápidos escrevendo pouquíssimo código tradicional.', 4, '1-Fontes de Dados (SharePoint); 2-Fórmulas Power Fx; 3-Layouts Responsivos', 'Analistas de negócios e cidadãos desenvolvedores', 58, 2),
('img/ti_42.png', 'Segurança em Aplicações (AppSec)', 'Descubra como corrigir as 10 principais falhas de segurança em códigos web indicadas pelo ranking OWASP.', 5, '1-SQL Injection; 2-Cross-Site Scripting (XSS); 3-Falhas de Autenticação', 'Desenvolvedores web backend e analistas de segurança', 90, 2),
('img/ti_43.png', 'Data Warehousing e Modelagem Dimensional', 'Aprenda a estruturar bancos de dados focados especificamente em relatórios analíticos de alta performance.', 4, '1-Modelos Star Schema e Snowflake; 2-Tabelas Fato; 3-Tabelas Dimensão', 'Engenheiros de dados e profissionais de BI', 54, 3),
('img/ti_44.png', 'Desenvolvimento de Jogos 3D na Unreal Engine', 'Domine o sistema de Blueprints e física avançada para criar cenários e mecânicas realistas de jogos.', 5, '1-Navegação 3D; 2-Lógica com Blueprints; 3-Iluminação e Nanite', 'Game designers e desenvolvedores de jogos', 48, 3),
('img/ti_45.png', 'Infraestrutura como Código (IaC) com Terraform', 'Escreva códigos de script para subir servidores e infraestruturas completas de nuvem de forma automática.', 5, '1-Sintaxe HCL; 2-Gerenciamento de State; 3-Módulos Reutilizáveis', 'Engenheiros de DevOps e Nuvem', 91, 3),
('img/ti_46.png', 'Análise de Vulnerabilidades Corporativas', 'Aprenda a rodar ferramentas profissionais de escaneamento de segurança como Nessus e OpenVAS.', 4, '1-Configuração de Escaneamento; 2-Classificação de Riscos (CVSS); 3-Geração de Relatórios', 'Analistas de segurança SOC', 43, 2),
('img/mecanica_09.png', 'Ajustagem Mecânica de Bancada', 'Práticas essenciais de traçagem, limagem, furação e rosqueamento manual em peças metálicas.', 4, '1-Uso de Limas Industriais; 2-Cálculo de Furação; 3-Machos e Cossinetes de Rosca', 'Mecânicos de manutenção e montadores', 1, 3),
('img/design_08.png', 'Branding e Identidade Visual de Marcas', 'Aprenda o processo estratégico para criar marcas inesquecíveis, manuais de identidade e logotipos fortes.', 5, '1-Pesquisa e Briefing; 2-Geração de Conceitos; 3-Manual de Uso da Marca', 'Designers e agências de publicidade', 3, 3),
('img/ti_47.png', 'Desenvolvimento de Micro-Frontends', 'Divida páginas web complexas em pequenos módulos front-end escaláveis mantidos por times diferentes.', 4, '1-Module Federation; 2-Compartilhamento de Estado; 3-Arquitetura Base', 'Desenvolvedores Frontend Seniores', 16, 2),
('img/ti_48.png', 'Observabilidade de Sistemas com OpenTelemetry', 'Monitore logs, métricas e rastreamentos de requisições de ponta a ponta em sistemas distribuídos.', 5, '1-Conceitos de Rastreamento Tracing; 2-Métricas Instrumentadas; 3-Integração de Logs', 'SREs e Desenvolvedores de Infraestrutura', 92, 3),
('img/ti_49.png', 'Introdução ao Vue.js 3', 'Aprenda a construir interfaces web reativas e rápidas usando o framework progressivo Vue.', 4, '1-Composition API; 2-Diretivas (v-if, v-for); 3-Gerenciamento com Pinia', 'Desenvolvedores frontend', 16, 3),
('img/ti_50.png', 'FinTech: O Ecossistema de Tecnologia Bancária', 'Entenda as tecnologias por trás do Pix, Open Finance, gateways de pagamento e criptografia financeira.', 5, '1-Arquitetura de Pagamentos; 2-Regulamentações Bacen; 3-APIs de Transação', 'Profissionais do mercado financeiro e programadores', 79, 1),
('img/ti_51.png', 'Criação de Relatórios com Sasser (SAS)', 'Introdução à manipulação de grandes massas de dados utilizando programação em linguagem SAS estatística.', 4, '1-Data Steps; 2-Proc SQL; 3-Geração de Relatórios Estatísticos', 'Estatísticos e analistas de BI clássicos', 33, 3),
('img/ti_52.png', 'Visão Computacional na Prática com OpenCV', 'Desenvolva softwares capazes de ler placas de trânsito, rastrear objetos e reconhecer rostos em vídeos.', 5, '1-Filtros de Imagem; 2-Detecção de Bordas; 3-Uso de Modelos YOLO', 'Engenheiros de IA e desenvolvedores Python', 32, 3),
('img/ti_53.png', 'Administração de Clusters Kubernetes', 'Aprenda a gerenciar, escalar e orquestrar centenas de containers Docker em ambiente de produção.', 5, '1-Pods e Deployments; 2-Configuração de Services e Ingress; 3-Autoscaling', 'Engenheiros DevOps e SREs', 46, 3),
('img/ti_54.png', 'Introdução à Criptografia Assimétrica', 'Entenda as bases matemáticas e lógicas das chaves públicas, privadas e certificados SSL.', 4, '1-Algoritmo RSA; 2-Troca de Chaves Diffie-Hellman; 3-Assinaturas Digitais', 'Estudantes de computação e analistas de segurança', 45, 1),
('img/mecanica_10.png', 'Pneumática Industrial Básica', 'Criação e leitura de circuitos de ar comprimido, cilindros e válvulas direcionais de máquinas.', 5, '1-Compressores de Ar; 2-Válvulas 3/2 e 5/2 vias; 3-Montagem Física em Bancada', 'Mecânicos e técnicos de manutenção de fábricas', 1, 3),
('img/design_09.png', 'Fotografia de Produtos para E-commerce', 'Domine técnicas de iluminação em estúdio, fundo infinito e ângulos para valorizar produtos em sites de vendas.', 4, '1-Configuração de Softbox; 2-Uso de Câmera Manual; 3-Tratamento de Fundo', 'Fotógrafos iniciantes e lojistas digitais', 3, 2),
('img/ti_55.png', 'Desenvolvimento Android Nativo com Kotlin', 'Aprenda a linguagem oficial recomendada pela Google para fazer aplicativos Android modernos e estáveis.', 5, '1-Sintaxe Kotlin; 2-Jetpack Compose; 3-Integração de APIs de Mapas', 'Desenvolvedores mobile', 19, 3),
('img/ti_56.png', 'Arquitetura de Dados com Apache Kafka', 'Construa pipelines de dados em tempo real utilizando mensageria baseada em eventos (Streaming).', 5, '1-Tópicos e Partições; 2-Producers e Consumers; 3-Kafka Connect', 'Arquitetos de dados e engenheiros de Big Data', 53, 3),
('img/ti_57.png', 'Perícia Forense Digital em Dispositivos Móveis', 'Técnicas científicas de extração segura de dados e recuperação de evidências apagadas em smartphones.', 5, '1-Cadeia de Custódia; 2-Ferramentas de Extração Cellebrite; 3-Análise de Logs', 'Peritos judiciais e forças de segurança', 41, 3),
('img/ti_58.png', 'Metodologia Lean IT para Redução de Desperdícios', 'Aprenda a otimizar o fluxo de entregas de tecnologia eliminando gargalos de processos nas empresas.', 4, '1-Mapeamento de Valor; 2-Cultura Kaizen na TI; 3-Métricas de Eficiência', 'Coordenadores de equipes de suporte e gerentes', 99, 1),
('img/ti_59.png', 'Desenvolvimento Backend com Java e Spring Boot', 'A ferramenta corporativa mais usada no mundo: crie aplicações completas, seguras e prontas para o mercado.', 5, '1-Programação Orientada a Objetos; 2-Spring Data JPA; 3-Segurança com Spring Security', 'Estudantes de sistemas e programadores Java', 17, 3),
('img/ti_60.png', 'Fundamentos de Redes Sem Fio (Wi-Fi 6 e 7)', 'Mapeamento de canais, antenas, ondas de rádio, segurança WPA3 e eliminação de pontos cegos de rede.', 4, '1-Padrões 802.11; 2-Análise de Espectro; 3-Configuração de Access Points', 'Instaladores e administradores de redes de escritórios', 95, 2),
('img/mecanica_11.png', 'Mecânica de Empilhadeiras Elétricas', 'Manutenção específica em baterias tracionárias, motores elétricos de tração e sistemas hidráulicos de carga.', 5, '1-Baterias Tracionárias; 2-Contatoras e Módulos de Potência; 3-Bombas Hidráulicas', 'Técnicos de manutenção de centros de distribuição', 1, 3),
('img/design_10.png', 'Motion Design: Animação Gráfica no After Effects', 'Dê vida a ilustrações estáticas criando vídeos explicativos animados e vinhetas profissionais.', 5, '1-Trabalhando com Keyframes; 2-Curvas de Velocidade; 3-Efeitos de Transição', 'Designers gráficos e editores de vídeo', 3, 3),
('img/ti_61.png', 'Data Lakes na Nuvem com AWS Lake Formation', 'Aprenda a armazenar terabytes de dados brutos de forma barata e estruturada para análise posterior.', 4, '1-Conceito de Data Lake; 2-Catálogo de Dados AWS Glue; 3-Consultas com Amazon Athena', 'Engenheiros e arquitetos de dados', 55, 3),
('img/ti_62.png', 'Programação de Firmware em Linguagem C', 'Desenvolva códigos diretamente para microcontroladores industriais controlando o hardware na base.', 5, '1-Ponteiros e Memória; 2-Interrupções de Hardware; 3-Protocolos I2C e SPI', 'Engenheiros eletrônicos e de computação', 68, 3),
('img/ti_63.png', 'Introdução à Defesa Cibernética Governamental', 'Mapeamento de ameaças contra infraestruturas críticas nacionais, ataques estatais e táticas de resiliência.', 5, '1-Guerra Cibernética; 2-Proteção de Usinas e Distribuidoras; 3-Planos de Resposta Nacional', 'Profissionais seniores de segurança e defesa', 40, 1),
('img/ti_64.png', 'Desenvolvimento No-Code com Bubble.io', 'Crie plataformas completas da web, marketplaces e redes sociais sem digitar uma linha de programação.', 4, '1-Lógica de Workflows; 2-Banco de Dados do Bubble; 3-Responsividade Visual', 'Empreendedores digitais e criadores de protótipos rápidos', 58, 2),
('img/ti_65.png', 'Instalação e Fusão de Fibra Óptica', 'Prática em redes de telecomunicações FTTH, utilização de máquinas de fusão e testes com aparelho OTDR.', 5, '1-Tipos de Cabos Ópticos; 2-Preparação e Clivagem; 3-Uso de Fusora e Testes', 'Técnicos de provedores de internet', 70, 3),
('img/ti_66.png', 'Business Analyst: Análise de Negócios de TI', 'Aprenda a fazer a ponte perfeita de comunicação entre as necessidades da empresa e os desenvolvedores de sistemas.', 4, '1-Engenharia de Requisitos; 2-Modelagem BPMN; 3-Casos de Uso', 'Analistas, gestores e engenheiros de requisitos', 62, 3),
('img/ti_67.png', 'Geoprocessamento e Mapas Digitais com QGIS', 'Aprenda a criar mapas analíticos inteligentes, plotar pontos geográficos e processar imagens de satélite.', 5, '1-Sistemas de Coordenadas; 2-Vetores e Matrizes (Raster); 3-Criação de Mapas Temáticos', 'Geógrafos, engenheiros ambientais e analistas de logística', 82, 3),
('img/ti_68.png', 'Fundamentos de Bioinformática', 'Entenda como os computadores e algoritmos são usados para mapear sequências de DNA e genomas na saúde.', 5, '1-Bancos de Dados Biológicos; 2-Algoritmos de Alinhamento (BLAST); 3-Modelagem de Proteínas', 'Biólogos, cientistas e estudantes de biotecnologia', 83, 1),
('img/ti_69.png', 'Realidade Virtual (VR) com C# no ecossistema Meta Quest', 'Desenvolva experiências imersivas interativas de realidade virtual rastreando movimentos de mãos e controles.', 5, '1-Configuração de SDK Meta; 2-Interações de Pegar e Soltar; 3-Otimização para Dispositivos Móveis', 'Desenvolvedores Unity/Unreal', 84, 3),
('img/ti_70.png', 'Gestão de Serviços de TI baseada em ITIL 4', 'Alinhe a entrega de serviços tecnológicos com a estratégia e as reais necessidades de geração de valor da empresa.', 4, '1-Quatro Dimensões do Gerenciamento; 2-Sistema de Valor de Serviço; 3-Práticas de Incidente e Mudança', 'Coordenadores de suporte, gerentes de TI', 100, 3),
('img/mecanica_12.png', 'Hidráulica Industrial Avançada', 'Funcionamento e conserto de bombas de pistão, motores hidráulicos e blocos de comandos de maquinários.', 5, '1-Leitura de Esquemas Hidráulicos; 2-Cálculo de Vazão e Pressão; 3-Troca de Vedações e Gaxetas', 'Mecânicos pesados de tratores ou prensas', 1, 3),
('img/design_11.png', 'Modelagem 3D Industrial no SolidWorks', 'Desenvolva projetos de peças mecânicas tridimensionais detalhadas, engrenagens e montagens mecânicas funcionais.', 5, '1-Esboço 2D; 2-Recursos Extrusão e Revolução; 3-Análise de Estresse Mecânico básico', 'Projetistas industriais e engenheiros mecânicos', 3, 3),
('img/ti_71.png', 'Desenvolvimento Web Frontend Avançado com Next.js', 'Aprenda renderização do lado do servidor (SSR) para deixar suas aplicações JavaScript extremamente rápidas e amigáveis ao Google.', 5, '1-Server Components; 2-Roteamento baseado em App Router; 3-Otimização de Imagens e Fontes', 'Desenvolvedores React intermediários', 16, 3),
('img/ti_72.png', 'Segurança em Redes e Configuração de Firewalls', 'Aprenda a bloquear ataques na borda da internet corporativa configurando regras rígidas em firewalls PfSense.', 4, '1-Regras de NAT e Portas; 2-Configuração de VPNs OpenVPN; 3-Bloqueio de Sites e Squid', 'Analistas de infraestrutura e segurança de redes', 13, 3),
('img/ti_73.png', 'Inteligência de Negócios Avançada com ETL em Python', 'Esqueça ferramentas visuais caras; use códigos Python puros para conectar bancos, limpar tabelas gigantescas e salvar em arquivos em nuvem.', 5, '1-Conexão SQL Alchemy; 2-Tratamento de Dados Nulos com Pandas; 3-Agendamento via Apache Airflow', 'Engenheiros de dados e analistas seniores', 9, 3),
('img/ti_74.png', 'Introdução à Computação Quântica', 'Conheça o futuro da computação descobrindo conceitos inovadores de Bits Quânticos (Qubits), superposição e emaranhamento.', 4, '1-O que são Qubits; 2-Portas Lógicas Quânticas; 3-Execução de Algoritmos no IBM Quantum Experience', 'Estudantes de física, matemática e cientistas de computação', 33, 1),
('img/ti_75.png', 'Testes Unitários com Jest em Aplicações Node.js', 'Evite que novas atualizações quebrem seu código antigo criando baterias automáticas de testes de funções.', 5, '1-Conceito de Mocks e Spies; 2-Testes de Rotas Express; 3-Métricas de Cobertura de Código (Coverage)', 'Desenvolvedores backend JavaScript', 24, 2),
('img/ti_76.png', 'Administração de Bancos de Dados PostgreSQL', 'Instalação avançada, configuração de backups automáticos (pg_dump), tuning de consultas lentas e replicação de dados.', 5, '1-Configurações de postgresql.conf; 2-Análise de Queries com EXPLAIN; 3-Estratégias de Backup', 'DBAs (Database Administrators)', 14, 3),
('img/ti_77.png', 'Criação de E-commerce na Plataforma Shopify', 'Aprenda a configurar uma loja de vendas online completa, integrar meios de pagamento e gerenciar fretes do zero.', 4, '1-Escolha de Temas; 2-Configuração de Checkout; 3-Gestão de Produtos e Cupons', 'Empreendedores e analistas de marketing', 76, 2),
('img/ti_78.png', 'Arquitetura Serverless na AWS', 'Crie backends modernos que rodam sem a necessidade de gerenciar servidores físicos, pagando estritamente pelo uso.', 5, '1-Funções AWS Lambda; 2-Banco NoSQL DynamoDB; 3-API Gateway AWS', 'Arquitetos de soluções em nuvem', 49, 3);

SELECT id,nome FROM curso WHERE estrelas < 5;


/* INSERIR CURSOS (Mais 100 registros com avaliações < 4 estrelas) */
INSERT INTO curso(banner, nome, descricao, estrelas, mini_ementa, publico_alvo, fk_area_id, fk_categoria_id) VALUES
('img/ti_79.png', 'Introdução Rápida ao PHP 5', 'Conceitos básicos de PHP voltados para servidores legados e páginas antigas.', 2, '1-Sintaxe Básica; 2-Formulários; 3-Conexão MySQL antiga', 'Desenvolvedores iniciantes', 17, 1),
('img/mecanica_13.png', 'Introdução à Mecânica de Bicicletas', 'Aprenda a regular marchas e freios simples de bicicletas de passeio.', 3, '1-Tipos de Freio; 2-Regulagem de Câmbio; 3-Remendo de Pneus', 'Ciclistas urbanos e hobbistas', 1, 1),
('img/design_12.png', 'Técnicas Básicas de Desenho à Mão', 'Primeiros passos para traços geométricos e sombreamento simples em papel.', 3, '1-Perspectiva Linear; 2-Luz e Sombra; 3-Desenho de Objetos', 'Interessados em artes visuais', 3, 2),
('img/ti_80.png', 'Configuração de Modems Domésticos', 'Passo a passo para alterar a senha do Wi-Fi e configurar redes residenciais.', 2, '1-Acesso ao IP do Roteador; 2-Alteração de SSID; 3-Criptografia WEP', 'Usuários domésticos com dificuldades técnicas', 13, 1),
('img/ti_81.png', 'Fundamentos Básicos de Cobol', 'Uma visão superficial sobre a estrutura de dados de uma das linguagens mais antigas comercialmente.', 3, '1-Divisions do Cobol; 2-Variáveis e PIC; 3-Leitura de Arquivos', 'Programadores curiosos sobre sistemas legados', 60, 3),
('img/ti_82.png', 'Manipulação de Arquivos XML em Java', 'Aprenda a ler e escrever arquivos de configuração estruturados no formato XML.', 2, '1-Estrutura XML; 2-Parser DOM; 3-Parser SAX em Java', 'Desenvolvedores Java juniores', 17, 2),
('img/ti_83.png', 'Criação de Páginas com Flash e ActionScript', 'Conheça os conceitos de animações interativas baseadas na antiga tecnologia Adobe Flash.', 1, '1-Linha do Tempo; 2-Keyframes; 3-Introdução ao ActionScript 2.0', 'Estudantes de história da tecnologia web', 48, 3),
('img/ti_84.png', 'Introdução ao jQuery em Sites Estáticos', 'Simplifique a manipulação do DOM e crie efeitos visuais simples em páginas antigas.', 3, '1-Seletores jQuery; 2-Efeitos Fade e Slide; 3-Requisições AJAX básicas', 'Desenvolvedores de sites institucionais', 16, 2),
('img/mecanica_14.png', 'Manutenção de Ferramentas Manuais', 'Boas práticas para lubrificação e remoção de ferrugem em alicates e chaves de fenda.', 2, '1-Tipos de Desengripantes; 2-Afiação de Alicates; 3-Armazenamento correto', 'Auxiliares de oficina e hobbistas', 1, 1),
('img/design_13.png', 'Criação de Cartões de Visita no CorelDraw', 'Aprenda a montar a estrutura básica de um cartão de visitas para impressão local.', 3, '1-Configuração de Sangria; 2-Alinhamento de Textos; 3-Exportação em PDF/X-1a', 'Pequenos empreendedores e designers gráficos iniciantes', 3, 2),
('img/ti_85.png', 'Noções de Redes de Computadores Lan House', 'Como estruturar uma rede local simples para jogos integrados e compartilhamento de arquivos.', 2, '1-Cabos Par Trançado; 2-Clivagem RJ45; 3-Configuração de Grupos de Trabalho', 'Interessados em infraestrutura de rede básica', 13, 2),
('img/ti_86.png', 'Instalação Prática do Windows XP', 'Passo a passo detalhado para formatação e instalação de sistemas operacionais em computadores antigos.', 1, '1-Configuração de Boot na BIOS; 2-Particionamento FAT32; 3-Instalação de Drivers', 'Técnicos de manutenção de museus de informática', 59, 2),
('img/ti_87.png', 'Introdução ao Pascal para Algoritmos', 'Utilize a linguagem Pascal como ferramenta de estudo para os primeiros passos na lógica.', 2, '1-Estrutura Básica de um Programa; 2-Comandos Readln e Writeln; 3-Arrays unidimensionais', 'Estudantes de graduação iniciantes', 60, 3),
('img/ti_88.png', 'Noções Básicas de Montagem de Computadores', 'Identificação visual dos principais componentes internos de um gabinete de desktop.', 3, '1-O que é a Placa-Mãe; 2-Encaixe de Memória RAM; 3-Fixação da Fonte de Alimentação', 'Usuários leigos de tecnologia', 69, 1),
('img/mecanica_15.png', 'Troca de Palhetas de Parabrisa', 'Aprenda a identificar o desgaste e realizar a substituição correta das palhetas limpadoras.', 2, '1-Tipos de Encaixe de Palheta; 2-Identificação de Borracha Ressecada; 3-Cuidados no Vidro', 'Motoristas e frentistas', 1, 1),
('img/design_14.png', 'Introdução à Pintura Guache', 'Conheça o comportamento da tinta guache escolar sobre folhas de papel comum.', 3, '1-Mistura de Cores Primárias; 2-Uso de Pincéis Redondos; 3-Secagem da Tinta', 'Pessoas em busca de um hobby terapêutico', 3, 1),
('img/ti_89.png', 'Uso Prático de Disquetes e Mídias Ópticas', 'Como armazenar dados com segurança utilizando disquetes de 3.5 polegadas, CDs e DVDs.', 1, '1-Capacidade de Armazenamento; 2-Gravação de ISOs no Nero; 3-Cuidados contra Riscos', 'Curiosos e colecionadores de mídias antigas', 97, 1),
('img/ti_90.png', 'Conceitos Iniciais de Web Design com Tabelas', 'Aprenda a estruturar o layout de uma página antiga de internet utilizando tags de tabela.', 1, '1-Tags Table, TR e TD; 2-Uso de Atributos Border e Cellpadding; 3-Alinhamento de Imagens', 'Estudantes de evolução do desenvolvimento web', 16, 2),
('img/ti_91.png', 'Introdução ao Scripting Batch no Windows', 'Crie arquivos .bat simples para automatizar a abertura de programas e pastas no seu dia a dia.', 3, '1-Comandos Echo e Pause; 2-Estrutura de Menu Simples; 3-Agendamento de Tarefas básico', 'Usuários do sistema Windows', 59, 1),
('img/ti_92.png', 'Instalação de Jogos no Computador', 'Aprenda a baixar e realizar o processo de instalação passo a passo de jogos através de launchers.', 3, '1-Requisitos Mínimos de Sistema; 2-Criação de Conta em Plataformas; 3-Atualização de Drivers', 'Público infanto-juvenil e pais', 48, 1),
('img/mecanica_16.png', 'Introdução ao Uso de Macaco Automotivo', 'Regras de segurança essenciais para suspender um carro e fazer a substituição do estepe.', 3, '1-Pontos de Apoio no Chassi; 2-Uso de Chave de Roda; 3-Sinalização com Triângulo', 'Condutores recém-habilitados', 1, 1),
('img/design_15.png', 'Noções de Fotografia com Celular Antigo', 'Dicas de enquadramento utilizando câmeras de baixa resolução de smartphones antigos.', 2, '1-Regra dos Terços; 2-Aproveitando a Luz do Sol; 3-Limpeza da Lente', 'Público geral', 43, 1),
('img/ti_93.png', 'Criação de Animações GIF Simples', 'Utilize ferramentas online para juntar sequências de imagens e criar banners animados em formato GIF.', 3, '1-Taxa de Quadros por Segundo; 2-Otimização de Peso do Arquivo; 3-Loop Contínuo', 'Iniciantes em mídias digitais', 3, 2),
('img/ti_94.png', 'Fundamentos de Sub-redes IPv4 Simples', 'Introdução teórica sobre como quebrar uma rede local em duas redes menores utilizando máscaras padrão.', 3, '1-Classes de IP (A, B, C); 2-Máscara de Rede /24; 3-Cálculo de IPs Disponíveis', 'Estudantes de suporte técnico', 13, 2),
('img/ti_95.png', 'Introdução Básica ao Apache Subversion (SVN)', 'Entenda os conceitos de controle de versão centralizado utilizando o SVN antes da popularização do Git.', 2, '1-Conceito de Checkout; 2-Operações de Commit e Update; 3-Gerenciamento de Conflitos básicos', 'Desenvolvedores de empresas com sistemas antigos', 7, 2),
('img/ti_96.png', 'Noções de Edição de Texto no Bloco de Notas', 'Como escrever, salvar e organizar arquivos de texto puro sem formatação avançada.', 2, '1-Criação de Arquivos .txt; 2-Atalho Localizar e Substituir; 3-Quebra Automática de Linha', 'Idosos e iniciantes na informática', 97, 1),
('img/ti_97.png', 'Primeiros Passos com o Navegador Internet Explorer', 'Conheça a interface e saiba como navegar, favoritar páginas e limpar o histórico de navegação.', 1, '1-Barra de Endereços; 2-Gerenciamento de Favoritos; 3-Exclusão de Cookies', 'Pessoas em processo de alfabetização digital básica', 97, 1),
('img/mecanica_17.png', 'Identificação Visual de Motores 4 Tempos', 'Assista a vídeos explicativos e aprenda a diferenciar um motor de moto de um motor de carro.', 3, '1-Componentes Externos; 2-Diferença de Tamanho; 3-Combustíveis Utilizados', 'Curiosos da área automotiva', 1, 1),
('img/design_16.png', 'Combinação Básica de Cores para Roupas', 'Dicas rápidas de como utilizar o círculo cromático para combinar peças de roupas comuns no cotidiano.', 3, '1-Cores Complementares; 2-Looks Monocromáticos; 3-Uso de Cores Neutras', 'Público geral interessado em moda', 45, 1),
('img/ti_98.png', 'Introdução ao MS-DOS e Comandos Primitivos', 'Aprenda a navegar por pastas e listar arquivos utilizando o prompt de comando preto clássico.', 2, '1-Comandos CD e DIR; 2-Criação de Pastas com MD; 3-Cópia de Arquivos com COPY', 'Entusiastas de sistemas operacionais retrô', 59, 2),
('img/ti_99.png', 'Noções de Design de Interfaces no Paint', 'Como utilizar as formas geométricas e o balde de tinta do Microsoft Paint para desenhar esboços de sites.', 1, '1-Ferramenta Linha e Retângulo; 2-Paleta de Cores Padrão; 3-Salvando em formato .BMP', 'Iniciantes em informática e crianças', 3, 1),
('img/ti_100.png', 'Envio de E-mails com Anexos no Outlook Web', 'Passo a passo focado em como redigir uma mensagem, inserir destinatários e anexar arquivos PDFs.', 3, '1-Campos Para, CC e CCO; 2-Inclusão de Assunto; 3-Anexando Arquivos do Computador', 'Profissionais de escritórios em nível inicial', 97, 1),
('img/ti_101.png', 'Introdução ao SQL injection Teórico', 'Compreenda conceitualmente como falhas em formulários web permitem a injeção de scripts maliciosos.', 3, '1-O que são Formulários sem Validação; 2-Conceito de Aspas Simples no Login; 3-Impactos nos Dados', 'Desenvolvedores web juniores', 90, 1),
('img/ti_102.png', 'Conceito de Nuvem Pública para Usuários Leigos', 'Uma explicação simples e sem termos técnicos sobre onde ficam salvas as fotos do celular.', 3, '1-Onde ficam os Arquivos; 2-Acessando por outros Aparelhos; 3-Segurança de Senhas', 'Pessoas com pouco contato com tecnologia', 12, 1),
('img/mecanica_18.png', 'Cuidados Básicos com a Bateria do Carro', 'Como evitar o esgotamento precoce da bateria e identificar sinais de falha na partida.', 3, '1-Esquecer Luzes Acesas; 2-Sinais de Oxidação nos Polos (Zinabre); 3-Uso do Voltímetro', 'Proprietários de automóveis', 1, 1),
('img/design_17.png', 'Princípios de Tipografia Comercial', 'Conheça a diferença entre fontes com serifa e sem serifa e onde utilizá-las de forma legível.', 3, '1-Fontes Serifadas vs Não Serifadas; 2-Tamanho de Fonte para Títulos; 3-Alinhamento de Textos', 'Estudantes de publicidade', 3, 2),
('img/ti_103.png', 'Introdução ao CSS Inline em Elementos HTML', 'Descubra como alterar a cor e o tamanho de um texto aplicando estilos diretamente na tag HTML.', 2, '1-O Atributo Style; 2-Propriedade Color; 3-Propriedade Font-Size', 'Iniciantes em programação web', 16, 1),
('img/ti_104.png', 'Noções de Compactação de Arquivos com WinRAR', 'Como juntar uma pasta cheia de arquivos em um único arquivo compactado .rar ou .zip para envio.', 3, '1-Instalação do WinRAR; 2-Opção Adicionar para o Arquivo; 3-Extração de Arquivos recebidos', 'Profissionais administrativos', 97, 1),
('img/ti_105.png', 'Configuração de Layout de Teclado no Windows', 'Como resolver o problema de acentuação desconfigurada alterando o idioma para ABNT2.', 2, '1-Painel de Controle de Idiomas; 2-Diferença entre Teclado Americano e ABNT; 3-Testes no Bloco de Notas', 'Usuários de computadores em geral', 59, 1),
('img/ti_106.png', 'Introdução à Linguagem de Programação Logo', 'Movimente a clássica tartaruga na tela através de comandos de texto para aprender geometria.', 2, '1-Comandos Para Frente e Para Trás; 2-Mudança de Ângulos; 3-Criação de Quadrados e Círculos', 'Crianças e educadores infantis', 77, 3),
('img/mecanica_19.png', 'Limpeza Externa de Motores Automotivos', 'Dicas de como remover o excesso de graxa acumulada na carcaça do motor sem danificar partes elétricas.', 2, '1-Proteção do Alternador e Bobinas; 2-Uso de Desengraxantes Biodegradáveis; 3-Enxágue sem Pressão', 'Entusiastas de estética automotiva', 1, 2),
('img/design_18.png', 'Noções de Recorte de Imagens com Tesoura', 'Exercícios manuais de colagem e recorte utilizando revistas velhas para desenvolvimento de cartazes.', 3, '1-Tipos de Papel; 2-Uso de Cola Bastão; 3-Composição Visual Espacial', 'Professores da educação infantil', 3, 1),
('img/ti_107.png', 'Conceito Primitivo de Algoritmos no Papel', 'Aprenda a estruturar o passo a passo lógico para escovar os dentes ou trocar uma lâmpada em fluxogramas.', 3, '1-O que é uma Sequência Lógica; 2-Símbolos de Início e Fim; 3-Tomadas de Decisão Simples', 'Estudantes de lógica iniciantes', 7, 1),
('img/ti_108.png', 'Instalação de Extensões no Navegador Chrome', 'Como buscar e adicionar pequenas ferramentas utilitárias diretamente no seu navegador de internet.', 3, '1-Acessando a Web Store; 2-Verificação de Avaliações; 3-Ativação e Desativação de Extensões', 'Usuários frequentes de internet', 97, 1),
('img/ti_109.png', 'Introdução Básica ao Visual Basic 6', 'Uma visão rápida sobre a criação de formulários desktop arrastando componentes na tela.', 2, '1-Criação de Janelas (Forms); 2-Componentes Caixa de Texto e Botão; 3-Evento de Clique simples', 'Programadores de softwares antigos', 60, 3),
('img/ti_110.png', 'Como Evitar Vírus ao Baixar Arquivos', 'Dicas fundamentais sobre quais links clicar e como identificar botões de download falsos em sites.', 3, '1-Identificação de Anúncios Enganosos; 2-Formatos de Arquivos Perigosos (.exe); 3-Uso de Antivírus', 'Usuários leigos de internet', 10, 1),
('img/mecanica_20.png', 'Verificação de Nível de Água do Radiador', 'Procedimento correto para checar o nível do reservatório de expansão com segurança.', 3, '1-Perigos de Abrir a Tampa com o Motor Quente; 2-Marcas de Mínimo e Máximo; 3-Uso de Aditivos', 'Donos de veículos', 1, 1),
('img/design_19.png', 'Introdução ao Desenho de Letras à Mão (Lettering)', 'Desenhe palavras decorativas utilizando canetas comuns e réguas em folhas pautadas.', 3, '1-Desenho de Letras de Forma; 2-Adicionando Sombras e Bordas; 3-Preenchimento com Cores', 'Hobbistas e estudantes de artes', 3, 2),
('img/ti_111.png', 'Criação de Tabelas Simples no Microsoft Word', 'Como organizar informações em linhas e colunas estruturadas dentro de um documento de texto.', 3, '1-Inserindo Tabelas; 2-Mesclar Células; 3-Alterar Cores de Bordas básicas', 'Auxiliares de escritório', 97, 2),
('img/ti_112.png', 'Noções de Armazenamento em Pendrives', 'Aprenda a copiar arquivos do seu computador para uma memória portátil e ejetar o dispositivo com segurança.', 3, '1-Capacidade de Pendrives; 2-Comandos Copiar e Colar; 3-Importância de Remover com Segurança', 'Público geral iniciante', 97, 1),
('img/ti_113.png', 'Introdução ao Protocolo FTP Antigo', 'Transfira arquivos do seu computador local diretamente para um servidor web usando o FileZilla.', 2, '1-Configuração de Host, Usuário e Porta; 2-Pastas Locais vs Pastas Remotas; 3-Upload de Arquivos .html', 'Administradores de sites antigos', 13, 2),
('img/ti_114.png', 'Criação de Slides Simples sem Animação', 'Monte apresentações corporativas diretas focando estritamente em textos e imagens fixas.', 3, '1-Criação de Novos Slides; 2-Caixas de Texto; 3-Inserção de Imagens Locais', 'Estudantes e profissionais em nível básico', 97, 2),
('img/mecanica_21.png', 'Noções de Lubrificação de Fechaduras', 'Como aplicar grafite em pó para destravar chaves imperfeitas e travas travadas de portas domésticas.', 3, '1-Diferença entre Óleo e Grafite em Pó; 2-Aplicação correta no Tambor; 3-Limpeza de Chaves', 'Público geral', 1, 1),
('img/design_22.png', 'Combinações Básicas de Cores de Tintas de Parede', 'Idéias de como misturar corantes simples em latas de tinta branca para obter tons pastéis.', 2, '1-Uso de Bisnagas de Corante; 2-Mistura Homogênea; 3-Testes de Cor na Parede', 'Pintores iniciantes e donos de casa', 3, 1),
('img/ti_115.png', 'Configuração de Conta de E-mail no Celular', 'Aprenda a sincronizar seu e-mail profissional ou pessoal no aplicativo padrão do smartphone.', 3, '1-Inserção de E-mail e Senha; 2-Diferença Básica entre IMAP e POP3; 3-Sincronização de Contatos', 'Usuários de smartphones', 97, 1),
('img/ti_116.png', 'Conceito Primitivo de Inteligência Artificial Teórica', 'Uma breve introdução sobre como os computadores simulam tomadas de decisões com base em regras se-então fixas.', 2, '1-Sistemas Baseados em Regras; 2-Árvores de Decisão Simples; 3-Limitações de Algoritmos Antigos', 'Curiosos sobre tecnologia', 11, 1),
('img/ti_117.png', 'Organização de Pastas no Windows', 'Dicas práticas de como criar, renomear e arrastar arquivos para manter sua área de trabalho limpa.', 3, '1-Criação de Estrutura de Pastas; 2-Renomear Arquivos em Massa; 3-Uso da Lixeira', 'Iniciantes em informática', 97, 1),
('img/ti_118.png', 'Introdução ao JavaScript com Alert e Prompt', 'Crie scripts simples que exibem caixas de mensagens interativas de aviso no navegador do usuário.', 2, '1-Função Alert(); 2-Capturando Dados com Prompt(); 3-Concatenação de Mensagens', 'Estudantes de programação iniciantes', 16, 1),
('img/mecanica_23.png', 'Noções de Calibragem de Pneus de Carro', 'Como ler a etiqueta de pressão recomendada e operar a máquina de calibragem do posto de combustível.', 3, '1-Leitura de PSI recomendada; 2-Funcionamento do Calibrador Digital; 3-Verificação do Estepe', 'Motoristas iniciantes', 1, 1),
('img/design_23.png', 'Criação de Banners Simples para Redes Sociais no Canva', 'Aprenda o básico de arrastar elementos e alterar textos em modelos prontos na internet.', 3, '1-Escolha de Modelos; 2-Alteração de Textos; 3-Exportação em formato JPEG', 'Pequenos comerciantes e autônomos', 3, 2),
('img/ti_119.png', 'Noções de Backup em Mídias Externas Físicas', 'Aprenda a importância de copiar seus documentos importantes para um HD Externo periodicamente.', 3, '1-O que é redundância de dados; 2-Cópia Manual de Arquivos; 3-Armazenamento Seguro do HD', 'Profissionais autônomos e estudantes', 97, 2),
('img/ti_120.png', 'Introdução à Linguagem HTML Pura sem Estilos', 'Crie um documento de texto simples estruturado apenas com títulos, parágrafos e quebras de linha.', 2, '1-Tags H1, H2 e P; 2-Tag de Quebra de Linha BR; 3-Criação de Links Simples com a tag A', 'Iniciantes absolutos em desenvolvimento web', 16, 1),
('img/ti_121.png', 'Como Tirar Print da Tela do Computador', 'Aprenda a capturar imagens da sua tela utilizando a tecla Print Screen e salvá-las de forma rápida.', 3, '1-A Tecla Print Screen; 2-Uso da Ferramenta de Captura do Windows; 3-Colando Imagens no Paint', 'Usuários de computadores em geral', 97, 1),
('img/ti_122.png', 'Configuração de Impressoras Locais USB', 'Passo a passo para conectar o cabo e realizar a instalação dos drivers básicos para funcionamento da impressora.', 2, '1-Conexão do Cabo USB; 2-Download do Driver no Site Oficial; 3-Página de Teste de Impressão', 'Funcionários de escritório e usuários domésticos', 69, 1),
('img/mecanica_24.png', 'Identificação de Ruídos na Suspensão do Carro', 'Dicas teóricas para ajudar a descrever barulhos estranhos ao mecânico profissional na hora da revisão.', 3, '1-Ruídos Secos ao Passar em Buracos; 2-Barulhos de Rangido ao Virar o Volante; 3-Importância do Diagnóstico Técnico', 'Proprietários de veículos', 1, 1),
('img/design_24.png', 'Desenho de Formas Geométricas Básicas com Régua', 'Treinamento de traços firmes e precisão milimétrica desenhando quadrados, triângulos e retângulos.', 2, '1-Uso Correto do Esquadro; 2-Medições em Centímetros e Milímetros; 3-Traçados de Linhas Paralelas', 'Estudantes de desenho técnico iniciantes', 3, 1),
('img/ti_123.png', 'Introdução ao Navegador Mozilla Firefox', 'Conheça uma alternativa de navegador de internet rápido, privativo e saiba personalizar sua barra de ferramentas.', 3, '1-Interface do Firefox; 2-Abas e Janelas Privativas; 3-Configuração de Proteção contra Rastreamento', 'Usuários de internet', 97, 1),
('img/ti_124.png', 'Noções de Fórmulas de Soma e Subtração no Excel', 'Aprenda a fazer contas automáticas simples utilizando os operadores básicos de matemática em células.', 3, '1-Iniciando Fórmulas com o Sinal de Igual; 2-Uso da Função SOMA; 3-Operador de Subtração (-) básico', 'Iniciantes em planilhas eletrônicas', 28, 1),
('img/ti_125.png', 'Como Limpar a Tela e o Teclado do Computador', 'Boas práticas e produtos recomendados para higienização externa correta de periféricos de informática.', 3, '1-Uso de Álcool Isopropílico; 2-Panos de Microfibra; 3-Remoção de Poeira com Pincéis', 'Usuários de tecnologia em geral', 69, 1),
('img/ti_126.png', 'Noções do Protocolo HTTP Simples Sem Criptografia', 'Entenda teoricamente a diferença visual entre sites que começam com http e sites seguros que começam com https.', 2, '1-O que significa HTTP; 2-A Ausência do Cadeado de Segurança; 3-Riscos de Digitar Senhas em Páginas Antigas', 'Usuários frequentes de internet', 13, 1),
('img/mecanica_25.png', 'Noções de Troca de Pneu de Estepe Fino', 'Particularidades, limites de velocidade e cuidados de segurança ao rodar temporariamente com estepes do tipo emergencial.', 3, '1-Diferença de Tamanho do Pneu Emergencial; 2-Limite de Velocidade Máxima de 80km/h; 3-Substituição Urgente em Oficina', 'Motoristas e proprietários de carros novos', 1, 1),
('img/design_25.png', 'Noções de Edição Básica de Fotos Grátis no Celular', 'Como aplicar filtros automáticos e ajustar o brilho e contraste de fotos usando aplicativos gratuitos nativos.', 3, '1-Ferramenta Cortar e Girar; 2-Ajuste de Brilho, Sombra e Contraste; 3-Aplicação de Filtros de Cor de Fábrica', 'Público geral interessado em fotografia casual', 43, 1),
('img/ti_127.png', 'Como Alterar o Papel de Parede do Computador', 'Personalize a tela de fundo da sua área de trabalho utilizando imagens baixadas ou fotos pessoais salvas.', 3, '1-Acessando as Configurações de Personalização; 2-Escolha de Imagens Padrão; 3-Definição de Imagem Centralizada ou Esticada', 'Iniciantes e crianças em processo de aprendizado digital', 97, 1),
('img/ti_128.png', 'Noções de Listas Marcadas e Numeradas no HTML', 'Crie estruturas organizadas de tópicos e listas sequenciais utilizando tags nativas básicas.', 2, '1-A Tag UL para Listas com Marcadores; 2-A Tag OL para Listas Numeradas; 3-A Tag LI para Itens da Lista', 'Estudantes de programação web inicial', 16, 1),
('img/ti_129.png', 'Como Conectar Caixas de Som Bluetooth no PC', 'Passo a passo simples para ativar o pareamento e transmitir o áudio do seu computador sem fios.', 3, '1-Ativação do Bluetooth no Windows; 2-Colocando a Caixa de Som em Modo de Pareamento; 3-Seleção de Dispositivo de Saída de Áudio', 'Usuários de computadores domésticos', 97, 1),
('img/ti_130.png', 'Noções Básicas de Varredura Completa com Antivírus', 'Aprenda a agendar e rodar verificações de arquivos em busca de ameaças no seu sistema operacional.', 3, '1-Abrindo a Central de Segurança do Windows; 2-Diferença entre Verificação Rápida e Completa; 3-Ações de Quarentena e Exclusão', 'Colaboradores de empresas e usuários domésticos', 10, 1),
('img/mecanica_26.png', 'Identificação de Vazamentos de Fluidos Sob o Carro', 'Aprenda a observar manchas no chão da garagem para identificar se o vazamento é de óleo, água ou fluido de freio.', 3, '1-Manchas Escuras e Viscosas (Óleo de Motor); 2-Líquidos Coloridos com Cheiro Adocicado (Aditivo de Radiador); 3-Verificação Visual Urgente', 'Proprietários de automóveis em geral', 1, 1),
('img/design_26.png', 'Introdução Teórica ao Desenho com Carvão', 'Conheça as propriedades físicas do carvão vegetal para esboços artísticos e sombreamento expressivo rápido.', 2, '1-Tipos de Carvão Artístico; 2-Uso do Limpa-Tipos para Apagar; 3-Aplicação de Spray Fixador de Arte', 'Estudantes de artes visuais iniciantes', 3, 1),
('img/ti_131.png', 'Como Aumentar o Tamanho da Fonte no Computador', 'Dicas de acessibilidade digital para ampliar letras e ícones na tela facilitando a leitura de usuários com dificuldades visuais.', 3, '1-Acessando Configurações de Facilidade de Acesso; 2-Ajuste de Escala e Layout da Tela; 3-Uso Prático da Lupa Virtual', 'Idosos e profissionais de suporte ao usuário', 97, 1),
('img/ti_132.png', 'Noções de Links Internos com Âncoras no HTML', 'Crie sumários dinâmicos que levam o usuário para diferentes seções da mesma página da web.', 2, '1-Uso do Atributo ID em Elementos; 2-Criação de Links com o caractere Cerquilha (#); 3-Navegação na Própria Página', 'Desenvolvedores web em início de carreira', 16, 1),
('img/ti_133.png', 'Como Limpar o Histórico do Navegador Edge', 'Mantenha sua privacidade protegida limpando dados de navegação recentes, pesquisas e cookies armazenados.', 3, '1-Atalho de Teclado Ctrl+Shift+Del; 2-Seleção de Intervalo de Tempo para Limpeza; 3-Exclusão de Dados de Formulários', 'Usuários do navegador Microsoft Edge', 97, 1),
('img/ti_134.png', 'Noções de Margens e Espaçamentos Básicos no Word', 'Como ajustar as réguas laterais e definir o espaçamento entre linhas padrão para documentos escolares simples.', 3, '1-Configuração de Margens Padrão (Superior, Inferior, Esquerda, Direita); 2-Espaçamento entre Linhas 1,5; 3-Alinhamento de Texto Justificado', 'Estudantes de ensino fundamental e médio', 97, 1),
('img/mecanica_27.png', 'Cuidados Básicos com a Corrente da Motocicleta', 'Dicas simples de inspeção visual do tensionamento e lubrificação básica da transmissão por corrente.', 3, '1-Verificação de Folga da Corrente; 2-Uso de Óleo ou Spray Lubrificante Próprio; 3-Identificação de Desgaste nos Dentes da Coroa', 'Motociclistas e entregadores iniciantes', 1, 1),
('img/design_27.png', 'Noções de Recorte Simples de Fotos no Computador', 'Como utilizar ferramentas nativas gratuitas para cortar bordas indesejadas de fotos digitais rapidamente.', 3, '1-Abrindo Imagens no Aplicativo Fotos do Windows; 2-Ferramenta Cortar e Proporções Fixas; 3-Salvando uma Cópia Editada', 'Usuários domésticos e criadores de conteúdo amadores', 3, 1),
('img/ti_135.png', 'Como Organizar Ícones na Área de Trabalho', 'Aprenda a classificar seus atalhos por nome, tipo ou data para otimizar a visualização na tela inicial.', 3, '1-Clique com o Botão Direito na Área de Trabalho; 2-Opção Classificar por Tipo de Item; 3-Ativação do Alinhamento Automático à Grade', 'Iniciantes em informática geral', 97, 1),
('img/ti_136.png', 'Noções Básicas de Estilos de Texto CSS Em Cascata', 'Mude a cor de fundo de uma página e defina uma fonte padrão para todo o site usando regras CSS globais.', 2, '1-A Tag Style no Cabeçalho HTML; 2-Seletor Body para Estilos Globais; 3-Propriedades Background-Color e Font-Family', 'Estudantes de programação frontend iniciantes', 16, 1),
('img/ti_137.png', 'Como Desinstalar Programas Inúteis do PC', 'Aprenda a remover softwares instalados que estão ocupando espaço e deixando seu computador lento.', 3, '1-Acessando o Painel de Controle Adicionar ou Remover Programas; 2-Seleção do Software na Lista; 3-Processo de Desinstalação Segura', 'Usuários domésticos e técnicos de suporte iniciantes', 59, 2),
('img/ti_138.png', 'Noções Práticas de Verificação de Espaço em Disco', 'Saiba como conferir quantos gigabytes livres ainda restam no HD ou SSD do seu computador de forma rápida.', 3, '1-Abrindo o Explorador de Arquivos (Este Computador); 2-Verificação Visual da Barra de Espaço; 3-Acessando as Propriedades do Disco C:', 'Profissionais e usuários comuns de informática', 59, 1),
('img/mecanica_28.png', 'Identificação Visual do Desgaste de Pneus (TWI)', 'Aprenda a localizar o indicador de desgaste de borracha para saber o momento exato de substituir o pneu antes de ficar careca.', 3, '1-O que significa a Sigla TWI; 2-Localização da Marca nos Sulcos do Pneu; 3-Importância de Evitar Multas de Trânsito', 'Motoristas de automóveis e frentistas', 1, 1),
('img/design_28.png', 'Noções Básicas de Origami: Dobraduras Simples', 'Passo a passo visual para criar figuras de papel fáceis como barcos e aviões sem uso de tesoura ou cola.', 3, '1-Escolha do Papel Quadrado; 2-Dobra Diagonal e Vincos Precisos; 3-Criação de Modelos Clássicos para Iniciantes', 'Professores, pais e hobbistas em geral', 3, 1),
('img/ti_139.png', 'Como Compartilhar Links por Mensagem de Texto', 'Aprenda a copiar o endereço de um site da barra do navegador e colar em conversas ou aplicativos de mensagens.', 3, '1-Seleção Total do Endereço URL; 2-Atalho de Teclado Copiar (Ctrl+C); 3-Atalho Colar (Ctrl+V) no Campo de Mensagem', 'Usuários de internet e smartphones iniciantes', 97, 1),
('img/ti_140.png', 'Noções de Tabelas Simples para Dados Estruturados em HTML', 'Crie estruturas básicas de tabelas de preços ou horários utilizando tags nativas puras sem estilização visual avançada.', 2, '1-Abertura da Tag Table; 2-Definição de Cabeçalhos com TH; 3-Inserção de Dados nas Células com TD', 'Estudantes de desenvolvimento web juniores', 16, 1),
('img/ti_141.png', 'Como Ativar o Modo Escuro em Aplicativos Nativos', 'Proteja seus olhos do cansaço visual ativando o tema escuro nas configurações do sistema operacional e navegadores.', 3, '1-Acessando Configurações de Cores do Sistema; 2-Mudança do Tema Claro para Escuro; 3-Ativação do Modo Noturno em Navegadores', 'Usuários frequentes de telas de computadores', 97, 1),
('img/ti_142.png', 'Noções de Cabeçalho e Rodapé Básicos no Word', 'Como inserir numeração automática de páginas e títulos fixos que se repetem no topo de todos os documentos.', 3, '1-Acessando o Menu Inserir Cabeçalho; 2-Inclusão de Número de Página no Rodapé; 3-Configuração de Primeira Página Diferente', 'Estudantes e auxiliares administrativos', 97, 2),
('img/mecanica_29.png', 'Noções Básicas de Ajuste de Espelhos Retrovisores', 'Como calibrar os ângulos dos espelhos laterais e internos para diminuir ao máximo os pontos cegos ao dirigir.', 3, '1-Alinhamento do Retrovisor Interno Centralizado; 2-Retrovisores Laterais mostrando o Mínimo da Carroceria; 3-Testes de Visibilidade em Posição de Direção', 'Condutores recém-habilitados', 1, 1),
('img/design_29.png', 'Noções de Desenho de Sombras com Lápis Comum', 'Exercícios práticos simulando esferas e cubos sob luz direcionada para aprender gradientes de cinza com lápis grafite escolar.', 3, '1-Identificação do Ponto de Luz; 2-Aplicação de Hachuras e Pressão no Lápis; 3-Uso de Esfuminho ou Algodão para Suavizar', 'Hobbistas e estudantes de desenho artístico', 3, 1),
('img/ti_143.png', 'Como Silenciar Notificações Inconvenientes no PC', 'Aprenda a ativar o assistente de foco para bloquear pop-ups de avisos de aplicativos durante o horário de trabalho.', 3, '1-Acessando as Configurações de Notificações e Ações; 2-Ativação do Assistente de Foco; 3-Bloqueio Individual de Alertas de Aplicativos', 'Profissionais de escritórios e estudantes', 97, 1),
('img/ti_144.png', 'Noções Básicas de Tag Meta para Codificação UTF-8', 'Entenda a importância de incluir a tag de charset correta para evitar erros de acentuação distorcida em páginas HTML.', 2, '1-O Cabeçalho Head do Documento; 2-A Tag Meta Charset="UTF-8"; 3-Resolução de Símbolos Estranhos em Palavras Acentuadas', 'Desenvolvedores web iniciantes', 16, 1),
('img/ti_145.png', 'Como Conectar Computadores na Rede Wi-Fi Comercial', 'Passo a passo para selecionar o nome da rede corporativa, digitar a chave de segurança e verificar o status da conexão.', 3, '1-Clicando no Ícone de Rede na Barra de Tarefas; 2-Seleção do SSID Correto da Empresa; 3-Digitação da Senha WPA2 e Verificação de Conexão', 'Funcionários e usuários de tecnologia gerais', 13, 1),
('img/ti_146.png', 'Noções de Formatação de Texto Negrito e Itálico em HTML', 'Utilize tags estruturais simples para dar ênfase visual a palavras ou frases importantes dentro de blocos de textos.', 2, '1-A Tag Strong para Textos em Negrito; 2-A Tag EM para Textos em Itálico; 3-Combinação de Tags para Ênfase Estrutural', 'Iniciantes em codificação de websites', 16, 1);

SELECT id,nome FROM curso WHERE estrelas < 3 AND fk_area_id = 1;
describe curso;
SELECT publico_alvo FROM curso;
/*
   estudante
   profissional
   universitário
   estagiarío
*/

/* =========================================================================
   BLOCO 1: PÚBLICO ALVO - ESTUDANTE (250 registros)
   ========================================================================= */
INSERT INTO curso(banner, nome, descricao, estrelas, mini_ementa, publico_alvo, fk_area_id, fk_categoria_id) VALUES
('img/automacao_01.png', 'Introdução à Robótica Educacional', 'Conceitos básicos de automação e pequenos robôs.', 3, '1-Sensores; 2-Motores; 3-Prática', 'estudante', 83, 1),
('img/ti_201.png', 'Lógica Prática com Scratch', 'Desenvolva o raciocínio lógico criando blocos visuais.', 2, '1-Comandos; 2-Animação; 3-Jogo', 'estudante', 2, 1),
('img/mecanica_30.png', 'Desenho Técnico Assistido por Computador', 'Fundamentos de visualização espacial e desenho de peças.', 3, '1-Escalas; 2-Vistas; 3-Cortes', 'estudante', 1, 3),
('img/design_30.png', 'Introdução à Teoria das Cores', 'Como as cores influenciam a percepção visual nos projetos.', 1, '1-Círculo Cromático; 2-Harmonização', 'estudante', 3, 2),
('img/ti_202.png', 'Criação de Páginas Web Básicas', 'Aprenda a estruturar seu primeiro site com tags simples.', 3, '1-Tags; 2-Textos; 3-Links', 'estudante', 16, 1),
('img/mecanica_31.png', 'Segurança em Oficinas Industriais', 'Normas básicas de proteção e uso de equipamentos de segurança.', 2, '1-EPIs; 2-Sinalização; 3-Riscos', 'estudante', 1, 1),
('img/design_31.png', 'Fundamentos da Tipografia Escolar', 'Como escolher letras legíveis para trabalhos e cartazes.', 3, '1-Fontes; 2-Espaçamento; 3-Alinhamento', 'estudante', 3, 2),
('img/ti_203.png', 'Conceito de Algoritmos no Cotidiano', 'Entenda a lógica por trás das tarefas do dia a dia.', 2, '1-Passo a Passo; 2-Fluxogramas', 'estudante', 7, 1);
-- [Repetir a estrutura mudando levemente os nomes de img/curso para totalizar 250 deste bloco]

/* JOIN */
SELECT * FROM curso WHERE publico_alvo = "estudante" AND estrelas<2;
SELECT * FROM curso WHERE publico_alvo = "estudante" OR estrelas<2;
SELECT COUNT(*) FROM curso WHERE publico_alvo = "estudante";
SELECT COUNT(*) FROM curso WHERE 
                    publico_alvo = "estudante" 
                    AND estrelas < 4;
SELECT COUNT(*) FROM curso WHERE 
                    publico_alvo = "estudante" 
                    AND estrelas = 3;
                    /* registro = linha = tupla*/
SELECT COUNT(*) FROM curso WHERE 
                    publico_alvo = "estudante" 
                    AND estrelas < 3;
SELECT nome,estrelas FROM curso 
                     WHERE NOT estrelas = 4 
                     ORDER BY estrelas DESC;
DESCRIBE curso;
SELECT id,nome FROM area WHERE nome LIKE '%dados%';
SELECT * FROM categoria;
INSERT INTO curso(banner, nome, descricao, estrelas, mini_ementa, publico_alvo, fk_area_id, fk_categoria_id) VALUES
('img/excel_01.png', 'Excel para Cientistas de Dados', 'Excel na prática', null, '1-Fórmulas 2-Funções 3-Gráficos', 'estudante', 6, 1);

SELECT id,nome,estrelas FROM 
                       curso WHERE 
                       estrelas IS NULL;