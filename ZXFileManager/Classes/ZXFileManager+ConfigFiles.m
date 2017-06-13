//
//  ZXFileManager+ConfigFiles.m
//  FileManager
//
//  Created by 郑振兴 on 2017/6/13.
//  Copyright © 2017年 郑振兴. All rights reserved.
//

#import "ZXFileManager+ConfigFiles.h"

@implementation ZXFileManager (ConfigFiles)
+ (BOOL)createConfigFilesSubDirectoryAtConfigFiles:(NSString *)folderName;{
    NSString *filePath = [[self configFilePath] stringByAppendingPathComponent:folderName];
    NSFileManager *fileManager = [NSFileManager defaultManager];
    if(![fileManager fileExistsAtPath:filePath]){
        NSError *error = nil;
        [fileManager createDirectoryAtPath:filePath withIntermediateDirectories:YES attributes:nil error:&error];
        return YES;
    }
    return NO;
}
+ (BOOL)subDirectoryisExistsWithFolderName:(NSString *)folderName{
    
    NSString *filePath = [[self configFilePath] stringByAppendingPathComponent:folderName];
    NSFileManager *fileManager = [NSFileManager defaultManager];
    return [fileManager fileExistsAtPath:filePath];
}
+ (BOOL)file:(NSString *)fileName isExistsAtssubDirectory:(NSString *)folderName{
    
    
    NSString *filePath = [[[self configFilePath] stringByAppendingPathComponent:folderName] stringByAppendingPathComponent:fileName];
    NSFileManager *fileManager = [NSFileManager defaultManager];
    return [fileManager fileExistsAtPath:filePath];
    
}
+ (BOOL)data:(id)data saveWithFileName:(NSString *)fileName subDirectory:(NSString *)folderName{
    
    NSString *filePath = [[[self configFilePath] stringByAppendingPathComponent:folderName] stringByAppendingPathComponent:fileName];
   return [data writeToFile:filePath atomically:YES];
}

+(BOOL)deleteFileWithFileName:(NSString *)fileName subDirectory:(NSString *)folderName{
    NSString *filePath = [[[self configFilePath] stringByAppendingPathComponent:folderName] stringByAppendingPathComponent:fileName];
    NSFileManager *fileManager = [NSFileManager defaultManager];
    if ([fileManager fileExistsAtPath:filePath]) {
        
       return [fileManager removeItemAtPath:filePath error:nil];
    }
    
    return NO;
}
@end
