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

### 9 Manage an InnerSource program by using GitHub
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

### 10 Maintain a Secure Repository by Using GitHub Best Practices
- Identify tools and features to establish a secure development strategy
  - Security policies, SECURITY.md, specify how to report a vulnerability
  - Dependabot: alert when dependency has vulnerability
  - Code Scanning: find, triage, fix vulnerabilities
  - GitHub Security Adivsories:
    - Maintainers privately discuss security vulnerabilities
    - After fix they can publish the security advisor
  - batch protection rule:
    - define rules taht enforce a workflow for one or more branches
  - CODEOWNERS file allows for the definition of owners of paths on the repo
    - The owners will be required for pull-requests
  - automated code-scanning
    - dependabot
    - code scanning
    - secret scanning
- Enable Vulnerability Dependency Detection for Private Repositories
- Detect and Fix outdated dependencies with security vulnerabilities
- Automate the detection of vulnerabilities - dependabot
- Add Security policy - SECURITY.md
- Remove a commit exposing sensitive data in a pull request
- Keep sensitive files out of your repository by applying the use of a .gitignore file

- Remove historical commits exposing sensitive data

#### Questions
- What's the best way to make sure you're integrating the most secure versions of your project dependencies? 
  - Configure your package files to always use the latest versions of dependencies.
  - Check each project's security details closely before adding it to your dependencies by confirming its version status across multiple advisory sites.
  - **nable Dependabot for your repository.**
-  Suppose one of your source projects relies on secrets kept in a folder called .secrets. You would like to make sure that the files kept in this folder on development machines aren't inadvertently committed to the repository. Which of these files best helps enforce this policy? 
   - SECURITY.md
   - **.gitignore**
   - CONTRIBUTING.md
- Suppose someone inadvertently commits a sensitive API key stored in the .secrets folder. What is the correct way to scrub that information from GitHub? 
  - **Use git to remove the unwanted commit and update historical references. Then contact GitHub support to run garbage collection and invalidate the Git cache.**
  - Delete the sensitive file from GitHub. Then commit an empty file to the same location to overwrite it.
  - This is a trick question. Once you commit something to GitHub, it lives forever. That's why globally unique hashes are used to identify everything.

### 11 Introduction to GitHub Administration
- Organizational Structures and Permission Levels
  - Repo Permissions:
    - Read
    - Write
    - Triage: issues and PR
    - Maintain: no sensitive or destructive action
    - Admin
  - Team Permissions:
    - Member
    - Maintainer
  - Org Permissions:
    - Owner
    - Member
    - Moderator: block / unblock nonmember contributors, set interaction limits, hide comments
    - Billing Manager
    - Security Manager
    - Outside Collaborator
  - Enterprise Permissions:
    - Owner
    - Member
    - Billing Manager
- Secure Authentication Strategy
  - personal access tokens: create and tie permissions to repo or org. use in git cli
  - ssh keys
  - deploy keys
  - 2FA: mobile app or SMS
  - SAML SSO
    - limited support for all providers that implement SAML2.0
    - official suport for:
      - Active Directory Federation Services (AD FS)
      - Microsoft Entra ID
      - Okta
      - OneLogin
      - PingOne
      - Shibboleth
  - LDAP
    - GHES
      - Active Directory
      - Oracle Directory Server Enterprise Edition
      - OpenLDAP
      - Open Directory
- Manage Teams ans Members using Directory Information Services
- GitHub as an authentication provider
- GitHub can sync teams with Identity Providers - Microsoft Entra ID
- Members with TEAM MAINTAINER or REPOSITORY ADMIN can:
  - create new team, select or change parent team
  - delete or rename team
  - add or remove org members from team | sync with IdP
  - add or remove outside collaborators
  - enable / disable team discussions
  - change visibility
  - manage automaticy code review assignment for PRs
  - schedule reminders
  - profile picture
- Team-level admin
  - create teams in org
- Org level admin
  - members with owner permission
    - invite users
    - organize users into teams
    - add / rem ouside collaborators
    - grant permissions
    - set up org security
    - set up billing
    - extract various types of info via scripts
    - apply org-wide changes via scripts
  - only one org is recommended
- Entreprise Level admin
  - GHEC GHES
  - enterprise owners can:
    - enable SAML single sign-on
    - add / rem orgs
    - set up billing
    - set up repo policies, project board policies, team policies
    - extract various types of info via scripts
    - apply org-wide changes via script
