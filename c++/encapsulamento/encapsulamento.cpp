#include <iostream>

class Pessoa{
  private:
  int idade = 20;
  protected:
  double altura = 1.80;
  public:
    void nome(){
      std::cout << "ArmaSec" << '\n';
    }

    double display_altura(){
    return altura;
    }

    int display_idade(){
    return idade;
    }
};



class Habilidades : public Pessoa{
  public:
    void idioma(){
      std::cout << "Português Brasileiro" << '\n';
    }
};

class Dados : public Habilidades{

};

int main( int argc , char **argv ){
  Dados dados;
  std::cout << "O nome dele é: ";
  dados.nome();
  std::cout << "A habilidade dele é: ";
  dados.idioma();
  std::cout << "A altura dele é: " << dados.display_altura() << '\n';
  std::cout << "A idade dele e :" <<dados.display_idade() << std::endl;
  return 0;
}


