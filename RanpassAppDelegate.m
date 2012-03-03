//
//  RanpassAppDelegate.m
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


#import "RanpassAppDelegate.h"
#import "Generator.h"

@implementation RanpassAppDelegate

@synthesize window;

@synthesize label;

- (IBAction)buttonPressed:(id)sender {
    Generator *mygen;

    mygen = [Generator alloc];
    mygen = [mygen init];
    
    NSMutableString *labelText = [mygen gen];
    [label setStringValue:labelText];
    [mygen release];
}

//- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
//	// Insert code here to initialize your application 
//}

// Quit the app when the main window is closed
-(BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)app {
    return YES;
}

@end

