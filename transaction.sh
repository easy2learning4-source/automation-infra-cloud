hi sh

1. soft reset: Soft reset will move the HEAD pointer to particular commit and record changes. In this process of moving HEAD, soft reset will not change anything in working directory or staging area, but it will move changes from local repository.


command: git reset --soft commit_id

[root@ip-172-31-3-72 devops-repo]# git reset --soft 9f6b657
[root@ip-172-31-3-72 devops-repo]# git status
On branch feature-1
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        new file:   f22.txt

[root@ip-172-31-3-72 devops-repo]# git add .
[root@ip-172-31-3-72 devops-repo]# git commit -m "perform an soft reset "
[feature-1 7dd7f6b] perform an soft reset
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 f22.txt
[root@ip-172-31-3-72 devops-repo]# git log  --oneline
7dd7f6b (HEAD -> feature-1) perform an soft reset
9f6b657 adding f11.txt in feature-1 branch
370a523 (develop) adding f3.txt in feature branch
90babe7 (tag: stable-fix-Q1, tag: r1.0) adding f2.txt in feature branch
81f98db adding f1.txt in feature branch
3f99046 Adding develop-2.txt in develop branch
df22d11 Adding develop-1.txt
65c234e Adding master-1.txt
8e682a8 Deleting the file
ddf52c5 Updating file for new version
931d6f1 Updating file file.txt
8de5b1d Adding first file
[root@ip-172-31-3-72 devops-repo]#

------------------------------------------------------------------------------------------------------------------
2. mixed reset: Mixed reset will not changes anything in working directory ,but it will move changes from staging area and local repository.

command: git reset --mixed commit_id

[root@ip-172-31-3-72 devops-repo]# git reset --mixed 81f98db
[root@ip-172-31-3-72 devops-repo]# git status
On branch feature-1
Untracked files:
  (use "git add <file>..." to include in what will be committed)
        f11.txt
        f2.txt
        f22.txt
        f3.txt

nothing added to commit but untracked files present (use "git add" to track)
[root@ip-172-31-3-72 devops-repo]#
--------------------------------------------------------------------------------------------------------------------
3. hard reset: Hard reset will move changes from all stages of git to particular commit i.e Hard reset will move the HEAD to particular commit to record changes from the
