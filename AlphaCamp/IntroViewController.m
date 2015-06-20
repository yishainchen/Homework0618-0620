//
//  IntroViewController.m
//  AlphaCamp
//
//  Created by yishain on 6/16/15.
//  Copyright (c) 2015 yishain. All rights reserved.
//

#import "IntroViewController.h"

@interface IntroViewController ()
{
    int changeNum;
   
}
@end

@implementation IntroViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    changeNum = 0;

    
    // Do any additional setup after loading the view.
//    arr1 = @[@1,@2,@3];
    
    intro1 = @{@"Name":@"Bernard",@"Image":[UIImage imageNamed:@"bernard"],@"text":@"ALPHA Camp 創辦人。TMI 駐場創業家，曾任 Yahoo！亞太區廣告業務總監。美國MIT大學創業論壇mentor。"};
  
    intro2 = @{@"Name":@"Tim",@"Image":[UIImage imageNamed:@"circle2"],@"text":@"清大物理系唸完換台大國企所，熱愛棒球，喜歡喝咖啡聊是非，最喜歡的一句話是：人生就像騎腳踏車，為保持平衡，必須不斷前進。"};
   
    intro3 = @{@"Name":@"Ariel",@"Image":[UIImage imageNamed:@"Untitled"],@"text":@"政大哲學系畢業，在中國大陸闖蕩三年，認為教育就是從人出發的一種用心交流，希望回歸教育，凝聚最真摯的正向能量。"};
    
    intro4 = @{@"Name":@"張文鈿 | iHower",@"Image":[UIImage imageNamed:@"ihower"],@"text":@"Ruby on Rails 實戰聖經作者，前 Faria Systems CTO，多次 COSCUP、OSDC.TW、台灣與中國RubyConf、日本 RubyKaigi 大會講者。"};
    
    
    
    Teacher1 = @{@"Name":@"方鶴 | Brian Fang",@"Image":[UIImage imageNamed:@"Brain-Fang"],@"text":@"暢銷書 App 程式設計入門 - iPhone. iPad作者，MacToday App 開發專欄作家，FUNTEK 首席 iOS App 工程師，點點數位 iOS App 顧問，PChome Mac 基礎教室專欄作家，開發 Wealthy、LOCOMO 運動記錄等知名App。"};
    Teacher2 = @{@"Name":@"潘世穎 ｜ Peter Pan",@"Image":[UIImage imageNamed:@"Peter-Pan"],@"text":@"FUNTEK軟體架構師，5945呼叫師傅共同創辦人，前CyberLink資深工程師。作品Picaca獲選為Apple featured app (2013/08)，暢銷書《iPhone SDK 3 Programming 應用程式開發》作者。"};
    Teacher3 = @{@"Name":@"張文鈿 | iHower",@"Image":[UIImage imageNamed:@"ihower"],@"text":@"Ruby on Rails 實戰聖經作者，前 Faria Systems CTO，多次 COSCUP、OSDC.TW、台灣與中國RubyConf、日本 RubyKaigi 大會講者。"};
    

    
    
    Member1 = @{@"Name":@"Eric",@"Image":[UIImage imageNamed:@"eric"],@"text":@"時任中時財經記者，目前正積極學習程式語言，朝程式設計師之路邁進。"};
    Member2 = @{@"Name":@"Abby Hsu",@"Image":[UIImage imageNamed:@"Abby-Hsu"],@"text":@"渴望突破體制內教育的大三生，在自我探索的過程中夾雜著迷惘與孤單，靠著網路的學習資源、媒體、各式專業書籍，逐漸理出自己的未來規劃。"};
    Member3 = @{@"Name":@"Kung",@"Image":[UIImage imageNamed:@"Kung"],@"text":@"台大獸醫研究所畢業，從台北到南部從事大動物獸醫師的工作，來到 ALPHA Camp 學習一顆靈活的行銷頭腦，期待成為改變產業的橋樑。"};
    
    
    
    arr1 = @[intro1, intro2, intro3,intro4];
    
    arr2 = @[Teacher1, Teacher2, Teacher3,];
    
    arr3 = @[Member1, Member2, Member3];
    
    [self loadData:intro1];
    
    
    UISwipeGestureRecognizer *swipeLeft = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipe:)];
    UISwipeGestureRecognizer *swipeRight = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipe:)];
    
    // Setting the swipe direction.
    [swipeLeft setDirection:UISwipeGestureRecognizerDirectionLeft];
    [swipeRight setDirection:UISwipeGestureRecognizerDirectionRight];
    
    // Adding the swipe gesture on image view
    [self.view addGestureRecognizer:swipeLeft];
    [self.view addGestureRecognizer:swipeRight];
    [self.view setUserInteractionEnabled:YES];
    
    }