- Protection Rules:
  - require PR
  - require status check to pass before merge
  - require conversation resolution before merge
  - require signed commits
  - require linear history
  - require merge queue
  - require successful deployment before merge
  - lock branch - read only
  - restrict push to branches

#### Questions:
- You want to grant a user the permissions required to add and remove organization members to and from a team. Which permission would you need to grant that user? 
  - The admin permission on a repository
  - The maintain permission on a repository
  - Organization billing manager
  - **Team maintainer**
- As an organization owner, you want to ensure that everyone who is signed in to your corporate network can access the GitHub website without requiring a second sign-in. Which technology would you enable to accomplish this? 
  - **Single sign-on**
  - Two-factor authentication
  - Personal Access Tokens
  - SSH keys
-  What's the appropriate repository permission level for contributors who need to actively push changes to your repository? 
    - admin
    - **write**
    - triage
    - maintain

### 12 Authenticate and Authorize User Identities on GitHub
- Authentication and Authorization model
- Manage user access
  - Enterpise users are provisiond based in IdP and cannot interact outside the orgs
  - max 5000 users in team
  - max 10000 users in org
  - max 1500 teams in org
- Identity Providers
- Implications of SAML SSO
  - SCIM: System for Cross-domain Identity Management
    - Microsoft Entra ID
    - Okta
    - OneLogin
- Team Syncronization
  - sync users
  - sync on new team
  - custom team/groups maps
  - dynamic config
- SAML SSO user logs in -> tries to access repository data -> prompted for credentials (Entreprise ID)
- Entreprise 2FA: Security Keys, TOTP and SMS

#### Questions

-  What type of user authentication is used to verify a user identity against a known identity provider? 
   - Two-factor authentication (2FA)
   - Time-based One-time Password (TOTP)	
   - **SAML Single Sign-on (SAML SSO)**
   - Short Message Service (SMS)
- You are an admin and want to enable team synchronization for your organization. What installation permissions do you need to configure team synchronization for Microsoft Entra ID? 
  - Provide the tenant URL
  - **Read all users’ full profiles**
  - Generate a valid Single Sign-on for Web Systems (SSWS) token
  - Enable SAML Single Sign-on (SSO)
-  Where does a user authenticate after enabling SAML Single sign-on? 
   - With a GitHub login
   - With the organization credentials
   - **With the Identity Provider (IdP)**
- What two-factor authentication method supports the secure backup of your authentication codes in the cloud? 
  - **Time-based One-time Password (TOTP)**
  - Short Message Service (SMS)
  - Security Key


### 13 Manage Repository Changes by using Pull Requests on GitHub
- branches and PRs
- Pull Request
  - document branch changes that are ready to merge
  - compare branch
  - base branch - main
  - In your review comments:
    - Identify potential issues, risks, and limitations.
    - Suggest changes and improvements.
    -Share awareness of upcoming changes that the pull request doesn't account for.
    - Ask questions to verify shared understanding.
    - Highlight what the author did well and should keep doing.
    - Prioritize the most important feedback.
    - Be concise and provide meaningful detail.
    - Treat the pull request author with kindness and empathy.
- PR Statuses
  - Draft
  - Open
  - Closed
  - Merged
- merges
  - merge
  - squash and merge
  - rebase and merge: "this option enables you to skip a merge by maintaining a linear project history" -- check
  
#### Questions
-  What is not a good reason to create a pull request? 
   - You would like to receive feedback on prospective changes before merging your feature branch into main.
   - You want to merge your bug fix branch into main, but don't have permission.
   - **Your branch can't be merged into main due to upstream changes made since you created it. Creating a pull request lets the other contributor know they need to pull their changes out so you can put yours in.**
-   How can you ensure that pull requests for a given area of the repository aren't merged unless certain users or teams approve? 
    - Clearly explain the pull request policy in CONTRIBUTING.md.
    - **Use a CODEOWNERS file and enable required reviews.**
    - Add a table mapping directory paths to required users in SECURITY.md.
- You've been requested to review a pull request. As you read through it, you notice several minor coding errors and typos. How should you handle the review? 
  - **Start a review and fix obvious typos inline. Add comments in places that require further discussion or offer educational value. Complete the review with changes requested.**
  - Leave single comments for each issue you come across, but don't change the code. For typos, include the correct spelling of the word as a reference. Approve the pull request if you trust the author to implement your suggestions.
  - Reject the pull request. We can't risk any bugs accidentally being merged into an important branch.

