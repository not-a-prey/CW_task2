#include "calculator.h"
#include "iostream"
using namespace std;

int Add(int a, int b);
int Sub(int a, int b);
int Mult(int a, int b);

int main() {
	std::cout << "5 + 5 = " << Add(5, 5) << "\n";
	std::cout << "12 - 3 = " << Sub(12, 3) << "\n";
	std::cout << "9 * 9 = " << Mult(9, 9) << std::endl;
	return 0;
}