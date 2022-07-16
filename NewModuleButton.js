import React from 'react';
import {Button} from 'react-native';
import CalendarModule from './NativeCalendarModule';

// constantsToExportで返されている値
const {DEFAULT_EVENT_NAME} = CalendarModule.getConstants();

const NewModuleButton = () => {
  const onPress = () => {
    console.log(DEFAULT_EVENT_NAME);
    CalendarModule.createCalendarEvent('testName', 'testLocation');
  };

  return (
    <Button
      title="Click to invoke your native module!"
      color="#841584"
      onPress={onPress}
    />
  );
};

export default NewModuleButton;
