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


### 3 Introduction to GitHub's Products

- GitHub account types:
    - Personal: every person has a personal account, with GitHub Free or GitHub Pro
    - Organization: 
        - can't signin to an organization. 
        - Each person can be a menber of multiple accounts. 
        - Individual accounts can have different roles in a organization
        - Only organization owners and security managers can manage settings
    - Entreprise:
        - enable central management of policies and billing for multiple organizations
- GitHub plans:
    - GitHub Free:
        - unlimited public and private repos
        - unlimited collaborators
        - GitHub community support
        - Dependabot alerts
        - two-factor authentication enforcement
        - 500MB GitHub Packages storage
        - 120 GitHub Codespaces core hours / month
        - 15GB GitHub Codespaces storage / month
        - 2000 minutes GitHub Actions
        - GitHub Actions deployment protection for public repositories
        - GitHub Free for organizations has a limited set of features on private repos
    - GitHub Pro
        - GitHub Support via email
        - 3000 minutes GitHub Actions / month
        - 2GB GitHub Packages storage
        - 180 GitHub Codespaces core hours / month
        - 20GB HitHub Codespaces storage /month
        - Advanced tools and insights in private repositories:
            - Required pull request reviewers
            - Multiple pull request reviewers
            - Protected Branches
            - Code owners
            - Autolinked references
            - GitHub Pages
            - Wikis
            - Insights: pulse, contributors, traffic, commits, code frequency, network and forks
    - GitHub Team: GitHub Pro for organizations
        - option to enable/disable Codespaces
    - GitHub Enterprise
        - greater support
        - extra security
        - compliance
        - deployment controls
        - Authentication with SAML single sign-on
        - Access provisioning with SAML or SCIM
        - Deployment protection rules with Actions for private or internal repos GitHub Connect
        - Option to purchase GitHub Advanced Security
        - Two Options:
            - GitHub Enterprise Server: self-hosted
            - GitHub Entreprise Cloud
                - 50000 minutes Actions / month
                - 50GB Packages Storage
                - SLA 99,9% uptime
- GitHub access mechanisms:
    - GitHub website
    - GitHub Mobile
        - manage, triage and clear notifications
        - read, review and collaborate on issues and pull requests
        - edit files in pull requests
        - search, browse and interact with users, repos and organizations
        - receive push notifications when someone mentions your username
        - schedule push notifications for specific custom hours
        - secure GitHub.com account with two-factor auth
        - verify your sign-in attempts on unrecognized devices
    - GitHub Desktop
        - add and clone repos
        - add changes to your commit interactively
        - quickly add co-authors to your commit
        - check out branches with pull requests and view CI statuses
        - compare changed images
- GitHub billing:
    - bills separate for each account: personal, organization, entreprise
    - subscriptions + usage-based 

#### Questions

- What's the difference between GitHub organization accounts and GitHub personal/user accounts? 
    - **Organizational accounts are shared accounts, while personal/user accounts are for individuals**
    - You pay more for organization accounts versus personal/user accounts
    - They're exactly the same
    - Personal/user accounts have more access than organization accounts
- What's the best reason to decide to upgrade to the GitHub Enterprise product? 
    - Because you want to use GitHub Actions and Codespaces
    - Because your VP needs to use GitHub Insights
    - **Because you want to centrally manage users and repositories across multiple organizations**
    - Because you want to use the team pull request reviewers feature.
- What's the purpose of a team? 
    - A team allows you to manage an organization account
    - A team allows you to control permission levels for an enterprise
    - A team allows a single user to sign in using different accounts credentials
    - **A team is intended to reflect a company or group's structure. It's used to provide cascading access permissions and make it easy to notify all team members via mentions**
- What's a function you can execute on GitHub Mobile? 
    - Check out branches with pull requests and view CI statuses
    - Compare changed images
    - Add and clone repositories
    - **Manage, triage, and clear notifications from github.com**

