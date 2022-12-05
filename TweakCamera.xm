%hook CAMCaptureCapabilities
-(BOOL)isLivePhotoSupported {
	return YES;
}
-(BOOL)isFrontLivePhotoSupported {
	return YES;
}
-(BOOL)isBackLivePhotoSupported {
	return YES;
}
-(bool)isImageAnalysisSupported {
                return YES;
}
-(bool)imageAnalysisShowsInactiveTextRegions {
                return YES;
}
-(bool)isImageAnalysisButtonAlwaysVisible {
                return YES;
}
%end
%hook AVCaptureDeviceFormat
-(BOOL)isIrisSupported {
	return YES;
}
%end

