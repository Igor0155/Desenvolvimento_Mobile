
import React from "react";

import {
    FlatList,
} from 'react-native';

import Item from "./Item";

import TelaPadrao from "../../componentes/TelaPadrao";
import StatusCarrinho from "../../componentes/StatusCarrinho";




//list de servicos 
const servicos = [
    //primeiro
    {
        id: 1,
        nome: 'Banho',
        preco: 79.9,
        descricao: 'Damos banho em gatos e cães',
        quantidade: 2
    },
    {
        id: 2,
        nome: 'Tosa',
        preco: 80.7,
        descricao: 'Tosamos o seu gato e cão',
        quantidade: 2
    },
    {
        id: 3,
        nome: 'Vacina',
        preco: 100.7,
        descricao: 'Vacina V4, para gatos',
        quantidade: 3
    }
]

export default function Carrinho() {
    // reduce percorre todos os itens de 'servicos', e para pegar apenas alguns objetos se usa {} 
    // const que percorre o servicos todo e devolve a soma da multiplicacao de preco e quantidade
    const totalCarrinho =  servicos.reduce((soma, {preco, quantidade}) => soma + (preco * quantidade), 0)

    return <>
        <StatusCarrinho total={totalCarrinho}/>
        <FlatList
            data={servicos}
            //exibir uma variavel usa {} | mostar item da lista na tela
            renderItem={({ item }) => <Item {...item} />}
            keyExtractor={({ id }) => String(id)}
        />
    </>
}
