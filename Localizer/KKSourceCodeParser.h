//
//  KKSourceCodeParser.h
//  Localizer
//
//  Created by KKBOX on 12/10/11.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
extern NSString *const autoFillTranslateStr;
@interface KKSourceCodeParser : NSObject

- (NSMutableSet *)parse:(NSString *)filePath;

@end
