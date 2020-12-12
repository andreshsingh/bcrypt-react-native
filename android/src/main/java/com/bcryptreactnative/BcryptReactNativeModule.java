package com.bcryptreactnative;

import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;

public class BcryptReactNativeModule extends ReactContextBaseJavaModule {
    private static ReactApplicationContext reactContext;

    BcryptReactNativeModule(ReactApplicationContext context) {
        super(context);
        reactContext = context;
    }

    @Override
    public String getName() {
        return "BcryptReactNative";
    }

    @ReactMethod
    public void getSalt(
        int rounds,
        Promise promise
    ) {
        try {
            String salt = BCrypt.gensalt(rounds);
            promise.resolve(salt);
        } catch (Exception e){
            promise.reject("Error Generating Salt", e);
        }
    }

    @ReactMethod
    public void hash(
            String salt,
            String item,
            Promise promise
    ) {
        try {
            String hash = BCrypt.hashpw(item, salt);
            promise.resolve(hash);
        } catch (Exception e){
            promise.reject("Error Generating Hash", e);
        }
    }

    @ReactMethod
    public void compareSync(
            String password,
            String hash,
            Promise promise
    ) {
        try {
            Boolean success = BCrypt.checkpw(password, hash);
            promise.resolve(success);
        } catch (Exception e){
            promise.reject("Error Checking Hash", e);
        }
    }
}
