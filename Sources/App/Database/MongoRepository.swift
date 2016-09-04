import MongoKitten

final class MongoRepository {
    let host = "muhrusdi.local"
    let port = "27017"
    let db = "dbTaklimV6Final"
    
    static let sharedIsntance = try? MongoRepository()
    var server: MongoKitten.Server!
    var database: MongoKitten.Database {
        return server[db]
    }
    
    init() throws {
        try server = MongoKitten.Server("mongodb://\(host):\(port)")
    }
}

enum MongoRepositoryError: Error {
    case CouldNotConnect
    case CouldNotInsert
}
