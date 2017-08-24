//
//  ContactList.m
//  Assignment 04
//
//  Created by Paulo Melila on 2017-08-22.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList

- (instancetype)initWithContactList {
    self = [super init];
    if (self) {
        _contactList = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSInteger) getArraySize {
    return [self.contactList count];
}

- (void)addContact:(Contact *)newContact {
    [self.contactList addObject:(Contact *)newContact];
}

- (void) printDetail:(NSInteger) index {
    
    if (index < [self.contactList count]) {
        Contact *contact = [self.contactList objectAtIndex:index];
        NSLog(@"%ld: <%@> %@", (long)index, [contact name], [contact email]);
    } else {
        NSLog(@"Not found.");
    }    
}

-(BOOL) isDuplicated:(NSString *)searchword {
    BOOL isFound = NO;
    for (int i = 0; i< [self.contactList count]; i++){
        Contact *contact = [self.contactList objectAtIndex:i];
        
        if([[contact email] isEqualToString:searchword]){
            isFound = YES;
            NSLog(@"the contact already exists");
            break;
        }
    }
    return isFound;
}

-(void) search:(NSString *)searchword {
    BOOL isFound = NO;
    for (int i = 0; i< [self.contactList count]; i++){
        Contact *contact = [self.contactList objectAtIndex:i];
        
        if([[contact name] isEqualToString:searchword] ||
           [[contact email] isEqualToString:searchword]){
            isFound = YES;
            [self printDetail:i];
            break;
        }
    }
    if(!isFound){
        NSLog(@"Not found");
    }
}

- (NSMutableArray *)printList {
    for (Contact *contact in _contactList) {
        NSUInteger index = [_contactList indexOfObject:contact];
        NSLog(@"%lu: <%@> ()", index, contact.name);
    }
    return nil;
}

@end