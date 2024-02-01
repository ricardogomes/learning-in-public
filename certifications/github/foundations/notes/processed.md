# GitHub Foundations Certification Study

These are my processed notes. The [notes file](./index.md) are the study capture I did while taking the learning path courses.

I organized these notes based on the domains in the [github-foundations-exam-study-guide](study guide), with the addicion of the Domain 0, that just gets the point of view of the products. The notes on Domain 0 will probably be a part of the other domains, but I feel I need a single place to put this more static data.

## Domain 0 - GitHub Product Offerings

For Individuals:
- GitHub Free
- GitHub Pro
For Organizations:
- GitHub Free for Organizations
- GitHub Team
For Entreprises:
- GitHub Enterprise Cloud
- GitHub Enterprise Server

Both individuals and organizations can have unlimited public repositories, packages and projects, but on the Free versions private repositories are limited. Support is community based on Free plans and via email on Paid plans.

Enterprise accounts manage multiple Organizations, offers adicional security, SAML SSO. Server is the self hosted option and GitHub Connect allows for some features of GitHub.com such as Depedabot.

GitHub Actions, Packages and Codespaces (only provides free tier on personal accounts) are the features that have quatitative diferences between plans:

|      			   | Free  | Pro    | Free Org | Team  | Enterprise Cloud |
| ------------------------ | ----  | ---    | -------- | ----  | ---------------- |
| Actions    minutes/month | 2.000 | 3.000  | 2. 000   | 3.000 | 50.000		  |
| Packages   storage/month | 500MB | 2GB    | 500MB    | 2GB   | 50GB		  |
| Codespaces   hours/month | 120   | 180    | N.A.     | N.A   | N.A		  |
| Codespaces storage/month | 15GB  | 20GB   | N.A.     | N.A   | N.A		  |

Organizations can opt-in to assume the costs of Codespaces but don't have montly free resources.

As GitHub Enterprise Server is the odd one out, being the ony self hosted option, here are some notes on it's deployment:

We can deploy GHES on hypervisors:
  - Microsoft Hyper-V
  - OpenStack KMV
  - VMware ESXi

Or on public clouds:
  - AWS
  - GCP
  - Azure

Some features are optional:
- GitHub Actions
- GitHub Connect
- GitHub Advanced Security
- GitHub Packages

This should be a fair summary of the GitHub's product line.

## Domain 1 - Introduction to Git and GitHub

The main concepts of this domain are git and GitHub. git is a distributed version control system and GitHub is a platform that uses git as its core technology.

Version controll systems allow for the management of source code by keeping track of a collection of files. VCS are also called Software Configuration Management (SCM) tools, and for the purpose of this certification that is find, but there is a set of tools under the same, or very similar, name that do not directly relate to version control. Like Ansible, Chef, etc.

Distributed VCS are VCS that allow for some form of distribution. In the case of git this means the existence of more than one instances of a particular repository, that could have completly different histories. Normally we distinguish instances by client and server, in the context of GitHub it would be the server and our local clones the clients, but we could create other structures.

Repositories are the place we store our code, in git they can be bare or have a working tree. A workting tree is the set of directories and files. A bare repository does not that set of directories, only the representation of the objects and it's history. One reason for bare repositories if not having storage space ocuppied by the working tree if there's no work done on that repository directly, another is that theres less logic need to calculate merges and conflicts, again because no working tree is present.

There are 4 types of objects in git. A blob object contains a file, a tree object represents a directory, a commit object represents a specific version of the working tree, and a tag object is a name attached to a commit. The HEAD alias represents the latest commit on the current branch, and a branch is a set of linked commits.

Some concepts in git are considered to be foundational. Commits are groups (preferably small) for meaningful changes to the codebase that include their point in time and their author(s). Branches are a mechanism to isolate development work from the other branches. Remotes are essencialy network accessible repositories (normally bare) where we can push our local repository changes to, by default the first remote is called origin.  

The git cli environment is extensive, but here are some examples of the most common features:

