//
//  GalleryScreen.m
//  E-Fiesta
//
//  Created by PC-104 on 06/11/15.
//  Copyright (c) 2015 PC-104. All rights reserved.
//

#import "GalleryScreen.h"
#import "DetailViewController.h"
#import "Cell.h"
NSString *kDetailedViewControllerID = @"DetailView";    // view controller storyboard id
NSString *kCellID = @"cellID";                          // UICollectionViewCell storyboard id


@implementation GalleryScreen
- (void)viewDidLoad {
    [super viewDidLoad];
    [self.collectionView setBackgroundColor:[UIColor colorWithRed:215/255.0f green:214/255.0f blue:209/255.0f alpha:1.0f]];
     self.title=@"Gallery";
}

- (NSInteger)collectionView:(UICollectionView *)view numberOfItemsInSection:(NSInteger)section;
{
    return 25;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)cv cellForItemAtIndexPath:(NSIndexPath *)indexPath;
{
    // we're going to use a custom UICollectionViewCell, which will hold an image and its label
    //
    Cell *cell = [cv dequeueReusableCellWithReuseIdentifier:kCellID forIndexPath:indexPath];
    
    // make the cell's title the actual NSIndexPath value
//    cell.label.text = [NSString stringWithFormat:@"(%ld,%ld)", (long)indexPath.row, (long)25];
    
    // load the image for this cell
    NSString *imageToLoad = [NSString stringWithFormat:@"%ld_full", (long)indexPath.row];
    cell.image.image = [UIImage imageNamed:imageToLoad];
    
    return cell;
}
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    
    // load the image, to prevent it from being cached we use 'initWithContentsOfFile'
    NSString *imageNameToLoad = [NSString stringWithFormat:@"%ld_full", (long)indexPath.row];
    UIImage *image = [UIImage imageNamed:imageNameToLoad];
    DetailViewController *detailViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"DetailViewController"];
    detailViewController.image = image;
    [self.navigationController pushViewController:detailViewController animated:YES];
}

@end
