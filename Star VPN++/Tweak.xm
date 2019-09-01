%hook ANSMetadata
- (bool)computeIsJailbroken {
    return 0;
}
- (bool)isJailbroken {
    return 0;
}
%end

%hook GADODevice
- (bool)jailbroken {
    return 0;
}
%end

%hook PCVPNLocation
- (bool)isPremium {
    return 1;
}
- (void)setPremium:(bool)arg1 {
    arg1 = 1;
    %orig;
}
%end

%hook PCClient
- (bool)isLinked {
    return 1;
}
- (NSString *)email {
    return @"sarahh12099@gmail.com";
}
- (double)expirationTime {
    NSString *dateStr = @"10-10-2099";
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"dd-MM-yyyy"];
    NSDate *date = [dateFormat dateFromString:dateStr];
    double final = [date timeIntervalSince1970];
    return final;
}
- (bool)isPremium {
    return 1;
}
%end

%hook PCLocationsViewController
- (bool)isPremium {
    return 1;
}
- (void)setPremium:(bool)arg1 {
    arg1 = 1;
    %orig;
}
%end

%hook PCAuthController
+ (bool)isLinked {
    return 1;
}
%end

%hook PCLocationTableViewCell
- (void)updateWithLocation:(id)arg1 premium:(bool)arg2 {
    arg2 = 1;
    %orig;
}
%end