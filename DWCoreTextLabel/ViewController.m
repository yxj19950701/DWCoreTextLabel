//
//  ViewController.m
//  DWCoreTextLabel
//
//  Created by Wicky on 16/12/4.
//  Copyright © 2016年 Wicky. All rights reserved.
//

#import "ViewController.h"
#import "DWCoreTextLabel.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    DWCoreTextLabel * label = [[DWCoreTextLabel alloc] initWithFrame:self.view.bounds];
//    label.center = self.view.center;
    label.textAlignment = NSTextAlignmentRight;
//    label.textVerticalAlignment = DWTextVerticalAlignmentTop;
    label.text = @"123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890";
    label.textInsets = UIEdgeInsetsMake(10, 10, 10, 10);
//    label.numberOflines = 3;
//    label.lineBreakMode = NSLineBreakByTru;
//    label.attributedText = [[NSAttributedString alloc] initWithString:@"我们"];
    label.textColor = [UIColor blueColor];
    [self.view addSubview:label];
    label.exclusionPaths = @[[UIBezierPath bezierPathWithRect:CGRectMake(10, 10, 100, 100)],[UIBezierPath bezierPathWithOvalInRect:CGRectMake(100, 350, 200, 100)]].mutableCopy;
    [label drawImage:[UIImage imageNamed:@"2.jpg"] atFrame:CGRectMake(100, 100, 100, 100) drawMode:(DWTextImageDrawModeSurround) target:self selector:@selector(click)];
    [label insertImage:[UIImage imageNamed:@"2.jpg"] size:CGSizeMake(50, 50) atLocation:200 descent:-50 target:nil selector:nil];
    [label addTarget:self selector:@selector(click) toRange:NSMakeRange(200, 50)];
    NSDictionary * dic = @{NSForegroundColorAttributeName:[UIColor redColor]};
    label.activeTextAttributes = dic;
    NSDictionary * dic2 = @{NSForegroundColorAttributeName:[UIColor greenColor]};
    label.activeTextHighlightAttributes = dic2;
//    [label drawImage:[UIImage imageNamed:@"2.jpg"] atFrame:CGRectMake(100, 100, 100, 100) drawMode:(DWTextImageDrawModeSurround)];
}

-(void)click
{
    NSLog(@"click");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
