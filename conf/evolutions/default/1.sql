# --- !Ups

create table micropost (
    id int auto_increment primary key,
    name varchar(31) not null,
    title varchar(127) not null,
    message varchar(255) not null,
    link varchar(255),
    deletekey varchar(31) not null,
    created_at timestamp not null default current_timestamp,
    updated_at timestamp not null default current_timestamp
);

insert into micropost values (default, 'taro', '挨拶です', 'こんにちは', 'https://www.kent-web.com/bbs/light/light.cgi', '1111', default, default);
insert into micropost values (default, 'sato', 'テスト投稿です', 'テストですよ', '', '1111', default, default);

# --- !Downs
drop table micropost