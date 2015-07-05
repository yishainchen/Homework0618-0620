//
//  IntroViewController.m
//  AlphaCamp
//
//  Created by yishain on 6/16/15.
//  Copyright (c) 2015 yishain. All rights reserved.
//

#import "IntroViewController.h"
#import <AFNetworking.h>
#import "NextViewController.h"
#import "BlogWebViewController.h"
#import "LineActivity.h"
@interface IntroViewController ()
{
    int changeNum;
    int groupNum;
    
}

@end

@implementation IntroViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    
    changeNum = 0;
    groupNum = 0;
    
//
//    AFHTTPRequestOperationManager *manager =[AFHTTPRequestOperationManager manager];
//    
//    [manager GET:@"https://dojo.alphacamp.co/api/v1/teachers" parameters:@{@"api_key":@"dd4f6237ea870fc06c9c2f5be80e9175494fba50",@"auth_token": [[NSUserDefaults standardUserDefaults] valueForKey:@"auth_token"]}  success:^(AFHTTPRequestOperation *operation, id responseObject){
//        NSLog(@"response: %@", responseObject);
//        self.courses = [responseObject[@"courses"];
    
    
    
    // Do any additional setup after loading the view.
//    arr1 = @[@1,@2,@3];
    
    intro1 = @{@"Name":@"Bernard",@"Image":[UIImage imageNamed:@"bernard"],@"text":@"ALPHA Camp 創辦人。TMI 駐場創業家，曾任 Yahoo！亞太區廣告業務總監。美國MIT大學創業論壇mentor。"};
