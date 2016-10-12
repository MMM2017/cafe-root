# Root Cafe Repo

A root repo for cafe project. Contains server and client as submodules.

## How do I Clone It?

This repo contains submodules, so cloning procedure differs a bit from a regular one.
Namely, you need to init submodules too with a separate command.

If you have a git shell, type this:

```bash
cd ~/Coursach/cafe # for example
git clone git@github.com:MMM2017/cafe-root.git
# here you will see that the repo was cloned into ./cafe-root
cd cafe-root
# this ones are important:
git submodule init
git submodule update
```

After these actions, you will have `cafe-server` and `cafe-client` repos located in `cafe-server` and `cafe-client` directories respectively. `cd` into them to ensure that they have been properly initialized.

**Remember** that now you don't need to clone `cafe-server` and `cafe-client`, they are already on your machine.

**Remember** also that you should make no changes in this root repo until it's realy needed and has been discussed. Do your commits in submodules only.

## Troubleshooting

If any problems with your environment (except pollution), write [me](https://vk.com/im?sel=85761780) as I seem to be your dev-ops.

## I Wanna Learn More

You can read about git submodules here:
[RUS](https://git-scm.com/book/ru/v1/%D0%98%D0%BD%D1%81%D1%82%D1%80%D1%83%D0%BC%D0%B5%D0%BD%D1%82%D1%8B-Git-%D0%9F%D0%BE%D0%B4%D0%BC%D0%BE%D0%B4%D1%83%D0%BB%D0%B8)
[ENG](https://git-scm.com/book/en/v2/Git-Tools-Submodules)
