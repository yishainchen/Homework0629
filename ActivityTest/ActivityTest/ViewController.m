//
//  ViewController.m
//  ActivityTest
//
//  Created by yishain on 6/30/15.
//  Copyright (c) 2015 yishain. All rights reserved.
//

#import "ViewController.h"
#import "LineActivity.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showLine:(id)sender {
    
    UIImage *image = [UIImage imageNamed:@"Line"];
    NSArray *array = @[@"哭哭",image];
    LineActivity *line = [[LineActivity alloc ]init];
    UIActivityViewController *controller = [[UIActivityViewController alloc] initWithActivityItems:array   applicationActivities:@[line]];
                                            controller.excludedActivityTypes = @[UIActivityTypePostToFacebook];
                                            
    [self presentViewController:controller animated:YES completion:nil];
                                            
    
}
@end
