#include <signal.h>
#include <string.h>
#include <iostream>
#include <sys/socket.h>
#include <unistd.h>
#include "ip_address.h"
#include "socket_address.h"
/*
    ./t_server -h 127.0.0.1 -p 3333
*/
using namespace basic;
using namespace std;

int main(int argc, char *argv[]){ 
/*
    cmdline::parser a;
    a.add<string>("host", 'h', "host name", false, "0.0.0.0");
    a.add<uint16_t>("port", 'p', "port number", false, 3333, cmdline::range(1, 65535));
    a.parse_check(argc, argv); 
    std::string host=a.get<string>("host");
    uint16_t port=a.get<uint16_t>("port");
 */
    std::string host_local = "0.0.0.0";
    uint16_t port = 3333;
    char recbuf[4096];
    struct sockaddr_storage host;
    {
    IpAddress ip;
    ip.FromString(host_local);
    SocketAddress socket_addr(ip,port);
    host=socket_addr.generic_address();
    std::cout << "host:"<< ip<<" "<<port << std::endl;
    }
    int sockfd = 0,connect_fd=-1,total_rev=0;
    //socket函数
    if ((sockfd = socket(AF_INET, SOCK_STREAM, 0)) < 0)
    {
        printf("\n Error : Could not create socket \n");
        return 1;
    }
    size_t addr_size = sizeof(struct sockaddr_storage);
    //bind函数　　local直接只用
    if(bind(sockfd, (struct sockaddr *)&host, addr_size)<0){
        close(sockfd);
        return 1;
    }
    if(listen(sockfd,128) == -1){
	    printf("listen socket error");
	    return -1;
    }
    while(1){
        int count_ = 0;
        if((connect_fd = accept(sockfd, (struct sockaddr*)NULL, NULL)) == -1){
		    printf("accept socket error");
		    continue;
        }
	while(1){
		//读取客户端发来的信息
		ssize_t len = read(connect_fd, recbuf, sizeof(recbuf));
		if(len < 0){
			if(errno == EINTR){
				continue;
			}
			exit(0);
		}
		total_rev+=len;
		std::cout<<"len is:"<<len<<endl;		
	}
	std::cout << "total rev:" << total_rev << std::endl;
    close(connect_fd);
    count_++;
	break;
    if(count_ >= 20){
        break;
    }
    }
    close(sockfd);
    return 0;
}

