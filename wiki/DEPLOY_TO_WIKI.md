# How to Deploy to GitHub Wiki

GitHub Wikis are standalone Git repositories associated with your repository. You can push this entire `wiki/` directory directly to your live GitHub Wiki in 3 simple steps:

---

## Step 1: Initialize Your GitHub Wiki (If not already created)

1. Open your repository on GitHub: [github.com/iamapuneet/flutter_ex_kit](https://github.com/iamapuneet/flutter_ex_kit).
2. Click on the **Wiki** tab at the top.
3. Click the green **"Create the first page"** button and save it (this initializes the wiki git remote).

---

## Step 2: Clone the Wiki Git Repository

In your terminal, navigate outside this project (e.g. `Desktop` or `tmp`) and clone the wiki repository:

```bash
git clone https://github.com/iamapuneet/flutter_ex_kit.wiki.git
cd flutter_ex_kit.wiki
```

---

## Step 3: Copy Wiki Files & Push

Copy all `.md` files from the `wiki/` directory in `flutter_ex_kit` into the cloned `flutter_ex_kit.wiki` folder:

```bash
# On Windows PowerShell:
Copy-Item -Path "c:\Users\Puneet\OneDrive\Documents\GitHub\flutter_ex_kit\wiki\*.md" -Destination . -Force

# Stage, commit, and push to GitHub Wiki:
git add .
git commit -m "docs: publish comprehensive wiki documentation"
git push origin master
```

---

## 🎉 Done!
Your live GitHub Wiki at **https://github.com/iamapuneet/flutter_ex_kit/wiki** will immediately display the structured documentation with interactive sidebar navigation!
