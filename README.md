# MASCAB: a Micro-Architectural Side-Channel Attack Bibliography

## Introduction

Cryptography is a fast-moving field, which is enormously exciting but also
quite challenging: resources such as the
[IACR eprint archive](http://eprint.iacr.org/)
and
[CryptoBib](http://cryptobib.di.ens.fr)
help, but even *keeping track* of new results in certain sub-fields can be 
difficult, let alone then making useful *contributions*.  The sub-field of 
micro-architectural side-channel attacks is an example of this, in part as
the result of it bridging multiple disciplines (e.g., cryptography and 
computer architecture).  

I've found this particularly challenging (and so frustrating) over say the 
last 5 years; the volume of papers has expanded rapidly, but the time I'd
normally allocate to reading them has been eroded by other commitments (as
evidenced by a pile of printed papers gathering dust on my desk).  In the
end, I decided to tackle this problem by progressively
a) collating papers I *could* read,
   then
b) reading them one-by-one, but in no particular order, and attempting to
   summarise their contribution (and so organise the sub-field as a whole
   in my head).
MASCAB is the result: after starting to advise MSc and PhD students on how
to navigate the sub-field, it seems likely to be of use to others as well.

- By definition this is an ongoing project; I'd welcome updates, e.g., raw 
  BiBTeX entries, pointers to missing papers, or, ideally, a pull request
  with some content.

- I've started to collate videos via a YouTube
  [playlist](http://www.youtube.com/playlist?list=PLcjiHk8Sl-KK1qY4JOzTDu095TscjcEVa)
  of the same name; often, these are presentations of a paper captured
  by the databases.

- If you want to make reference to 
  MASCAB
  (e.g., in the acknowledgements of a paper or report), it'd be *really*
  helpful if you'd use the following standard BiBTeX entry

  ```
  @misc{mascab,
    author = {D. Page},
    title  = {{MASCAB}: a Micro-Architectural Side-Channel Attack Bibliography},
    url    = {http://www.github.com/danpage/mascab}
  }
  ```

  since this will maximise the cases where it's picked up by automated
  citation indexes.

## Content

- Although I attempted to summarise (some) papers, this is was initially
  intended for my use: at the moment this isn't meant to be a standalone 
  survey, mainly as are already good examples elsewhere, see, e.g., 

  [1] J. Szefer.
      [Survey of Microarchitectural Side and Covert Channels, Attacks, and Defences](http://eprint.iacr.org/2016/479).
      Cryptology ePrint Archive, Report 2016/479. 2016.

  [2] Q. Ge, Y. Yarom, D. Cock and G. Heiser.
      [A Survey of Microarchitectural Timing Attacks and Countermeasures on Contemporary Hardware](http://eprint.iacr.org/2016/613).
      Cryptology ePrint Archive, Report 2016/613. 2016.

- The content is intended to be factual and, obviously, correct; anything 
  other than that, including any inaccuracies, are simply human error.  I
  do get things wrong sometimes (in fact, quite often), but *definitely* 
  don't mean to judge or criticise anything, for example.

- So it is easier to manage, The content is organised into the following
  files:

  - `mascab.bib`
    is the main BiBTeX bibliography database,
  - `mascab.tex`
    is a LaTeX file that compiles (e.g., via the `Makefile` provided)
    the content into a readable (or at least printable) document,
  - `mascab-scratchpad.bib`,
    is a        BiBTeX bibliography database of entries that aren't yet
    included in `masca.bib` but should be,
  - `mascab-peripheral.bib`
    is a        BiBTeX bibliography database of entries that are at the
    periphery of what *should* be included in `masca.bib` but are worth
    hanging on to either way.

- The `Makefile` included has two main targets:

  - `mascab.pdf`
    is a PDF generated from `mascab.tex`,
  - `mascab.tax`
    is the keyword taxonomy, scraped output from the BiBTeX databases:
    each entry is roughly grouped and assigned associated keywords so 
    as to allow filtering, although this is imperfect to say the least.

  Note that up to a point, keywords associated with the latter are just 
  an (evolving) mechanism to manage content, vs. a robust taxonomy.

- Modelled on 
  [CryptoBib](http://cryptobib.di.ens.fr),
  each database attempts to follow some formatting rules:

  - the format of entry keys is

    `MASCAB:<author key>:<publication year>[a-z]`

    i.e., a domain separator, followed by the author key and two-digit
    publication year (`XX` denoting undated), followed by an *optional* 
    character to allow resolution of conflicts (with separating colons 
    where appropriate),

  - the format of author keys depends on the number of authors:

    -       1-author         =>                      full (ASCII'ised) last name, e.g., "W.M. Hu" => `Hu`
    - 2- or 3-author         => first 3 character of each (ASCII'ised) last name, e.g., "O. Ac\i{}i\c{c}mez and \c{C}.K. Ko\c{c}" => `AciKoc`
    -       4-author or more => first   character of each (ASCII'ised) last name, e.g., "Y. Wang and A. Ferraiuolo and D. Zhang and A.C. Myers and E.G. Suh" => `WFZMS`
