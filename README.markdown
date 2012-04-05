    /*
     * ---------------------------------------------------------------------------- 
     * "BEER-WARE LICENSE":
     * <dan@danreed.net> wrote this class. As long as you retain this notice you
     * can do whatever you want with this stuff. If we meet some day (and you think
     * this stuff is worth it) you can buy me a beer in return --Dan Reed
     * ----------------------------------------------------------------------------
     */

I wrote color factory initially to use hex code in creating colors in objective-c. 
it'll tolerate a bit of abuse, pass it strings beginning with 0X or #, lowercase letters as well!

######It includes the following class methods:
    + (UIColor *) colorFromHex:(NSString *)hex;
		+ (UIColor *) colorFromHexWithAlpha:(NSString *)hex:(float)alphaValue;

    //NOTE: these wrap apple's already existing methods
    + (UIColor *) colorFromRGB:(int)red:(int)green:(int)blue;
    + (UIColor *) colorFromRGBA:(int)red:(int)green:(int)blue:(float)alpha;

###I also wrote a singleton for the factory that I use to house global colors you might want in your scheme

For instance, I have initialized a set of 3 complementary color schemes.
Each scheme is made up of 5 colors: color, bold, shadow, light, and highlight.
This is just an example, you might want an 'alert' color or something.

#TO USE:
###(in your header)
	  #import "ColorFactory.h"

###and in your .m file when you need a color
		UIColor *someColor = [ColorFactory colorFromHex:@"F00BA4"];

##OR for global colors...
####define a color in the header of the factory (or however you like):
		#define PRIMARY_COLOR @"FFCF9C"
		
####then declare this color in your class interface (in your factory header):
		UIColor *primary;
	
####make the color a property directly below your class interface 
#####(don't forget to synthesize in your .m file!):	
		@property (nonatomic, strong) UIColor *primary;
	
####then in the init method initialize the color like so:
    primary = [ColorFactory colorFromHex:PRIMARY_COLOR];

###finally, when you need your primary color just call it!
		
####(your class' .h file)
		#import "ColorFactory.h"
		
		@interface YourClass : NSSomeObject{
			ColorFactory *colors;
			.
			. //your other code here
			.
		}
		
####(your class' .m file)
		//inside your viewDidLoad or init or someplace like that
		colors = [ColorFactory sharedFactory];
		
		//once it's instantiated, call whatever colors you stored in your factory!
		[self.view setBackgroundColor:[colors primary]];
		[cell.textLabel setTextColor:[colors kickAssRed]];
		
		//you can still call hex colors on the fly as well, don't forget!
		[self.hammerTable setBackgroundColor:[ColorFactory colorForHex:@"2B012B"]];
		
##That's all for today! Feel free to drop me a line at dan@danreed.net.

#Thanks,
###--Dan Reed