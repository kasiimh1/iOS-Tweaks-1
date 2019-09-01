// Deb (jailbroken deb) version of Kodi only, doesn't work/is very buggy on the ipa version of Kodi

%hook XBMCController
- (void)enterBackground {
} 
%end