### 4 - Introduction to GitHub Copilot
- first at-scale AI developer tool
- draws context from comments and code to suggest individual lines and whole functions
- Powered by OpenAI Codex
- Generative Pretrained Language Model
- GitHub Copilot type:
    - Individual
    - Business
        - control who can use Copilot in your organizations
        - Features:
            - code completion
            - chat in IDE and mobile
            - security vulnerabilities filter
            - code referencing
            - public code filter
            - IP indemnity
            - enterprise-grade security, safety and privacy
    - Enterprise
        - available through GitHub Entreprise Cloud
        - every thing in Business
        - adicional layer of personalization
- GitHub Copilot X
    - AI Assistant for the entire development lifecyle
    - Features:
        - ChatGTP-lije experience with GitHub Copilot Chat
        - Copilot for Pull Requests
        - AI generated answers about documentation
        - Copilot for CLI
- available in IDEs
    - GitHub website
    - Visual Studio Code
    - Visual Studio
    - JetBrains
    - Neovim
- GitHub Copilot Configuration
    - enable / disable line suggestions
- GitHub Copilot Troubleshooting
    - Run diagnostics
#### Questions
- What is GitHub Copilot? 
    - **GitHub Copilot is an AI pair programmer that you can use to get code suggestions.**
    - GitHub Copilot is OpenAI Codex, a new AI system created by OpenAI.
    - GitHub Copilot is a JavaScript public repository and is one of the best supported languages.
    - GitHub Copilot can write a comment describing logic and you can add your suggested code to implement the solution.
- What are the supported integrated development environment extensions for GitHub Copilot? 
    - Visual Studio Code and Visual Studio
    - GitHub.com, Visual Studio Code, Visual Studio, Neovim, and JetBrains
    - **Visual Studio Code, Visual Studio, Neovim, and JetBrains** (extensions, if not, github.com also has support for copilot)
- What is GitHub Copilot X? 
    - **GitHub's vision for the future of AI-powered software development.**
    - An Artificial Intelligence (AI) pair programmer that you can use to get suggestions for whole lines or entire functions right inside your editor.
    - A product focused on organizations to help them be more productive, secure, and fulfilled.

### 5 - Code with GitHub Codespaces
- GitHub Codespaces is a fully configured development environment hosted in the cloud
- GitHub Codespaces lifecycle:
    - Creating a Codespace
        - Can be done in GitHub.com, VSCode or GitHub CLI
        - From a GitHub template or any tempalte repository on GitHub.com to start a new project
        - From a branch in a repository
        - From an open pull request
        - From a commit in the commit history
        - When creating:
            - VM and storage are assigned to the Codespace
            - A container is created
            - A connection to the Codespace is made
            - A post-creation setup is made
    - Rebuilding a Codespace
        - images from cache are used to speed up
        - can perform full rebuid to clear cache
        - changes outside /workspace are cleared
        - changes inside /workspace are preserved
    - Stopping a Codespace
    - Deleting a Codespace
        - inactive codespaces for 30 days are deleted (configurable)
- Differences between GitHub.dev and GitHub Codespaces:
    - no associated compute on github.dev
    - no terminal on github.dev
    - only subset of extensions on github.dev
    - can start on github.dev and move to codespaces
- When using new Codespaces each time we should push regularly
- When using long-running Codespaces we should pull each time we start working
- Repo admins can enable Codespaces prebuilds for a repository to speed up Codespace creation
- When conneting to Codespace via VSCode we must enable auto save
- 30 minutes of inactivity timeout stops the Codespace (configurable)
- A stopped Codespace only incurs storage costs
- Customization
    - Settings Sync
    - dotfiles: can use dotfiles repository
    - rename auto-generated name
    - change shell
    - change machine type
    - set up default editor:
        - VSCode Desktop
        - VSCode Web
        - JetBrains Gateway
        - JupyterLab
    - set default region
    - set stop timeout
    - set auto deletion
    - add extensions or plugins (VSCode Desktop or Web | Jetbrains Marketplace)
- can configure development container per repository
    - docker containers configured for the project
#### Questions
- Which directory is the clone placed after creating a Codespace? 
    - **/workspaces directory**
    - /temp directory
    - ~/.bashrc directory
    - Linux directory
