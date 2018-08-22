//
//  ViewController.m
//  hello-world
//
//  Created by Cellica Software Pvt Ltd on 22/08/18.
//  Copyright © 2018 Test. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self reverseString:@"Hello World"];
    
}

-(void) reverseString:(NSString *)myString
{
    NSMutableString *reversedString = [NSMutableString string];
    NSInteger charIndex = [myString length];
    while (myString && charIndex > 0) {
        charIndex--;
        NSRange subStrRange = NSMakeRange(charIndex, 1);
        [reversedString appendString:[myString substringWithRange:subStrRange]];
    }
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Hello World" message:reversedString delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"OK", nil];
    
    [alert show];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
