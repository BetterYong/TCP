#include <string>
#include <vector>
#include <memory>
#include <iostream>
#include "byte_codec.h"
using namespace basic;
using namespace std;
namespace{
const int kBufferSize=1500;
enum OctopusMessage:uint8_t{
	OCTOPUS_MSG_MIN,
	OCTOPUS_MSG_META,
	OCTOPUS_MSG_DST_CONNECTED,
	OCTOPUS_MSG_DST_FAILED,
	OCTOPUS_MSG_PING,
	OCTOPUS_MSG_PONG,
};
}
int main(){
	char buffer[kBufferSize];
	DataWriter writer(buffer,kBufferSize);
	uint8_t type1=OCTOPUS_MSG_META;
	uint8_t type2=OCTOPUS_MSG_META;
	bool success=writer.WriteUInt8(type1)&&
                writer.WriteUInt8(type2);
	if(!success){
		std::cout<<"create writer fail! "<<std::endl;
		return 0;
	}
        std::cout<<"length() "<<writer.length()<<std::endl;
 	DataReader reader(&buffer[0],kBufferSize);
	uint8_t type3=100;
        uint8_t type4=100;
	std::cout<<"tpye3= "<<type3<<"  "<<"type4= "<<type4<<std::endl;
	success=reader.ReadUInt8(&type3)&&
                reader.ReadUInt8(&type4);
	if(!success){
		std::cout<<"create reader fail !!"<<std::endl;	
	}

	std::cout<<"tpye3= "<<type3<<"  "<<"type4= "<<type4<<std::endl;

	return 0;
	
}	
