//
//  UITableViewCell+SectionCorner.h
//  cornerBac
//
//  Created by xuliying on 2017/8/2.
//  Copyright © 2017年 xly. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableViewCell (SectionCorner)

-(void)addSectionCornerWithTableView:(UITableView *)tableView indexPath:(NSIndexPath *)indexPath cornerViewframe:(CGRect)frame cornerRadius:(CGFloat)cornerRadius;

@property(nonatomic,strong) UIView *cornerV;
@property(nonatomic,strong) CAShapeLayer *topLay;
@property(nonatomic,strong) CAShapeLayer *bottomLay;
@end
