import Cocoa

class EditableTextField: NSTextField {
    override func becomeFirstResponder() -> Bool {
        if super.becomeFirstResponder() {
            if let textView = window?.firstResponder as? NSTextView {
                textView.isContinuousSpellCheckingEnabled = true
            }
            return true
        }
        return false
    }
    
}
