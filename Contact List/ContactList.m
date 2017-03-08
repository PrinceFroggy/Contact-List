//
//  ContactList.m
//  Contact List
//
//  Created by Andrew Solesa on 2017-03-07.
//  Copyright © 2017 KSG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ContactList.h"

@implementation ContactList

- (instancetype) init
{
    if (self = [super init])
    {
        _ContactList = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (void) addContact:(Contact *)newContact
{
    [self.ContactList addObject:newContact];
}


- (void) outputContacts
{
    for (Contact *contact in self.ContactList)
    {
        NSInteger user = [self.ContactList indexOfObject: contact];
        
        NSLog(@"%ld:<%@>()", user, contact.name);
    }
}

@end
