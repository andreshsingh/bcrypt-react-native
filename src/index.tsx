import { NativeModules } from 'react-native';

type BcryptReactNativeType = {
  getSalt(rounds: number): Promise<string>;
  hash(salt: string, rawValue: string): Promise<string>;
  compareSync(password: String, hash: string): Promise<string>;
};

const { BcryptReactNative } = NativeModules;

export default BcryptReactNative as BcryptReactNativeType;
