create table books
(
    id          int(10) auto_increment
        primary key,
    author      varchar(100)     not null,
    bookTitle   varchar(100)     not null,
    year        int(4)           null,
    numberPages int(4)           null,
    genre       varchar(100)     null,
    read1       bit default b'0' not null,
    constraint bookTitle_UNIQUE
        unique (bookTitle)
)
    charset = utf8;