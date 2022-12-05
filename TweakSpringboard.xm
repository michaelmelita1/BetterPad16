

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
%hook VKImageAnalyzer

+ (BOOL)deviceSupportsImageAnalysis {
    return YES;
}

%end
