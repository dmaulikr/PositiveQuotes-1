//
//  AppDelegate.h
//  PositiveQuotes
//
//  Created by Pedro Gordillo Ríos on 29/8/16.
//  Copyright © 2016 Pedro Gordillo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>


@interface AppDelegate : UIResponder <UIApplicationDelegate,AVAudioPlayerDelegate>{
    
    AVAudioPlayer *player;
    
}

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, retain) AVAudioPlayer *player;

@end

