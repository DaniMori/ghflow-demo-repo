
# Repository `ghflow-demo-repo`

Demo repository for attendees to the workshop ‘Boosting collaborative
research with “GitHub flow” for Rstudio users’ at SORTEE Conference 2026

# License

[Repository
ghflow-demo-repo](https://github.com/DaniMori/ghflow-demo-repo) © 2026
by [Daniel Morillo](https://github.com/DaniMori) is licensed under [CC
BY 4.0](https://creativecommons.org/licenses/by/4.0). Please see the
[license file](LICENSE.md).

## Attributions

### Rstudio project template

This project makes use of the
[rproj-template](https://github.com/DaniMori/rproj-template) Github
template created by [Daniel Morillo](https://github.com/DaniMori) and
licensed under the [Creative Commons Attribution 4.0 International
license](https://creativecommons.org/licenses/by/4.0).

# Project installation

## Software components

Start by installing the following software components:

- [R version
  4.6.1](https://cran.rstudio.com/bin/windows/base/old/4.6.1/): In
  Windows, using the [binary
  installer](https://cran.rstudio.com/bin/windows/base/old/4.6.1/R-4.6.1-win.exe)
  is recommended.

<!-- -->

- [Rstudio Desktop](https://posit.co/download/rstudio-desktop/):
  Although not strictly necessary, it is recommended to install the
  Rstudio IDE; for strict reproducibility, use build [2026.09.0+174 for
  Windows
  10/11](https://download1.rstudio.org/electron/windows/RStudio-2026.09.0-174.exe).

<!-- -->

- [Quarto publishing system](https://quarto.org/): **Only for
  non-Rstudio users** (Quarto is already bundled with Rstudio) this
  additional component is necessary to generate and publish literate
  computing outputs. For strict reproducibility please use build 1.9.38;
  On Windows, use [the 64-bit
  installer](https://github.com/quarto-dev/quarto-cli/releases/download/v1.9.38/quarto-1.9.38-win.msi).

<!-- -->

- [Git client](https://git-scm.com/download): Install the Git client in
  order to be able to clone locally the project repository. On Windows,
  use [the 64-bit Windows
  installer](https://github.com/git-for-windows/git/releases/download/v2.56.0.windows.1/Git-2.56.0-64-bit.exe).

## Installing the project locally

This project is hosted as a GitHub repository. It can be cloned as a
local Git repository following [these
instructions](https://book.cds101.com/using-rstudio-server-to-clone-a-github-repo-as-a-new-project.html#step---2)
(steps 2 through 7). Note that this will create a local copy of
(‘clone’) the GitHub repository as an Rstudio project in the folder
specified. The URL that must be entered into the `Repository URL` text
box is:

    https://github.com/DaniMori/ghflow-demo-repo.git

**IMPORTANT:** It is totally unrecommended to clone a git repository
inside a cloud storage folder (e.g., Dropbox, OneDrive). Please note
that GitHub serves the purpose of backing up the repository, so no cloud
storage is necessary. Similarly, cloning the repository in a network
folder may cause problems with the `renv` environment (see below); do it
at your own risk!

After cloning the repository, the Rstudio project will open
automatically in the Rstudio IDE. If it doesn’t, or you want to return
later to the project in Rstudio, you can do so by double clicking on the
file `rstudio_project.Rproj` that has been created in the project folder
when cloning the repository.

**NOTE:** It is common practice to avoid using and versioning
`.Rprofile` files. However, this project uses [package
`renv`](https://cran.r-project.org/package=renv) to create a
reproducible environment, which needs the `.Rprofile` file that lives in
the root directory of the project. **Please DO NOT delete or edit this
file**; it will install and activate the `renv` package and make it
ready for restoring the environment.

## Restoring the environment

The reproducible environment created by `renv` must be restored to
install all the packages this project needs to be built properly. If
`renv` does not initialize automatically (check the console for messages
about this), you will need to manually install the package first:

``` r
install.packages("renv")
```

Once it is successfully installed, use the “Restore” button in Rstudio’s
“Packages” tab to restore the environment. Alternatively, you can type
in the console:

``` r
renv::restore(prompt = FALSE)
```

After the environment has been successfully restored, restart the R
session in the menu “Session” -\> “Restart R” (or using the keyboard
shortcut `CTRL + SHIFT + F10`).

# Repository structure

The file structure of this repository is as follows:

    ghflow-demo-repo
    |
    |--- dat       (To store input datasets; must NEVER be checked-in to Github)
    |
    |--- notebooks (Notebooks to explore data and test processes live here)
    |
    |--- output    (Processing outputs; files must be individually "checked-in" when
    |              necessary)
    |
    |--- renv      (System library necesssary for `renv` to work. DON'T TOUCH)

Use the folders as indicated to store the different files and generate
the outputs of the processes.
