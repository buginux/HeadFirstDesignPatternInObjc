//
//  LinkedList.m
//  IteratorPattern
//
//  Created by buginux on 2017/5/30.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "LinkedList.h"

@interface LinkedNode : NSObject
@property (nonatomic, strong) LinkedNode *next;
@property (nonatomic, strong) id value;
@end

@implementation LinkedNode
@end

@interface LinkedList ()

@property (nonatomic, strong) LinkedNode *head;
@property (nonatomic, strong) LinkedNode *tail;

@end

@implementation LinkedList

- (void)addItem:(id)item {
    LinkedNode *node = [LinkedNode new];
    node.value = item;
    
    if (self.tail) {
        self.tail.next = node;
    } else {
        self.head = node;
    }
    
    self.tail = node;
}

- (id)objectAtIndex:(NSInteger)index {
    LinkedNode *current = self.head;
    NSInteger i = 0;
    while (i < index) {
        current = current.next;
        i++;
    }
    
    return current.value;
}

- (NSUInteger)size {
    LinkedNode *current = self.head;
    NSUInteger count = 0;
    while (current) {
        current = current.next;
        count++;
    }
    return count;
}

- (NSString *)description {
    NSMutableString *result = [NSMutableString string];
    LinkedNode *current = self.head;
    
    [result appendString:@"\n[\n"];
    while (current) {
        [result appendFormat:@" %@,\n", current.value];
        current = current.next;
    }
    [result appendString:@"]"];
    
    return result;
}

@end
