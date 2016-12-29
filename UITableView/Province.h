//
//  Province.h
//  UITableView
//
//  Created by apple on 16/12/28.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Province : NSObject

@property (nonatomic, copy) NSString *header;
@property (nonatomic, copy) NSString *footer;
@property (nonatomic, strong) NSArray *cities;

+(id)privinceWithHeader:(NSString *)header footer:(NSString *)footer cities:(NSArray *)cities;

@end
