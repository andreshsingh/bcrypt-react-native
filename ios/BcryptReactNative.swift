import Foundation
import BCrypt

@objc(BcryptReactNative)
class BcryptReactNative: NSObject {

  @objc
  static func requiresMainQueueSetup() -> Bool {
    return true
  }

  @objc
  func getSalt(
    _
    rounds: NSInteger,
    resolver resolve: RCTPromiseResolveBlock,
    rejector reject: RCTPromiseRejectBlock) -> Void {
    do {
      let salt = try BCrypt.Salt(rounds: rounds)
      resolve(salt)
    } catch let error {
      reject("500","Error Generating Salt",error)
    }
  }

  @objc
  func hash(
    _
    salt: String,
    item: String,
    resolver resolve: RCTPromiseResolveBlock,
    rejector reject: RCTPromiseRejectBlock
    ) -> Void {
    do {
      let hash = try BCrypt.Hash(item, salt: salt)
      resolve(hash)
    } catch let error {
      reject("500","Error Generating Hash",error)
    }
  }

  @objc
  func compareSync(
    _
    password: String,
    hash: String,
    resolver resolve: RCTPromiseResolveBlock,
    rejector reject: RCTPromiseRejectBlock
    ) -> Void {
      let success = BCrypt.Check(password, hashed: hash)
      resolve(success)
  }

}
