//
//  ButtonFunCollectionViewController.m
//  ButtonFun
//
//  Created by John Mulvey on 7/9/15.
//  Copyright (c) 2015 espn. All rights reserved.
//

#import "UIColor+RandomColor.h"
#import "ButtonFunCollectionViewController.h"

@interface ButtonFunCollectionViewController ()

@end

@implementation ButtonFunCollectionViewController

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];

}
// remove status bar.
-(BOOL)prefersStatusBarHidden {
    return YES;
}

// reload table when rotated
- (BOOL)shouldAutorotate {
    
    [self.collectionView reloadData];
    
    return YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   }


//
//  Remove as much spacing as possible
//

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
    
    return -1.0;
}

#pragma mark <UICollectionViewDataSource>

// simple calculations for grid of objects.

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {

    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {

    return ((collectionView.frame.size.height / 40) + 1 ) * ((collectionView.frame.size.width / 40) + 1);
}

// Use Catagory to generate random color.
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    cell.backgroundColor = [UIColor randomColor];
  
    
    return cell;
}
// Change color of selected cell.
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
    UICollectionViewCell *cell = [collectionView cellForItemAtIndexPath:indexPath];
    cell.backgroundColor = [UIColor randomColor];
}



@end
