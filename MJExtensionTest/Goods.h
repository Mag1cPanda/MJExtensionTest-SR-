//
//  Goods.h
//  MJExtensionTest
//
//  Created by Siren on 16/1/25.
//  Copyright © 2016年 Siren. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MJBaseObject.h"
#import "GoodsData.h"
@interface Goods : NSObject

@property (nonatomic, copy) NSString *error_code;
@property (nonatomic, copy) NSString *s;
@property (nonatomic, copy) NSString *error_msg;
@property (nonatomic, strong) GoodsData *data;
@end
