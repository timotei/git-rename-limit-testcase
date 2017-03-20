# Git modified files rename bug (on 200+ files)
It seems that after 200 renamed + modified files (slightly - 95% similarity index), git fails to properly recognize the renames anymore. This was reproduced on version `2.12.0.windows.1` and on Linux with git version 2.1.4.

Once you add the 201th renamed file, it will break *everything*, even if you amend the commit.

## Reproduction path:
* Execute the `process.sh` file
* See that the renames are properly detected
* Add the 201th file
* Expected: all files are still renamed | Actual: no files are renamed anymore, but instead added + deleted.
