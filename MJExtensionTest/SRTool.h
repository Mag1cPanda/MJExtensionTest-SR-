//
//  SRTool.h
//  MJExtensionTest
//
//  Created by Siren on 16/1/25.
//  Copyright © 2016年 Siren. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SRTool : NSObject
/**
 *  json转换成字典
 *
 *  @param jsonString JSON格式的字符串
 *
 *  @return 返回字典
 */
+ (NSDictionary *)dictionaryWithJsonString:(NSString *)jsonString;

/**
 *  字典转成JSON字符串
 *
 *  @param dic 字典
 *
 *  @return 返回JSON字符串
 */
+ (NSString*)dictionaryToJson:(NSDictionary *)dic;
@end
