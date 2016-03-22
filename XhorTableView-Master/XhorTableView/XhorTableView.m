//
//  VtableView.m
//  VtableView
//
//  Created by xueyongwei on 16/3/22.
//  Copyright © 2016年 xueyongwei. All rights reserved.
//

#import "XhorTableView.h"
#import "XtableCell.h"

@implementation XhorTableView
{
    UITableView *XtableView;
    XhorTbaleViewBlock tmpBlock;
}
-(id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self xLoadInit];
    }
    return self;
}
-(id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self xLoadInit];
    }
    return self;
}
-(void)XhorTbaleViewDidSelectedWIthBlock:(XhorTbaleViewBlock)block
{
    tmpBlock = block;
}
-(void)xLoadInit
{
    self.tableViewCellHeight = 100;
    XtableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
    XtableView.delegate = self;
    XtableView.dataSource = self;
    CGPoint center = XtableView.center;
    XtableView.transform = CGAffineTransformRotate(XtableView.transform, -M_PI_2);
    XtableView.center = center;
    XtableView.frame = CGRectMake(5, 5, self.frame.size.width-10, self.frame.size.height-10);
    self.clipsToBounds = YES;
    [self addSubview:XtableView];
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning shoule delete 展示用，真实项目请删除
    return 10;//展示用，真实项目请删除
    return self.dataSource.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    XtableCell *cell = (XtableCell *)[tableView dequeueReusableCellWithIdentifier:@"XtableCellID"];
    if (!cell) {
        cell = [[[NSBundle mainBundle]loadNibNamed:@"XtableCell" owner:self options:nil]lastObject];
        cell.transform = CGAffineTransformRotate(cell.transform, M_PI_2);
    }
#warning edit here 在此修改需要cell里展示的数据，cell的排版与显示参考XtableCell.h/m/xib
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
#warning shoule delete 展示用，真实项目请删除
    return 300;//展示用，真实项目请删除
    return self.tableViewCellHeight;
}
-(void)XtableViewReload
{
    [XtableView reloadData];
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    tmpBlock(indexPath.row);
}
@end
