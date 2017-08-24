//
//  ContactList.h
//  Assignment 04
//
//  Created by Paulo Melila on 2017-08-22.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject

@property (nonatomic, strong) NSMutableArray *contactList;

- (instancetype)initWithContactList;
- (void)addContact:(Contact *)newContact;
- (NSMutableArray *)printList;
- (NSInteger) getArraySize;
- (void) printDetail:(NSInteger)index;
- (BOOL) isDuplicated:(NSString *)searchword;
- (void) search:(NSString *)searchword;
@end
