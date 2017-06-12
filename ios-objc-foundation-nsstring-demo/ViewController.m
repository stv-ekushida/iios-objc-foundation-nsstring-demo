//
//  ViewController.m
//  ios-objc-foundation-nsstring-demo
//
//  Created by Eiji Kushida on 2017/06/13.
//  Copyright © 2017年 Eiji Kushida. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSString* str = @"Hello, Objc-World";

    //1.1. 文字列の比較
    if([str isEqualToString:@""]) {
        NSLog(@"文字列は空です。");
    } else {
        NSLog(@"文字列は空ではありません。");
    }

    if([str isEqualToString:@"Hello, Objc-World"]) {
        NSLog(@"一致します。");
    }

    //1.2. 文字数をカウントする
    NSLog(@"文字数は、%zd文字です。", str.length);

    //1.3. 文字列の一部を切り出す(指定文字以降の文字列）
    NSString* str1 = [str substringFromIndex:3];
    NSLog(@"%@", str1);

    //1.4. 文字列の一部を切り出す(先頭から指定文字列まで）
    NSString* str2 = [str substringToIndex:3];
    NSLog(@"%@", str2);

    //1.5. 文字列の一部を切り出す(指定範囲）
    NSString* str3 = [str substringWithRange: NSMakeRange(3, 4)];
    NSLog(@"%@", str3);

    //1.6. 文字列を分割する
    NSArray<NSString*>* strs = [str componentsSeparatedByString:@","];
    NSLog(@"%@", strs[0]);
    NSLog(@"%@", strs[1]);

    //1.7. 文字列を置換する
    NSString* str4 = [str stringByReplacingOccurrencesOfString:@"Objc" withString:@"Swift"];
    NSLog(@"%@", str4);

    //1.8. 文字列のPrefixを調べる
    if([str hasPrefix:@"Hel"]) {
        NSLog(@"Helから始まる");
    } else {
        NSLog(@"Helから始まらない");
    }

    //1.9. 文字列のSuffixを調べる
    if([str hasSuffix:@"World"]) {
        NSLog(@"Worldで終わる");
    } else {
        NSLog(@"Worldで終わらない");
    }

    //1.10. 該当の文字列が見つかる
    NSRange result = [str rangeOfString:@"Objc"];
    if(result.location == NSNotFound) {
        NSLog(@"見つからない");
    } else {
        NSLog(@"見つかる");
    }

    //1.11. 前後のスペースをトリムする
    NSString* str5 = [@" Hello, World " stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    NSLog(@"%@", str5);

    //1.12. URLエンコード
    NSString* str6 = [@"あいうえお" stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet alphanumericCharacterSet]];

    NSLog(@"%@", str6);

    //1.13. URLデコード
    NSString* str7 = [str6 stringByRemovingPercentEncoding];
    NSLog(@"%@", str7);

    //1.14. 大文字に変換
    NSString* str8 = [str uppercaseString];
    NSLog(@"%@", str8);

    //1.15. 小文字に変換
    NSString* str9 = [str lowercaseString];
    NSLog(@"%@", str9);
}


@end
