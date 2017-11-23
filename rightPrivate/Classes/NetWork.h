//
//  GXPCINetWork.h
//  GXParingContactIdea
//
//  Created by Xin Ge  on 17/11/2017.
//  Copyright © 2017 Xin Ge . All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NetWork : NSObject
-(void)get:(NSString *)url params:(NSDictionary *)params success:(void(^)(id success))success fail:(void(^)(NSError *error))fail;
-(void)post:(NSString *)url params:(NSDictionary *)params success:(void(^)(id success))success fail:(void(^)(NSError *error))fail;
@end
