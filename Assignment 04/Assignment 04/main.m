//
//  main.m
//  Assignment 04
//
//  Created by Paulo Melila on 2017-08-22.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        InputCollector *inputCollector = [[InputCollector alloc] init];
        ContactList *contactList = [[ContactList alloc] initWithContactList];
        NSString *inputSelected;
        
        while (![inputSelected isEqualToString:@"quit"]) {
            
            inputSelected = [inputCollector inputForPrompt:@"\nWhat would you like to do next?\n\nnew - Create a new contact\nlist - List all contacts\nquit - Exit Application\n\n"];
            
            // get user input
            char userInput[50];
            fgets(userInput, 50, stdin);
            inputSelected = [NSString stringWithUTF8String:userInput];
            // Get rid of \n at end of string that fgets puts there
            inputSelected  = [inputSelected stringByReplacingOccurrencesOfString:@"\n" withString:@""];
            
            // user chooses new
            if ([inputSelected isEqualToString:@"new"]) {
                char inputName[255];
                char inputEmail[255];
                NSString *contactName = [inputCollector inputForPrompt:@"New contact name: "];
                fgets(inputName, 255, stdin);
                NSString *contactEmail = [inputCollector inputForPrompt:@"New contact e-mail: "];
                fgets(inputEmail, 255, stdin);
                contactName = [NSString stringWithUTF8String:inputName];
                contactEmail = [NSString stringWithUTF8String:inputEmail];
                // Get rid of \n at end of string that fgets puts there
                contactName = [contactName stringByReplacingOccurrencesOfString:@"\n" withString:@""];
                contactEmail = [contactEmail stringByReplacingOccurrencesOfString:@"\n" withString:@""];
                
                Contact *contact = [[Contact alloc] initWithName:contactName andEmail:contactEmail];
                
                [contactList addContact:contact];
                
                NSLog(@"%@ has been added to your contact list", contactName);
                
                // quit application
            } else if ([inputSelected isEqualToString:@"quit"]) {
                NSLog(@"You have quit. Goodbye!");
                
                // list contacts
            } else if ([inputSelected isEqualToString:@"list"]) {
                [contactList printList];
                
                // show contact information
            } else if ([inputSelected isEqualToString:@"show"]){
                NSInteger index = [[inputCollector inputForPrompt: @"Enter the ID of the contact"] intValue];
                [contactList printDetail:index];
                
                // show history
            } else if ([inputSelected isEqualToString:@"history"]) {
                [inputCollector showHistory];
                
                // error
            } else {
                NSLog(@"That is not a valid option");
            }
        }
    }
    return 0;
}