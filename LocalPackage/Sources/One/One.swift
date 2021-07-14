import COne

public struct NativeType {
    public init() { 
        print("Native")
    }
}

extension ImportedType {
    public init() {
        print("Imported")
        self = ImportedType(foo: 42)
    }
}