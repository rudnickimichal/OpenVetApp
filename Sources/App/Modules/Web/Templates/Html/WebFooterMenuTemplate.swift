import Vapor
import SwiftHtml

public struct WebFooterMenuTamplate: TemplateRepresentable {
    public var context: WebFooterMenuContext
    
    init(_ context: WebFooterMenuContext) {
        self.context = context
    }
    @TagBuilder
    public func render(_ req: Request) -> Tag {
        Div{
            H1(context.title)
        }.class(["position-absolute", "bottom-0", "p-1", "mb-1"])
    }
}
