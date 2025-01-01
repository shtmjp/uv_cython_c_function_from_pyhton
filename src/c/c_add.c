double sum_array_c(double *array, int n)
{
    double sum = 0;
    for (int i = 0; i < n; i++)
    {
        sum += array[i];
    }
    return sum;
}