%hook CAMCaptureCapabilities
-(BOOL)isFrontLivePhotoSupported {
	return YES;
}
%end
%hook AVCaptureDeviceFormat
-(BOOL)isIrisSupported {
	return YES;
}
%end

