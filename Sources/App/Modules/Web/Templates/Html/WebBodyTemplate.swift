import Vapor
import SwiftHtml

public struct WebBodyTamplate: TemplateRepresentable {
    public var context: WebBodyContext
    
    init(_ context: WebBodyContext) {
        self.context = context
    }
    @TagBuilder
    public func render(_ req: Request) -> Tag {
        Div{
            H1(context.title)
        }.class(["p-1", "mb-1"])
    }
}
