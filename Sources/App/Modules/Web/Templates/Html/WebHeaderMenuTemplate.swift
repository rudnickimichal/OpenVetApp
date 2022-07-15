import Vapor
import SwiftHtml

public struct WebHeaderMenuTamplate: TemplateRepresentable {
    public var context: WebHeaderMenuContext
    
    init(_ context: WebHeaderMenuContext) {
        self.context = context
    }
    @TagBuilder
    public func render(_ req: Request) -> Tag {
        Div{
            H1(context.title)
        }.class(["p-1", "mb-1"])
    }
}