### 14 Search and Organize Repository History by Using GitHub
- Find relevant issues and PRs
- Search history to find context
- Make connections within GitHub to help others
- search filters:
  - is:open is:issue assignee:@me
  - is:closed is:pr author:contoso (user @contoso)
  - is:pr keyword in:comments
  - is:open is:issue label:bug -linked:pr (bugs without linked PRs)

#### Questions
1. How does GitHub's top-level search bar differ from the search options available on repository tabs? 
￼
Other than being located in different parts of the user interface, they are otherwise the same.
￼
They support different filter syntax options.
￼
The top-level search bar supports searching everything across all of GitHub, whereas the repository tab searches are scoped to cover specific types in the current repository.
2. What does git blame do? 
￼
It creates a bug assigned to the last person who committed changes to the specified file.
￼
It displays the commit history of the file.
￼
It reverts the effects of a git praise command.
3. Suppose a bug issue is reported on your project, and you know which pull request introduced the problem. Which of the following options is not a cross-linking best practice? 
￼
Do not create cross-links when the root cause of the issue is already known.
￼
Add a comment to the bug report that includes the pull request's author by using an @mention.
￼
Add a comment to the bug report that links the pull request to it using the #ID syntax.

### Other notes:
- GitHub Copilot
- GitHub Projects
- GitHub Enterprise GHES GHEC (auth) 


