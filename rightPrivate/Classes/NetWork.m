//
//  GXPCINetWork.m
//  GXParingContactIdea
//
//  Created by Xin Ge  on 17/11/2017.
//  Copyright © 2017 Xin Ge . All rights reserved.
//

#import "NetWork.h"
#import <AFNetworking.h>
@implementation NetWork
-(void)get:(NSString *)url params:(NSDictionary *)params success:(void(^)(id success))success fail:(void(^)(NSError *error))fail{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    
    [manager GET:url parameters:params progress:^(NSProgress * _Nonnull uploadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"请求成功:%@", responseObject);
        
        NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableContainers error:nil];
        
        NSLog(@"请求成功JSON:%@", JSON);
        
        success(JSON);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        NSLog(@"请求失败:%@", error.description);
        
        fail(error);
    }];
}

-(void)post:(NSString *)url params:(NSDictionary *)params success:(void(^)(id success))success fail:(void(^)(NSError *error))fail{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    
    [manager POST:url parameters:params progress:^(NSProgress * _Nonnull uploadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"请求成功:%@", responseObject);
        
        NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableContainers error:nil];
        
        NSLog(@"请求成功JSON:%@", JSON);
        
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        NSLog(@"请求失败:%@", error.description);
        
    }];
}
@end
