# XhorTableView-Master
横向tableView 支持xib/sb/纯代码 一句话创建，代码块回调
<br /><br />
xib/sb 使用说明 EXPLAIN
===============
>1.拖入XhorTableView文件夹
>2.在xib或者storyboard上拖一个uiview，更改uiview的class为XhorTableView。运行，横向tableView已集成。
<br /><br />
纯代码 使用说明 EXPLAIN
===============
>1.拖入XhorTableView文件夹
>2.initWithFrame／init创建XhorTableView实例，添加到self.view。运行，横向tableView已集成。
<br /><br /><br /><br />
使用回调获取点击了第几个
===============
[self.xbView XhorTbaleViewDidSelectedWIthBlock:^(NSInteger index) {<br />
        NSLog(@"点击了第 %ld 个",index);<br />
    }];<br />