### Resources to checkout
#### Reviewed
* [GitHub’s plans - GitHub Docs](https://docs.github.com/en/get-started/learning-about-github/githubs-plans)

#### TODO
* [Viewing traffic to a repository - GitHub Docs](https://docs.github.com/en/repositories/viewing-activity-and-data-for-your-repository/viewing-traffic-to-a-repository)
* [Roles in an enterprise - GitHub Enterprise Cloud Docs](https://docs.github.com/en/enterprise-cloud@latest/admin/managing-accounts-and-repositories/managing-users-in-your-enterprise/roles-in-an-enterprise)
* [Enforcing repository management policies in your enterprise - GitHub Enterprise Cloud Docs](https://docs.github.com/en/enterprise-cloud@latest/admin/policies/enforcing-policies-for-your-enterprise/enforcing-repository-management-policies-in-your-enterprise#enforcing-a-policy-on-default-repository-permissions?azure-portal=true)
* [Using LDAP - GitHub Enterprise Server 3.8 Docs](https://docs.github.com/en/enterprise-server@3.8/admin/identity-and-access-management/using-ldap-for-enterprise-iam/using-ldap)
* [Repository roles for an organization - GitHub Docs](https://docs.github.com/en/organizations/managing-user-access-to-your-organizations-repositories/managing-repository-roles/repository-roles-for-an-organization#repository-access-for-each-permission-level?azure-portal=true)
* [Managing your personal access tokens - GitHub Docs](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens)
* [Managing deploy keys - GitHub Docs](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/managing-deploy-keys#deploy-keys)
* [About identity and access management with SAML single sign-on - GitHub Enterprise Cloud Docs](https://docs.github.com/en/enterprise-cloud@latest/organizations/managing-saml-single-sign-on-for-your-organization/about-identity-and-access-management-with-saml-single-sign-on)
* [Removing sensitive data from a repository - GitHub Docs](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)
* [Managing a branch protection rule - GitHub Docs](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/managing-a-branch-protection-rule)
* [GitHub security features - GitHub Docs](https://docs.github.com/en/code-security/getting-started/github-security-features)
* [Adding a security policy to your repository - GitHub Docs](https://docs.github.com/en/code-security/getting-started/adding-a-security-policy-to-your-repository)
* [Creating a default community health file - GitHub Docs](https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/creating-a-default-community-health-file)
* [About READMEs - GitHub Docs](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-readmes)
* [About coordinated disclosure of security vulnerabilities - GitHub Docs](https://docs.github.com/en/code-security/security-advisories/guidance-on-reporting-and-writing-information-about-vulnerabilities/about-coordinated-disclosure-of-security-vulnerabilities#about-reporting-and-disclosing-vulnerabilities-in-projects-on-github)
* [GitHub Security Lab | Securing the world’s software, together](https://securitylab.github.com/)
[Git Everyday](https://git-scm.com/docs/everyday)
[Git and GitHub learning resources - GitHub Docs](https://docs.github.com/en/get-started/quickstart/git-and-github-learning-resources)
* [Quickstart for GitHub Discussions - GitHub Docs](https://docs.github.com/en/discussions/quickstart)
* [Repositories documentation - GitHub Docs](https://docs.github.com/en/repositories)
* [Configuring notifications - GitHub Docs](https://docs.github.com/en/account-and-profile/managing-subscriptions-and-notifications-on-github/setting-up-notifications/configuring-notifications)
* [GitHub Pages documentation - GitHub Docs](https://docs.github.com/en/pages)
* [Billing and payments documentation - GitHub Enterprise Cloud Docs](https://docs.github.com/en/enterprise-cloud@latest/billing)
* [Managing your license for GitHub Enterprise - GitHub Enterprise Server 3.11 Docs](https://docs.github.com/en/enterprise-server@3.11/billing/managing-your-license-for-github-enterprise)
* [GitHub Copilot · Your AI pair programmer](https://github.com/features/copilot)
* [About GitHub Copilot Individual - GitHub Docs](https://docs.github.com/en/copilot/overview-of-github-copilot/about-github-copilot-individual)
* [About GitHub Copilot Individual - GitHub Docs](https://docs.github.com/en/copilot/overview-of-github-copilot/about-github-copilot-individual#using-github-copilot)
* [A beginner's guide to learning to code with GitHub Codespaces - The GitHub Blog](https://github.blog/2023-02-22-a-beginners-guide-to-learning-to-code-with-github-codespaces/)
* [Developing in a codespace - GitHub Docs](https://docs.github.com/en/codespaces/developing-in-a-codespace/developing-in-a-codespace)
* [Customizing your codespace - GitHub Docs](https://docs.github.com/en/codespaces/customizing-your-codespace)
* [Using the API to manage Projects - GitHub Docs](https://docs.github.com/en/issues/planning-and-tracking-with-projects/automating-your-project/using-the-api-to-manage-projects)
* [Automating Projects using Actions - GitHub Docs](https://docs.github.com/en/issues/planning-and-tracking-with-projects/automating-your-project/automating-projects-using-actions)
* [Archiving items automatically - GitHub Docs](https://docs.github.com/en/issues/planning-and-tracking-with-projects/automating-your-project/archiving-items-automatically)
* [On the go with GitHub Projects on GitHub Mobile (public beta) - The GitHub Blog](https://github.blog/2022-10-11-on-the-go-with-github-projects-on-github-mobile-public-beta/)
* [Basic writing and formatting syntax - GitHub Docs](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax)
* [GitHub Flavored Markdown Spec](https://github.github.com/gfm/)
* [Writing on GitHub - GitHub Docs](https://docs.github.com/en/get-started/writing-on-github)
* [Autolinked references and URLs - GitHub Docs](https://docs.github.com/en/get-started/writing-on-github/working-with-advanced-formatting/autolinked-references-and-urls)
* [Managing SAML single sign-on for your organization - GitHub Enterprise Cloud Docs](https://docs.github.com/en/enterprise-cloud@latest/organizations/managing-saml-single-sign-on-for-your-organization)
* [Viewing and managing a member's SAML access to your organization - GitHub Enterprise Cloud Docs](https://docs.github.com/en/enterprise-cloud@latest/organizations/granting-access-to-your-organization-with-saml-single-sign-on/viewing-and-managing-a-members-saml-access-to-your-organization)
* [Preparing to require two-factor authentication in your organization - GitHub Docs](https://docs.github.com/en/organizations/keeping-your-organization-secure/managing-two-factor-authentication-for-your-organization/preparing-to-require-two-factor-authentication-in-your-organization)
* [Authorizing a personal access token for use with SAML single sign-on - GitHub Enterprise Cloud Docs](https://docs.github.com/en/enterprise-cloud@latest/authentication/authenticating-with-saml-single-sign-on/authorizing-a-personal-access-token-for-use-with-saml-single-sign-on)
* [Authorizing an SSH key for use with SAML single sign-on - GitHub Enterprise Cloud Docs](https://docs.github.com/en/enterprise-cloud@latest/authentication/authenticating-with-saml-single-sign-on/authorizing-an-ssh-key-for-use-with-saml-single-sign-on)
* [Synchronizing a team with an identity provider group - GitHub Enterprise Cloud Docs](https://docs.github.com/en/enterprise-cloud@latest/organizations/organizing-members-into-teams/synchronizing-a-team-with-an-identity-provider-group)
* [Organizations and teams documentation - GitHub Docs](https://docs.github.com/en/organizations)
* [Managing team synchronization for your organization - GitHub Enterprise Cloud Docs](https://docs.github.com/en/enterprise-cloud@latest/organizations/managing-saml-single-sign-on-for-your-organization/managing-team-synchronization-for-your-organization)
* [Generating a new SSH key and adding it to the ssh-agent - GitHub Docs](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
* [Requiring two-factor authentication in your organization - GitHub Docs](https://docs.github.com/en/organizations/keeping-your-organization-secure/managing-two-factor-authentication-for-your-organization/requiring-two-factor-authentication-in-your-organization)
* [Enforcing policies for security settings in your enterprise - GitHub Enterprise Cloud Docs](https://docs.github.com/en/enterprise-cloud@latest/admin/policies/enforcing-policies-for-your-enterprise/enforcing-policies-for-security-settings-in-your-enterprise#requiring-two-factor-authentication-for-organizations-in-your-enterprise?azure-portal=true)
* [Managing teams and people with access to your repository - GitHub Docs](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/managing-repository-settings/managing-teams-and-people-with-access-to-your-repository)
* [Assigning the team maintainer role to a team member - GitHub Docs](https://docs.github.com/en/organizations/organizing-members-into-teams/assigning-the-team-maintainer-role-to-a-team-member)
* [Roles in an organization - GitHub Docs](https://docs.github.com/en/organizations/managing-peoples-access-to-your-organization-with-roles/roles-in-an-organization#permission-levels-for-an-organization?azure-portal=true)
* [Setting base permissions for an organization - GitHub Docs](https://docs.github.com/en/organizations/managing-user-access-to-your-organizations-repositories/managing-repository-roles/setting-base-permissions-for-an-organization)
* [Viewing and updating Dependabot alerts - GitHub Docs](https://docs.github.com/en/code-security/dependabot/dependabot-alerts/viewing-and-updating-dependabot-alerts)
* [Dependabot](https://github.com/dependabot)
* [GitHub Marketplace · Tools to improve your workflow](https://github.com/marketplace/category/security)
* [Adding a security policy to your repository - GitHub Docs](https://docs.github.com/en/code-security/getting-started/adding-a-security-policy-to-your-repository)
* [Ignoring files - GitHub Docs](https://docs.github.com/en/get-started/getting-started-with-git/ignoring-files)
* [Removing sensitive data from a repository - GitHub Docs](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)
* [An introduction to innersource - GitHub Resources](https://resources.github.com/innersource/fundamentals/)
* [GitHub Support](https://support.github.com/)
* [GitHub Support](https://support.github.com/)
* [Managing user access to your organization's repositories - GitHub Docs](https://docs.github.com/en/organizations/managing-user-access-to-your-organizations-repositories)
* [Git branching guidance - Azure Repos | Microsoft Learn](https://learn.microsoft.com/en-us/azure/devops/repos/git/git-branching-guidance?view=azure-devops)
* [community · Discussions · GitHub](https://github.com/orgs/community/discussions/)
* [IDEA Development Collaboration Best Practices · ideaconsult/etc Wiki](https://github.com/ideaconsult/etc/wiki/IDEA-Development-Collaboration-Best-Practices)
* [matiassingers/awesome-readme: A curated list of awesome READMEs](https://github.com/matiassingers/awesome-readme)
* [Credentials - ricardojpgomes | Microsoft Learn](https://learn.microsoft.com/en-us/users/ricardojpgomes/credentials/certification/nouid.457?tab=credentials-tab)
* [Collections | Microsoft Learn](https://learn.microsoft.com/en-us/collections/o1njfe825p602p)
* [Proposing changes to your work with pull requests - GitHub Docs](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests)
* [Reviewing changes in pull requests - GitHub Docs](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/reviewing-changes-in-pull-requests)
* [Incorporating changes from a pull request - GitHub Docs](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/incorporating-changes-from-a-pull-request)
* [About code owners - GitHub Docs](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-code-owners)
* [Autolinked references and URLs - GitHub Docs](https://docs.github.com/en/get-started/writing-on-github/working-with-advanced-formatting/autolinked-references-and-urls)
* [RicardoGomesGithubCertificationLearning/skills-connect-the-dots: My clone repository](https://github.com/RicardoGomesGithubCertificationLearning/skills-connect-the-dots)
* [Understanding the search syntax - GitHub Docs](https://docs.github.com/en/search-github/getting-started-with-searching-on-github/understanding-the-search-syntax)
* [Git - git-blame Documentation](https://git-scm.com/docs/git-blame)
* [Viewing a file - GitHub Docs](https://docs.github.com/en/repositories/working-with-files/using-files/viewing-a-file)

















































