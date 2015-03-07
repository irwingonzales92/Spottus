//
//  ViewController.m
//  Spottus
//
//  Created by Irwin Gonzales on 3/1/15.
//  Copyright (c) 2015 Irwin Gonzales. All rights reserved.
//

#import "RootViewController.h"
#import "MapViewController.h"
#import "AddSpotViewController.h"

#define CELL_IDENTIFIER @"cell"
#define SEGUE_IDENTIFIER @"AddSpotSegue"

@interface RootViewController () <UITableViewDataSource, UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property NSArray *spotsArray;
@property NSArray *userArray;
@property PFObject *selectedSpot;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    [self loadParseData];
    [self.tableView reloadData];
    self.selectedSpot = [PFObject new];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)loadParseData
{
    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;

    NSMutableArray *tempArray = [[NSMutableArray alloc]init];
    PFQuery *query = [PFQuery queryWithClassName:@"Location"];
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error)
    {
        if (!error)
        {
            NSLog(@"It Works");
            [tempArray addObjectsFromArray:objects];
        }
        else
        {
            NSLog(@"%@",error.localizedDescription);
        }
        self.spotsArray = [NSMutableArray arrayWithArray:tempArray];
    }];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _spotsArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CELL_IDENTIFIER];

    PFObject *location = [self.spotsArray objectAtIndex:indexPath.row];
    NSString *locationName = location[@"name"];

    cell.textLabel.text = locationName;
    return cell;
}

- (IBAction)addSpotOnButtonTapped:(UIBarButtonItem *)sender
{
    [self performSegueWithIdentifier:SEGUE_IDENTIFIER sender:sender];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    AddSpotViewController *vc = [segue destinationViewController];
}

@end
