import Cocoa

class WindowController: NSWindowController {

    override var document: AnyObject? {
        didSet {
            // pass the document instance to the asociated view controller
            let viewController = window!.contentViewController as! ViewController
            viewController.document = document as? Document
        }
    }

}
