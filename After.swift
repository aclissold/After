import Foundation

public func after(seconds: Double, closure: () -> ()) {
    let delay = dispatch_time(DISPATCH_TIME_NOW,
                              Int64(seconds * Double(NSEC_PER_SEC)))
    let mainQueue = dispatch_get_main_queue()
    dispatch_after(delay, mainQueue, closure)
}
