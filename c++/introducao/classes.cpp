#include <iostream>

class hello{
public:
	void helloworld(){
	 std::cout << "This is the Class" << std::endl;
	}

};

int main (int argc, char *argv[])
{
	hello h;
	h.helloworld();
	return 0;
}
