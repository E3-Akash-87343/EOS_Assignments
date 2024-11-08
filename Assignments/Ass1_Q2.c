//2. From a parent process (A) create a child process (B). The child (B) in turn creates new child process (C) and it (C) in turn create new child (D). 
//   All these processes should run concurrently for 5 seconds and cleaned up properly upon termination.


#include<stdio.h>
#include<unistd.h>
#include<sys/wait.h>

int main()
{
    int i,pid1,s1,pid2,s2,pid3,s3;

    pid1=fork();
    if(pid1==0){ //child 1
        pid2=fork();
        if(pid2==0){ // child 2
            pid3=fork();
            if(pid3==0){ //child 3
                for(i=1;i<=3;i++){
                    printf("child3: %d\n",i);
                    sleep(1);
                }
                _exit(0);
            }
            else{ // child 2
                for(i=1;i<=3;i++){
                    printf("child2: %d\n",i);
                    sleep(1);
                }
                waitpid(pid3,&s3,0);
                _exit(0);
            }
        }
        else{ // child 1
            for(i=1;i<=3;i++){
                    printf("child1: %d\n",i);
                    sleep(1);
                }
                waitpid(pid2,&s2,0);
                _exit(0);
        }
    }
    else{ // parent
        for(i=1;i<=3;i++){
                printf("child1: %d\n",i);
                sleep(1);
                }
                waitpid(pid1,&s1,0);
    }

    return 0;
}