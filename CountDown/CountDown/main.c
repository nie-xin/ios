//
//  main.c
//  CountDown
//
//  Created by Genie on 24/03/2015.
//  Copyright (c) 2015 niexin. All rights reserved.
//

//#include <stdio.h>
//
//int main(int argc, const char * argv[]) {
//    for (int i = 99; i >= 0; i -= 3) {
//        printf("%d\n", i);
//        if (i % 5 == 0) {
//            printf("Found one!\n");
//        }
//    }
//    return 0;
//}

#import <readline/readline.h>
#import <stdio.h>

int main(int argc, const char * argv[])
{
    printf("Where should I start counting?");
    const char *input = readline(NULL);
    for (int i = atoi(input); i >= 0; i -= 3) {
            printf("%d\n", i);
            if (i % 5 == 0) {
                printf("Found one!\n");
            }
        }
    
    return 0;
}