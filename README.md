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

## Prerequisites
* [Zephyr Workbench](https://github.com/Ac6Embedded/vscode-zephyr-workbench) VSCode extension installed — provides the shared Python environment and host tools under `~/.zinstaller`

## Step 1 : Clone the repository into the location of your **West Workspace** for the new **Zephyr Project**
```shell
mkdir <newZephyrProjectWorkspaceName>
git clone https://github.com/Strooom/zephyrWorkspace <newZephyrProjectWorkspaceName>
```

## Step 2 : Clone the repository for the **Zephyr Project**
```shell
git clone https://github.com/Strooom/ZephyrProjectTemplate -b develop app
```

## Step 3 : Initialise West
```shell
west init -l app
```

## Step 4 : West Update
This will take a while and download ~2.4 Gbyte in folders /zephyr and /modules

It will **not** go in the repository. It can always be deleted and regenerated later.
```shell
west update
```

## Step 5 : Optional : Update the shared Python environment and its tools
Open a Terminal, which should automatically activate the shared .venv

Then run the following commands for updating all tools
```shell
python -m pip install --upgrade pip
pip install --upgrade west jsonschema
pip install --upgrade -r zephyr\scripts\requirements.txt
```
