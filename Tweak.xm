@interface TFNExpandingButtonItemView : UIView
@end

%hook TFNExpandingButtonItemView
- (void)layoutSubviews {

    %orig;
    self.layer.backgroundColor = [[UIColor blueColor] CGColor];
    //MSHookIvar<UIColor *>(self,"_outlineColor").backgroundColor = [UIColor blueColor];

}
%end