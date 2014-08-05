#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    //calling a method [object method:parameter]
    character = (Character*)[CCBReader load:@"Character"];
    [physicsNode addChild:character];
    
    //adds obstacles
    [self addObstacle];
    timeSinceObstacle = 0.0f;
}

-(void)update:(CCTime)delta
{
    //this will be run every frame.
    //delta is the time that has elapsed since the last time it was run.
    
    //Increment the time since the last obstacle was added
    timeSinceObstacle += delta; //delta is approx. 1/60th of a second
    
    //Check to see if two seconds have passed
    if (timeSinceObstacle > 2.0f)
    {
        //Add a new obstacle
        [self addObstacle];
        
        //Then reset the timer
        timeSinceObstacle = 0.0f;
    }
}

//declares method -(output type)method: (input type) inputname1 inputname2
- (void)touchBegan:(UITouch *)touch withEvent:(UIEvent *) event {
    //this will get called every time the player touches the screen
    [character flap];
}


@end
