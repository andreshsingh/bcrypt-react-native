import * as React from 'react';
import BcryptReactNative from 'bcrypt-react-native';
import { StyleSheet, View, Button, Alert } from 'react-native';

export default function App() {
  const _genSalt = async () => {
    try {
      const salt = await BcryptReactNative.getSalt(10);
      console.log({ salt });
      Alert.alert('Salt', salt);
    } catch (e) {
      console.log({ e });
    }
  };

  const _hash = async () => {
    try {
      const salt = await BcryptReactNative.getSalt(10);
      const hash = await BcryptReactNative.hash(salt, 'password');
      console.log({ hash });
      Alert.alert('Hash', hash);
    } catch (e) {
      console.log({ e });
    }
  };

  return (
    <View style={styles.container}>
      <Button title={'Generate salt'} onPress={_genSalt} />
      <Button title={'Hash'} onPress={_hash} />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
});