```bash

git --version

git config user.name "Ricardo Gomes" # --global for global config
git config user.email "<email>"

git init

git status # displays the state of the working tree

git add # tell git to start keepting track of certain files

git add "<path>" # git add -A adds all files that are not modifications

git commit # save staged changes to snapshot

git commit -m "<Commit message>" # optional <file|path>: git commit file -m ""
# -a paramenter for git commit stages all changes

git commit --amend --no-edit

git log # see informations about previous commits

git log --oneline

git checkout -- "<file>" # checkout a single file (maybe after a unintended rm)

git rm "<file>"

git reset HEAD index.html

git checkout -b "<new branch name>"

git branch <new-branch> # list, create and delete branches 
git switch <branch> # switch branches. -c shortcut to create and switch to branch

git diff # show changes between commits, or commit and working tree, and other options

git merge # join two or more histories together

git rebase # reapply commits on top of another base tip

```

GitHub is a platform that is built on the git DVCS but offers a set of extra features. The key features are:

- Issues: track ideas, feedback, tasks or bugs related to the repository
- Discussions: forum like environment to make announcements, have conversations.
- Pull Requests: allow for conversation and reviews on a set of commits before merge
- Notifications: mechanism to notify the user on some event regarding repos, issues, PRs, etc
- Labels: means of categorizing issues, PRs and discussions
- Actions: CI/CD tooling
- Forks: copy of an "upstream" repository. Share code and visibility settings.
- Projects: tool for planning, and tracking work on GitHub

We can create Issues from a repository, an item in a task list (Projects), a note in a Project, a comment on another issue or a pull request, a specific line of code  or a URL query.

Besides these features, GitHub offers some tools, like Gists, GitHub Pages, GitHub Flow, and the GitHub Desktop, and some advanced features, like AI assistance with Copilot, security features like Dependabot or the GitHub Advanced Security.

Most are either self-explanatory or advanced and bellong in another Domain, but GitHub Flow fits in this one. GitHub Flow is a git branch-based development workflow that enables easy collaboration, it essencially follows these steps:
- Create a Branch with a short descriptive name
- Make changes, where ideally each commit contains an isolated, complete change.
- Create a Pull Request: to ask for feedback
- Address Review Comments: engage with the code reviewers
- Merge Pull Request: once approved merge the Pull Request
- Delete Branch

GitHub uses a version of Markdown that allows us to document or repository and our many interactions with the platform. For the most part generic Markdown works.

In some places on the GitHub UI we can use slash commands.  In any description or comment field in issues, pull requests, or discussions we can use these commands:
- /code: code block
- /details: collapsible detail area
- /saved-replies: insert a saved reply
- /table: table
- /tasklist: insert a tasl list
- /template: insert a template

Included in this domain are the basics of GitHub's product offering that I captured in Domain 0.

Finally there's a point of view that can be made regarding what tool we use to interact with GitHub, and essentially we have the following:
- GitHub.com: 
- GitHub Desktop: add and clone repos, add changes to commits interactively, add co-authors, checkout branches with pull requests, compare changed images and view CI statuses.
- GitHub Mobile: manage notifications, interact with issues and PRs, search, browse, interact with users, schedule push notifications, secure auth with 2FA, verify signins
- git CLI: use the git commands


## Domain 2 - Working with GitHub Repositories

Besides the basic funcionality of creating a repository or forking an existing one there's the option of creating one from a template. Any repository can used as a basis for a template, and anyone with access to that repository can then create a new one based on it.

Creating a Repository from a Template is similar to forking with a few key differences:
- no commit history from the original repository, only a single commit.
- commits to a fork don't appear on our contribution graph
- objective is to create a project quickly, while a fork can be for a temporary contribution

Repositories in GitHub can have a few files with special meaning:
- README|README.txt|README.md|README.org: shown in order (.github, root, docs) 
- LICENCE|LICENCE.md: define the projects' licence
- CONTRIBUTING.md: define the projects' contributing guidelines
- CODEOWNERS: way to defining owners of particular paths of the code base. Code Owners will be automatically requested for review on pull requests that modify the code that they own.



## Domain 3 - Collaboration Features

## Domain 4 - Modern Development

## Domain 5 - Project Management

## Domain 6 - Privacy, Security and Administration

## Domain 7 - Benefits of the GitHub Community
