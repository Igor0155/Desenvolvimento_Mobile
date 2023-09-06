import React from "react";

import { StatusBar } from "expo-status-bar";
import { SafeAreaView, KeyboardAvoidingView, Platform } from "react-native";
import estilosGlobal, { cores } from "../../estilos";
import estilos from "./estilos";


export default function TelaPadrao({ children }) {
    // SafeAreaView funciona apenas para o IOS (Safe da margem inferior e superior)
    //StatusBar serve para ANdroid (Mesma função do SafeAreaView)
    return <>
        <SafeAreaView style={estilos.ajusteTela}>
            <StatusBar backgroundColor={cores.roxo} />
            {/* KeyboardAvoidingView para o teclado nao tampar o campo */}
            <KeyboardAvoidingView
                // <Se for 'Ios' aplica 'paddin' senao aplica 'height'> 
                behavior={Platform.OS === "ios" ? 'padding' : 'height'}
                //preencher para nao cortar a tela no final da rolagem(caso tenha pouco item )
                style={estilosGlobal.preencher}
                keyboardVerticalOffset={1}
            >
                {children}
            </KeyboardAvoidingView>
        </SafeAreaView>
        <SafeAreaView style={estilos.ajusteTelaBaixo} />
    </>

}