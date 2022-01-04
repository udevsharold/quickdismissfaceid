%hook FaceIdAlertViewController
- (void)dismissWithDelay:(double)delay completion:(id /*block*/)handler{
	%orig(0.0, handler);
}
%end
