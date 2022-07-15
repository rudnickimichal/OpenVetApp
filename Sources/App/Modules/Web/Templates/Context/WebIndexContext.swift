public struct WebIndexContext {
    public let title: String
    public let webHeaderMenu: WebHeaderMenuContext
    public let webBody: WebBodyContext
    public let webFooterMenu: WebFooterMenuContext
    
    public init(title: String,
                headerMenu: WebHeaderMenuContext,
                body: WebBodyContext,
                footerMenu: WebFooterMenuContext) {
        self.title = title
        self.webHeaderMenu = headerMenu
        self.webBody = body
        self.webFooterMenu = footerMenu
    }
}
