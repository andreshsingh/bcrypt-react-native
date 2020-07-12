# bcrypt-react-native

Native implementation of bcrypt for react-native

## Installation

```sh
npm install bcrypt-react-native
```
or
```sh
yarn add bcrypt-react-native
```

## Usage

```js
import BcryptReactNative from "bcrypt-react-native";

// ...

const salt = await BcryptReactNative.getSalt(10);
const hash = await BcryptReactNative.hash(salt, 'password');
```

## Contributing

See the [contributing guide](CONTRIBUTING.md) to learn how to contribute to the repository and the development workflow.

## License

MIT
