import { StatusBar } from "expo-status-bar";
import React from "react";

import { SafeAreaView, Text, FlatList } from 'react-native';
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
        descricao: 'tosamos o seu gato e cão',
    },
    {
        id: 3,
        nome: 'Vacina',
        preco: 100.7,
        descricao: 'Vacina V4, para gatos',
    }
]

// SafeAreaView funciona apenas para o IOS (Safe da margem inferior e superior)
//StatusBar serve para ANdroid (Mesma função do SafeAreaView)
export default function Servicos() {
    return <SafeAreaView>
        <StatusBar />
        <Text> Serviços! </Text>
        <FlatList 
        data={servicos}
        //exibir uma variavel usa {} | mostar item da lista na tela
        renderItem={({item}) => <Item {...item} />} 
        keyExtractor ={({id}) => String(id)}
        />
    </SafeAreaView>
}
