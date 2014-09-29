//
//  ViewController.m
//  SoundTest
//
//  Created by Anthony Dagati on 9/28/14.
//  Copyright (c) 2014 Black Rail Capital. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)playClap:(id)sender {
    SystemSoundID SoundID;
    NSString *soundFile = [[NSBundle mainBundle] pathForResource:@"applause-01" ofType:@"wav"];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)[NSURL fileURLWithPath:soundFile], &SoundID);
    AudioServicesPlaySystemSound(SoundID);
    NSLog(@"Sound played");
                                                        
}

- (IBAction)playCheer:(id)sender {
    SystemSoundID SoundID;
    NSString *soundFile = [[NSBundle mainBundle] pathForResource:@"applause-2" ofType:@"wav"];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)[NSURL fileURLWithPath:soundFile], &SoundID);
    AudioServicesPlaySystemSound(SoundID);
    NSLog(@"Sound played");
    
}
@end
