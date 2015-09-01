//
//  GameScene.m
//  KeepUp
//
//  Created by Arsalan Vakili on 2015-08-31.
//  Copyright (c) 2015 Arsalan Vakili. All rights reserved.
//

#import "GameScene.h"
#import "GroundNode.h"
#import "BallNode.h"

@interface GameScene ()

@property(nonatomic,strong) BallNode *ball;
@end

@implementation GameScene

-(id)initWithSize:(CGSize)size{
    self = [super initWithSize:size];
    
    SKSpriteNode *node = [SKSpriteNode spriteNodeWithColor:[UIColor blueColor] size:self.frame.size];
    node.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
    [self addChild:node];
    
    
    GroundNode *groundNode = [GroundNode groundWithSize:CGSizeMake(self.frame.size.width, 22)];
    [self addChild:groundNode];
    
    //self.physicsWorld.gravity = CGVectorMake(0.0, -4.9);
   // self.physicsWorld.contactDelegate = self;
    
    
    return self;
    
}


-(void)didMoveToView:(SKView *)view{
   self.ball = [BallNode ballAtPosition:CGPointMake(40, 40)];
    [self addChild:self.ball];
    self.physicsWorld.gravity = CGVectorMake(0, -6);
    
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    UITouch *touch = [touches anyObject];
    
        CGPoint position = [touch locationInNode:self];
    
    
//    for (SKSpriteNode *node in self.children) {
//        if ([node.name isEqualToString:@"ball"])
//            [node.physicsBody applyImpulse:
//             CGVectorMake(0, 100)];
//        
//        NSLog(@"tapped ball");
//    }
//    [self moveUpBallToPostion:position];
    
    [self.ball.physicsBody applyImpulse:CGVectorMake(0, 50)];
}

    



-(void)moveUpBallToPostion:(CGPoint)position{
   
    [self.ball moveTowardPosition:position];
    
}


-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
