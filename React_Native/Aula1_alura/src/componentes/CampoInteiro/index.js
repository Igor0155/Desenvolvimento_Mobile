import React from "react";
import { TextInput } from "react-native";



export default function CampoInteiro({valor, acao}){
    const valorString = String(valor)
    return <TextInput
    keyboardType='number-pad'
    selectTextOnFocus
    onChangeText={(novoValor)=>{acao(novoValor)}} 
    value={valorString}
    />
}