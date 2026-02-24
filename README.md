# Zephyr Workspace Template


This repo contans the files typically needed in a West Workspace for a Zephyr Project.
```
workspaceFolder/
├── .vscode/
│   ├── settings.json
│   └── tasks.json
├── .gitignore
├── CLAUDE.md
└── README.md
```

## Step 1 : Clone the repository into the location of your **West Workspace** for the new **Zephyr Project**
```shell
mkdir <newZephyrProjectWorkspaceName>
git clone https://github.com/Strooom/ZephyrWorkspaceTemplate newZephyrProjectWorkspaceName
```

## Step 2 : Setup the **Virtual Environment** for Python
```shell
cd <newZephyrProjectWorkspaceName>
python -m venv .venv
source .venv\Scripts\Activate.ps1
pip install --upgrade pip
pip install west
```

## Step 3 : Clone the repository for the **Zephyr Project**
```shell
git clone https://github.com/Strooom/ZephyrProjectTemplate -b develop app
```

## Step 4 : Initialise West
```shell
west init -l app
```

## Step 5 : West Update
A number of files which can easily be regenerated or downloaded, are NOT included in the repository, in order to keep it small. Once on your local disk, you let West download all that is needed by running 

```shell
west update
```

