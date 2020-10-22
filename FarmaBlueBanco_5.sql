CREATE DATABASE DB_FARMABLUE;
GO

USE DB_FARMABLUE;
GO

CREATE TABLE TB_FUNCIONARIO(
CodFunc INT IDENTITY(1,1) PRIMARY KEY,
NomeFunc VARCHAR (50),
FuncaoFunc VARCHAR (20) default ('VEND'),
ComissaoFunc DECIMAL (5,2), --adicionei "Comiss�o", "Sal�rio" e "Faltas"
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
VALUES ('Alenia Refil', 'Refer�ncia', 'Indica��es:
� indicado para a melhora e controle da falta de ar em pacientes com doen�as que causam diminui��o da capacidade de respirar adequadamente.

Contraindica��es:
Alenia n�o deve ser usado por pessoas al�rgicas aos componentes do medicamento que s�o: fumarato de formoterol di-hidratado, budesonida e lactose.', 66.91, 100),
       ('Ibuprofeno', 'Gen�rico', 'Indica��es:
Febre e dores leves a moderadas, associadas a gripes e resfriados comuns, dor de garganta, cefaleia, dor de dente, dorsalgia, dismenorreias e mialgias.

Contraindica��es:
Ibuprofeno n�o dever� ser administrado a pacientes com hipersensibilidade a qualquer componente da formula��o. N�o utilizar em indiv�duos com �lcera p�ptica ativa, sangramento gastrintestinal.', 3.23, 100),
       ('Dipirona S�dica', 'Gen�rico', 'Indica��es:
Este medicamento � indicado como analg�sico e antit�rmico.

Contraindica��es:
A dipirona monoidratada n�o deve ser administrada a pacientes com hipersensibilidade � dipirona ou a qualquer um dos componentes da formula��o; com fun��o da medula �ssea prejudicada; que t�m broncoespasmo ou outras rea��es anafilactoides com analg�sicos; com porfiria hep�tica aguda intermitente; com defici�ncia cong�nita da glicose-6-fosfato-desidrogenase; gravidez e lacta��o.', 1.66, 100),
       ('Epocler', 'Refer�ncia', 'Indica��es:
Indicado no tratamento dos dist�rbios metab�licos hep�ticos.

Contraindica��es:
Este medicamento � contraindicado para pessoas hipersens�veis aos componentes da f�rmula e para pessoas portadoras de doen�as graves do f�gado, tais como cirrose hep�tica proveniente do consumo de �lcool.', 2.12, 100),
       ('Massageol', 'Gen�rico', 'Indica��es:
Dores reum�ticas, nevralgias, torcicolos, contus�es e dores musculares.

Contraindica��es:
Hipersensibilidade aos componentes da f�rmula. 
N�o usar em �reas com ferimentos, sobre mucosas ou nas regi�es dos olhos, boca, nariz, reto e vagina.', 4.00, 100),
       ('Stablon', 'Tarja preta/Psicotr�pico', 'Indica��es:
S�ndromes e epis�dios depressivos, como depress�o reativa, involutiva, neur�tica.

Contraindica��es:
Insufici�ncia hep�tica; hipersensibilidade � f�rmula; durante a gravidez e lacta��o.', 82.11, 100),
       ('Stilnox', 'Tarja preta/Psicotr�pico', 'Indica��es:
� destinado ao tratamento da ins�nia, que pode ser ocasional, transit�ria ou cr�nica.

Contraindica��es:
N�o deve ser utilizado em caso de hipersensibilidade aos componentes da f�rmula; tamb�m n�o deve ser utilizado por pacientes com insufici�ncia respirat�ria severa ou aguda ou com insufici�ncia do f�gado severa.', 57.47, 100);
GO

INSERT INTO TB_MEDICAMENTOS
VALUES ('Humalog Mix 50', 'Refer�ncia', 'Indica��es:
Diabetes mellitus que requer tratamento com insulina. � indicado no tratamento de pacientes com diabetes melito para controle da taxa de glicose no sangue.
Contraindica��es:
N�o deve ser utilizado em caso de hipersensibilidade aos componentes da f�rmula, nem em casos de hipoglicemia; n�o deve ser usado por mulheres gr�vidas ou amamentando, sem orienta��o m�dica.
', 41.77, 100),
       ('20 bi', 'Refer�ncia', 'Indica��es:
20 bi � composto por diversos probi�ticos, eles contribuem para o equil�brio da flora intestinal. Seu consumo deve estar associado a uma alimenta��o e h�bitos de vida saud�veis.

Contraindica��es:
� contraindicado para a hipersensibilidade aos componentes da f�rmula, gestantes, lactantes e crian�as de at� 3 anos.', 23.99, 100);
GO

--10:
INSERT INTO TB_MEDICAMENTOS (Nome, Tipo, Descricao, Valor, Estoque)
VALUES ('Tylenol-comprimido', 'Refer�ncia', 'Indica��es:
Este medicamento � indicado, em adultos, para a redu��o da febre e para o al�vio tempor�rio de dores leves a moderadas, tais como: dores associadas a resfriados comuns, dor de cabe�a, dor no corpo, dor de dente, dor nas costas, dores musculares, dores leves associadas a artrites e c�licas menstruais.

Contraindica��es:
Voc� n�o deve usar Tylenol se tiver alergia ao paracetamol ou a qualquer componente de sua f�rmula.', 2.13,140),

       ('Malvatricin Pronta para Uso (PPU)-100ml', 'Refer�ncia', 'Indica��es:

Tratamento de aftas, bact�rias da boca e de dor de garganta.
Contraindica��es:
Hipersensibilidade aos componentes da f�rmula.',13.98,100),

       ('Mucosolvan-120ml', 'Refer�ncia', 'Indica��es:
� indicado para o tratamento das doen�as broncopulmonares (br�nquios e pulm�es) agudas e cr�nicas para facilitar a expectora��o (soltar o catarro do peito) quando houver ac�mulo de secre��o.

Contraindica��es:
Voc� n�o deve usar Mucosolvan se tiver alergia ao cloridrato de ambroxol (subst�ncia ativa) ou a outros componentes da f�rmula e se tiver intoler�ncia � frutose.',13.47,200),

       ('Tamisa-comprimidos', 'Refer�ncia', 'Indica��es:
� indicado como m�todo contraceptivo para preven��o da gravidez.

Contraindica��es:
� contra-indicado em pacientes com hist�ria pr�via ou atual de processos tromboemb�licos arterial ou venoso.Gravidez diagnosticada ou suspeita.Sangramento genital anormal de causa desconhecida.',13.95,160),

       ('Flancox-comprimidos', 'Refer�ncia', 'Indica��es:
� indicado no tratamento da artrose e da artrite reumatoide (aguda ou cr�nica) e no controle da dor, especialmente aquela associada a processos inflamat�rios (como no p�s-operat�rio de cirurgias odontol�gicas e obst�tricas, traumas e outras condi��es, como artrite aguda por gota, c�lica menstrual, enxaqueca.

Contraindica��es:
Voc� n�o deve usar Flancox se tiver alergia ao etodolaco ou a qualquer um dos componentes de sua formula��o; se voc� j� apresentou rea��es semelhantes � asma, urtic�ria ou outras rea��es al�rgicas ap�s o uso de �cido acetilsalic�lico ou de outros anti-inflamat�rios.� tamb�m contraindicado em crian�as menores de 15 anos de idade e em pacientes com dor peri-operat�ria relacionada � cirurgia card�aca.',13.98,100),

       ('Puran T4- 30 comprimidos', 'Refer�ncia', 'Indica��es:
Terapia de reposi��o ou suplementa��o hormonal em pacientes com hipotireoidismo (produ��o insuficiente de horm�nio pela gl�ndula tireoide) de qualquer causa (exceto no hipotireoidismo transit�rio, durante a fase de recupera��o de tireoidite subaguda - doen�a inflamat�ria da gl�ndula tireoide.

Contraindica��es:
Puran T4 n�o deve ser utilizado em caso de intoler�ncia aos componentes da f�rmula, infarto do mioc�rdio recente, tireotoxicose n�o tratada (s�ndrome cl�nica, n�o tratada, resultante de n�veis elevados de horm�nio da tireoide), insufici�ncia suprarrenal descompensada e hipertireoidismo n�o tratado.',1.93,80),

       ('Buscopan- 20 comprimidos', 'Refer�ncia', 'Indica��es:
� indicado para tratamento dos sintomas de c�licas gastrintestinais (est�mago e intestinos), c�licas e movimentos involunt�rios anormais das vias biliares e c�licas dos �rg�os sexuais e urin�rios.

Contraindica��es:
Voc� n�o deve usar Buscopan se tiver fraqueza muscular grave; dilata��o do intestino grosso; alergia a qualquer componente da f�rmula; intoler�ncia � frutose. Crian�as com diarreia aguda ou persistente tamb�m n�o devem usar Buscopan.',1.77,200),
       
	   ('Rivotril 20-comprimidos','Tarja preta/Psicotr�pico', 'Indica��es:
� indicado para tratar crises epil�pticas e espasmos infantis (S�ndrome de West). Tamb�m � utilizado para transtornos de ansiedade, de humor e s�ndromes psic�ticas.

Contraindica��es:
Voc� n�o deve usar Rivotril se tiver, hist�ria de alergia a benzodiazep�nicos ou a qualquer componente da f�rmula; Doen�a grave dos pulm�es ou f�gado;Glaucoma agudo de �ngulo fechado.',
5.50, 90),

       ('Lexotan 20-comprimidos','Tarja preta/Psicotr�pico','Indica��es:
� indicado para ansiedade, tens�o e outras queixas f�sicas ou psicol�gicas associadas � s�ndrome de ansiedade.

Contraindica��es:
Voc� n�o dever� tomar Lexotan se for al�rgico aos benzodiazep�nicos (incluindo bromazepam) ou a qualquer subst�ncia contida nos comprimidos.
Lexotan n�o deve ser administrado a pacientes com insufici�ncia respirat�ria grave (com grande dificuldade para respirar),
insufici�ncia hep�tica grave (grave comprometimento da fun��o do f�gado) ou s�ndrome de apneia do sono (em que o paciente para de respirar v�rias vezes durante o sono', 21.02, 120),

       ('Ritalina La 30mg com 30 c�psulas','Tarja preta/Psicotr�pico','Indica��es:
� utilizada para o tratamento do Transtorno de deficit de aten��o/hiperatividade.

Contraindica��es:
N�o tome Ritalina se voc�, se voc� for al�rgico (hipersens�veis) ao metilfenidato ou a qualquer outro componente de Ritalina listado no in�cio desta bula;Sofre de ansiedade, tens�o ou agita��o;
Tem algum problema da tireoide; tem problemas card�acos;Tem press�o sangu�nea muito alta.', 186.80, 110),

       ('Olcadil 1mg, caixa com 30 comprimidos','Tarja preta/Psicotr�pico','Indica��es:
Dist�rbios emocionais, especialmente ansiedade, medo, fobias, tens�o, inquietude, astenia e sintomas depressivos; dist�rbios comportamentais, especialmente m� adapta��o social; dist�rbios do sono, tais como dificuldade em dormir ou sono interrompido e despertar precoce; sintomas som�ticos, funcionais de origem psicog�nica, sentimentos de opress�o e certos tipos de dores.

Contraindica��es:
Em casos de coma; se voc� tem depress�o grave do sistema nervoso central; tem miastenia grave; tem hist�rico de alergia (hipersensibilidade) a derivados benzodiazep�nicos ou aos outros componentes da f�rmula; tem doen�a no pulm�o ou no rim; tem s�ndrome da apneia do sono.', 32.30,140),

       ('Alprazolam - EMS 2mg, caixa com 30 comprimidos','Tarja preta/Psicotr�pico','Indica��es:
� indicado no tratamento de transtornos de ansiedade.

Contraindica��es:
� contraindicado a pacientes com hipersensibilidade conhecida a esse f�rmaco, a outros benzodiazep�nicos ou a qualquer componente do produto, e em pacientes portadores de miastenia gravis ou glaucoma de �ngulo estreito agudo.',
7.91,123),

       ('Diazepam - Germed Pharma 10mg, caixa com 30 comprimidos','Tarja preta/Psicotr�pico','Indica��es:
� indicado para al�vio sintom�tico da ansiedade, tens�o e outras queixas som�ticas ou psicol�gicas associadas com a s�ndrome da ansiedade. Pode tamb�m ser �til como coadjuvante no tratamento da ansiedade ou agita��o associada a desordens psiqui�tricas.

Contraindica��es:
N�o deve tomar diazepam se for al�rgico ao diazepam ou a qualquer componente da f�rmula do produto.',8.37,210),

       ('Bromazepam 6mg, caixa com 30 comprimidos','Tarja preta/Psicotr�pico','Indica��es:
� indicado para ansiedade, tens�o e outras queixas f�sicas ou psicol�gicas associadas � s�ndrome de ansiedade. � indicado tamb�m como auxiliar no tratamento de ansiedade e agita��o associadas a quadros psiqui�tricos, como transtornos do humor
e esquizofrenia (doen�a psiqui�trica em que costumam ocorrer alucina��es.

Contradi��es:
N�o deve ser administrado a pacientes com insufici�ncia respirat�ria grave, insufici�ncia hep�tica grave ou s�ndrome de apneia do sono.', 11.70, 100); --23
GO



CREATE TABLE TB_NOTA_FISCAL( --venda
Nota_Numero int primary key identity (1,1),
Nota_DataVenda datetime,
Nota_Valor decimal (5,2), --chave estrangeira de uma tabela para vendas
Nota_CNPJ varchar (18),
Nota_CodFunc int, -- chave estrangeira "quem est� logado"
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