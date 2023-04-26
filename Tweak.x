@import Foundation;
@import UIKit;

%hook UIImage

+ (UIImage *)systemImageNamed:(NSString *)name withConfiguration:(UIImageConfiguration *)configuration {
	if([name isEqualToString:@"swatchpalette"]) {
		return %orig(@"paintpalette",configuration);
	}
	return %orig;
}

%end