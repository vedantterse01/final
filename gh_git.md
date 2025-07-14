hii

# FIRST CHECK IF THE GH CLIENT IS AVAULABLE 
```
apt-cache policy gh
```
# if not simply try installing by 

```bash
sudo apt update && sudo apt install -y gh
```

## If the initial attempt is not viable, we can consider the following method...


```bash
sudo apt update && sudo apt install -y git curl unzip gnupg
```

```bash
  curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | \
  sudo gpg --dearmor -o /usr/share/keyrings/githubcli-archive-keyring.gpg
```

```bash
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] \
https://cli.github.com/packages stable main" | \
sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
```

```bash
sudo apt update && sudo apt install -y gh
```

```bash
gh auth login
```
### At this step, the CLI will display a device verification code.

### Copy this code and open the provided URL in your browser to complete the authentication process.


## NEXT.. 

## CLONE A REPO and 'cd' into it.. 

## THEN INSIDE THAT FOLDER OPEN TERMINAL AND ENTER 

```bash
git config user.name "your_username"
```

```bash
git config user.email "your_email"
```

after that.. your are good to go with the push/pull operations..



# REMEMBER ⚠️

# DO NOT FORGET TO LOGOUT from the gh

```bash
gh auth logout
```
