//
//  Generator.m
//  Ranpass
//
//  Created by Edward Dewhurst on 03/03/2012.
//  Copyright 2012 Edward Dewhurst. 
//
//  This file is part of Ranpass.
//
//  Ranpass is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//
//  Ranpass is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License
//  along with Ranpass.  If not, see <http://www.gnu.org/licenses/>.


#import "Generator.h"

@implementation Generator

- (NSMutableString *)gen {
    NSString *characters = @"abcdefghijklmnopqrstuvwxyz0123456789";
    NSMutableString *returnString = [NSMutableString
                                     stringWithCapacity:12];
    int i;
    NSUInteger index;
    
    for (i = 0; i < 12; i++) {
        index = rand() % 36;
        NSString *c = [NSString stringWithFormat:@"%C",
                       [characters characterAtIndex:index]];
        [returnString appendString:c];
    }
    return returnString;
}

@end