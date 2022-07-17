import React from 'react';
import {Button, NativeEventEmitter} from 'react-native';
import Counter from './CounterModule';

const counterEventEmitter = new NativeEventEmitter(Counter);

const CounterButton = () => {
  counterEventEmitter.addListener('onIncrement', res => {
    console.log(res); // {count: n}
  });

  const onPress = () => {
    Counter.increment();
  };

  return <Button title="Counter" onPress={onPress} />;
};

export default CounterButton;
