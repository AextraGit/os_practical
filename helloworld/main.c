#include <stdint.h>

extern uint64_t _start(void);

int main(){
	uint64_t result = _start();
	while(1){}
}
