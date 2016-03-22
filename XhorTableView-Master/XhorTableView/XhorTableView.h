//
//  VtableView.h
//  VtableView
//
//  Created by xueyongwei on 16/3/22.
//  Copyright © 2016年 xueyongwei. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XhorTableView : UIView<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic,strong)NSMutableArray *dataSource;
@property (nonatomic,assign)CGFloat tableViewCellHeight;
-(void)XtableViewReload;
@end
