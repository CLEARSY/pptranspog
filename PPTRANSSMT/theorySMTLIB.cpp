/** theorySMTLIB.cpp

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
#include "theorySMTLIB.h"

using std::string;

namespace SMTLIB
{
const string isum = R"_(
(declare-fun isum ((P Int)) Int)

(assert (!
 (forall ((s (P Int)))
  (=>
   (forall ((x Int)) (not (mem0 x s)))
   (= (isum s) 0)
  )
 )
 :named |isum_axiom_1|))

(assert (!
(forall ((x Int) (S (P Int)))
  (=> (not (mem0 x S))
      (forall ((T (P Int)))
        (=> (forall ((y Int)) (= (mem0 y T) (or (= x y) (mem0 y S))))
            (= (isum T) (+ (isum S) x) )))))
  :named |isum_axiom_2|))

)_";

const string iprod = R"_(
(declare-fun iprod ((P Int)) Int)

(assert (!
 (forall ((s (P Int)))
  (=>
   (forall ((x Int)) (not (mem0 x s)))
   (= (iprod s) 1)
  )
 )
 :named |iprod_axiom_1|))

(assert (!
(forall ((x Int) (S (P Int)))
  (=> (not (mem0 x S))
      (forall ((T (P Int)))
        (=> (forall ((y Int)) (= (mem0 y T) (or (= x y) (mem0 y S))))
            (= (iprod T) (+ (iprod S) x) )))))
  :named |iprod_axiom_2|))

)_";

const string rsum = R"_(
(declare-fun rsum ((P Real)) Real)

(assert (!
 (forall ((s (P Real)))
  (=>
   (forall ((x Real)) (not (mem1 x s)))
   (= (rsum s) 0.0)
  )
 )
 :named |rsum_axiom_1|))

(assert (!
(forall ((x Real) (S (P Real)))
  (=> (not (mem1 x S))
      (forall ((T (P Real)))
        (=> (forall ((y Real)) (= (mem1 y T) (or (= x y) (mem1 y S))))
            (= (rsum T) (+ (rsum S) x) )))))
  :named |rsum_axiom_2|))

)_";

const string rprod = R"_(
(declare-fun rprod ((P Real)) Real)

(assert (!
 (forall ((S (P Real)))
  (=>
   (forall ((x Real)) (not (mem1 x S)))
   (= (rprod S) 1.0)
  )
 )
 :named |rprod_axiom_1|))

(assert (!
(forall ((x Real) (S (P Real)))
  (=> (not (mem1 x S))
      (forall ((T (P Real)))
        (=> (forall ((y Real)) (= (mem1 y T) (or (= x y) (mem1 y S))))
            (= (rprod T) (+ (rprod S) x) )))))
  :named |rprod_axiom_2|))

)_";
} // namespace SMTLIB