//    view1.layer.cornerRadius = 10;  // imageView長度÷2
//    view1.clipsToBounds = YES;
    intro2 = @{@"Name":@"Tim",@"Image":[UIImage imageNamed:@"Tim"],@"text":@"清大物理系唸完換台大國企所，熱愛棒球，喜歡喝咖啡聊是非，最喜歡的一句話是：人生就像騎腳踏車，為保持平衡，必須不斷前進。"};
   
    intro3 = @{@"Name":@"Ariel",@"Image":[UIImage imageNamed:@"Ariel"],@"text":@"政大哲學系畢業，在中國大陸闖蕩三年，認為教育就是從人出發的一種用心交流，希望回歸教育，凝聚最真摯的正向能量。"};
    
    intro4 = @{@"Name":@"張文鈿 | iHower",@"Image":[UIImage imageNamed:@"ihower"],@"text":@"Ruby on Rails 實戰聖經作者，前 Faria Systems CTO，多次 COSCUP、OSDC.TW、台灣與中國RubyConf、日本 RubyKaigi 大會講者。"};
    intro5 = @{@"Name" : @"Benson Sun",
                              @"Image" : [UIImage imageNamed:@"Benson"],
                              @"text" : @"政大財政系，在Startup圈闖蕩的小朋友，從大四開始自學Web Development，是Rails的初學者，立志稱爲行銷和技術兼備的人才，目前在ALPHA Camp愉快的玩耍中。"};
    intro6 = @{@"Name" : @"Evelyn Chang",
        @"Image" : [UIImage imageNamed:@"Evelyn"],
        @"text" : @"卡內基美隆大學藝術管理碩士，從戲劇，藝術管理到數位行銷，不變的是對這個世界的好奇心與對生活的熱情。熱愛行銷與學習，持續關注創業，社群與網路發展。努力讓更多人知道ALPHA Camp的好，希望這世界因爲自己的存在而美好一點點。"};
    
    
    Teacher1 = @{@"Name":@"方鶴 | Brian Fang",@"Image":[UIImage imageNamed:@"Brain-Fang"],@"text":@"暢銷書 App 程式設計入門 - iPhone. iPad作者，MacToday App 開發專欄作家，FUNTEK 首席 iOS App 工程師，點點數位 iOS App 顧問，PChome Mac 基礎教室專欄作家，開發 Wealthy、LOCOMO 運動記錄等知名App。"};
    Teacher2 = @{@"Name":@"潘世穎 ｜ Peter Pan",@"Image":[UIImage imageNamed:@"Peter-Pan"],@"text":@"FUNTEK軟體架構師，5945呼叫師傅共同創辦人，前CyberLink資深工程師。作品Picaca獲選為Apple featured app (2013/08)，暢銷書《iPhone SDK 3 Programming 應用程式開發》作者。"};
    Teacher3 = @{@"Name":@"張文鈿 | iHower",@"Image":[UIImage imageNamed:@"ihower"],@"text":@"Ruby on Rails 實戰聖經作者，前 Faria Systems CTO，多次 COSCUP、OSDC.TW、台灣與中國RubyConf、日本 RubyKaigi 大會講者。"};
    Teacher4 = @{@"Name" : @"Edward Chiang",
        @"Image" : [UIImage imageNamed:@"Edward_Chiang"],
        @"text" : @"App開發顧問，日傑資訊負責人，前愛料理App開發隊長，寫過LovingHeart for iOS，for Android，愛料理 for iPhone，愛料理 for iPad，Mr.Plurk for iOS等知名五星等級App。"};
    Teacher5 = @{@"Name" : @"Shyne Tseng",
                                @"Image" : [UIImage imageNamed:@"Shyne_Tseng"],
                                @"text" : @"GetProperly共同創辦人，台大資管MBA，Stanford大學電腦科學碩士，旅居矽谷，愛好旅行，美食和科技。"};
    Teacher6 = @{@"Name" : @"Amos Lee",
                  @"Image" : [UIImage imageNamed:@"Amos_Lee"],
                  @"text" : @"天橋科技視覺設計總監，資策會講師，資深前端設計師，致力於CSS技術研究與教學。"};

    
    Member1 = @{@"Name":@"Eric",@"Image":[UIImage imageNamed:@"eric"],@"text":@"時任中時財經記者，目前正積極學習程式語言，朝程式設計師之路邁進。"};
    Member2 = @{@"Name":@"Abby Hsu",@"Image":[UIImage imageNamed:@"Abby-Hsu"],@"text":@"渴望突破體制內教育的大三生，在自我探索的過程中夾雜著迷惘與孤單，靠著網路的學習資源、媒體、各式專業書籍，逐漸理出自己的未來規劃。"};
    Member3 = @{@"Name":@"Kung",@"Image":[UIImage imageNamed:@"Kung"],@"text":@"台大獸醫研究所畢業，從台北到南部從事大動物獸醫師的工作，來到 ALPHA Camp 學習一顆靈活的行銷頭腦，期待成為改變產業的橋樑。"};
    
   Member4 = @{@"Name" : @"Anthony Liu",
                       @"Image" : [UIImage imageNamed:@"Anthony_Liu"],
                       @"text" : @"伊利諾大學香檳分校物理系，退伍後放棄到美國唸研究所的機會，專心投注於自己開發的通訊輔助app，希望透過ALPHA Camp認識更多有志創業的夥伴，激盪彼此的想法，並學習數位行銷爲未來的創業之路做準備。"};
   Member5 = @{@"Name" : @"Amos_Chen",
                         @"Image" : [UIImage imageNamed:@"Amos_Chen"],
                         @"text" : @"台大心理系，熱愛戲劇表演與幕後硬體技術，工作之餘與朋友共組戲劇表演，曾演出台北藝穗節。看好網路產業前景，對全端開發有濃厚興趣，希望在ALPHA Camp累積前後端開發的能力，轉型成爲網路系統工程師。"};
    Member6 = @{@"Name" : @"Winnie Huang",
                @"Image" : [UIImage imageNamed:@"Winnie_Huang"],
                @"text" : @"交大經營管理所，在學時期即積極於外商實習與參加行銷競賽，並於德國交換學生一年，不斷找尋人生方向。上份工作爲政府智庫任職研究員，工作一陣子後發現自己仍對行銷情有獨鍾，毅然決定轉換跑道，報名Bootcamp培養數位行銷實戰能力。自ALPHA Camp畢業後，現已加入進駐Appworks的創業團隊擔任行銷專員。"};
    Member7  = @{@"Name" : @"David Wang",
                      @"Image" : [UIImage imageNamed:@"David_Wang"],
                      @"text" : @"台大會計系，原本在知名新創公司擔任產品規劃經理，隨着工作經驗增長，深刻體認到持續進修的重要性，在與公司主管充分溝通後，選擇離職到ALPHA Camp學習iOS Development，經過10週的學習，現已成功轉職成爲新創公司的app工程師。"};
    
    
    
    arr1 = @[intro1, intro2, intro3, intro4, intro5, intro6];
    
    arr2 = @[Teacher1, Teacher2, Teacher3, Teacher4, Teacher5, Teacher6];
    
    arr3 = @[Member1, Member2, Member3 ,Member4, Member5, Member6, Member7];
    
    Arrcount = @[arr1,arr2,arr3];
    [self loadData:0 withGroup:groupNum];
    
    
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
        changeNum++;
        if(changeNum == [Arrcount[groupNum] count])
            changeNum = 0;
          [self loadData:changeNum withGroup:groupNum];
    }
    
    if (swipe.direction == UISwipeGestureRecognizerDirectionRight) {
        NSLog(@"Right Swipe");
        if(changeNum == 0)
            changeNum = [Arrcount[groupNum] count];
        changeNum--;
          [self loadData:changeNum withGroup:groupNum];
    }
    
}
-(void)loadData:(int)changeNumber withGroup:(int)groupNumber{
    label1.text = Arrcount[groupNum][changeNum][@"Name"];
    eric.text = Arrcount[groupNum][changeNum][@"text"];
    view1.image = Arrcount[groupNum][changeNum][@"Image"];
}

