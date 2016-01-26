//
//  ViewController.m
//  MJExtensionTest
//
//  Created by Siren on 16/1/23.
//  Copyright © 2016年 Siren. All rights reserved.
//

#import "ViewController.h"
#import "MJExtension.h"
#import "AFNetworking.h"
#import "SRTool.h"
#import "Goods.h"
#import "DataRows.h"
#import "DataBanners.h"
@interface ViewController ()
{
    NSDictionary *dic;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    dic = @{
        @"statuses" : @[
                        @{
                            @"text" : @"今天天气真不错！",
                            
                            @"user" : @{
                                    @"name" : @"Rose",
                                    @"icon" : @"nami.png"
                                    }
                            },
                        
                        @{
                            @"text" : @"明天去旅游了",
                            
                            @"user" : @{
                                    @"name" : @"Jack",
                                    @"icon" : @"lufy.png"
                                    }
                            }
                        
                        ],
        
        @"ads" : @[
                   @{
                       @"image" : @"ad01.png",
                       @"url" : @"http://www.小码哥ad01.com"
                       },
                   @{
                       @"image" : @"ad02.png",
                       @"url" : @"http://www.小码哥ad02.com"
                       }
                   ],
        
        @"totalNumber" : @"2014",
        @"previousCursor" : @"13476589",
        @"nextCursor" : @"13476599"
    };
    
//    NSString *jsonStr = [SRTool dictionaryToJson:dic];
//    NSLog(@"%@",jsonStr);
    
    [self loadJsonData];
    
}

-(void)loadJsonData{

//    NSString *url = @"http://api.smzdm.com/v1/yuanchuang/articles?f=iphone&s=561083b057156759800&imgmode=0&v=5.11&limit=20";
    
    NSString *url = @"http://api.smzdm.com/v2/util/banner?f=iphone&type=home&v=6.0";
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager GET:url parameters:nil progress:^(NSProgress * downloadProgress) {
       
        NSLog(@"下载中");
        
    } success:^(NSURLSessionDataTask *task, id responseObject) {
        
        
        NSDictionary *dict = responseObject;
        Goods *goods = [Goods mj_objectWithKeyValues:dict];
//        NSLog(@"%@",goods.data.rows);
        for (DataRows *rows in goods.data.rows) {
            NSLog(@"%@",rows.link);
        }
        
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        
        NSLog(@"失败");
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
