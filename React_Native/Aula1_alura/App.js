import React from 'react';
// import Servicos from './src/telas/Servicos';
import Carrinho from './src/telas/Carrinho';

import Rotas from './src/Rotas';

// Para usar a moeda brasileira R$
import 'intl';
import 'intl/locale-data/jsonp/pt-BR'
import TelaPadrao from './src/componentes/TelaPadrao';


export default function App() {
  console.log('teste')
  return <TelaPadrao>
      <Rotas />
  </TelaPadrao>
}



