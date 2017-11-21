#include<cstdio>

const int maxn = 1024;

int mms[maxn][maxn];
int total[maxn];

double total_probability(int n, int q, int s[maxn][maxn], int s_sum[maxn]){
  double pr_q = 0;

  for(int i = 0; i<n; ++i)
    pr_q += double (s[i][q]) / double (s_sum[i]);
  pr_q *= 1 / double (n);

  return pr_q;
}

int main(){
  int t, n, m, q, current_total;

  scanf(" %d", &t);

  while(t--){
    scanf(" %d %d", &n, &m);

    for(int i = 0; i<n; ++i){
      current_total = 0;
      for(int j = 0; j<m; ++j){
        scanf(" %d", &mms[i][j]);
        current_total += mms[i][j];
      }
      total[i] = current_total;
    }

    scanf(" %d", &q);
    --q;

    printf("%.2lf\n", total_probability(n, q, mms, total));
  }
}
