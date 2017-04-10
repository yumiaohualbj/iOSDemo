//
//  main.m
//  反转整数
//
//  Created by mac on 2017/4/5.
//  Copyright © 2017年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>


int main(int argc, char * argv[]) {
    @autoreleasepool {
 
        int x = -2147483412;
        
        int64_t sum = 0;
        int flag= 1;
        if(x <INT_MIN || x >INT_MAX){
            
            return 0;
        }
        if(x < 0) {
            flag = -1;
            x = -x;
        }
        
        int n = 0;
        
        while(x != 0 ){
            n= x%10;
            sum= sum*10 + n;
            printf("sum=%d,n=%d\n",sum,n);
            x = x/10;
            
            
        }
        
        
        
        
        
        
        return 0;
    }
}



