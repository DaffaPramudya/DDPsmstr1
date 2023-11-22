module quiz4a;

import std.stdio;
import std.container;

void main(){
    int[] Nilai = [760,1134,1037,366,262,208,820,1091,669,422,518,
    316,872,466,623,711,60,107,928,1185,983,158,573];
    int[] Indeks = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,
    19,20,21,22,23];
    ulong len = Nilai.length;

    int n=0;
    while (n<len){
        int i=0;
        while (i<len-1){
            if (Nilai[i]>Nilai[i+1]){
                int k=Nilai[i];
                Nilai[i]=Nilai[i+1];
                Nilai[i+1]=k;
                int l=Indeks[i];
                Indeks[i]=Indeks[i+1];
                Indeks[i+1]=l;
            }
            i++;
        }
        n++;
    }

    int i=0;
    while (i<len){
        write(Indeks[i],' ');
        i++;
    }
}