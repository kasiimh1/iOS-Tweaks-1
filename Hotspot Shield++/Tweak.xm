%hook ANSMetadata
- (bool)computeIsJailbroken {
    return 0;
}
- (bool)isJailbroken {
    return 0;
}
%end

%hook HSSUser
- (double)expirationDate {
    NSString *dateStr = @"10-10-2099";
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"dd-MM-yyyy"];
    NSDate *date = [dateFormat dateFromString:dateStr];
    double final = [date timeIntervalSince1970];
    return final;
}
- (bool)hasTrial {
    return 0;
}
- (bool)isPremium {
    return 1;
}
- (void)setExpirationDate:(double)arg1 {
    NSString *dateStr = @"10-10-2099";
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"dd-MM-yyyy"];
    NSDate *date = [dateFormat dateFromString:dateStr];
    double final = [date timeIntervalSince1970];
    arg1 = final;
    %orig;
}
- (bool)isSignedIn {
    return 1;
}
- (void)setSignedIn:(bool)arg1 {
    arg1 = 1;
    %orig;
}
- (int)devicesMax {
    return 5;
}
- (void)setDevicesMax:(int)arg1 {
    arg1 = 5;
    %orig;
}
- (int)devicesUsed {
    return 1;
}
- (void)setDevicesUsed:(int)arg1 {
    arg1 = 1;
    %orig;
}
- (NSString *)email {
    return @"sarahh12099@gmail.com";
}
- (void)setEmail:(id)arg1 {
    arg1 = @"sarahh12099@gmail.com";
    %orig;
}
%end