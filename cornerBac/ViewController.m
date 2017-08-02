//
//  ViewController.m
//  cornerBac
//
//  Created by xuliying on 2017/8/2.
//  Copyright © 2017年 xly. All rights reserved.
//

#import "ViewController.h"
#import "TestTableViewCell.h"
#import "UITableViewCell+SectionCorner.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UITableView *tableV = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStyleGrouped];
    tableV.dataSource = self;
    tableV.delegate = self;
    [tableV registerNib:[UINib nibWithNibName:@"TestTableViewCell" bundle:nil] forCellReuseIdentifier:@"TestTableViewCell"];
    [self.view addSubview:tableV];

    // Do any additional setup after loading the view, typically from a nib.
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 3;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 3;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    TestTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TestTableViewCell"];
    [cell addSectionCornerWithTableView:tableView indexPath:indexPath cornerViewframe:CGRectMake(20, 0, self.view.frame.size.width - 40, 44) cornerRadius:5];
    return cell;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