- (void)handleSwipe:(UISwipeGestureRecognizer *)swipe {
    
    if (swipe.direction == UISwipeGestureRecognizerDirectionLeft) {
        
        NSLog(@"Left Swipe");
        
        if ((changeNum >= 0) && (changeNum < 4)) {
            changeNum++;
            if (changeNum == 4) {
                changeNum = 0;
            }
            [self loadData:arr1[changeNum] ];
        }
        else if ((changeNum >= 4) && (changeNum <7 )){
            changeNum++;
            if (changeNum == 7) {
                changeNum = 4;
            }
            [self loadData:arr2[changeNum-4] ];
        }
        else if ((changeNum >= 7) && (changeNum < 10 )){
            changeNum++;
            if (changeNum == 10) {
                changeNum = 7;
            }
            [self loadData:arr3[changeNum-7] ];
        }

      
    }
    
    if (swipe.direction == UISwipeGestureRecognizerDirectionRight) {
        NSLog(@"Right Swipe");
        
        if ((changeNum >= 0) && (changeNum < 4)) {
            if (changeNum == 0) {
                changeNum = 4;
            }
            changeNum--;
            [self loadData:arr1[changeNum] ];
        }
        if ((changeNum >= 4) && (changeNum < 7)) {
            if (changeNum == 4) {
                changeNum = 7;
            }
            changeNum--;
            [self loadData:arr2[changeNum-4] ];
        }
        if ((changeNum >= 7) && (changeNum < 10)) {
            if (changeNum == 7) {
                changeNum = 10;
            }
            changeNum--;
            [self loadData:arr3[changeNum-7] ];
        }
        
    }
    
}

-(void)loadData:(NSDictionary *)dic {
    label1.text = [dic valueForKey:@"Name"];
    eric.text = [dic valueForKey:@"text"];
    view1.image = [dic valueForKey:@"Image"];
}

-(IBAction)buttonclicked:(id)sender{
    
    if ((changeNum >= 0) && (changeNum < 4)) {
        changeNum++;
        if (changeNum == 4) {
            changeNum = 0;
        }
        [self loadData:arr1[changeNum] ];
    }
    else if ((changeNum >= 4) && (changeNum <7 )){
        changeNum++;
        if (changeNum == 7) {
            changeNum = 4;
        }
        [self loadData:arr2[changeNum-4] ];
    }
    else if ((changeNum >= 7) && (changeNum < 10 )){
        changeNum++;
        if (changeNum == 10) {
            changeNum = 7;
        }
          [self loadData:arr3[changeNum-7] ];
    }
}

    


- (IBAction)clicked:(id)sender{
    
    if ((changeNum >= 0) && (changeNum < 4)) {
        if (changeNum == 0) {
            changeNum = 4;
        }
        changeNum--;
        [self loadData:arr1[changeNum] ];
    }
    if ((changeNum >= 4) && (changeNum < 7)) {
        if (changeNum == 4) {
            changeNum = 7;
        }
        changeNum--;
        [self loadData:arr2[changeNum-4] ];
    }
    if ((changeNum >= 7) && (changeNum < 10)) {
        if (changeNum == 7) {
            changeNum = 10;
        }
        changeNum--;
        [self loadData:arr3[changeNum-7] ];
    }
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)setmentedControlValueChanged:(id)sender {
    UISegmentedControl *segmentedControl = sender;
    
    if (segmentedControl.selectedSegmentIndex == 0) {
        changeNum = 0;
    
        [self loadData:arr1[changeNum]];
    }
    else if(segmentedControl.selectedSegmentIndex == 1) {
        changeNum = 4;
        [self loadData:arr2[changeNum-4]];
    }
    else if(segmentedControl.selectedSegmentIndex == 2) {
        changeNum = 7;
        [self loadData:arr3[changeNum-7]];
    }
        
}






@end
