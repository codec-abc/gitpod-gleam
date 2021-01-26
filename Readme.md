This is a repository to try [Gleam](https://github.com/gleam-lang/gleam) directly from your browser without installing anything.

[Just click this link](https://gitpod.io/#https://github.com/codec-abc/gitpod-gleam) and log-in to start a new Gitpod Workspace.

Once logged, just past the fololwing into the terminal to get a default Gleam project:

````sh
gleam new my_app --template app
cd my_app
rm src/my_app.gleam
cat << 'EOF' > src/my_app.gleam
import gleam/io

pub fn hello_world() -> String {
  "Hello, from my_app!\n"
}

pub fn main(args: List(String)) -> Nil {
    io.print(hello_world())
}
EOF
````

Then compile and run the application with:

````sh
rebar3 compile && rebar3 escriptize && _build/default/bin/my_app
````