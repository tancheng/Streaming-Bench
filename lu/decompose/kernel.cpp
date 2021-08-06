/* 32-tap FIR filter processing 1 point */
/* Modified to use arrays - SMP */

//#include "traps.h"

#include<iostream>

using namespace std;

#define SIZE 10000

int kernel(double **A, int N, double Tol, int *P);

int main()
{

  int N = 2;
  double **A = new double*[N];
  int *P = new int[N+1];
  double *x = new double[N];
  double *b = new double[N];
  double **IA = new double*[N];

  for(int i=0; i<N; ++i) {
    A[i] = new double[N];
    IA[i] = new double[N];
  }

  A[0][0] = 4;
  A[0][1] = 3;
  A[1][0] = 6;
  A[1][1] = 3;

  b[0] = 10;
  b[1] = 12;

  kernel(A, N, 0.001, P);

  return 0;
}

int kernel(double **A, int N, double Tol, int *P) {

  int imax;
  double maxA, *ptr, absA;
  int bound = N*N*N;
  for(int index=0; index<bound; index+=1) {

    int i = index / N / N;
    int k0 = index / N % N;
    int j = k0;
    int k1 = index % N;
    if(k1 == 0 and k0 == 0) {
      maxA = 0.0;
      imax = i;
    }

    if(k1 == 0 and k0>=i) {
      if ((absA = fabs(A[k0][i])) > maxA) {
        maxA = absA;
        imax = k0;
      }
    }

    if(k1 == 0 and k0 == 0 and imax != i) {
      //pivoting P
      j = P[i];
      P[i] = P[imax];
      P[imax] = j;

      //pivoting rows of A
      ptr = A[i];
      A[i] = A[imax];
      A[imax] = ptr;

      //counting pivots starting from N (for determinant)
      P[N]++;
    }

    if(k1 == 0 and j >= i+1) {
      A[j][i] /= A[i][i];
    }

    if(k1 >= i+1) {
      A[j][k1] -= A[j][i] * A[i][k1];
    }

//    index++;
//    i = index / N / N;
//    k0 = index / N % N;
//    j = k0;
//    k1 = index % N;
//    if(k1 == 0 and k0 == 0) {
//      maxA = 0.0;
//      imax = i;
//    }
//
//    if(k1 == 0 and k0>=i) {
//      if ((absA = fabs(A[k0][i])) > maxA) {
//        maxA = absA;
//        imax = k0;
//      }
//    }
//
//    if(k1 == 0 and k0 == 0 and imax != i) {
//      //pivoting P
//      j = P[i];
//      P[i] = P[imax];
//      P[imax] = j;
//
//      //pivoting rows of A
//      ptr = A[i];
//      A[i] = A[imax];
//      A[imax] = ptr;
//
//      //counting pivots starting from N (for determinant)
//      P[N]++;
//    }
//
//    if(k1 == 0 and j >= i+1) {
//      A[j][i] /= A[i][i];
//    }
//
//    if(k1 >= i+1) {
//      A[j][k1] -= A[j][i] * A[i][k1];
//    }
//
//    index++;
//    i = index / N / N;
//    k0 = index / N % N;
//    j = k0;
//    k1 = index % N;
//    if(k1 == 0 and k0 == 0) {
//      maxA = 0.0;
//      imax = i;
//    }
//
//    if(k1 == 0 and k0>=i) {
//      if ((absA = fabs(A[k0][i])) > maxA) {
//        maxA = absA;
//        imax = k0;
//      }
//    }
//
//    if(k1 == 0 and k0 == 0 and imax != i) {
//      //pivoting P
//      j = P[i];
//      P[i] = P[imax];
//      P[imax] = j;
//
//      //pivoting rows of A
//      ptr = A[i];
//      A[i] = A[imax];
//      A[imax] = ptr;
//
//      //counting pivots starting from N (for determinant)
//      P[N]++;
//    }
//
//    if(k1 == 0 and j >= i+1) {
//      A[j][i] /= A[i][i];
//    }
//
//    if(k1 >= i+1) {
//      A[j][k1] -= A[j][i] * A[i][k1];
//    }
//
//    index++;
//    i = index / N / N;
//    k0 = index / N % N;
//    j = k0;
//    k1 = index % N;
//    if(k1 == 0 and k0 == 0) {
//      maxA = 0.0;
//      imax = i;
//    }
//
//    if(k1 == 0 and k0>=i) {
//      if ((absA = fabs(A[k0][i])) > maxA) {
//        maxA = absA;
//        imax = k0;
//      }
//    }
//
//    if(k1 == 0 and k0 == 0 and imax != i) {
//      //pivoting P
//      j = P[i];
//      P[i] = P[imax];
//      P[imax] = j;
//
//      //pivoting rows of A
//      ptr = A[i];
//      A[i] = A[imax];
//      A[imax] = ptr;
//
//      //counting pivots starting from N (for determinant)
//      P[N]++;
//    }
//
//    if(k1 == 0 and j >= i+1) {
//      A[j][i] /= A[i][i];
//    }
//
//    if(k1 >= i+1) {
//      A[j][k1] -= A[j][i] * A[i][k1];
//    }

  }

/*
  int i, j, k, imax;
  double maxA, *ptr, absA;

  for (i = 0; i < N; i++) {
    maxA = 0.0;
    imax = i;

    for (k = i; k < N; k++)
      if ((absA = fabs(A[k][i])) > maxA) {
        maxA = absA;
        imax = k;
      }

    if (maxA < Tol) return 0; //failure, matrix is degenerate

    if (imax != i) {
      //pivoting P
      j = P[i];
      P[i] = P[imax];
      P[imax] = j;

      //pivoting rows of A
      ptr = A[i];
      A[i] = A[imax];
      A[imax] = ptr;

      //counting pivots starting from N (for determinant)
      P[N]++;
    }

    for (j = i + 1; j < N; j++) {
      A[j][i] /= A[i][i];

      for (k = i + 1; k < N; k++)
        A[j][k] -= A[j][i] * A[i][k];
    }
  }
*/
  return 1;

}

