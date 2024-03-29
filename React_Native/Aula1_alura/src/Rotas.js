import React from "react";

import { NavigationContainer } from "@react-navigation/native";
import { createBottomTabNavigator } from "@react-navigation/bottom-tabs";

import { cores } from "./estilos";

import Servicos from './telas/Servicos';
import Carrinho from "./telas/Carrinho";


const Tab = createBottomTabNavigator();


export default function Rotas(){
    return <NavigationContainer>
        <Tab.Navigator
        tabBarOptions={{
            activeTintColor: cores.roxo,
            inactiveTintColor: cores.claro,
            activeBackgroundColor: cores.roxo,
            inactiveBackgroundColor: cores.laranjaMedio,
            style: {
                height: 50,
            },
            labelStyle: {
                width: '100%',
                flex: 1,
                fontWeight: 'bold',
                fontSize: 16,
                lineHeight: 21,
                marginTop: 3,
                paddingTop:21,
                backgroundColor: cores.laranjaMedio,
            },
            keyboardHidesTabBar: true,
            
        }}>
            <Tab.Screen name="Serviços" component={Servicos}/>
            <Tab.Screen name="Carrinho" component={Carrinho}/>
        </Tab.Navigator>
    </NavigationContainer>
}

