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
%end
%hook AVCaptureDeviceFormat
-(BOOL)isIrisSupported {
	return YES;
}
%end

