import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros
import SwiftSyntaxMacrosTestSupport
import XCTest

// Macro implementations build for the host, so the corresponding module is not available when cross-compiling. Cross-compiled tests may still make use of the macro itself in end-to-end tests.
#if canImport(GenerateMacros)
import GenerateMacros

let testMacros: [String: Macro.Type] = [
    "GenerateInit": GenerateInitMacro.self,
]
#endif

final class GenerateTests: XCTestCase {
#if canImport(GenerateMacros)
    func testMacro() throws {
        print("here..!")
        
        assertMacroExpansion(
            """
            @GenerateInit
            struct Student {
                var identification: String
                var name: String
                var age: Int
            }
            """,
            expandedSource: """
            struct Student {
                var identification: String
                var name: String
                var age: Int

                init(identification: String, name: String, age: Int) {
                    self.identification = identification
                    self.name = name
                    self.age = age
                }
            }
            """,
            macros: testMacros
        )
    }
#endif
}
