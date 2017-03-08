//
//  InputCollector.h
//  Contact List
//
//  Created by Andrew Solesa on 2017-03-07.
//  Copyright © 2017 KSG. All rights reserved.
//

#ifndef InputCollector_h
#define InputCollector_h

#import <Foundation/Foundation.h>

@interface InputCollector : NSObject

+ (NSString *) inputForPrompt: (NSString *)promptString; // ASK

@end

#endif /* InputCollector_h */
