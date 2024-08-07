You can set up your SSH configuration to use different keys for different GitHub accounts. Here's how you can do it:

1. Open your SSH config file. It's usually located at `~/.ssh/config`. If it doesn't exist, you can create it.

2. Add an entry for each of your GitHub accounts. Each entry should specify the Host, HostName, User, and IdentityFile. Here's an example:

```bash
# Account: account1
Host github.com-account1
    HostName github.com
    User git
    IdentityFile ~/.ssh/id_rsa_account1

# Account: account2
Host github.com-account2
    HostName github.com
    User git
    IdentityFile ~/.ssh/account2
```

3. When you add a remote to your Git repository, use the Host from your SSH config file instead of `github.com`. For example:

```bash
git remote set-url origin git@github.com-account2:account2/ai_study.git
```