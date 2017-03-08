//
//  main.m
//  Contact List
//
//  Created by Andrew Solesa on 2017-03-07.
//  Copyright © 2017 KSG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        BOOL gameOn = YES;
        
        ContactList *List = [[ContactList alloc] init];
        
        while (gameOn)
        {
            NSString *Response = [InputCollector inputForPrompt:(@"What would you like to do next?\n new - create a new contact list \n list - list all contacts \n show - ID search \n find - Name/Email search \n quit - exit application")];
            
            if ([Response isEqualToString:@"quit"])
            {
                NSLog(@"GAME OVER");
                gameOn = NO;
                break;
            }
            
            if ([Response isEqualToString:@"new"])
            {
                Contact *newUser = [[Contact alloc] init];
                newUser.name = [InputCollector inputForPrompt:(@"Please enter your name: ")];
                newUser.email = [InputCollector inputForPrompt:(@"Please enter your email: ")];
                [List addContact: newUser];
            }
            
            if ([Response isEqualToString:@"show"])
            {
                Response = [InputCollector inputForPrompt:(@"Enter ID to search: ")];
                [List outputIDContact:[Response intValue]];
            }
            
            if ([Response isEqualToString:@"find"])
            {
                Response = [InputCollector inputForPrompt:(@"Enter NAME/EMAIL to search: ")];
                [List outputNameOrEmailContact:Response];
            }
            
            if ([Response isEqualToString:@"list"])
            {
                [List outputContacts];
            }
        }
    }
    return 0;
}
