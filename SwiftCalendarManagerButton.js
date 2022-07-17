import React from 'react';
import {Button} from 'react-native';
import CalendarManager from './SwiftCalendarManager';

// constantsToExportで返されているデータ
const constants = CalendarManager.getConstants();

const SwiftCalendarManagerButton = () => {
  const onPress = async () => {
    console.log('constants is');
    console.log(constants);

    const returned = await CalendarManager.call('Riku');
    console.log('Returned is ' + returned);
  };
  return <Button title="SwiftCalendarManager" onPress={onPress} />;
};

export default SwiftCalendarManagerButton;
