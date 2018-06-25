#include <iostream>
#include <iterator>    // for size
using namespace std;

void main(){

	double vec[5] = {11,5,8,7,4};

	for(auto i = 0; i <= std::size(vec); i++){
	    if (vec[i] == 8){
		std::cout << "Number 8 detected!!";
		break;
	    }
	}
}
