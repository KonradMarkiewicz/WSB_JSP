## Zadanie

1. W pliku `JspController` stwórz metodę, która zwróci widok `paintings/index.jsp` pod adresem `localhost:8080/paintings`.  

2. Zmodyfikuj metodę z punktu 1 tak, żeby w widoku `paintings/index.jsp` można było korzystać z modelu. W modelu powinna się znaleźć lista obrazów - można ją pobrać poprzez `paintingRespository.findAll()`.

3. Zmodyfikuj widok `paintings/index.jsp` w taki sposób, żeby wykorzystywał pętlę (`c:forEach`) do wyświetlenia obrazów z modelu. Dla każdego obrazu należy wyświetlić:

    - tytuł,
    - twórcę,
    - rok powstania,
    - miniaturkę (skorzystaj z tagu `<img src="..")`, gdzie w atrybucie `src` będzie url do danego obrazu).
    
4. Dodaj w `main.css` klasę `old`, która będzie w jakiś sposób wyróżniała tekst (dowolnie - pogrubienie, inny kolor, italic, co kto woli).

5. Wykorzystaj utworzoną w punkcie 4 klasę w taki sposób, by wyróżnić tytuły obrazów namalowanych przed 1900 rokiem. Pamiętaj o dołączeniu `main.css` do widoku `paintings/index.jsp`!

6. Korzystając z `c:if` ukryj autorów obrazów powstałych po 1900 roku.

7. ** (jeśli starczy czasu) do wyświetlonej listy obrazów dopisz wyszukiwarkę po tytule.

 