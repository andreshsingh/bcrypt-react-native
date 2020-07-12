import { NativeModules } from 'react-native';

type BcryptReactNativeType = {
  multiply(a: number, b: number): Promise<number>;
};

const { BcryptReactNative } = NativeModules;

export default BcryptReactNative as BcryptReactNativeType;
