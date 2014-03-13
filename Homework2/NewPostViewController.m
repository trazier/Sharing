//
//  NewPostViewController.m
//  Homework2
//
//  Created by Frazier Moore on 2/18/14.
//  Copyright (c) 2014 Frazier Moore. All rights reserved.
//

#import "NewPostViewController.h"

@interface NewPostViewController ()

@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@property (weak, nonatomic) IBOutlet UITextField *userNameLabel;
@property (weak, nonatomic) IBOutlet UITextView *contentTextView;
@property (weak, nonatomic) IBOutlet UITextField *titleField;

@end

@implementation NewPostViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void) setPost:(Post *)post
{
    _post = post;
}

- (void) viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    // set up UI with the post
    self.userNameLabel.text = _post.userName;
    self.contentTextView.text = _post.content;
    self.navigationItem.title = _post.title;
    self.dateLabel.text = [_post.timeStamp description];
}

- (IBAction)saveThePost:(id)sender
{
    _post.content = self.contentTextView.text;
    _post.userName = self.userNameLabel.text;
    _post.title = self.titleField.text;
    
    [self.navigationController popViewControllerAnimated:YES];
}

- (void) viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];    
}

@end
