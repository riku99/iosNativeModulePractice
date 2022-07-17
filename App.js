import React from 'react';
import {SafeAreaView} from 'react-native';
import CounterButton from './CounterButton';
import NewModuleButton from './NewModuleButton';
import SwiftCalendarManagerButton from './SwiftCalendarManagerButton';

const App = () => {
  return (
    <SafeAreaView>
      <NewModuleButton />
      <SwiftCalendarManagerButton />
      <CounterButton />
    </SafeAreaView>
  );
};

export default App;
