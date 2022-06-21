# embedrv2

Updated version of https://bitbucket.org/bachmeil/embedr

# Plans

- [x] Use D's metaprogramming capabilities to handle the boilerplate for calling D functions from R
- [x] Make Dub the default for creating shared libraries to be called from R, so that arbitrary Dub packages can be included
- [ ] Make a video showing how easy it is to call libraries of D functions from R
- [ ] Update to reflect the fact that RInsideC was merged into RInside (simplifying installation)
- [ ] Make a video showing how easy it is to write D programs that embed R
- [ ] Document the inclusion of D libraries in R packages posted on Github/Bitbucket
- [ ] Write official R package documentation for the embedrv2 package so it can be accessed from within R
- [ ] Add support for non-Dub D code included in R packages (like my work wrapping Gretl)
- [ ] Get a package for embedrv2 on CRAN so it can be installed the official/simple way

The tough work is done. It's just a matter of finding a few hours to smooth out the details on each of these.

# June 2022 Update

The current version of the package is focused on calling D functions from R. It is likely that the number of R users interested in rewriting bottlenecks in D is many times larger than the D users wanting to call R functions, so that's where I'm spending my limited time right now. Once that's done, I'll work on calling R functions from D.

A couple major changes from the original version:

- Dub support. After you call `dubNewShared()`, you can add any dependencies to the resulting dub.sdl file, giving you full access to the full Dub package ecosystem. I've included an example where I call a Mir function.
- D's metaprogramming features are used to write all the boilerplate needed to call D functions from R. This isn't a big deal for one D function, but it gets tiring quickly as you write more of the program in D.
