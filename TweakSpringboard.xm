#import "../PSHeader/Misc.h"
#import <substrate.h>
#import <CoreFoundation/CoreFoundation.h>

extern "C" bool MGGetBoolAnswer(CFStringRef);
%hookf(bool, MGGetBoolAnswer, CFStringRef key) {
	if (CFStringEqual(key, CFSTR("8fyX2yEg28cYgJ10Yl+ueA")))
		return YES;
	return %orig;
}

%hook SiriPresentationSpringBoardMainScreenViewController
-(BOOL)shouldDismissForTapsOutsideContent {
    return NO;
}
-(BOOL)shouldDismissForSwipesOutsideContent {
    return NO;
}
%end
%hook SBPlatformController
-(long long)medusaCapabilities {
	return 2;
}
%end
