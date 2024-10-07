- Maybe no need to use different repos for every election, can just create separate branches
  - This way we also kind of have a canonical source for voter ids, people don't need to update it every year!
  - Although, we need to regenerate the voters.json _without_ overriding older entries then
  - Could set the default branch name to the current year
- Make a video explaining the voting process
- Process for changing github ids (email with a link to some confirmation from the old github account pointing to the new one)
- Set Message-Id for emails to not send it multiple times, e.g.
  ```
  Message-Id: <foo-82131928312@bar.org>
  ```
