#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    // 255 unit long array of characters
    char inputChars[255];
    
    printf("Input a string: ");
    // limit input to max 255 characters
    fgets(inputChars, 255, stdin);
    
    // print as a c string
    printf("Your string is %s\n", inputChars);
    
    // convert char array to an NSString object
    NSString *inputString = [NSString stringWithUTF8String:inputChars];
    // remove last \n
    inputString = [inputString substringToIndex:[inputString length] - 1];
    
    NSString *upper = [inputString uppercaseString];
    NSString *lower = [inputString lowercaseString];
    int num = inputString.intValue;
    NSString *canada = [inputString stringByAppendingString:@", eh?"];
    NSString *replace = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
    NSInteger length = inputString.length;

    // print NSString object
    NSLog(@"Input was: %@", inputString);
    NSLog(@"1. Uppercase: %@", upper);
    NSLog(@"2. Lowercase: %@", lower);
    NSLog(@"3. Numberize: %d", num);
    NSLog(@"4. Canadianize: %@", canada);
    
    if([inputString hasSuffix:@"?"]){
        NSLog(@"5. Respond: %@", @"I don't know");
    } else if ([inputString hasSuffix:@"!"]){
        NSLog(@"5. Respond: %@", @"Whoa, calm down!");
    }
    
    NSLog(@"6. De-Space-It: %@", replace);
    NSLog(@"Word count: %d", length);
    
    return 0;
}
