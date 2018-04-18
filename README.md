# MASCAB: a Micro-Architectural Side-Channel Attack Bibliography

<!--- -------------------------------------------------------------------- --->

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
  BiBTeX entries or pointers to missing papers.

- If you want to make reference to 
  MASCAB
  (e.g., in the acknowledgements of a paper or report), it'd be *really*
  helpful if you'd use the following standard BiBTeX entry

  ```
  @misc{mascab,
    author = {D. Page},
    title  = {{MASCAB}: a {M}icro-{A}rchitectural {S}ide-{C}hannel {A}ttack {B}ibliography},
    url    = {http://www.github.com/danpage/mascab}
  }
  ```

  since this will maximise the cases where it's picked up by automated
  citation indexes.

- Partly motivated by 
  [Meltdown](http://meltdownattack.com)
  and
  [Spectre](http://spectreattack.com),
  there are now various alternative to MASCAB that you might prefer; for
  example 
  [here](http://www.peerlyst.com/posts/a-collection-of-links-to-pdfs-of-papers-on-micro-architectural-side-channel-attacks-sorted-by-date-paul-harvey)
  or
  [here](http://github.com/MattPD/cpplinks/blob/master/comparch.micro.channels.md).

<!--- -------------------------------------------------------------------- --->

## Content

- Although I attempted to summarise (some) papers, this is was initially
  intended for my use: at the moment this isn't meant to be a standalone 
  survey, mainly because there are already good examples elsewhere, see, 
  e.g., [1,2].

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
    hanging on to either way (e.g., because they *could* be included in
    the future, or just add context).

- The `Makefile` included has one target:
    `mascab.pdf`
    is a PDF generated from `mascab.tex`.
  Note that up to a point, keywords and taxonomy are just an (evolving)
  mechanism to manage content.  As example, cases such as

  - where a paper makes multiple contributions (e.g., includes both an
    attack strategy *and* a countermeasure, or an attack strategy *and* 
    a concrete application of it to something),
    or
  - where a paper could be applied within the context of either covert 
    *or* side-channels

  aren't that well served.

- Modelled on 
  [CryptoBib](http://cryptobib.di.ens.fr),
  each database attempts to follow some formatting rules:

  - the format of entry keys is

    `MASCAB:<author key>[:<publication year>][:a-z]`

    i.e., 
    1) a  domain separator,
    2) an author key,
    3) a  two-digit publication year (if dated), 
    4) an optional character to resolve any conflicts,
    with separating colons where appropriate,

  - the format of author keys depends on the number of authors, namely

    Authors     | Format                                             | Example                                                                          |
    :---------: | :------------------------------------------------: | :------------------------------------------------------------------------------: |
    1           | full                       (ASCII'ised) last name, | "W.M. Hu"                                                            => `Hu`     |
    2 or 3      | first 3 characters of each (ASCII'ised) last name, | "O. Ac\i{}i\c{c}mez and \c{C}.K. Ko\c{c}"                            => `AciKoc` |
    4 or more   | first 1 character  of each (ASCII'ised) last name, | "Y. Wang and A. Ferraiuolo and D. Zhang and A.C. Myers and E.G. Suh" => `WFZMS`  |

    although one caveat relates to named resource (e.g., software) where
    it makes more sense to use the resource name than the author name.

<!--- -------------------------------------------------------------------- --->

## References

1. J. Szefer.
   [Survey of Microarchitectural Side and Covert Channels, Attacks, and Defences](http://eprint.iacr.org/2016/479).
   Cryptology ePrint Archive, Report 2016/479. 2016.

2. Q. Ge, Y. Yarom, D. Cock and G. Heiser.
   [A Survey of Microarchitectural Timing Attacks and Countermeasures on Contemporary Hardware](http://eprint.iacr.org/2016/613).
   Cryptology ePrint Archive, Report 2016/613. 2016.

<!--- -------------------------------------------------------------------- --->
