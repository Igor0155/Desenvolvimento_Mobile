import React from "react";
import { TextInput } from "react-native";
import estilosPadrao from "./estilos";



export default function CampoInteiro({ valor, estilos, acao }) {
    const valorString = String(valor)

    const atualiza = (novoValor, acaoRetorno) => {
        // Const que valida se o numero está no intervalo de 0 - 9 | Se nao tiver ele nao deixa atualizar
        const verificaInteiro = novoValor.match(/^[0-9]*$/)

        // se nao for inteiro ele retorna e não salva o valor
        if (!verificaInteiro) return

        // removendo os '0' da esquerda que nao apaga| Quando tiver o '0' e + alguma coisa , ele só deixa a segunda coisa
        const removeZeroEsquerda = novoValor.replace(/^(0)(.+)/, '$2')

        acaoRetorno(removeZeroEsquerda)


    }

    return <TextInput
        // importando estilo do campo
        // formato de Array ele aceita 2 estilos
        style ={[estilosPadrao.campo, estilos]}
        keyboardType='number-pad'
        selectTextOnFocus
        onChangeText={(novoValor) => { atualiza(novoValor, acao) }}
        value={valorString}
    />
}