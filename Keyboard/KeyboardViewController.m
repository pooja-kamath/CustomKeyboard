//
//  KeyboardViewController.m
//  Keyboard
//
//  Created by Pooja Kamath on 21/07/14.
//  Copyright (c) 2014 Pooja Kamath. All rights reserved.
//

#import "KeyboardViewController.h"

@interface KeyboardViewController ()

@property(nonatomic, readonly) NSObject < UITextDocumentProxy > *textDocumentProxy;
@property (nonatomic,strong) UIView *customInterface;

@end

@implementation KeyboardViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
        UINib *nib =[UINib nibWithNibName:@"keyboardButtons" bundle:nil];
        NSArray *objects =[nib instantiateWithOwner:self options:nil];
        self.inputView =[objects objectAtIndex:0];
    }
    return self;
}

- (void)updateViewConstraints {
    [super updateViewConstraints];
    
    // Add custom view sizing constraints here
}

- (void)viewDidLoad {
    [super viewDidLoad];
    }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated
}

- (void)textWillChange:(id<UITextInput>)textInput {
    // The app is about to change the document's contents. Perform any preparation here.
}

- (void)textDidChange:(id<UITextInput>)textInput {
    // The app has just changed the document's contents, the document context has been updated.
    
    UIColor *textColor = nil;
    if (self.textDocumentProxy.keyboardAppearance == UIKeyboardAppearanceDark) {
        textColor = [UIColor whiteColor];
    } else {
        textColor = [UIColor blackColor];
    }
    
}

- (IBAction)didTapButton:(UIButton *)sender {
    switch (sender.tag) {
        
        case 1:
            [self.textDocumentProxy insertText:@"1"];
            break;
        case 2:
            [self.textDocumentProxy insertText:@"2"];
            break;
        case 3:
            [self.textDocumentProxy insertText:@"3"];
            break;
        case 4:
            [self.textDocumentProxy insertText:@"4"];
            break;
        case 5:
            [self.textDocumentProxy insertText:@"5"];
            break;
        case 6:
            [self.textDocumentProxy insertText:@"6"];
            break;
        case 7:
            [self.textDocumentProxy insertText:@"7"];
            break;
        case 8:
            [self.textDocumentProxy insertText:@"8"];
            break;
        case 9:
            [self.textDocumentProxy insertText:@"9"];
            break;
        case 10:
            [self.textDocumentProxy insertText:@"0"];
            break;
        case 11:
            [self.textDocumentProxy insertText:@"Sin"];
            break;
        case 12:
            [self.textDocumentProxy insertText:@"Cos"];
            break;
        case 13:
            [self.textDocumentProxy insertText:@"Tan"];
            break;
        case 14:
            [self.textDocumentProxy insertText:@"π"];
            break;
        case 15:
            [self.textDocumentProxy insertText:@"∑"];
            break;
        case 16:
            [self.textDocumentProxy insertText:@"Ln"];
            break;
        case 17:
            [self.textDocumentProxy insertText:@"Log"];
            break;
        case 18:
            [self.textDocumentProxy insertText:@"Sin⁻¹"];
            break;
        case 19:
            [self.textDocumentProxy insertText:@"Cos⁻¹"];
            break;
        case 20:
            [self.textDocumentProxy insertText:@"Tan⁻¹"];
            break;
        case 21:
            [self.textDocumentProxy insertText:@"+"];
            break;
        case 22:
            [self.textDocumentProxy insertText:@"-"];
            break;
        case 23:
            [self.textDocumentProxy insertText:@"x"];
            break;
        case 24:
            [self.textDocumentProxy insertText:@"\\"];
            break;
        case 25:
            [self.textDocumentProxy insertText:@"²"];
            break;
        case 26:
            [self.textDocumentProxy insertText:@"³"];
            break;
        case 27:
            [self.textDocumentProxy insertText:@"ｙˣ"];
            break;
        case 28:
            [self.textDocumentProxy deleteBackward];
            break;
        case 29:
            [self.textDocumentProxy insertText:@"√"];
            break;
        case 30:
            [self.textDocumentProxy insertText:@"∛"];
            break;
        case 31:
            [self.textDocumentProxy insertText:@"ˣ√ｙ"];
            break;
        case 32:
            [self.textDocumentProxy insertText:@"%"];
            break;
        case 33:
            [self.textDocumentProxy insertText:@"P"];
            break;
        case 34:
            [self.textDocumentProxy insertText:@"C"];
            break;
        case 35:
            [self.textDocumentProxy insertText:@"!"];
            break;
        case 36:
            [self.textDocumentProxy insertText:@"="];
            break;
        case 37:
            [self advanceToNextInputMode];
            break;
        case 38:
            [self.textDocumentProxy insertText:@"∫"];
            break;
        case 39:
            [self.textDocumentProxy insertText:@"∬"];
            break;
        case 40:
            [self.textDocumentProxy insertText:@"."];
            break;
        
         default:
            break;
    }
    
    
}




 @end
