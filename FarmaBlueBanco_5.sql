CREATE DATABASE DB_FARMABLUE;
GO

USE DB_FARMABLUE;
GO

CREATE TABLE TB_FUNCIONARIO(
CodFunc INT IDENTITY(1,1) PRIMARY KEY,
NomeFunc VARCHAR (50),
FuncaoFunc VARCHAR (20) default ('VEND'),
ComissaoFunc DECIMAL (5,2), --adicionei "Comissão", "Salário" e "Faltas"
SalarioFunc DECIMAL (6,2),
FaltasFunc INT);
GO

INSERT INTO TB_FUNCIONARIO (NomeFunc, FuncaoFunc)
VALUES ('re', 'ADMIN'),
       ('be', 'VEND');
GO

SELECT * FROM TB_FUNCIONARIO;

CREATE TABLE TB_MEDICAMENTOS (
CodMed INT PRIMARY KEY IDENTITY (1,1),
Nome VARCHAR (70),
Tipo VARCHAR (30),
Descricao VARCHAR (5000),
Valor DECIMAL (6,2)
);
GO 

INSERT INTO TB_MEDICAMENTOS
VALUES ('Alenia Refil', 'Referência', 'Indicações:
É indicado para a melhora e controle da falta de ar em pacientes com doenças que causam diminuição da capacidade de respirar adequadamente.

Contraindicações:
Alenia não deve ser usado por pessoas alérgicas aos componentes do medicamento que são: fumarato de formoterol di-hidratado, budesonida e lactose.', 66.91, 100),
       ('Ibuprofeno', 'Genérico', 'Indicações:
Febre e dores leves a moderadas, associadas a gripes e resfriados comuns, dor de garganta, cefaleia, dor de dente, dorsalgia, dismenorreias e mialgias.

Contraindicações:
Ibuprofeno não deverá ser administrado a pacientes com hipersensibilidade a qualquer componente da formulação. Não utilizar em indivíduos com úlcera péptica ativa, sangramento gastrintestinal.', 3.23, 100),
       ('Dipirona Sódica', 'Genérico', 'Indicações:
Este medicamento é indicado como analgésico e antitérmico.

Contraindicações:
A dipirona monoidratada não deve ser administrada a pacientes com hipersensibilidade à dipirona ou a qualquer um dos componentes da formulação; com função da medula óssea prejudicada; que têm broncoespasmo ou outras reações anafilactoides com analgésicos; com porfiria hepática aguda intermitente; com deficiência congênita da glicose-6-fosfato-desidrogenase; gravidez e lactação.', 1.66, 100),
       ('Epocler', 'Referência', 'Indicações:
Indicado no tratamento dos distúrbios metabólicos hepáticos.

Contraindicações:
Este medicamento é contraindicado para pessoas hipersensíveis aos componentes da fórmula e para pessoas portadoras de doenças graves do fígado, tais como cirrose hepática proveniente do consumo de álcool.', 2.12, 100),
       ('Massageol', 'Genérico', 'Indicações:
Dores reumáticas, nevralgias, torcicolos, contusões e dores musculares.

Contraindicações:
Hipersensibilidade aos componentes da fórmula. 
Não usar em áreas com ferimentos, sobre mucosas ou nas regiões dos olhos, boca, nariz, reto e vagina.', 4.00, 100),
       ('Stablon', 'Tarja preta/Psicotrópico', 'Indicações:
Síndromes e episódios depressivos, como depressão reativa, involutiva, neurótica.

Contraindicações:
Insuficiência hepática; hipersensibilidade à fórmula; durante a gravidez e lactação.', 82.11, 100),
       ('Stilnox', 'Tarja preta/Psicotrópico', 'Indicações:
É destinado ao tratamento da insônia, que pode ser ocasional, transitória ou crônica.

Contraindicações:
Não deve ser utilizado em caso de hipersensibilidade aos componentes da fórmula; também não deve ser utilizado por pacientes com insuficiência respiratória severa ou aguda ou com insuficiência do fígado severa.', 57.47, 100);
GO

INSERT INTO TB_MEDICAMENTOS
VALUES ('Humalog Mix 50', 'Referência', 'Indicações:
Diabetes mellitus que requer tratamento com insulina. É indicado no tratamento de pacientes com diabetes melito para controle da taxa de glicose no sangue.
Contraindicações:
Não deve ser utilizado em caso de hipersensibilidade aos componentes da fórmula, nem em casos de hipoglicemia; não deve ser usado por mulheres grávidas ou amamentando, sem orientação médica.
', 41.77, 100),
       ('20 bi', 'Referência', 'Indicações:
20 bi é composto por diversos probióticos, eles contribuem para o equilíbrio da flora intestinal. Seu consumo deve estar associado a uma alimentação e hábitos de vida saudáveis.

Contraindicações:
É contraindicado para a hipersensibilidade aos componentes da fórmula, gestantes, lactantes e crianças de até 3 anos.', 23.99, 100);
GO

--10:
INSERT INTO TB_MEDICAMENTOS (Nome, Tipo, Descricao, Valor, Estoque)
VALUES ('Tylenol-comprimido', 'Referência', 'Indicações:
Este medicamento é indicado, em adultos, para a redução da febre e para o alívio temporário de dores leves a moderadas, tais como: dores associadas a resfriados comuns, dor de cabeça, dor no corpo, dor de dente, dor nas costas, dores musculares, dores leves associadas a artrites e cólicas menstruais.

Contraindicações:
Você não deve usar Tylenol se tiver alergia ao paracetamol ou a qualquer componente de sua fórmula.', 2.13,140),

       ('Malvatricin Pronta para Uso (PPU)-100ml', 'Referência', 'Indicações:

Tratamento de aftas, bactérias da boca e de dor de garganta.
Contraindicações:
Hipersensibilidade aos componentes da fórmula.',13.98,100),

       ('Mucosolvan-120ml', 'Referência', 'Indicações:
É indicado para o tratamento das doenças broncopulmonares (brônquios e pulmões) agudas e crônicas para facilitar a expectoração (soltar o catarro do peito) quando houver acúmulo de secreção.

Contraindicações:
Você não deve usar Mucosolvan se tiver alergia ao cloridrato de ambroxol (substância ativa) ou a outros componentes da fórmula e se tiver intolerância à frutose.',13.47,200),

       ('Tamisa-comprimidos', 'Referência', 'Indicações:
É indicado como método contraceptivo para prevenção da gravidez.

Contraindicações:
É contra-indicado em pacientes com história prévia ou atual de processos tromboembólicos arterial ou venoso.Gravidez diagnosticada ou suspeita.Sangramento genital anormal de causa desconhecida.',13.95,160),

       ('Flancox-comprimidos', 'Referência', 'Indicações:
É indicado no tratamento da artrose e da artrite reumatoide (aguda ou crônica) e no controle da dor, especialmente aquela associada a processos inflamatórios (como no pós-operatório de cirurgias odontológicas e obstétricas, traumas e outras condições, como artrite aguda por gota, cólica menstrual, enxaqueca.

Contraindicações:
Você não deve usar Flancox se tiver alergia ao etodolaco ou a qualquer um dos componentes de sua formulação; se você já apresentou reações semelhantes à asma, urticária ou outras reações alérgicas após o uso de ácido acetilsalicílico ou de outros anti-inflamatórios.É também contraindicado em crianças menores de 15 anos de idade e em pacientes com dor peri-operatória relacionada à cirurgia cardíaca.',13.98,100),

       ('Puran T4- 30 comprimidos', 'Referência', 'Indicações:
Terapia de reposição ou suplementação hormonal em pacientes com hipotireoidismo (produção insuficiente de hormônio pela glândula tireoide) de qualquer causa (exceto no hipotireoidismo transitório, durante a fase de recuperação de tireoidite subaguda - doença inflamatória da glândula tireoide.

Contraindicações:
Puran T4 não deve ser utilizado em caso de intolerância aos componentes da fórmula, infarto do miocárdio recente, tireotoxicose não tratada (síndrome clínica, não tratada, resultante de níveis elevados de hormônio da tireoide), insuficiência suprarrenal descompensada e hipertireoidismo não tratado.',1.93,80),

       ('Buscopan- 20 comprimidos', 'Referência', 'Indicações:
É indicado para tratamento dos sintomas de cólicas gastrintestinais (estômago e intestinos), cólicas e movimentos involuntários anormais das vias biliares e cólicas dos órgãos sexuais e urinários.

Contraindicações:
Você não deve usar Buscopan se tiver fraqueza muscular grave; dilatação do intestino grosso; alergia a qualquer componente da fórmula; intolerância à frutose. Crianças com diarreia aguda ou persistente também não devem usar Buscopan.',1.77,200),
       
	   ('Rivotril 20-comprimidos','Tarja preta/Psicotrópico', 'Indicações:
É indicado para tratar crises epilépticas e espasmos infantis (Síndrome de West). Também é utilizado para transtornos de ansiedade, de humor e síndromes psicóticas.

Contraindicações:
Você não deve usar Rivotril se tiver, história de alergia a benzodiazepínicos ou a qualquer componente da fórmula; Doença grave dos pulmões ou fígado;Glaucoma agudo de ângulo fechado.',
5.50, 90),

       ('Lexotan 20-comprimidos','Tarja preta/Psicotrópico','Indicações:
É indicado para ansiedade, tensão e outras queixas físicas ou psicológicas associadas à síndrome de ansiedade.

Contraindicações:
Você não deverá tomar Lexotan se for alérgico aos benzodiazepínicos (incluindo bromazepam) ou a qualquer substância contida nos comprimidos.
Lexotan não deve ser administrado a pacientes com insuficiência respiratória grave (com grande dificuldade para respirar),
insuficiência hepática grave (grave comprometimento da função do fígado) ou síndrome de apneia do sono (em que o paciente para de respirar várias vezes durante o sono', 21.02, 120),

       ('Ritalina La 30mg com 30 cápsulas','Tarja preta/Psicotrópico','Indicações:
É utilizada para o tratamento do Transtorno de deficit de atenção/hiperatividade.

Contraindicações:
Não tome Ritalina se você, se você for alérgico (hipersensíveis) ao metilfenidato ou a qualquer outro componente de Ritalina listado no início desta bula;Sofre de ansiedade, tensão ou agitação;
Tem algum problema da tireoide; tem problemas cardíacos;Tem pressão sanguínea muito alta.', 186.80, 110),

       ('Olcadil 1mg, caixa com 30 comprimidos','Tarja preta/Psicotrópico','Indicações:
Distúrbios emocionais, especialmente ansiedade, medo, fobias, tensão, inquietude, astenia e sintomas depressivos; distúrbios comportamentais, especialmente má adaptação social; distúrbios do sono, tais como dificuldade em dormir ou sono interrompido e despertar precoce; sintomas somáticos, funcionais de origem psicogênica, sentimentos de opressão e certos tipos de dores.

Contraindicações:
Em casos de coma; se você tem depressão grave do sistema nervoso central; tem miastenia grave; tem histórico de alergia (hipersensibilidade) a derivados benzodiazepínicos ou aos outros componentes da fórmula; tem doença no pulmão ou no rim; tem síndrome da apneia do sono.', 32.30,140),

       ('Alprazolam - EMS 2mg, caixa com 30 comprimidos','Tarja preta/Psicotrópico','Indicações:
É indicado no tratamento de transtornos de ansiedade.

Contraindicações:
É contraindicado a pacientes com hipersensibilidade conhecida a esse fármaco, a outros benzodiazepínicos ou a qualquer componente do produto, e em pacientes portadores de miastenia gravis ou glaucoma de ângulo estreito agudo.',
7.91,123),

       ('Diazepam - Germed Pharma 10mg, caixa com 30 comprimidos','Tarja preta/Psicotrópico','Indicações:
É indicado para alívio sintomático da ansiedade, tensão e outras queixas somáticas ou psicológicas associadas com a síndrome da ansiedade. Pode também ser útil como coadjuvante no tratamento da ansiedade ou agitação associada a desordens psiquiátricas.

Contraindicações:
Não deve tomar diazepam se for alérgico ao diazepam ou a qualquer componente da fórmula do produto.',8.37,210),

       ('Bromazepam 6mg, caixa com 30 comprimidos','Tarja preta/Psicotrópico','Indicações:
É indicado para ansiedade, tensão e outras queixas físicas ou psicológicas associadas à síndrome de ansiedade. É indicado também como auxiliar no tratamento de ansiedade e agitação associadas a quadros psiquiátricos, como transtornos do humor
e esquizofrenia (doença psiquiátrica em que costumam ocorrer alucinações.

Contradições:
Não deve ser administrado a pacientes com insuficiência respiratória grave, insuficiência hepática grave ou síndrome de apneia do sono.', 11.70, 100); --23
GO



CREATE TABLE TB_NOTA_FISCAL( --venda
Nota_Numero int primary key identity (1,1),
Nota_DataVenda datetime,
Nota_Valor decimal (5,2), --chave estrangeira de uma tabela para vendas
Nota_CNPJ varchar (18),
Nota_CodFunc int, -- chave estrangeira "quem está logado"
Nota_CodCli int);
GO


CREATE TABLE TB_CLIENTE (
CodCli INT PRIMARY KEY IDENTITY (1,1),
NomeCli VARCHAR (50),
TelCelular VARCHAR (11)
);
go

CREATE TABLE TB_FORNEC (
CNPJ INT,
Nome_empresa VARCHAR (50),
Tel_fornec VARCHAR (11)
);

GO

select * from TB_CLIENTE