import Foundation
import PrepShared
import PrepBiometrics

protocol GenericQuantity {
    var value: Double { get }
    var prefix: String? { get }
}

extension Quantity: GenericQuantity {
    var prefix: String? {
        date?.biometricFormat
    }
}
