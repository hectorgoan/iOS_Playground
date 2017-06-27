//
//  ViewController.h
//  SimpleTable
//
//  Created by Héctor Gonzalo Andrés on 1/1/16.
//  Copyright (c) 2016 Héctor Gonzalo Andrés. All rights reserved.
//

#import <UIKit/UIKit.h>

//UITableViewDataSource -> Link between data and table view. Methods needed: (tableView:cellForRowAtIndexPath) & (tableView:numberOfRowsInSection)
//UITableViewDelegate -> Deals with the appearance of the table view (height, sections heading and footers, etc, etc)
@interface HGAViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>


@end

