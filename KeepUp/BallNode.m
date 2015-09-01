//
//  BallNode.m
//  KeepUp
//
//  Created by Arsalan Vakili on 2015-08-31.
//  Copyright (c) 2015 Arsalan Vakili. All rights reserved.
//

#import "BallNode.h"

@implementation BallNode


+(instancetype)ballAtPosition:(CGPoint)position{

    
    BallNode *ball = [BallNode spriteNodeWithColor:[UIColor yellowColor] size:CGSizeMake(40, 40)];
   // node.physicsBody = [SKPhysicsBody bodyWithCircleOfRadius:30.0];
    ball.position = position;
    ball.name = @"ball";
    
    [ball setUpPhysicsBody];
    return ball;
}


-(void)setUpPhysicsBody{
    self.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:self.frame.size];
    self.physicsBody.affectedByGravity = YES;
    self.physicsBody.dynamic = YES;
    
}



-(void)moveTowardPosition: (CGPoint) position{
    
    //float x = position.x;
//    float y = position.y;
//    
//    SKAction *moveUp = [SKAction moveToY:y duration:1.5];
//    
//    
//    [self runAction:moveUp];
}
@end


