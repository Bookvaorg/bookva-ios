//
//  iBookvaAppDelegate.m
//  iBookva
//
//  
//

#import "iBookvaAppDelegate.h"
#import "iBookvaViewController.h"

@interface iBookvaAppDelegate ()

@property (nonatomic, retain) UINavigationController *navigationController;

@end

@implementation iBookvaAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  // create a navigation controller and perform some simple styling
  self.navigationController = [UINavigationController new];
  self.navigationController.navigationBar.barTintColor = [UIColor darkGrayColor];
  [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor]}];
  
  // create and navigate to a view controller
  UIViewController *viewController = [self createInitialViewController];
  [self.navigationController pushViewController:viewController animated:NO];

  // show the navigation controller
  self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
  self.window.rootViewController = self.navigationController;
  [self.window makeKeyAndVisible];
  return YES;
}

- (UIViewController *)createInitialViewController {
  return [[iBookvaViewController alloc] init];
}

@end
