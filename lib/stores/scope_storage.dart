enum KeyStore { userRole, userName, userProfileImage }

class ScopeStorage {
  var scopeData = Map<KeyStore, Object>();

  void saveData({KeyStore? store, Object? object}) {
    scopeData[store!] = object!;
    print('Successfully saved');
  }

  void deleteData({KeyStore? scope}) {
    scopeData.remove(scope);
    print('deleteData Success');
  }

  Object? getData({KeyStore? store}) {
    print(scopeData[store]);
    return scopeData[store];
  }

  void updateDataWhileNotPresent({KeyStore? store, Object? object}) {
    scopeData.putIfAbsent(store!, () => object!);
    print('updateDataWhileNotPresent Success');
  }

  void replaceData({KeyStore? store, Object? object}) {
    scopeData.update(store!, (e) => object!);
    print('replaceData Success');
  }

  void clear() {
    scopeData.clear();
    print('clear Success');
  }
}
