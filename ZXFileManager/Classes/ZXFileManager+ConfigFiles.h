//
//  ZXFileManager+ConfigFiles.h
//  FileManager
//
//  Created by 郑振兴 on 2017/6/13.
//  Copyright © 2017年 郑振兴. All rights reserved.
//

#import "ZXFileManager.h"

@interface ZXFileManager (ConfigFiles)
/**
 *  @brief  在配置文件目录下创建子目录
 *
 *  @return 创建是否成功
 */
+ (BOOL)createConfigFilesSubDirectoryAtConfigFiles:(NSString *)folderName;
/**
 *  @brief  配置文件目录下，指定名称的子目录是否存在
 *
 *  @return 是否存在
 */
+ (BOOL)subDirectoryisExistsWithFolderName:(NSString *)folderName;
/**
 *  @brief  配置文件目录下指定子目录下的指定文件是否存在
 *
 *  @return 是否存在
 */
+ (BOOL)file:(NSString *)fileName isExistsAtssubDirectory:(NSString *)folderName;
/**
 *  @brief  将数据存储到指定子目录下
 *
 *  @return 是否写入成功
 */
+ (BOOL)data:(id)data saveWithFileName:(NSString *)fileName subDirectory:(NSString *)folderName;
/**
 *  @brief  删除指定子目录下的指定文件
 *
 *  @return 是否删除成功
 */
+(BOOL)deleteFileWithFileName:(NSString *)fileName subDirectory:(NSString *)folderName;
/**
 获取指定文件的路径
 
 @param fileName 文件名称
 @param folderName 子文件夹名称
 @return 路径
 */
+ (NSString *)filePathWithFileName:(NSString *)fileName subDirectory:(NSString *)folderName;
@end
