/** theorySMTLIB.h

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
#include <string>

#ifndef THEORY_SMTLIB_H
#define THEORY_SMTLIB_H

namespace SMTLIB
{
/**@todo extract all theory bits from ppTrans.cpp:printPrelude() here */

extern const std::string isum;
extern const std::string iprod;
extern const std::string rsum;
extern const std::string rprod;
} // namespace SMTLIB

#endif // THEORY_SMTLIB_H