alias PeriDb.Post
alias PeriDb.Repo

post1 = %Post{username: "test", content: "hello", image: nil, read_by: [1,2]}
post2 = %Post{username: "test2", content: "hello", image: nil, read_by: [1]}
post3 = %Post{username: "test3", content: "hello", image: nil, read_by: [2]}
post4 = %Post{username: "test4", content: "hello", image: "boogsa", read_by: [1,2,3]}
post5 = %Post{username: "test5", content: "hello", image: "uugas", read_by: [1,2]}

Repo.insert(post1)
Repo.insert(post2)
Repo.insert(post3)
Repo.insert(post4)
Repo.insert(post5)
