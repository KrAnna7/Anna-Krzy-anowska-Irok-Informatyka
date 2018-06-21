#include <stdio.h>
#include <string.h>
#include <errno.h>
 
int main()
{
    FILE *f = fopen("notatki.txt", "r");
    if (f == NULL)
    {
        printf("Nie udalo sie otworzyc pliku: %s\n", strerror(errno));
        return 1;
    }
    puts("Plik otwarty pomyslnie!");
    fclose(f);
    return 0;
}
