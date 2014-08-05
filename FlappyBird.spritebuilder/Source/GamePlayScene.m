#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    character = (Character*)[CCBReader load:@"Character"];
    [physicsNode addChild:character];
    //calling a method [object method:parameter]
}

-(void)update:(CCTime)delta
{
    // put update code here
}

//declares method -(output type)method: (input type) inputname1 inputname2
- (void)touchBegan:(UITouch *)touch withEvent:(UIEvent *) event {
    //this will get called every time the player touches the screen
    [character flap];
}

@end
