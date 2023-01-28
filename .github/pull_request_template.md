# Description

<!-- Please explain what is being changed or added as a short overview for this PR. Also, link existing relevant issues if they exist with resolves # -->

## Checklist for all submissions

<!-- insert X into the brackets to mark it as done (i.e. [x]). You can click preview to make the links appear clickable. -->

* [ ] Have you followed the guidelines in our [Contributing document](https://github.com/parkervcp/eggs/blob/master/CONTRIBUTING.md)?
* [ ] Have you checked to ensure there aren't other open [Pull Requests](../pulls) for the same update/change?
* [ ] Have you tested and reviewed your changes with confidence that everything works?
* [ ] Did you branch your changes and PR from that branch and not from your master branch?
  * If not, why?:

<!-- If this is an egg update fill these out -->

* [ ] You verify that the start command applied does not use a shell script
  * [ ] If some script is needed then it is part of a current yolk or a PR to add one
* [ ] The egg was exported from the panel

<!-- You can erase the new egg submission template if you're not adding a completely new egg -->

## New egg Submissions

1. [ ] Does your submission pass tests (server is connectable)?
2. [ ] Does your egg use a custom docker image?
    * [ ] Have you tried to use a generic image?
    * [ ] Did you PR the necessary changes to make it work?
3. [ ] Have you added the egg to the main README.md and any other README files in subdirectories of the egg (e.g /game_eggs) according to the alphabetical order?
4. [ ] Have you added a unique README.md for the egg you are adding according to the alphabetical order?
5. [ ] You verify that the start command applied does not use a shell script
    * [ ] If some script is needed then it is part of a current yolk or a PR to add one
6. [ ] The egg was exported from the panel