#include <iostream>

class pessoa{
	public:
	void nome(){
		std::cout << "Utorrent is ArmaSec" << std::endl;
	}

};

class skills: public pessoa{
	public:
	void idioma(){
		std::cout << "Brazilian Portuguese" << std::endl;
	}

};



int main (int argc, char *argv[])
{
skills *p = new skills();
std::cout << "O nome dele e :" << std::endl;
p->nome();
std::cout << "O idioma dele e :" << std::endl;
p->idioma();
	return 0;
}
