# Root Cafe Repo

A root repo for cafe project. Contains server and client as submodules.

**Please notice**: it's our mistake. Let's create issues for backend in `cafe-server` repo
and issues for frontend in `cafe-client`. It's important because otherwise we would not be
able to reference to issues and commits inside comments and commit messages.

## How do I Update This Stuff?

To update submodule to its latest stable version, you need to:

```bash
cd <module_name>
git pull origin master
git checkout master
cd ..
```

**OR**

```bash
bash UATS.sh <module_name>
```

For example, to get latest stable version of server repo:

```bash
bash UATS.sh cafe-server
```

If everything is ok, it will show you word 'Done' at the end of output.
If not, try to use the 1st option and manually control what's happening.

## For ones who merge everything to master

After every significant merge, please, commit also in root repo, to deliver
the latest version to all your comrades.

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

## Troubleshooting

If any problems with your environment (except pollution), write [me](https://vk.com/im?sel=85761780) as I seem to be your dev-ops.

## I Wanna Learn More

You can read about git submodules here:
[RUS](https://git-scm.com/book/ru/v1/%D0%98%D0%BD%D1%81%D1%82%D1%80%D1%83%D0%BC%D0%B5%D0%BD%D1%82%D1%8B-Git-%D0%9F%D0%BE%D0%B4%D0%BC%D0%BE%D0%B4%D1%83%D0%BB%D0%B8)
[ENG](https://git-scm.com/book/en/v2/Git-Tools-Submodules)
