// import {
//   requireNativeComponent,
//   UIManager,
//   Platform,
//   ViewStyle,
// } from 'react-native';

// const LINKING_ERROR =
//   `The package 'react-native-awesome-library10' doesn't seem to be linked. Make sure: \n\n` +
//   Platform.select({ ios: "- You have run 'pod install'\n", default: '' }) +
//   '- You rebuilt the app after installing the package\n' +
//   '- You are not using Expo managed workflow\n';

// type AwesomeLibrary10Props = {
//   color: string;
//   style: ViewStyle;
// };

// const ComponentName = 'AwesomeLibrary10View';

// export const AwesomeLibrary10View =
//   UIManager.getViewManagerConfig(ComponentName) != null
//     ? requireNativeComponent<AwesomeLibrary10Props>(ComponentName)
//     : () => {
//         throw new Error(LINKING_ERROR);
//       };

import { View, Text } from 'react-native';
import React from 'react';

export const App = () => {
  return (
    <View>
      <Text>Fachry Fauzan</Text>
    </View>
  );
};
