
import React from "react";

import {

    FlatList,

} from 'react-native';

import TelaPadrao from "../../componentes/TelaPadrao";
import Item from "./Item";





//list de servicos 
const servicos = [
    //primeiro
    {
        id: 1,
        nome: 'Banho',
        preco: 79.9,
        descricao: 'Damos banho em gatos e cães',
    },
    {
        id: 2,
        nome: 'Tosa',
        preco: 80.7,
        descricao: 'Tosamos o seu gato e cão',
    },
    {
        id: 3,
        nome: 'Vacina',
        preco: 100.7,
        descricao: 'Vacina V4, para gatos',
    }
]


export default function Servicos() {

    return <>
        <FlatList
            data={servicos}
            //exibir uma variavel usa {} | mostar item da lista na tela
            renderItem={({ item }) => <Item {...item} />}
            keyExtractor={({ id }) => String(id)}
        />
    </>
}