-(IBAction)buttonclicked:(id)sender{
    changeNum++;
    if(changeNum == [Arrcount[groupNum] count])
        changeNum = 0;
    
[self loadData:changeNum withGroup:groupNum];
}

- (IBAction)btnACWebView:(id)sender {
    
    BlogWebViewController *blogVC = [self.storyboard instantiateViewControllerWithIdentifier:@"BlogView"];
    [self presentViewController:blogVC animated:YES completion:nil];
}



- (IBAction)clicked:(id)sender{
    
    
    if(changeNum == 0)
        changeNum = [Arrcount[groupNum] count];
    changeNum--;
      
  [self loadData:changeNum withGroup:groupNum];
   }
- (IBAction)LogoutButton:(id)sender {
    [[NSUserDefaults standardUserDefaults] setValue:nil forKey:@"isAutoLogin"];
    [[NSUserDefaults standardUserDefaults] setValue:nil forKey:@"thisUsername"];
    [[NSUserDefaults standardUserDefaults] setValue:nil forKey:@"thisPassword"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    NextViewController *nextVC = [self.storyboard instantiateViewControllerWithIdentifier:@"Autonlogin"];
      [self presentViewController:nextVC animated:YES completion:nil];
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

- (IBAction)shareInfo:(id)sender {
    NSURL *url = [NSURL URLWithString:@"https://www.alphacamp.co"];
    NSURLRequest *request  = [NSURLRequest requestWithURL:url];
//    UIImage *image = [UIImage imageNamed:@"Line"];
    NSArray *array = @[@"哭哭",request];
    LineActivity *line = [[LineActivity alloc ]init];
    UIActivityViewController *controller = [[UIActivityViewController alloc] initWithActivityItems:array   applicationActivities:@[line]];
    controller.excludedActivityTypes = @[UIActivityTypePostToFacebook];
    
    [self presentViewController:controller animated:YES completion:nil];
    
    
}

- (IBAction)setmentedControlValueChanged:(id)sender {
    UISegmentedControl *segmentedControl = sender;
    
    if (segmentedControl.selectedSegmentIndex == 0) {
        groupNum = 0;
        [self loadData:changeNum withGroup:groupNum];
    }
    else if(segmentedControl.selectedSegmentIndex == 1) {
        groupNum = 1;
        [self loadData:changeNum withGroup:groupNum];
    }
    else if(segmentedControl.selectedSegmentIndex == 2) {
        groupNum =2;
        [self loadData:changeNum withGroup:groupNum];
    }
        
}

@end
