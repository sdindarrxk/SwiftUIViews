//
//  Validations.swift
//  SwiftUIViews
//
//  Created by Sabri DİNDAR on 30.05.2024.
//

import Foundation

// Password Validations
struct PasswordValidation: ValidationDelegate {
    var rules: [ValidationModel] = [
        ValidationModel(message: "Password cannot be empty") { !$0.isEmpty },
        ValidationModel(message: "Password must be 6-15 characters") { isValidLength($0) },
        ValidationModel(message: "Password must contain at least one uppercase letter") { containsUppercase($0) },
        ValidationModel(message: "Password must contain at least one lowercase letter") { containsLowercase($0) },
        ValidationModel(message: "Password must contain at least one digit") { containsDigit($0) },
        ValidationModel(message: "Password must be alphanumeric") { containsAlphanumeric($0) }
    ]
}

struct ConfirmPasswordValidation: ValidationDelegate {
    let password: String
    
    var rules: [ValidationModel] {
        return [
            ValidationModel(message: "Confirm Password cannot be empty") { !$0.isEmpty },
            ValidationModel(message: "Passwords do not match") { $0 == password }
        ]
    }
}


struct EmailValidation: ValidationDelegate {
    var rules: [ValidationModel] = [
        ValidationModel(message: "Email must not be empty") { $0.isEmpty },
        ValidationModel(message: "Email is invalid") { isValidEmail($0) }
    ]
}

func isValidLength(_ password: String) -> Bool {
    return password.count >= 6 && password.count <= 15
}

func containsUppercase(_ password: String) -> Bool {
    let uppercase = CharacterSet.uppercaseLetters
    return password.rangeOfCharacter(from: uppercase) != nil
}

func containsLowercase(_ password: String) -> Bool {
    let lowercase = CharacterSet.lowercaseLetters
    return password.rangeOfCharacter(from: lowercase) != nil
}

func containsAlphanumeric(_ password: String) -> Bool {
    let alphanumeric = CharacterSet.alphanumerics
    return password.rangeOfCharacter(from: alphanumeric) != nil
}

func containsDigit(_ password: String) -> Bool {
    let digits = CharacterSet.decimalDigits
    return password.rangeOfCharacter(from: digits) != nil
}

func passwordsMatch(_ password: String, _ confirmPassword: String) -> Bool {
    return password == confirmPassword
}
func isValidEmail(_ email: String) -> Bool {
    // Basit bir regex ile e-posta doğrulama
    let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Z0-9a-z.-]+\\.[A-Za-z]{2,64}"
    let emailPred = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
    return emailPred.evaluate(with: email)
}
