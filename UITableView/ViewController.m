//
//  ViewController.m
//  UITableView
//
//  Created by apple on 16/12/26.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ViewController.h"
#import "Province.h"



@interface ViewController ()<UITableViewDataSource>
{

    NSArray *_allProvinces;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //1.创建tableView
    UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    tableView.dataSource = self;
    [self.view addSubview:tableView];
    
    
    //2.初始化数据
    //广东
    Province *gd = [Province privinceWithHeader:@"广东" footer:@"广东好" cities:@[@"广州",@"深圳"]];
                     
//    gd.header = @"广东";
//    gd.footer = @"广东好";
//    gd.cities = @[@"广州",@"深圳",@"梅州"];
    
    
    
    //湖南
    Province *hn = [Province privinceWithHeader:@"湖南" footer:@"湖南也好" cities:@[@"长沙",@"益阳"]];
//    hn.header = @"湖南";
//    hn.footer = @"湖南也好";
//    hn.cities = @[@"长沙",@"益阳"];
    
    _allProvinces = @[ gd, hn ];
    
}

#pragma mark - UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{

    return _allProvinces.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    
    //取得第section组的省份
    Province *province =_allProvinces[section];
    
    
    return province.cities.count;
    

}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    
    //获取第section组第row行的数据
    Province *province = _allProvinces[indexPath.section];
    
    
    
    //2.展示文字数据
    cell.textLabel.text = province.cities[indexPath.row];
    
    return cell;
}
#pragma mark - 第section组的头部标题
- (nullable NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{

    Province *province = _allProvinces[section];
    return [province header];
    
}

#pragma mark 第section组显示的尾部标题
- (nullable NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{

    return [_allProvinces[section] footer];
    
}



#pragma mark - 拼音检索 返回表格右边显示的索引条
- (nullable NSArray<NSString *> *)sectionIndexTitlesForTableView:(UITableView *)tableView
{
//    return @[@"广东",@"湖南"];

    NSMutableArray *titles = [NSMutableArray array];
    for (Province *p in _allProvinces) {
        [titles addObject:p.header];
    }

    return titles;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