- What's the maximum number of Codespaces that you can create per repository or branch? 
    - You can only create two Codespaces.
    - You can create a total of ten Codespaces.
    - You can create a total of thirty Codespaces.
    - **You can create an unlimited number of Codespaces per repository or branch, depending upon available space. When you reach an upper amount of resources, a message displays that an existing Codespace needs to removed/deleted before a new Codespace can be created.**
- What happens when Codespace loses internet connectivity? 
    - **If the connection to the internet is lost while working in a Codespace, you aren't able to access your Codespace.**
    - Codespace doesn't require an internet connection. I can access my Codespace regardless if I lose connectivity.
    - If you lose internet connection while working on your Codespace, your changes aren't saved.
- What defines the beginning of a Codespace's lifecycle? 
    - **A Codespace's lifecycle begins when you create a Codespace and ends when you delete it.**
    - A Codespace's lifecycle begins immediately when GitHub is opened and ends when the software is closed.
    - A Codespace's lifecycle begins when a repository is created and ends when it's deleted.


### 6 - Manage you work with GitHub Projects
- Projects connect your planning directly to your work
- Built like a spreadsheet, can filter, sort and group issues and pull requests
- Projects vs Projects Classic
  - Classic: Boards | New: Boards, Lists, Timeline Layout
  - Classic: Columns and Cards | New: Sort, rank and group by custom fields
  - Classic: Progress Bar | New: Visuals
  - Classic: Column Presets | New: GraphQL API and Columns
- Custom Field Types:
  - Text
  - Number
  - Date
  - Iteration: Sprints, cycles, quarterly roadmaps, custom ranges
  - Single Select
- Build an Organization level Project
- Organize Project
- Manage Project
- Automations
  - GraphQL ProjectsV2 API
  - GitHub app Project scopes
  - Webhooks events
  - GitHub Actions to automate adding issues
- Insigts
  - Create visuals to understand your work
  - Custom Bar, Column, Line and Stacked Area Charts
  - Persist and Share Charts
- Tokenized filtering 
- Saved views
- Realtime project updates and user presense indicators
#### Questions
- What Project descriptor will automatically save when you change it? 
  - **Project name**
  - Project description
  - Project README
- What does an iteration field help you do in Projects? 
  - Allows you to keep track of the various changes made to an issue or pull request.
  - Allows you to reverse the changes you made to your Project.
  - **Allows you to create sequential phases of your project and group issues and pull request based on the phase.**
- What field can you use in order to make a Priority grouping like High, Medium, and Low in your Project? 
  - Date
  - **Single select**
  - Iteration field
- What is the easiest way to add automation to your Project? 
  - GraphQL API
  - **Built-in Automation**
  - GitHub Actions
- What is the name of the section where you can edit the section where you change the visibility of your Project and delete or close your Project? 
  -Red Zone
  - Visibility and Access
  - **Danger Zone**
  
### 7 Communicate Effectively on GitHub using Markdown
- Markdown
  - emphasis: *italic* _italic_ **bold** __bold__  \* escape 
  - headings # 
  - Lists
    1. 
    1. 
    1.
  - Images ![]()
  - Links []()
  - Tables
    First|Second
    -|-
    1|2
    3|4
  - Quotes > 
  - inline html
  - code backtick `àsasd`
- Markdown in a Github repository
- GitHub flavored Markdown (GFM) - GitHub syntax extensions
  - issues and pull requests: #ID or GH-ID or username/repository#ID 
  - commits: commit url or hash or user@hash or username/repository@hash
  - mentions: @username
  - tasks [ ]
  - commands: You can use slash commands in any description or comment field in issues, pull requests, or discussions where that slash command is supported.
    - /code: code block
    - /details: collapsible detail area
    - /saved-replies: insert a saved reply
    - /table: table
    - /tasklist: insert a tasl list
    - /template: insert a template
#### Questions
-  Which of the following Markdown snippets would produce the text Hello, world! in bold italics? 
   - *Hello, *world*!*
   - **Hello, *world*!**
   - X  ***Hello, world!***
   - ### Hello, world!
- How do you print certain characters, like asterisks (*) and underscores (_), literally on your output? 
  - Use three in a row, like \*\*\* or ___.
  - **Escape them with a backslash, like \* or \_.**  **
  - Unfortunately, this isn't supported at this time.
