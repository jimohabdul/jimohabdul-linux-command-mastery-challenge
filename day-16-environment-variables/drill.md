# Practice Drill: Environment Variables & PATH Configuration

## Practice Sequence Executed:
1. **Variable Creation**: Defined a temporary session variable (`export TEST_VAR="Active"`) and verified it.
2. **Variable Removal**: Unset the variable (`unset TEST_VAR`) to confirm its removal.
3. **PATH Manipulation**: Appended a local directory to the executable search path (`export PATH=$PATH:~/bin`).
4. **Validation**: Created a mock script inside the custom directory to prove the shell successfully locates and executes binaries from the updated PATH.
