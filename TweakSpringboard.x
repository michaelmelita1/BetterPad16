#import "/Misc.h"
#import <substrate.h>
#import <CoreFoundation/CoreFoundation.h>

extern "C" bool MGGetBoolAnswer(CFStringRef);
%hookf(bool, MGGetBoolAnswer, CFStringRef key) {
	if (CFStringEqual(key, CFSTR("nVh/gwNpy7Jv1NOk00CMrw")))
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
	return 3;
}
%end
