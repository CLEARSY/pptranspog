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