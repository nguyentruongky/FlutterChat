# Flutter Chat
Learn from [Marcus Ng](https://www.youtube.com/channel/UC6Dy0rQ6zDnQuHQ1EeErGUA). You can check the full tutorial on [Youtube](https://www.youtube.com/watch?v=h-igXZCCrrc&list=PLzOt3noWLMthJKm8SJl2zmUlJiZp7fzo7).

Thanks Marcus, that's really awesome work. 

## Next step 
- Handle logic
- Add login/register UI
- Connect to Firebase

## Known issues 
- [ ] Back button in navigation bar doesn't work.

- [x] Can't set favourite icon by `isLiked` property. It leads to a weird bugs, display a solid color screen.
> Reason: `isLiked` was missing in constructor, just provided default value for `isLiked`. 
