//Langkah 1
void main(){
    for (int index = 10; index < 27; index++) {
        print(index);
    }


//Langkah 3
for (int index = 1; index<= 27; index++){
if (index == 21) {
    break;
} else if (index > 1 && index < 7) {
    continue;
}
print(index);
}
}