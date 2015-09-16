//
//  ViewController.m
//  ArrayContainSameObject
//
//  Created by 杜 维欣 on 15/9/15.
//  Copyright (c) 2015年 nododo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic,strong)NSArray *firstArray;
@property (nonatomic,strong)NSArray *secondArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.firstArray = @[@"iOS",@"Java",@"Ruby"];
    self.secondArray = @[@".Net",@"Php",@"iOS"];
    NSLog(@"%@",[self justSameObjectWithFirstArray:self.firstArray secondArray:self.secondArray]);
}

- (NSArray *)justSameObjectWithFirstArray:(NSArray *)firstArray secondArray:(NSArray *)secondArray
{
    NSMutableArray *tempArray = [NSMutableArray array];
    for (NSString *firstStr in firstArray) {
        BOOL same = NO;
        for (NSString *secondStr in secondArray) {
            if ([firstStr isEqualToString:secondStr]) {
                same = YES;
            }
        }
        if (same == YES) {
            
            [tempArray addObject:firstStr];
        }else
        {
        }
    }
    
    for (NSString *firstStr in secondArray) {
        BOOL same = NO;
        for (NSString *secondStr in firstArray) {
            if ([firstStr isEqualToString:secondStr]) {
                same = YES;
            }
        }
        if (same == YES) {
            
            for (NSString *tempStr in tempArray) {
                if (![tempStr isEqualToString:firstStr]) {
                    
                    [tempArray addObject:firstStr];
                }
            }
        }else
        {
            
        }
    }
    return tempArray;
}

@end
