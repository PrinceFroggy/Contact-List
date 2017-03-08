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
    BOOL found = false;
    
    if (self.ContactList.count != 0)
    {
        for (Contact *contact in self.ContactList)
        {
            if (newContact.email == contact.email)
            {
                found = true;
            }
        }
    }
    
    if (found != true)
    {
        [self.ContactList addObject:newContact];
    }
    else
    {
        NSLog(@"DUPLICATE EMAIL FOUND");
    }
}


- (void) outputContacts
{
    for (Contact *contact in self.ContactList)
    {
        NSInteger user = [self.ContactList indexOfObject: contact];
        
        NSLog(@"%ld:<%@>()", user, contact.name);
    }
}

- (void) outputIDContact: (NSInteger) ID
{
    if (ID <= self.ContactList.count - 1)
    {
        NSLog(@"ID: %ld | NAME: %@ | EMAIL: %@", ID, [self.ContactList[ID] name], [self.ContactList[ID] email]);
    }
    else
    {
        NSLog(@"ID not found!");
    }
}

- (void) outputNameOrEmailContact: (NSString *) nameOrEmail
{
    BOOL found = false;
    
    for (Contact *contact in self.ContactList)
    {
        NSInteger user = [self.ContactList indexOfObject: contact];
        
        if (nameOrEmail == contact.name || nameOrEmail == contact.email)
        {
            NSLog(@"ID: %ld | NAME: %@ | EMAIL: %@", user, [self.ContactList[user] name], [self.ContactList[user] email]);
            found = true;
        }
    }
    
    if (found == false)
    {
        NSLog(@"NAME/EMAIL not found!");
    }
}

@end
