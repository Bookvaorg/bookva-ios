//
//  View.h

//
//  
//

@import Foundation;

/// A protocol which is adopted by views which are backed by view models.
@protocol ReactiveView <NSObject>

/// Binds the given view model to the view
- (void)bindViewModel:(id)viewModel;

@end
