import React, { useState } from "react";

import { TouchableOpacity, Text, View } from 'react-native'
import Botao from "../../../componentes/Botao";
import CampoInteiro from "../../../componentes/CampoInteiro";

import estilos from './estilos'

//Conf para cada item (todos os itens)
export default function Item({ nome, preco, descricao, quantidade: quantidadeInicial }) {

    // useState cria um Estado chamado "quantidade", e para alterar ela 
    // vai ser usado o "setQuantidade". Inicialmente a quantidade é '1'
    const [quantidade, setQuantidade] = useState(quantidadeInicial)

    // adicionando estado para modificar o preco total dos produtos
    const [total, setTotal] = useState(preco * quantidadeInicial);

    // Metodo de atualizar total 
    const atualizaQuantidadeTotal = (novaQuantiade) => {
        setQuantidade(novaQuantiade)
        calculaTotal(novaQuantiade)

    }

    // Metodo de calculo do texto 
    const calculaTotal = (novaQuantiade) => {
        setTotal(novaQuantiade * preco);
    }

   
    return <>
        <View style={estilos.informacao} >
            <Text style={estilos.nome} >{nome}</Text>
            <Text style={estilos.descricao} >{descricao}</Text>
            <Text style={estilos.preco} >{
                // Usando 'Intl' para adicionar campo em 'REAIS'
                Intl.NumberFormat('pt-BR', {
                    style: 'currency', currency: 'BRL'
                }).format(preco)
            }</Text>
        </View>
        {/* Se o expandir for True mostra a View. Pois a outra condição do '&&' é true também  */}

        <View style={estilos.carrinho} >
            <View >
                <View style={estilos.valor}>
                    <Text style={estilos.descricao}>Quantidade:</Text>
                    {/* <TextInput value="0" /> */}
                    <CampoInteiro estilos={estilos.quantidade} valor={quantidade} acao={atualizaQuantidadeTotal} />
                </View>
                <View style={estilos.valor}>
                    <Text style={estilos.descricao}>Total:</Text>
                    <Text style={estilos.preco}>{
                        Intl.NumberFormat('pt-BR', {
                            style: 'currency', currency: 'BRL'
                        }).format(total)
                    }</Text>
                </View>
            </View>
            <Botao valor="Remover do Carrinho" acao={() => { }} />
        </View>

        <View style={estilos.divisor}></View>
    </>

}