/*SQL ORACLE*/
/* Tabelas */
drop table cliente cascade constraints;
create table cliente (idCliente varchar2(50) constraint clie_id_pk2 primary key,
                    nomeCliente varchar2(50) constraint clie_nm_nn2 not null,
                    cpfCliente varchar2(50) constraint clie_cpfcl_nn2 not null,
                    enderecoCliente varchar2(100) constraint clie_endcl_nn2 not null,
                    generoCliente varchar2(20) constraint clie_gen_nn2 not null,
                    email varchar2(100) constraint clie_ema_nn2 not null,
                    senha varchar2(20) constraint clie_sen_nn2 not null,
                    idDispositivo varchar2(50));
select * from cliente;

drop table dispositivo cascade constraints;
create table dispositivo (idDispositivo varchar2(50) constraint dis_id_nn not null,
                        cor varchar2(10) constraint dis_cor_nn not null,
                        dataFabricacao varchar2(50) constraint dis_fab_nn not null,
                        statusDispositivo varchar2(50) constraint dis_statd_nn not null,
                        versao varchar2(50) constraint dis_ver_nn not null);
alter table dispositivo add constraint dispositivo_pk primary key(idDispositivo);
select * from dispositivo;

drop table diagnostico cascade constraints;
create table diagnostico (idDiagnostico varchar2(50) constraint diag_id_pk primary key,
                        estadoGeral varchar2(200) constraint diag_est_nn not null,
                        sinaisVitais varchar2(150) constraint diag_sinv_nn not null,
                        sinaisQueda varchar2(150) constraint diag_sinq_nn not null,
                        dataSolicitacao varchar2(10) constraint diag_dts_nn not null,
                        dataEmissao varchar2(10) constraint diag_dte_nn not null,
                        idDispositivo varchar2(50),
                        idCuidador varchar2(50),
                        idServicoEmergencia varchar2(100));
select * from diagnostico;

drop table cuidador cascade constraints;
create table cuidador (idCuidador varchar2(50) constraint cui_id_nn not null,
                    nomeCuidador varchar2(50) constraint cui_nm_nn not null,
                    cpfCuidador varchar2(50) constraint cui_cpfcu_nn not null,
                    generoCuidador varchar2(20) constraint cui_gen_nn not null,
                    enderecoCuidador varchar2(100) constraint cui_endcua_nn not null,
                    numTelefone number(20) constraint cui_tel_nn not null);
alter table cuidador add constraint cuidador_pk primary key(idCuidador);
select * from cuidador;


drop table servicoEmergencia cascade constraints;
create table servicoEmergencia (idServicoEmergencia varchar2(100) constraint serv_id_pk primary key,
                                tipoServicoEmergencia varchar2(100) constraint serv_tiser_nn not null,
                                tipoEmergencia varchar2(50) constraint serv_tieme_nn not null,
                                gravidade varchar2(50) constraint serv_gra_nn not null,
                                medicoResponsavel varchar2(50) constraint serv_medr_nn not null);
select * from servicoEmergencia;


drop table servicoManutencao cascade constraints;
create table servicoManutencao (idServicoManutencao varchar2(100) constraint manu_id_pk primary key,
                                custo number(6,2) constraint manu_cust_nn not null,
                                tipoServicoManutencao varchar2(100) constraint manu_servm_nn not null,
                                dataManutencao varchar2(10) constraint manu_dtma_nn not null,
                                statusManutencao varchar2(50) constraint manu_statm_nn not null,
                                idDispositivo varchar2(50));
select * from servicoManutencao;

/*Criação de Chave extrangeiras*/
alter table cliente add constraint clie_dis_fk foreign key(idDispositivo) references dispositivo(idDispositivo);

alter table diagnostico
add constraint diag_dis_fk
foreign key (idDispositivo) references dispositivo(idDispositivo);

alter table diagnostico
add constraint diag_cui_fk
foreign key (idCuidador) references cuidador(idCuidador);

alter table diagnostico
add constraint diag_serv_fk
foreign key (idServicoEmergencia) references servicoEmergencia(idServicoEmergencia);

alter table servicoManutencao
add constraint manu_dis_fk
foreign key (idDispositivo) references dispositivo(idDispositivo);
