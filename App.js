import React from 'react';
import {SafeAreaView} from 'react-native';
import CounterButton from './CounterButton';
import NewModuleButton from './NewModuleButton';

const App = () => {
  return (
    <SafeAreaView>
      <NewModuleButton />
      <CounterButton />
    </SafeAreaView>
  );
};

export default App;
