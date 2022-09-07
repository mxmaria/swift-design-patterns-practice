protocol Serializable {
    func serialize()
}

class JSONSerializer: Serializable {
    func serialize() {
        print("JSONSerializer \(#function)")
    }
}

class PropertyListSerializer: Serializable {
    func serialize() {
        print("PropertyListSerializer \(#function)")
    }
}

class XMLSerializer: Serializable {
    func serialize() {
        print("XMLSerializer \(#function)")
    }
}

enum Serializers {
    case json
    case plist
    case xml
}

func makeSerializer(_ type: Serializers) -> Serializable? {
    let result: Serializable?
    switch type {
    case .json: result = JSONSerializer()
    case .plist: result = PropertyListSerializer()
    case .xml: result = XMLSerializer()
    }
    return result
}

let jsonSerializer = makeSerializer(.json)
jsonSerializer?.serialize()

let xmlSerizlizer = makeSerializer(.xml)
xmlSerizlizer?.serialize()

struct SerializerFactory {
    static func makeSerializer(_ type: Serializers) -> Serializable? {
        let result: Serializable?
        switch type {
        case .json: result = JSONSerializer()
        case .plist: result = PropertyListSerializer()
        case .xml: result = XMLSerializer()
        }
        return result
    }
}

let plistSerizlizer = SerializerFactory.makeSerializer(.plist)
plistSerizlizer?.serialize()
