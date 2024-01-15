# Github Foundation Notes

I'm following the course at [Collection: GitHub Foundations](https://learn.microsoft.com/en-us/collections/o1njfe825p602p) and these are my notes.

This course seems to be a general introduction to most products under the GitHub unbrella, like Projects or Copilot, and the basics of git inside of GitHub.

## Course Ouline

1. Introduction to Git
2. Introduction to GitHub
3. Introduction to GitHubs's products
4. Introduction to GitHub Copilot
5. Code with GitHub Codespaces
6. Manage your work with GitHub Projects
7. Communicate effectively on GitHJub using Markdown
8. Manage an InnerSource program by using GitHub
9. Maintain a secure repository by using GitHub best practices
10. Introduction to GitHub adminstration
11. Authenticate and authorize user identities on GitHub
12. Manage repository changes by using pull requests on GitHub
13. Search and organize repository history by using GitHub

## Notes 

### 1 - Introduction to git and Introduction to GitHub

- [Youtube](https://www.youtube.com/watch?v=9uGS1ak_FGg%3Fazure-portal%3Dtrue)
- [Introduction to Git](https://learn.microsoft.com/en-us/training/modules/intro-to-git/?ns-enrollment-type=Collection&ns-enrollment-id=o1njfe825p602p)
- [Introduction to GitHub](https://learn.microsoft.com/en-us/training/modules/introduction-to-github/?ns-enrollment-type=Collection&ns-enrollment-id=o1njfe825p602p)
- I apparently didn't understand the moce to another module and I did both :-)

```bash
# Simple Commands

git --version

git config user.name "Ricardo Gomes" # --global for global config
git config user.email "<email>"

git init

git status
# displays the state of the working tree

git add
# tell git to start keepting track of certain files

git add "<path>"
# git add -A adds all files that are not modifications

git commit
# save staged changes to snapshot

git commit -m "<Commit message>" # optional <file|path>: git commit file -m ""
# -a paramenter for git commit stages all changes

git commit --amend --no-edit

git log
# see informations about previous commits

git log --oneline

git checkout -- "<file>" # checkout a single file (maybe after a unintended rm)

git rm "<file>"

git reset HEAD index.html

git checkout -b "<new branch name>"

```

- A .gitignore file allows file/folder exclusion.
- A .git-keep file forces tracking of the folder its in even if its empty
- Examples of VCSs:
    - CVS
    - Subversion - SVN
    - Perforce
    - Mercurial - Hg
- Git is a distributed VCS
- GitHub Desktop is a GUI for git
- GitHub is a platform that uses git as its core technology
- Key features provided by GitHub:
    - Issues
    - Discussions
    - Pull Requests
    - Notifications
    - Labels
    - Actions
    - Forks
    - Projects
- GitHub provides an AI-Powered platform to build, scale and deliver secure software
- Core pillars of GitHub Entreprise:
    - AI: Copilot
    - Collaboration: Repositories, Issues, Pull Requests
    - Productivity: CI/CD
    - Security
    - Scale
- Gists are similar to repositories for storing and sharing code snippets
- Gists can be public or secret. Secret does not mean private, we can share the link with anyone they are however not searchable
- GitHub repositorys and have a Wiki to store documentation
- State of a file:
    - untracked: not a part of the git repo
    - tracked: actively monitored by git:
        - unmodified: no changes since last commit
        - modified: changes since last commit
        - staged: modified and part of the staging area (index) and ready to be commited
        - commited: file is in the repo's database, and represents the latests version
- PRs can have one or more reviewers
- PR reviewers and comment, add changes or use the PR for further discussion
- GitHub Flow is a lightweight workflow that allows for safe experimentation, the main steps are:
    1. Create a branch
    2. Implement changes and deploy / test implementation
    3. Create Pull Request - ask collaborators for feedback
    4. Review and Implement Feedback
    5. Approve Pull Request and merge it into main
    6. Delete branch
- We can create Issues from:
    - a repository
    - a item in a task list
    - a note in a project
    - a comment in an issue or pull request
    - a specific line of code
    - a URL query
- Discussions need to be enabled on the repository
- All Discussions must be created in a category
- Default Discussion categories:
    - 📣 Announcements
    - #️⃣ General
    - 💡 Ideas
    - 🗳️ Polls
    - 🙏 Q&A
    - 🙌 Show and tell
- We can receive ongoing updates about a specific activity on GitHub via Subscription
- Notifications are updates we receive for specific activities we are subscribed to
- We can subscribe to notifications from:
    - A conversation in a specific issue, pull request or gist
    - All activity in a repository
    - CI activity
    - Repository issues, pull request, releases, security alerts, or discussions
- 

#### Concepts

- **Version Control System**: (VCS), also called **Software Configuration Management** (SCM) tracks changes to a collection of files
- **Distributed VCS**: both client and server store a project's complete history, client can work offline and sync later
- **Working Tree**: set of diretories and files that store the version of the project we're working on
- **Repository**: diretory (top level of a working tree) where git keeps all the history
- **Bare Repository**: repository without the working tree
- **Hash**: result of a hash function. In git hashes are use to represent objects (files, folders, commits). Git uses 160 bit hashes
- **Object**: git has 4 types of objects, identified by SHA-1 hash:
    - blob object contains a file
    - tree object represents a directory. Contains names, hashes and permissions
    - commit object represents a specific version fo the working tree
    - tag object is a name attached to a commit
- **Branch**: named series of linked commits
- **HEAD**: the most recent commit of the current branch
- **Remote**: named reference to another git repository, the default named origi
- **Commands, Subcommands and Options**: in `git reset --hard`, git is the command, reset the subcommand and --hard the option
- **Commit**: a change to one or more files, it's assigned a unique ID, the time and contributor
- **Pull Request**: mechanism used to signal that commit(s) from one branch are ready to be merged into another branch
- **Issues**: used to track ideas, feedback, tasks, or bugs
- **Discussions**: used to ask an answer questions, share information, make announcements, or have conversations about a project
- **Subscription**: 
- **Notification**: 
- **GitHub Pages**: used to publicize and host a website me, my organization or project


#### Questions from platform
Questions for later review

- What is the best way to report a bug to a GitHub project? 
    1. Send an email to a project owner.
    2. I don't bother reporting software bugs because there's no transparency and they never get fixed anyway.
    3. **Search for the bug in the project's existing issues and create a new one if it hasn't been reported yet.**
- Suppose you created a bug fix on a new branch and want it to become part of the next production build generated from the main branch. What should you do next? 
    1. Copy your branch changes and commit them directly to the main branch.
    2. **Create a pull request to merge your new branch into the main branch.**
    3. On second thought, maybe I won't share this fix. I'll just put it in my own private version of the source code.
- Suppose you'd like to work with a project on GitHub, but you don't have write access to the project. What can you do to contribute? 
    1. **Fork the project's repository to your GitHub account, clone the forked repository to your local machine, push changes to your repository, and submit a pull request to the target (upstream) repository.**
    2. Clone the project to your local machine and push updates directly to the project repository.
    3. Use git commands to make a copy of the project so that you can work locally. Submit an issue to get your changes into the target repository.
- Which of the following scenarios is a common use case for a version control system? 
    1. Deleting earlier versions of a project or file, so you know you are working only with the most current file or data.
    2. **Making experimental changes to your project in an isolated branch.**
    3. Gathering feature requirements for a large project and communicating them to stakeholders.
- What is another name for a version control system? 
    1. Version management software (VMS)
    2. Software control management (SCM) system
    3. **Software configuration management (SCM) system**
- What’s the difference between Git and GitHub? 
    1. **Git lets you work with one or more local branches and push changes to a remote repository. GitHub acts as the remote repository, which is accessed through a website or command-line tools.**
    2. Git is a distributed version control system (DVCS) that runs in the cloud. GitHub is an interface layer that provides access to Git technology.
    3. Git is used by an individual contributor. GitHub is used by multiple contributors to simplify group development work.
- What Git command gives information about how to use Git? 
    1. git init
    2. git status
    3. **git help**


## ToDos

- [ ] the various uses of git reset as well as the pointers like HEAD and HEAD^
- [ ] create a gist with common git commands and some scenarios for uncommon ones


