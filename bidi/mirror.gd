# This file is part of python-bidi
#
# python-bidi is free software: you can redistribute it and/or modify
# it under the terms of the GNU Lesser General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Lesser General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

# Copyright (C) 2008-2010 Yaacov Zamir <kzamir_a_walla.co.il>,
# Copyright (C) 2010-2015 Meir kriheli <mkriheli@gmail.com>.
"""Mirrored chars"""

# Can't seem to get this data from python's unicode data, so this is imported
# from http://www.unicode.org/Public/UNIDATA/BidiMirroring.txt
var MIRRORED = {
    '\u0028': '\u0029',  # LEFT PARENTHESIS
    '\u0029': '\u0028',  # RIGHT PARENTHESIS
    '\u003C': '\u003E',  # LESS-THAN SIGN
    '\u003E': '\u003C',  # GREATER-THAN SIGN
    '\u005B': '\u005D',  # LEFT SQUARE BRACKET
    '\u005D': '\u005B',  # RIGHT SQUARE BRACKET
    '\u007B': '\u007D',  # LEFT CURLY BRACKET
    '\u007D': '\u007B',  # RIGHT CURLY BRACKET
    '\u00AB': '\u00BB',  # LEFT-POINTING DOUBLE ANGLE QUOTATION MARK
    '\u00BB': '\u00AB',  # RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK
    '\u0F3A': '\u0F3B',  # TIBETAN MARK GUG RTAGS GYON
    '\u0F3B': '\u0F3A',  # TIBETAN MARK GUG RTAGS GYAS
    '\u0F3C': '\u0F3D',  # TIBETAN MARK ANG KHANG GYON
    '\u0F3D': '\u0F3C',  # TIBETAN MARK ANG KHANG GYAS
    '\u169B': '\u169C',  # OGHAM FEATHER MARK
    '\u169C': '\u169B',  # OGHAM REVERSED FEATHER MARK
    '\u2039': '\u203A',  # SINGLE LEFT-POINTING ANGLE QUOTATION MARK
    '\u203A': '\u2039',  # SINGLE RIGHT-POINTING ANGLE QUOTATION MARK
    '\u2045': '\u2046',  # LEFT SQUARE BRACKET WITH QUILL
    '\u2046': '\u2045',  # RIGHT SQUARE BRACKET WITH QUILL
    '\u207D': '\u207E',  # SUPERSCRIPT LEFT PARENTHESIS
    '\u207E': '\u207D',  # SUPERSCRIPT RIGHT PARENTHESIS
    '\u208D': '\u208E',  # SUBSCRIPT LEFT PARENTHESIS
    '\u208E': '\u208D',  # SUBSCRIPT RIGHT PARENTHESIS
    '\u2208': '\u220B',  # ELEMENT OF
    '\u2209': '\u220C',  # NOT AN ELEMENT OF
    '\u220A': '\u220D',  # SMALL ELEMENT OF
    '\u220B': '\u2208',  # CONTAINS AS MEMBER
    '\u220C': '\u2209',  # DOES NOT CONTAIN AS MEMBER
    '\u220D': '\u220A',  # SMALL CONTAINS AS MEMBER
    '\u2215': '\u29F5',  # DIVISION SLASH
    '\u223C': '\u223D',  # TILDE OPERATOR
    '\u223D': '\u223C',  # REVERSED TILDE
    '\u2243': '\u22CD',  # ASYMPTOTICALLY EQUAL TO
    '\u2252': '\u2253',  # APPROXIMATELY EQUAL TO OR THE IMAGE OF
    '\u2253': '\u2252',  # IMAGE OF OR APPROXIMATELY EQUAL TO
    '\u2254': '\u2255',  # COLON EQUALS
    '\u2255': '\u2254',  # EQUALS COLON
    '\u2264': '\u2265',  # LESS-THAN OR EQUAL TO
    '\u2265': '\u2264',  # GREATER-THAN OR EQUAL TO
    '\u2266': '\u2267',  # LESS-THAN OVER EQUAL TO
    '\u2267': '\u2266',  # GREATER-THAN OVER EQUAL TO
    '\u2268': '\u2269',  # [BEST FIT] LESS-THAN BUT NOT EQUAL TO
    '\u2269': '\u2268',  # [BEST FIT] GREATER-THAN BUT NOT EQUAL TO
    '\u226A': '\u226B',  # MUCH LESS-THAN
    '\u226B': '\u226A',  # MUCH GREATER-THAN
    '\u226E': '\u226F',  # [BEST FIT] NOT LESS-THAN
    '\u226F': '\u226E',  # [BEST FIT] NOT GREATER-THAN
    '\u2270': '\u2271',  # [BEST FIT] NEITHER LESS-THAN NOR EQUAL TO
    '\u2271': '\u2270',  # [BEST FIT] NEITHER GREATER-THAN NOR EQUAL TO
    '\u2272': '\u2273',  # [BEST FIT] LESS-THAN OR EQUIVALENT TO
    '\u2273': '\u2272',  # [BEST FIT] GREATER-THAN OR EQUIVALENT TO
    '\u2274': '\u2275',  # [BEST FIT] NEITHER LESS-THAN NOR EQUIVALENT TO
    '\u2275': '\u2274',  # [BEST FIT] NEITHER GREATER-THAN NOR EQUIVALENT TO
    '\u2276': '\u2277',  # LESS-THAN OR GREATER-THAN
    '\u2277': '\u2276',  # GREATER-THAN OR LESS-THAN
    '\u2278': '\u2279',  # [BEST FIT] NEITHER LESS-THAN NOR GREATER-THAN
    '\u2279': '\u2278',  # [BEST FIT] NEITHER GREATER-THAN NOR LESS-THAN
    '\u227A': '\u227B',  # PRECEDES
    '\u227B': '\u227A',  # SUCCEEDS
    '\u227C': '\u227D',  # PRECEDES OR EQUAL TO
    '\u227D': '\u227C',  # SUCCEEDS OR EQUAL TO
    '\u227E': '\u227F',  # [BEST FIT] PRECEDES OR EQUIVALENT TO
    '\u227F': '\u227E',  # [BEST FIT] SUCCEEDS OR EQUIVALENT TO
    '\u2280': '\u2281',  # [BEST FIT] DOES NOT PRECEDE
    '\u2281': '\u2280',  # [BEST FIT] DOES NOT SUCCEED
    '\u2282': '\u2283',  # SUBSET OF
    '\u2283': '\u2282',  # SUPERSET OF
    '\u2284': '\u2285',  # [BEST FIT] NOT A SUBSET OF
    '\u2285': '\u2284',  # [BEST FIT] NOT A SUPERSET OF
    '\u2286': '\u2287',  # SUBSET OF OR EQUAL TO
    '\u2287': '\u2286',  # SUPERSET OF OR EQUAL TO
    '\u2288': '\u2289',  # [BEST FIT] NEITHER A SUBSET OF NOR EQUAL TO
    '\u2289': '\u2288',  # [BEST FIT] NEITHER A SUPERSET OF NOR EQUAL TO
    '\u228A': '\u228B',  # [BEST FIT] SUBSET OF WITH NOT EQUAL TO
    '\u228B': '\u228A',  # [BEST FIT] SUPERSET OF WITH NOT EQUAL TO
    '\u228F': '\u2290',  # SQUARE IMAGE OF
    '\u2290': '\u228F',  # SQUARE ORIGINAL OF
    '\u2291': '\u2292',  # SQUARE IMAGE OF OR EQUAL TO
    '\u2292': '\u2291',  # SQUARE ORIGINAL OF OR EQUAL TO
    '\u2298': '\u29B8',  # CIRCLED DIVISION SLASH
    '\u22A2': '\u22A3',  # RIGHT TACK
    '\u22A3': '\u22A2',  # LEFT TACK
    '\u22A6': '\u2ADE',  # ASSERTION
    '\u22A8': '\u2AE4',  # TRUE
    '\u22A9': '\u2AE3',  # FORCES
    '\u22AB': '\u2AE5',  # DOUBLE VERTICAL BAR DOUBLE RIGHT TURNSTILE
    '\u22B0': '\u22B1',  # PRECEDES UNDER RELATION
    '\u22B1': '\u22B0',  # SUCCEEDS UNDER RELATION
    '\u22B2': '\u22B3',  # NORMAL SUBGROUP OF
    '\u22B3': '\u22B2',  # CONTAINS AS NORMAL SUBGROUP
    '\u22B4': '\u22B5',  # NORMAL SUBGROUP OF OR EQUAL TO
    '\u22B5': '\u22B4',  # CONTAINS AS NORMAL SUBGROUP OR EQUAL TO
    '\u22B6': '\u22B7',  # ORIGINAL OF
    '\u22B7': '\u22B6',  # IMAGE OF
    '\u22C9': '\u22CA',  # LEFT NORMAL FACTOR SEMIDIRECT PRODUCT
    '\u22CA': '\u22C9',  # RIGHT NORMAL FACTOR SEMIDIRECT PRODUCT
    '\u22CB': '\u22CC',  # LEFT SEMIDIRECT PRODUCT
    '\u22CC': '\u22CB',  # RIGHT SEMIDIRECT PRODUCT
    '\u22CD': '\u2243',  # REVERSED TILDE EQUALS
    '\u22D0': '\u22D1',  # DOUBLE SUBSET
    '\u22D1': '\u22D0',  # DOUBLE SUPERSET
    '\u22D6': '\u22D7',  # LESS-THAN WITH DOT
    '\u22D7': '\u22D6',  # GREATER-THAN WITH DOT
    '\u22D8': '\u22D9',  # VERY MUCH LESS-THAN
    '\u22D9': '\u22D8',  # VERY MUCH GREATER-THAN
    '\u22DA': '\u22DB',  # LESS-THAN EQUAL TO OR GREATER-THAN
    '\u22DB': '\u22DA',  # GREATER-THAN EQUAL TO OR LESS-THAN
    '\u22DC': '\u22DD',  # EQUAL TO OR LESS-THAN
    '\u22DD': '\u22DC',  # EQUAL TO OR GREATER-THAN
    '\u22DE': '\u22DF',  # EQUAL TO OR PRECEDES
    '\u22DF': '\u22DE',  # EQUAL TO OR SUCCEEDS
    '\u22E0': '\u22E1',  # [BEST FIT] DOES NOT PRECEDE OR EQUAL
    '\u22E1': '\u22E0',  # [BEST FIT] DOES NOT SUCCEED OR EQUAL
    '\u22E2': '\u22E3',  # [BEST FIT] NOT SQUARE IMAGE OF OR EQUAL TO
    '\u22E3': '\u22E2',  # [BEST FIT] NOT SQUARE ORIGINAL OF OR EQUAL TO
    '\u22E4': '\u22E5',  # [BEST FIT] SQUARE IMAGE OF OR NOT EQUAL TO
    '\u22E5': '\u22E4',  # [BEST FIT] SQUARE ORIGINAL OF OR NOT EQUAL TO
    '\u22E6': '\u22E7',  # [BEST FIT] LESS-THAN BUT NOT EQUIVALENT TO
    '\u22E7': '\u22E6',  # [BEST FIT] GREATER-THAN BUT NOT EQUIVALENT TO
    '\u22E8': '\u22E9',  # [BEST FIT] PRECEDES BUT NOT EQUIVALENT TO
    '\u22E9': '\u22E8',  # [BEST FIT] SUCCEEDS BUT NOT EQUIVALENT TO
    '\u22EA': '\u22EB',  # [BEST FIT] NOT NORMAL SUBGROUP OF
    '\u22EB': '\u22EA',  # [BEST FIT] DOES NOT CONTAIN AS NORMAL SUBGROUP
    '\u22EC': '\u22ED',  # [BEST FIT] NOT NORMAL SUBGROUP OF OR EQUAL TO
    # [BEST FIT] DOES NOT CONTAIN AS NORMAL SUBGROUP OR EQUAL
    '\u22ED': '\u22EC',
    '\u22F0': '\u22F1',  # UP RIGHT DIAGONAL ELLIPSIS
    '\u22F1': '\u22F0',  # DOWN RIGHT DIAGONAL ELLIPSIS
    '\u22F2': '\u22FA',  # ELEMENT OF WITH LONG HORIZONTAL STROKE
    '\u22F3': '\u22FB',  # ELEMENT OF WITH VERTICAL BAR AT END OF HORIZONTAL STROKE
    '\u22F4': '\u22FC',  # SMALL ELEMENT OF WITH VERTICAL BAR AT END OF HORIZONTAL STROKE
    '\u22F6': '\u22FD',  # ELEMENT OF WITH OVERBAR
    '\u22F7': '\u22FE',  # SMALL ELEMENT OF WITH OVERBAR
    '\u22FA': '\u22F2',  # CONTAINS WITH LONG HORIZONTAL STROKE
    '\u22FB': '\u22F3',  # CONTAINS WITH VERTICAL BAR AT END OF HORIZONTAL STROKE
    '\u22FC': '\u22F4',  # SMALL CONTAINS WITH VERTICAL BAR AT END OF HORIZONTAL STROKE
    '\u22FD': '\u22F6',  # CONTAINS WITH OVERBAR
    '\u22FE': '\u22F7',  # SMALL CONTAINS WITH OVERBAR
    '\u2308': '\u2309',  # LEFT CEILING
    '\u2309': '\u2308',  # RIGHT CEILING
    '\u230A': '\u230B',  # LEFT FLOOR
    '\u230B': '\u230A',  # RIGHT FLOOR
    '\u2329': '\u232A',  # LEFT-POINTING ANGLE BRACKET
    '\u232A': '\u2329',  # RIGHT-POINTING ANGLE BRACKET
    '\u2768': '\u2769',  # MEDIUM LEFT PARENTHESIS ORNAMENT
    '\u2769': '\u2768',  # MEDIUM RIGHT PARENTHESIS ORNAMENT
    '\u276A': '\u276B',  # MEDIUM FLATTENED LEFT PARENTHESIS ORNAMENT
    '\u276B': '\u276A',  # MEDIUM FLATTENED RIGHT PARENTHESIS ORNAMENT
    '\u276C': '\u276D',  # MEDIUM LEFT-POINTING ANGLE BRACKET ORNAMENT
    '\u276D': '\u276C',  # MEDIUM RIGHT-POINTING ANGLE BRACKET ORNAMENT
    '\u276E': '\u276F',  # HEAVY LEFT-POINTING ANGLE QUOTATION MARK ORNAMENT
    '\u276F': '\u276E',  # HEAVY RIGHT-POINTING ANGLE QUOTATION MARK ORNAMENT
    '\u2770': '\u2771',  # HEAVY LEFT-POINTING ANGLE BRACKET ORNAMENT
    '\u2771': '\u2770',  # HEAVY RIGHT-POINTING ANGLE BRACKET ORNAMENT
    '\u2772': '\u2773',  # LIGHT LEFT TORTOISE SHELL BRACKET
    '\u2773': '\u2772',  # LIGHT RIGHT TORTOISE SHELL BRACKET
    '\u2774': '\u2775',  # MEDIUM LEFT CURLY BRACKET ORNAMENT
    '\u2775': '\u2774',  # MEDIUM RIGHT CURLY BRACKET ORNAMENT
    '\u27C3': '\u27C4',  # OPEN SUBSET
    '\u27C4': '\u27C3',  # OPEN SUPERSET
    '\u27C5': '\u27C6',  # LEFT S-SHAPED BAG DELIMITER
    '\u27C6': '\u27C5',  # RIGHT S-SHAPED BAG DELIMITER
    '\u27C8': '\u27C9',  # REVERSE SOLIDUS PRECEDING SUBSET
    '\u27C9': '\u27C8',  # SUPERSET PRECEDING SOLIDUS
    '\u27D5': '\u27D6',  # LEFT OUTER JOIN
    '\u27D6': '\u27D5',  # RIGHT OUTER JOIN
    '\u27DD': '\u27DE',  # LONG RIGHT TACK
    '\u27DE': '\u27DD',  # LONG LEFT TACK
    '\u27E2': '\u27E3',  # WHITE CONCAVE-SIDED DIAMOND WITH LEFTWARDS TICK
    '\u27E3': '\u27E2',  # WHITE CONCAVE-SIDED DIAMOND WITH RIGHTWARDS TICK
    '\u27E4': '\u27E5',  # WHITE SQUARE WITH LEFTWARDS TICK
    '\u27E5': '\u27E4',  # WHITE SQUARE WITH RIGHTWARDS TICK
    '\u27E6': '\u27E7',  # MATHEMATICAL LEFT WHITE SQUARE BRACKET
    '\u27E7': '\u27E6',  # MATHEMATICAL RIGHT WHITE SQUARE BRACKET
    '\u27E8': '\u27E9',  # MATHEMATICAL LEFT ANGLE BRACKET
    '\u27E9': '\u27E8',  # MATHEMATICAL RIGHT ANGLE BRACKET
    '\u27EA': '\u27EB',  # MATHEMATICAL LEFT DOUBLE ANGLE BRACKET
    '\u27EB': '\u27EA',  # MATHEMATICAL RIGHT DOUBLE ANGLE BRACKET
    '\u27EC': '\u27ED',  # MATHEMATICAL LEFT WHITE TORTOISE SHELL BRACKET
    '\u27ED': '\u27EC',  # MATHEMATICAL RIGHT WHITE TORTOISE SHELL BRACKET
    '\u27EE': '\u27EF',  # MATHEMATICAL LEFT FLATTENED PARENTHESIS
    '\u27EF': '\u27EE',  # MATHEMATICAL RIGHT FLATTENED PARENTHESIS
    '\u2983': '\u2984',  # LEFT WHITE CURLY BRACKET
    '\u2984': '\u2983',  # RIGHT WHITE CURLY BRACKET
    '\u2985': '\u2986',  # LEFT WHITE PARENTHESIS
    '\u2986': '\u2985',  # RIGHT WHITE PARENTHESIS
    '\u2987': '\u2988',  # Z NOTATION LEFT IMAGE BRACKET
    '\u2988': '\u2987',  # Z NOTATION RIGHT IMAGE BRACKET
    '\u2989': '\u298A',  # Z NOTATION LEFT BINDING BRACKET
    '\u298A': '\u2989',  # Z NOTATION RIGHT BINDING BRACKET
    '\u298B': '\u298C',  # LEFT SQUARE BRACKET WITH UNDERBAR
    '\u298C': '\u298B',  # RIGHT SQUARE BRACKET WITH UNDERBAR
    '\u298D': '\u2990',  # LEFT SQUARE BRACKET WITH TICK IN TOP CORNER
    '\u298E': '\u298F',  # RIGHT SQUARE BRACKET WITH TICK IN BOTTOM CORNER
    '\u298F': '\u298E',  # LEFT SQUARE BRACKET WITH TICK IN BOTTOM CORNER
    '\u2990': '\u298D',  # RIGHT SQUARE BRACKET WITH TICK IN TOP CORNER
    '\u2991': '\u2992',  # LEFT ANGLE BRACKET WITH DOT
    '\u2992': '\u2991',  # RIGHT ANGLE BRACKET WITH DOT
    '\u2993': '\u2994',  # LEFT ARC LESS-THAN BRACKET
    '\u2994': '\u2993',  # RIGHT ARC GREATER-THAN BRACKET
    '\u2995': '\u2996',  # DOUBLE LEFT ARC GREATER-THAN BRACKET
    '\u2996': '\u2995',  # DOUBLE RIGHT ARC LESS-THAN BRACKET
    '\u2997': '\u2998',  # LEFT BLACK TORTOISE SHELL BRACKET
    '\u2998': '\u2997',  # RIGHT BLACK TORTOISE SHELL BRACKET
    '\u29B8': '\u2298',  # CIRCLED REVERSE SOLIDUS
    '\u29C0': '\u29C1',  # CIRCLED LESS-THAN
    '\u29C1': '\u29C0',  # CIRCLED GREATER-THAN
    '\u29C4': '\u29C5',  # SQUARED RISING DIAGONAL SLASH
    '\u29C5': '\u29C4',  # SQUARED FALLING DIAGONAL SLASH
    '\u29CF': '\u29D0',  # LEFT TRIANGLE BESIDE VERTICAL BAR
    '\u29D0': '\u29CF',  # VERTICAL BAR BESIDE RIGHT TRIANGLE
    '\u29D1': '\u29D2',  # BOWTIE WITH LEFT HALF BLACK
    '\u29D2': '\u29D1',  # BOWTIE WITH RIGHT HALF BLACK
    '\u29D4': '\u29D5',  # TIMES WITH LEFT HALF BLACK
    '\u29D5': '\u29D4',  # TIMES WITH RIGHT HALF BLACK
    '\u29D8': '\u29D9',  # LEFT WIGGLY FENCE
    '\u29D9': '\u29D8',  # RIGHT WIGGLY FENCE
    '\u29DA': '\u29DB',  # LEFT DOUBLE WIGGLY FENCE
    '\u29DB': '\u29DA',  # RIGHT DOUBLE WIGGLY FENCE
    '\u29F5': '\u2215',  # REVERSE SOLIDUS OPERATOR
    '\u29F8': '\u29F9',  # BIG SOLIDUS
    '\u29F9': '\u29F8',  # BIG REVERSE SOLIDUS
    '\u29FC': '\u29FD',  # LEFT-POINTING CURVED ANGLE BRACKET
    '\u29FD': '\u29FC',  # RIGHT-POINTING CURVED ANGLE BRACKET
    '\u2A2B': '\u2A2C',  # MINUS SIGN WITH FALLING DOTS
    '\u2A2C': '\u2A2B',  # MINUS SIGN WITH RISING DOTS
    '\u2A2D': '\u2A2E',  # PLUS SIGN IN LEFT HALF CIRCLE
    '\u2A2E': '\u2A2D',  # PLUS SIGN IN RIGHT HALF CIRCLE
    '\u2A34': '\u2A35',  # MULTIPLICATION SIGN IN LEFT HALF CIRCLE
    '\u2A35': '\u2A34',  # MULTIPLICATION SIGN IN RIGHT HALF CIRCLE
    '\u2A3C': '\u2A3D',  # INTERIOR PRODUCT
    '\u2A3D': '\u2A3C',  # RIGHTHAND INTERIOR PRODUCT
    '\u2A64': '\u2A65',  # Z NOTATION DOMAIN ANTIRESTRICTION
    '\u2A65': '\u2A64',  # Z NOTATION RANGE ANTIRESTRICTION
    '\u2A79': '\u2A7A',  # LESS-THAN WITH CIRCLE INSIDE
    '\u2A7A': '\u2A79',  # GREATER-THAN WITH CIRCLE INSIDE
    '\u2A7D': '\u2A7E',  # LESS-THAN OR SLANTED EQUAL TO
    '\u2A7E': '\u2A7D',  # GREATER-THAN OR SLANTED EQUAL TO
    '\u2A7F': '\u2A80',  # LESS-THAN OR SLANTED EQUAL TO WITH DOT INSIDE
    '\u2A80': '\u2A7F',  # GREATER-THAN OR SLANTED EQUAL TO WITH DOT INSIDE
    '\u2A81': '\u2A82',  # LESS-THAN OR SLANTED EQUAL TO WITH DOT ABOVE
    '\u2A82': '\u2A81',  # GREATER-THAN OR SLANTED EQUAL TO WITH DOT ABOVE
    '\u2A83': '\u2A84',  # LESS-THAN OR SLANTED EQUAL TO WITH DOT ABOVE RIGHT
    '\u2A84': '\u2A83',  # GREATER-THAN OR SLANTED EQUAL TO WITH DOT ABOVE LEFT
    '\u2A8B': '\u2A8C',  # LESS-THAN ABOVE DOUBLE-LINE EQUAL ABOVE GREATER-THAN
    '\u2A8C': '\u2A8B',  # GREATER-THAN ABOVE DOUBLE-LINE EQUAL ABOVE LESS-THAN
    '\u2A91': '\u2A92',  # LESS-THAN ABOVE GREATER-THAN ABOVE DOUBLE-LINE EQUAL
    '\u2A92': '\u2A91',  # GREATER-THAN ABOVE LESS-THAN ABOVE DOUBLE-LINE EQUAL
    # LESS-THAN ABOVE SLANTED EQUAL ABOVE GREATER-THAN ABOVE SLANTED EQUAL
    '\u2A93': '\u2A94',
    # GREATER-THAN ABOVE SLANTED EQUAL ABOVE LESS-THAN ABOVE SLANTED EQUAL
    '\u2A94': '\u2A93',
    '\u2A95': '\u2A96',  # SLANTED EQUAL TO OR LESS-THAN
    '\u2A96': '\u2A95',  # SLANTED EQUAL TO OR GREATER-THAN
    '\u2A97': '\u2A98',  # SLANTED EQUAL TO OR LESS-THAN WITH DOT INSIDE
    '\u2A98': '\u2A97',  # SLANTED EQUAL TO OR GREATER-THAN WITH DOT INSIDE
    '\u2A99': '\u2A9A',  # DOUBLE-LINE EQUAL TO OR LESS-THAN
    '\u2A9A': '\u2A99',  # DOUBLE-LINE EQUAL TO OR GREATER-THAN
    '\u2A9B': '\u2A9C',  # DOUBLE-LINE SLANTED EQUAL TO OR LESS-THAN
    '\u2A9C': '\u2A9B',  # DOUBLE-LINE SLANTED EQUAL TO OR GREATER-THAN
    '\u2AA1': '\u2AA2',  # DOUBLE NESTED LESS-THAN
    '\u2AA2': '\u2AA1',  # DOUBLE NESTED GREATER-THAN
    '\u2AA6': '\u2AA7',  # LESS-THAN CLOSED BY CURVE
    '\u2AA7': '\u2AA6',  # GREATER-THAN CLOSED BY CURVE
    '\u2AA8': '\u2AA9',  # LESS-THAN CLOSED BY CURVE ABOVE SLANTED EQUAL
    '\u2AA9': '\u2AA8',  # GREATER-THAN CLOSED BY CURVE ABOVE SLANTED EQUAL
    '\u2AAA': '\u2AAB',  # SMALLER THAN
    '\u2AAB': '\u2AAA',  # LARGER THAN
    '\u2AAC': '\u2AAD',  # SMALLER THAN OR EQUAL TO
    '\u2AAD': '\u2AAC',  # LARGER THAN OR EQUAL TO
    '\u2AAF': '\u2AB0',  # PRECEDES ABOVE SINGLE-LINE EQUALS SIGN
    '\u2AB0': '\u2AAF',  # SUCCEEDS ABOVE SINGLE-LINE EQUALS SIGN
    '\u2AB3': '\u2AB4',  # PRECEDES ABOVE EQUALS SIGN
    '\u2AB4': '\u2AB3',  # SUCCEEDS ABOVE EQUALS SIGN
    '\u2ABB': '\u2ABC',  # DOUBLE PRECEDES
    '\u2ABC': '\u2ABB',  # DOUBLE SUCCEEDS
    '\u2ABD': '\u2ABE',  # SUBSET WITH DOT
    '\u2ABE': '\u2ABD',  # SUPERSET WITH DOT
    '\u2ABF': '\u2AC0',  # SUBSET WITH PLUS SIGN BELOW
    '\u2AC0': '\u2ABF',  # SUPERSET WITH PLUS SIGN BELOW
    '\u2AC1': '\u2AC2',  # SUBSET WITH MULTIPLICATION SIGN BELOW
    '\u2AC2': '\u2AC1',  # SUPERSET WITH MULTIPLICATION SIGN BELOW
    '\u2AC3': '\u2AC4',  # SUBSET OF OR EQUAL TO WITH DOT ABOVE
    '\u2AC4': '\u2AC3',  # SUPERSET OF OR EQUAL TO WITH DOT ABOVE
    '\u2AC5': '\u2AC6',  # SUBSET OF ABOVE EQUALS SIGN
    '\u2AC6': '\u2AC5',  # SUPERSET OF ABOVE EQUALS SIGN
    '\u2ACD': '\u2ACE',  # SQUARE LEFT OPEN BOX OPERATOR
    '\u2ACE': '\u2ACD',  # SQUARE RIGHT OPEN BOX OPERATOR
    '\u2ACF': '\u2AD0',  # CLOSED SUBSET
    '\u2AD0': '\u2ACF',  # CLOSED SUPERSET
    '\u2AD1': '\u2AD2',  # CLOSED SUBSET OR EQUAL TO
    '\u2AD2': '\u2AD1',  # CLOSED SUPERSET OR EQUAL TO
    '\u2AD3': '\u2AD4',  # SUBSET ABOVE SUPERSET
    '\u2AD4': '\u2AD3',  # SUPERSET ABOVE SUBSET
    '\u2AD5': '\u2AD6',  # SUBSET ABOVE SUBSET
    '\u2AD6': '\u2AD5',  # SUPERSET ABOVE SUPERSET
    '\u2ADE': '\u22A6',  # SHORT LEFT TACK
    '\u2AE3': '\u22A9',  # DOUBLE VERTICAL BAR LEFT TURNSTILE
    '\u2AE4': '\u22A8',  # VERTICAL BAR DOUBLE LEFT TURNSTILE
    '\u2AE5': '\u22AB',  # DOUBLE VERTICAL BAR DOUBLE LEFT TURNSTILE
    '\u2AEC': '\u2AED',  # DOUBLE STROKE NOT SIGN
    '\u2AED': '\u2AEC',  # REVERSED DOUBLE STROKE NOT SIGN
    '\u2AF7': '\u2AF8',  # TRIPLE NESTED LESS-THAN
    '\u2AF8': '\u2AF7',  # TRIPLE NESTED GREATER-THAN
    '\u2AF9': '\u2AFA',  # DOUBLE-LINE SLANTED LESS-THAN OR EQUAL TO
    '\u2AFA': '\u2AF9',  # DOUBLE-LINE SLANTED GREATER-THAN OR EQUAL TO
    '\u2E02': '\u2E03',  # LEFT SUBSTITUTION BRACKET
    '\u2E03': '\u2E02',  # RIGHT SUBSTITUTION BRACKET
    '\u2E04': '\u2E05',  # LEFT DOTTED SUBSTITUTION BRACKET
    '\u2E05': '\u2E04',  # RIGHT DOTTED SUBSTITUTION BRACKET
    '\u2E09': '\u2E0A',  # LEFT TRANSPOSITION BRACKET
    '\u2E0A': '\u2E09',  # RIGHT TRANSPOSITION BRACKET
    '\u2E0C': '\u2E0D',  # LEFT RAISED OMISSION BRACKET
    '\u2E0D': '\u2E0C',  # RIGHT RAISED OMISSION BRACKET
    '\u2E1C': '\u2E1D',  # LEFT LOW PARAPHRASE BRACKET
    '\u2E1D': '\u2E1C',  # RIGHT LOW PARAPHRASE BRACKET
    '\u2E20': '\u2E21',  # LEFT VERTICAL BAR WITH QUILL
    '\u2E21': '\u2E20',  # RIGHT VERTICAL BAR WITH QUILL
    '\u2E22': '\u2E23',  # TOP LEFT HALF BRACKET
    '\u2E23': '\u2E22',  # TOP RIGHT HALF BRACKET
    '\u2E24': '\u2E25',  # BOTTOM LEFT HALF BRACKET
    '\u2E25': '\u2E24',  # BOTTOM RIGHT HALF BRACKET
    '\u2E26': '\u2E27',  # LEFT SIDEWAYS U BRACKET
    '\u2E27': '\u2E26',  # RIGHT SIDEWAYS U BRACKET
    '\u2E28': '\u2E29',  # LEFT DOUBLE PARENTHESIS
    '\u2E29': '\u2E28',  # RIGHT DOUBLE PARENTHESIS
    '\u3008': '\u3009',  # LEFT ANGLE BRACKET
    '\u3009': '\u3008',  # RIGHT ANGLE BRACKET
    '\u300A': '\u300B',  # LEFT DOUBLE ANGLE BRACKET
    '\u300B': '\u300A',  # RIGHT DOUBLE ANGLE BRACKET
    '\u300C': '\u300D',  # [BEST FIT] LEFT CORNER BRACKET
    '\u300D': '\u300C',  # [BEST FIT] RIGHT CORNER BRACKET
    '\u300E': '\u300F',  # [BEST FIT] LEFT WHITE CORNER BRACKET
    '\u300F': '\u300E',  # [BEST FIT] RIGHT WHITE CORNER BRACKET
    '\u3010': '\u3011',  # LEFT BLACK LENTICULAR BRACKET
    '\u3011': '\u3010',  # RIGHT BLACK LENTICULAR BRACKET
    '\u3014': '\u3015',  # LEFT TORTOISE SHELL BRACKET
    '\u3015': '\u3014',  # RIGHT TORTOISE SHELL BRACKET
    '\u3016': '\u3017',  # LEFT WHITE LENTICULAR BRACKET
    '\u3017': '\u3016',  # RIGHT WHITE LENTICULAR BRACKET
    '\u3018': '\u3019',  # LEFT WHITE TORTOISE SHELL BRACKET
    '\u3019': '\u3018',  # RIGHT WHITE TORTOISE SHELL BRACKET
    '\u301A': '\u301B',  # LEFT WHITE SQUARE BRACKET
    '\u301B': '\u301A',  # RIGHT WHITE SQUARE BRACKET
    '\uFE59': '\uFE5A',  # SMALL LEFT PARENTHESIS
    '\uFE5A': '\uFE59',  # SMALL RIGHT PARENTHESIS
    '\uFE5B': '\uFE5C',  # SMALL LEFT CURLY BRACKET
    '\uFE5C': '\uFE5B',  # SMALL RIGHT CURLY BRACKET
    '\uFE5D': '\uFE5E',  # SMALL LEFT TORTOISE SHELL BRACKET
    '\uFE5E': '\uFE5D',  # SMALL RIGHT TORTOISE SHELL BRACKET
    '\uFE64': '\uFE65',  # SMALL LESS-THAN SIGN
    '\uFE65': '\uFE64',  # SMALL GREATER-THAN SIGN
    '\uFF08': '\uFF09',  # FULLWIDTH LEFT PARENTHESIS
    '\uFF09': '\uFF08',  # FULLWIDTH RIGHT PARENTHESIS
    '\uFF1C': '\uFF1E',  # FULLWIDTH LESS-THAN SIGN
    '\uFF1E': '\uFF1C',  # FULLWIDTH GREATER-THAN SIGN
    '\uFF3B': '\uFF3D',  # FULLWIDTH LEFT SQUARE BRACKET
    '\uFF3D': '\uFF3B',  # FULLWIDTH RIGHT SQUARE BRACKET
    '\uFF5B': '\uFF5D',  # FULLWIDTH LEFT CURLY BRACKET
    '\uFF5D': '\uFF5B',  # FULLWIDTH RIGHT CURLY BRACKET
    '\uFF5F': '\uFF60',  # FULLWIDTH LEFT WHITE PARENTHESIS
    '\uFF60': '\uFF5F',  # FULLWIDTH RIGHT WHITE PARENTHESIS
    '\uFF62': '\uFF63',  # [BEST FIT] HALFWIDTH LEFT CORNER BRACKET
    '\uFF63': '\uFF62',  # [BEST FIT] HALFWIDTH RIGHT CORNER BRACKET
}