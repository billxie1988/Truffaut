//
//  TruffautManifestReaderProtocol.h
//  TruffautManifestReader
//
//  Created by Yan Li on 4/3/17.
//  Copyright © 2017 Codezerker. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NSDictionary<NSString *, id> JSONDictionary;

@protocol TruffautManifestReaderProtocol

- (BOOL)readManifestFileAtURL:(NSURL *)url withReply:(void (^)(JSONDictionary *))reply error:( NSError * _Nullable *)error;

@end

NS_ASSUME_NONNULL_END