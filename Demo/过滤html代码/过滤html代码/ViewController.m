//
//  ViewController.m
//  过滤html代码
//
//  Created by mac on 16/9/21.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString * desString  = @"<p>\U5b89\U5168\U7ba1\U7406\U9879\U76ee\Uff1a\U5e94\U8fdb\U884c\U5b89\U5168\U6559\U80b2\U57f9\U8bad\U7684\U60c5\U51b5\U5305\U62ec\Uff08&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; \Uff09</p>";
    NSString * text = [self removeHTML:desString];
    NSLog(@"%@",text);
    
    
    
    
   //
    //style=\"text-align: left; line-height: normal; margin-top: 8px; margin-bottom: 0px; margin-left: 0.4in; unicode-bidi: embed; direction: ltr; -ms-word-break: normal;\"
   // \U5b89\U5168\U6280\U672f\U4ea4\U5e95\U5fc5\U987b\U5c65\U884c\U4ea4\U5e95\U7b7e\U5b57\U624b\U7eed\Uff0c\U7531
   // \Uff08 \Uff09\U7b7e\U5b57\Uff0c\U7531(&nbsp;&nbsp; )\U96c6\U4f53\U7b7e\U5b57\U8ba4\U53ef\Uff0c\U4e0d\U51c6\U4ee3\U7b7e\U548c\U6f0f\U7b7e\U3002
   // \U5b89\U5168\U7ba1\U7406\U9879\U76ee\Uff1a
    // Do any additional setup after loading the view, typically from a nib.
}


- (NSString *)removeHTML:(NSString *)html{
 
 NSScanner *theScanner;
 
 NSString *text = nil;
 
 
 
 theScanner = [NSScanner scannerWithString:html];
 
 
 
 while ([theScanner isAtEnd] == NO) {
 
 // find start of tag
 
 [theScanner scanUpToString:@"<" intoString:NULL] ;
 
 
 
 // find end of tag
 
 [theScanner scanUpToString:@">" intoString:&text] ;
 
 
 
 // replace the found tag with a space
 
 //(you can filter multi-spaces out later if you wish)
 
 html = [html stringByReplacingOccurrencesOfString:[NSString stringWithFormat:@"%@>", text] withString:@""];
 
 
 
 }
 
 return html;
 
 }


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
