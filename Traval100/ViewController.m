//
//  ViewController.m
//  Traval100
//
//  Created by admin on 12-12-17.
//  Copyright (c) 2012年 admin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize _backimage;
@synthesize _but;
- (void)viewDidLoad
{
    [super viewDidLoad];
    [self initframe];

	// Do any additional setup after loading the view, typically from a nib.
}
-(void)initframe{
    _backimage=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 320, 480)];
    UIImage*image=[UIImage imageNamed:@"首页面背景.png"];
    _backimage.image=image;
    [self.view addSubview:_backimage];
    //    [_backimage release];
    for (int i=1; i<6; i++) {
        UIButton*btn=[[UIButton alloc]initWithFrame:CGRectMake(i==1?20:i==2?20:i==3?152:i==4?25:i==5?152:152, i==1?64:i==2?181:i==3?181:i==4?293:i==5?293:347, i==1?260:i==2?128:i==3?128:i==4?128:i==5?128:128, i==1?104:i==2?104:i==3?104:i==4?104:i==5?49:49)];
        [btn setBackgroundImage:[UIImage imageNamed:i==1?@"汽车票预定.png":i==2?@"帐户.png":i==3?@"公告.png":i==4?@"建议.png":i==5?@"关于我们.png":@"注册登录.png"] forState:UIControlStateNormal];
        btn.tag=10+i;
        [btn addTarget:self action:@selector(enterthenextinterface:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:btn];
        [btn release];
        
    }
    
}
-(void)enterthenextinterface:(id)sender{
    NSLog(@"111");
    UIButton*bu=(UIButton*)sender;
    NSLog(@"111");
    switch (bu.tag) {
        case 1:
            
            break;
        case 2:
            break;
        case 3:
            break;
        case 4:
            break;
        case 5:
            break;
        case 6:
            break;
            
            
        default:
            break;
    }
}
-(void)dealloc{
    [super dealloc];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
