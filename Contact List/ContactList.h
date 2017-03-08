
//
//  ContactList.h
//  Contact List
//
//  Created by Andrew Solesa on 2017-03-07.
//  Copyright © 2017 KSG. All rights reserved.
//

#ifndef ContactList_h
#define ContactList_h

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : Contact

@property NSMutableArray *ContactList;

- (void) addContact: (Contact *) newContact;

- (void) outputContacts;

@end

#endif /* ContactList_h */
