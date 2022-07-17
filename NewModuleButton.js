import React from 'react';
import {Button} from 'react-native';
import CalendarModule from './NativeCalendarModule';
import CalendarManager from './SwiftCalendarManager';

// constantsToExportで返されている値
const {DEFAULT_EVENT_NAME} = CalendarModule.getConstants();
const managerConstants = CalendarManager.getConstants();

const NewModuleButton = () => {
  const onPress = async () => {
    console.log(DEFAULT_EVENT_NAME);
    CalendarModule.createCalendarEvent(
      'testName',
      'testLocation',
      (error, eventId) => {
        if (error) {
          console.error(`Error found! ${error}`);
        }
        console.log(`event id ${eventId} returned`);
      },
    );

    try {
      const eventId = await CalendarModule.createCalendarEventPromise(
        'Party',
        'my house',
      );
      console.log(`Created a new promise event with id ${eventId}`);
    } catch (e) {
      console.error(e);
    }

    console.log(managerConstants);
    const r = await CalendarManager.add('Riku');
    console.log('Returned is ' + r);
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
