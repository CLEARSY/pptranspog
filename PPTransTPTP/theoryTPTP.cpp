/** theoryTPTP.cpp

   \copyright Copyright © CLEARSY 2024
   \license This file is part of pptranspog.

   pptranspog is free software: you can redistribute it and/or modify it
   under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

    pptranspog is distributed in the hope that it will be useful, but
    WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
    General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with pptranspog. If not, see <https://www.gnu.org/licenses/>.
*/
#include "theoryTPTP.h"

using std::string;

namespace TPTP
{

const string setInt = R"_(
tff(set_0_type,type,(set_0: $tType )).
tff(mem0_type,type,(mem0: ( $int * set_0 ) > $o )).
)_";

const string setReal = R"_(
tff(set_1_type,type,(set_1: $tType )).
tff(mem1_type,type,(mem1: ( $real * set_1 ) > $o )).
)_";

const string divB = R"_(
tff(b_division_type,type,(divB: ( $int * $int ) > $int )).
tff(b_division_def_1,axiom,(! [X: $int,Y: $int] : (( $lesseq(0,X)& $less(0,Y))=> divB(X,Y) = $quotient_f(X,Y)))).
tff(b_division_def_2,axiom,(! [X: $int,Y: $int] : (( $lesseq(X,0)& $less(0,Y))=> divB(X,Y) = $uminus($quotient_f($uminus(X),Y)) ) )).
tff(b_division_def_3,axiom,(! [X: $int,Y: $int] : (( $lesseq(0,X)& $less(Y,0))=> divB(X,Y) = $quotient_f(X,Y)))).
tff(b_division_def_4,axiom,(! [X: $int,Y: $int] : (( $lesseq(X,0)& $less(Y,0))=> divB(X,Y) = $quotient_f($uminus(X),$uminus(Y)) ) )).
)_";

const string iexp = R"_(
tff(iexp_type,type,(iexp: ( $int * $int ) > $int )).
tff(iexp_def_1,axiom,(! [X: $int] : ( iexp(X,0) = 1 ) )).
tff(iexp_def_2,axiom,(! [X: $int,Y: $int] : (( $greatereq(Y,1))=> iexp(X,Y) = $sum(X,iexp(X,$difference(Y,1))) ) )).
)_";

const string rexp = R"_(
tff(rexp_type,type,(rexp: ( $real * $int ) > $real )).
tff(rexp_def_1,axiom,(! [X: $real] : (( X != 0.0)=> rexp(X,0) = 1.0 ) )).
tff(rexp_def_2,axiom,(! [X: $real,Y: $int] : (( $greatereq(Y,1))=> rexp(X,Y) = $sum(X,rexp(X,$difference(Y,1))) ) )).
)_";

const string isum = R"_(
tff(isum_type,type,(isum: set_0 > $int )).
tff(isum_def_1,axiom,
    ( ! [S: set_0] : (
        (! [X: $int] : (~ mem0(X,S) ) )
        =>
        (isum(S) = 0)
      )
    )
).
tff(isum_def_2,axiom,
  ( ! [X: $int, S: set_0] :
    ( ~mem0(X,S) =>
        ( ! [T: set_0] : (
            (! [Y: $int] : ( mem0(Y, T) <=> ( X = Y | mem0(X,S) ) ))
            =>
            (isum(S) = $sum(X, isum(T)))
          )
        )
    )
  )
).
)_";

extern const std::string iprod = R"_(
tff(iprod_type,type,(iprod: set_0 > $int )).
tff(iprod_def_1,axiom,
    ( ! [S: set_0] : (
        (! [X: $int] : (~ mem0(X,S) ) )
        =>
        (iprod(S) = 1)
      )
    )
).
tff(iprod_def_2,axiom,
  ( ! [X: $int, S: set_0] :
    ( ~mem0(X,S) =>
        ( ! [T: set_0] : (
            (! [Y: $int] : ( mem0(Y, T) <=> ( X = Y | mem0(X,S) ) ))
            =>
            (iprod(S) = $product(X, iprod(T)))
          )
        )
    )
  )
).
)_";

extern const std::string rsum = R"_(
tff(rsum_type,type,(rsum: set_1 > $real )).
tff(rsum_def_1,axiom,
    ( ! [S: set_1] : (
        (! [X: $real] : (~ mem1(X,S) ) )
        =>
        (rsum(S) = 0.0)
      )
    )
).
tff(rsum_def_2,axiom,
  ( ! [X: $real, S: set_1] :
    ( ~mem1(X,S) =>
        ( ! [T: set_1] : (
            (! [Y: $real] : ( mem1(Y, T) <=> ( X = Y | mem1(X,S) ) ))
            =>
            (rsum(S) = $sum(X, rsum(T)))
          )
        )
    )
  )
).
)_";

extern const std::string rprod = R"_(
tff(rprod_type,type,(rprod: set_1 > $real )).
tff(rprod_def_1,axiom,
    ( ! [S: set_1] : (
        (! [X: $real] : (~ mem1(X,S) ) )
        =>
        (rprod(S) = 1.0)
      )
    )
).
tff(rprod_def_2,axiom,
  ( ! [X: $real, S: set_1] :
    ( ~mem1(X,S) =>
        ( ! [T: set_1] : (
            (! [Y: $real] : ( mem1(Y, T) <=> ( X = Y | mem1(X,S) ) ))
            =>
            (rprod(S) = $product(X, rprod(T)))
          )
        )
    )
  )
).
)_";
} // namespace TPTP