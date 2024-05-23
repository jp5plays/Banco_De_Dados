insert into Livros (titulo,autor,ano_publicacao,disponivel,categoria,isbn,editora,quantidade_paginas,idioma) values
("As Crônicas de Nárnia","C.S. Lewis",1950,true,"Fantasia","978-0064471190","HaperCollins",768,"Inglê");
insert into Livros (titulo,autor,ano_publicacao,disponivel,categoria,isbn,editora,quantidade_paginas,idioma) values
("Cem Anos de Solidão", "Gabriel Garcia Marquez", 1967, true, "Ficção", '978-0241968581', "Penguin Books", 422, "Espanhol");
insert into Livros (titulo,autor,ano_publicacao,disponivel,categoria,isbn,editora,quantidade_paginas,idioma) values
("Harry Potter e a Pedra Filosofal", "J.K. Rowling", 1997, true, "Fantasia", '978-0439708180', "Bloomsbury", 309, "Inglês");

insert into Livros (titulo,autor,ano_publicacao,disponivel,categoria,isbn,editora,quantidade_paginas,idioma) values
("O Senhor dos Anéis: A Sociedade do Anel", "J.R.R. Tolkien", 1954, true, "Fantasia", '978-0618640157', "HarperCollins", 423, "Inglês");

insert into Livros (titulo,autor,ano_publicacao,disponivel,categoria,isbn,editora,quantidade_paginas,idioma) values
("Mundo dos Dinossauros", "Joseph stolen", 1994, true, "Historia", '978-9518577557', "Homeprime", 365, "Alemão");

update Livros 
set disponivel = false
where ano_publicacao<2000;

update Livros 
set titulo = "1984"
where editora = "Plume Books";

update Livros 
set isbn = '978-0439708180'
where titulo = "Harry Potter e a Pedra Filosofal (Edição Especial)";

update Livros 
set idioma = "inglês"
where editora = "Penguin Books" ;

delete from Livros where categoria ="terror";

delete from Livros where idioma= "Francês" and ano_publicacao<1970;

delete from Livros where titulo = "As Crônicas de Nárnia";

delete from Livros where editora = "Penguin Books";

select *
from Livros 
where quantidade_paginas>500;

select categoria, count(categoria) as contagem
from livros
group by categoria;

select *
from livros
order by titulo asc
limit 5;

select quantidade_paginas , avg(quantidade_paginas) as media , sum(quantidade_paginas) as soma
from livros;

select ano_publicacao , avg(ano_publicacao) as media
from livros;

select ano_publicacao ,max(ano_publicacao) , min(ano_publicacao)
from livros;

select *
from livros
order by ano_publicacao desc;

select titulo
from livros
where idioma= "inglês"

union

select titulo
from livros
where idioma= "Português";

select *
from livros
where autor = "George Orwell";






