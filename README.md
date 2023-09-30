# recovery

* Linux:   echo -n "<PASSWORD>" | argon2 <SALT> -d -m 25 -t 255 -p 6 -r
* Windows: argon2_prompt_password.cmd <SALT> -d -m 25 -t 255 -p 6 -r



