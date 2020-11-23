# feoh
URL: [bovine.biz](https://bovine.biz)

Feoh is 3 things:
1. Demonstration of DevOps toolkit
2. API platform for cattle-related ranching
3. A demo application that uses the API

## Prerequisites
#### Arch Linux
- Arch Linux `Rolling Release`
- Terraform `0.13.5`
- Git `2.29.2`
#### Mac (mostly untested)
- Mac Mojave `10.14.6`
- Terraform `TBD`
- Git `TBD`

## Software
These are the versions of the major software I used. These are not prerequisites for you to run the app.
- Rails `6.0.3.4`
- Ruby `2.7.2`
- Node `12.19.0`
- sqlite3 `3.27.2` (not currently static)
- yarn `1.22.5` (not currently static)

## Install
```
# copy and paste assuming you have the prerequisites
git clone https://github.com/JacobBHartman/feoh.git
cd feoh
```

## Purpose
The purposes of this project are to...
1. demonstrate my ability to acquire proficiency in technologies that I haven't worked with before
    - Ruby on Rails
    - A database other than MySQL, so I'll probably go with PostgreSQL and get to touch SQLite
    - Implement my own caching
    - If it makes sense, Vue
2. demonstrate a complete aptitude for the DevOps toolkit including:
    - Jenkins, might switch to Gitlab or something else to learn something new
    - Docker to get it out the door, but will use LXC if I have time and have determined it makes sense
    - Terraform, though I wouldn't mind toying with Pulumi
    - Ansible, I used Saltstack but didn't like it. I previously used Ansible and liked it alot. It seems to be the most popular.
    - Kubernetes, do I need to look into Rancher?
    - Helm, do I need this, how does it help me? This project should help answer those questions.
    - Bash, use best practices for scripting
    - AWS, I risk pigeonholing myself in AWS further but if I want to get frisky I can switch to GCP
    - System design and justification
3. build a project that I've been wanting to build for two years now 

### Topics to add to README
* Configuration
* Database creation
* Database initialization
* How to run the test suite
* Services (job queues, cache servers, search engines, etc.)
* Deployment instructions

### Scope
I define project scope using Github Projects
- Stage 0: Go through the Ruby tutorial
- Stage 1: Get an MVP of Terraform, Ansible, Docker-Compose, AWS, and Jenkins together with the Ruby app
- Stage 2 (in-progress): Build a proper Docker-Swarm, harden security, look at best practices for all tools, build the ruby app for cows

### Dev Diary
Located in `/dev/diary`

### To-Do
Handled by Github's Issue Tracking

## Contributers
Jacob Hartman
Github: JacobBHartman
