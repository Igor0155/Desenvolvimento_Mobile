import React, { useState } from "react";

import { Button, Text, TextInput, View } from 'react-native'
import CampoInteiro from "../../../componentes/CampoInteiro";

import estilos from './estilos'

//Conf para cada item (todos os itens)
export default function Item({ nome, preco, descricao }) {
// useState cria um stado chamado "quantidade", e para alterar ela 
// vai ser usado o "setQuantidade". Inicialmente a quantidade é '1'
    const [quantidade, setQuantidade] = useState(1)

    return <>
        <View style={estilos.informacao}>
            <Text style={estilos.nome} >{nome}</Text>
            <Text style={estilos.descricao} >{descricao}</Text>
            <Text style={estilos.preco} >{preco}</Text>
        </View>
        <View style={estilos.carrinho} >
            <View >
                <View style={estilos.valor}>
                    <Text style={estilos.descricao}>Quantidade:</Text>
                    {/* <TextInput value="0" /> */}
                    <CampoInteiro valor={quantidade} acao={setQuantidade}/>
                </View>
                <View style={estilos.valor}>
                    <Text style={estilos.descricao}>Quantidade: </Text>
                    <Text style={estilos.preco}>0</Text>
                </View>
            </View>
            <Button title="Adicionar"/>
        </View>
        <View style={estilos.divisor}></View>
    </>

}