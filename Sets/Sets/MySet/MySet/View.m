//
//  View.m
//  MySet
//
//  Created by Mike Smith on 3/2/13.
//  Copyright (c) 2013 Mike Smith. All rights reserved.
//

#import "View.h"

@implementation View

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
            textView = [[UITextView alloc] initWithFrame: self.bounds];
            textView.backgroundColor = [UIColor blueColor];
            textView.textColor = [UIColor whiteColor];
            textView.font = [UIFont fontWithName: @"Verdana" size: 15.75];
            textView.editable = NO;
        textView.text = @"Two households, both alike in dignity,\n"
        @"In fair Verona, where we lay our scene,\n"
        @"From ancient grudge break to new mutiny,\n"
        @"Where civil blood makes civil hands unclean.\n\n"
        
        @"From forth the fatal loins of these two foes\n"
        @"A pair of star-cross’d lovers take their life;\n"
        @"Whose misadventur'd piteous overthrows\n"
        @"Doth with their death bury their parents’ strife.\n\n"
        
        @"The fearful passage of their death-mark’d love,\n"
        @"And the continuance of their parents’ rage,\n"
        @"Which, but their children’s end, naught could remove,\n"
        @"Is now the two hours’ traffic of our stage;\n\n"
        
        @"The which if you with patient ears attend,\n"
        @"What here shall miss, our toil shall strive to mend.\n\n";

        textView.text = [textView.text stringByAppendingFormat:
                         @"\t\tRomeo and Juliet, Prologue %d–%d", 1, 14
                         ];
        [self addSubview: textView];
                         
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
