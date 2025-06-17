create database viagens_ac01

use viagens_ac01

create table destinos (
	id_destino int primary key,
	nomeDestino varchar(30),
	nomePais varchar(30),
	atracoes varchar(100),
	custoDiario float,
	avaliacao float
)

insert into destinos (id_destino, nomeDestino, nomePais, atracoes, custoDiario, avaliacao)
values (1, 'Paris', 'França', 'Torre Eiffel, Museu do Louvre', 150.00, 4.8)


create table pacotes (
	id_pacote int primary key,
	nomePacote varchar(200),
	diasPacote int,
	precoPacote float,
	servicosPacote varchar(100)
)

insert into pacotes (id_pacote, nomePacote, diasPacote, precoPacote, servicosPacote)
values (1, 'Aventura na Amazônia', 7, 1200, 'Transporte, Hospedagem, Guias')


create table avaliacoes (
	id_avaliacao int primary key,
	destino varchar(50),
	avaliacao int,
	comentario varchar(50)
)

insert into avaliacoes (id_avaliacao, destino, avaliacao, comentario)
values (1, 'Tóquio', 5, 'Incrível experiência cultural!')


create table clientes (
	id_cliente int primary key,
	nomeCliente varchar(250),
	emailCliente varchar(250),
	destinoInteresse varchar(200)
)

insert into clientes (id_cliente, nomeCliente, emailCliente, destinoInteresse)
values (1, 'João Silva', 'joao.silva@example.com', 'Nova York e Londres')


create table reservas (
	id_reserva int primary key,
	nomeReserva varchar(250),
	destinoReserva varchar(250),
	dataPartida date,
	dataRetorno date
)

insert into reservas (id_reserva, nomeReserva, destinoReserva, dataPartida, dataRetorno)
values (1, 'Maria Santos', 'Bali', '2024-07-15', '2025-07-25')

select * from reservas

update destinos 
set custoDiario = custoDiario * 1.10 
where id_destino = 1

update destinos
set avaliacao = 4.9
where id_destino = 1

update pacotes
set diasPacote = diasPacote + 3
where id_pacote = 1

update pacotes
set precoPacote = precoPacote * 0.85
where id_pacote = 1

alter table destinos
add numAvaliacoes int

update destinos
set numAvaliacoes = 1
where id_destino = 1

update clientes
set emailCliente = 'novo.email@exemplo.com'
where id_cliente = 1

update destinos
set atracoes = 'Torre Eiffel, Museu do Louvre, Arco do Triunfo'
where id_destino = 1

alter table reservas 
add statusReserva varchar(50)

update reservas
set statusReserva = 'Confirmada'
where id_reserva = 1

update clientes
set destinoInteresse = 'Nova York, Londres e Tóquio'
where id_cliente = 1

update pacotes
set nomePacote = 'Aventura na Floresta Amazônica'
where id_pacote = 1

delete from destinos 
where nomeDestino = 'Paris'

insert into avaliacoes (id_avaliacao, destino, avaliacao, comentario)
values (2, 'Tóquio', 3, 'Não gostei.')

delete from avaliacoes 
where destino = 'Tóquio' and avaliacao = 3

update reservas
set statusReserva = 'Cancelada'
where id_reserva = 1

delete from reservas 
where id_reserva = 1 and statusReserva = 'Cancelada'

insert into destinos (id_destino, nomeDestino, nomePais, atracoes, custoDiario, avaliacao)
values (2, 'Paris', 'França', 'Torre Eiffel, Museu do Louvre', 150.00, 4.8)

update destinos
set atracoes = 'Museu do Louvre'
where id_destino = 2

delete from clientes 
where nomeCliente = 'João Silva'


select * from reservas

select * from clientes

select * from destinos

select * from avaliacoes
