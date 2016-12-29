//
//  Province.m
//  UITableView
//
//  Created by apple on 16/12/28.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "Province.h"

@implementation Province
+(id)privinceWithHeader:(NSString *)header footer:(NSString *)footer cities:(NSArray *)cities
{
    Province *p = [[Province alloc] init];
    p.header = header;
    p.footer = footer;
    p.cities = cities;
    return p;
    

}
@end