- Suppose there's an HTML snippet that you want to include on your GitHub Pages web site, but Markdown doesn't offer a way to render it. What should you do? 
  - **Just add the HTML inline.**
  - Cut the content. If it's not supported in Markdown, then it's probably not worth including.
  - Open an issue that requests Markdown support for your specialized scenario.
 
### 8 Contribute to an open-source project on GitHub
- Find open-source projects and tasks on GitHub
    - github.com/search
    - top level documents
        - LICENCE
        - README
        - CONTRIBUTING
        - CODE_OF_CONDUCT
    - issue tracker
    - pull requests
    - chat channels: slack, gitter, IRC, Discourse
    - /contribute url https://github.com/user/project/contribute
    - /labels url 
        - good-first-issue
        - help wanted
        - begginer-friendly
    - issues can be linked to other issues and PRs
        - when linked to PR may say "May be fixed by #ID"
    - sponsor a project
- Create pull-requests
    - fork the project
    - clone repo
    - optionally create branch
    - make changes and commit
    - push to our fork
    - open our project on GitHub -> Compare & Pull Requests
    - optionally create draft pull request 
- Implement best practices for communication and code reviews
    - check issue for assignees
    - check for linked pull requests 
    - commit message template: "if applied, this commit will <your subject line here>."

- Find and engage with open-source communities
-
#### Questions
- What is the best place on a GitHub repository to find where you can help a project? 
    - The README file
    - **The issues list**
    - The search bar
    - The LICENSE file
- What is the preferred way to ask for help or reviews on a pull request? 
    - Send a negative or disrespectful comment to the project's maintainers via social media.
    - Create an issue
    - **Add comment in the pull request**
    - Send an email to a random committer on the project
- What is needed before you can create a pull request on GitHub? 
    - Send a patch file to maintainers via email
    - Clone a repo, commit changes, and force push
    - Get accepted as a team member
    - **Fork a repo, clone it, commit changes, and push to your fork**

### Manage an InnerSource program by using GitHub
- InnerSource
    - apply open-source patterns to projects with a limited audience

- User vs Organizations
- Number of Organizations
- Create Discoverable Repositories
    - descriptive name
    - concise description
    - links to production or demo
    - set expectations for prerequisites and deployment
    - include references to dependencies
    - use markdown
- Create Robust READMEs
- Issue and PR Templates
    - CONTRIBUTING.md -> triggers recommendation on PRs 
- Transparency
    - CODEOWNERS file - .github, root or docs
        - pattern (gitignore) @user @user
- Meassure Success
- Distribute InnerSource toolkit
- Permission Levels:
    - Read
    - Triage: manage issues and PRs
    - Write
    - Maintain: no sensitive or destructive actions
    - Admin
- ISSUE_TEMPLATE.md

#### Questions
- Which of the following choices best describes the relationship between open source and InnerSource programs? 
    - Anyone can offer a contribution to an open source program, whereas InnerSource programs only accept contributions from members of the team that owns the repository.
    - InnerSource programs are forked from open source programs by organizations that only use and maintain them privately moving forward.
    - **InnerSource programs are fundamentally the same as open source programs, except that their access is limited to people within their organization.**
- Suppose your team has been receiving some low-quality bug reports without enough information to properly diagnose. Which of the following choices is the best way to address the issue? 
    - Use GitHub Script to add a workflow action that automatically rejects any issues with a description fewer than 200 characters long.
    - **Add an ISSUE_TEMPLATE.md file that includes fields for reproduction steps, system properties, and instructions for generating and including important logs.**
    - Add a CONTRIBUTING.md file that clearly explains what's expected in bug reports, such as reproduction steps, system properties, and instructions for generating and including important logs.
- Suppose your team has been tracking data of all kinds since your InnerSource program went live three months ago. Which of the following metrics indicates your program is a great success? 
    - **A dramatic rise in pull requests that address bugs in your software.**
    - A growing rate of bug reports that are quickly closed because they cannot be reproduced.
    - A steady decline in new issues.



 














































































