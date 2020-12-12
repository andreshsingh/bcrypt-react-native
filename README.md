# bcrypt-react-native

**Native** implementation of bcrypt for react-native.

Uses [BCrypt](https://libraries.io/cocoapods/BCrypt) for iOS.

## Installation

```sh
npm install bcrypt-react-native
```
or
```sh
yarn add bcrypt-react-native
```

```sh
cd ios && pod install
```

## Usage

```js
import BcryptReactNative from 'bcrypt-react-native';

// ...
try{

const salt = await BcryptReactNative.getSalt(10);
const hash = await BcryptReactNative.hash(salt, 'password');
const isSame = await BcryptReactNative.compareSync('password', hash);
} catch(e) {
  console.log({ e })
}
```

## Contributing

See the [contributing guide](CONTRIBUTING.md) to learn how to contribute to the repository and the development workflow.

## License

MIT
