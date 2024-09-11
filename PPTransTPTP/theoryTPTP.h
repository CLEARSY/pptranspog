/** theoryTPTP.h

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

#ifndef THEORY_TPTP_H
#define THEORY_TPTP_H

/**@brief Axiomatization of some B operators in TPTP */
namespace TPTP
{
extern const std::string setInt; /**@brief type and function declaration for set of INTEGER values */
extern const std::string setReal; /**@brief type and function declaration for set of REAL values*/
extern const std::string divB; /**@brief axiomatization for integer division */
extern const std::string iexp; /**@brief axiomatization for integer exponentiation */
extern const std::string rexp; /**@brief axiomatization for exponentiation of real numbers */
extern const std::string isum; /**@brief axiomatization for addition over a set of integers */
extern const std::string iprod; /**@brief axiomatization for multiplication over a set of integers */
extern const std::string rsum; /**@brief axiomatization for addition over a set of real numbers */
extern const std::string rprod; /**@brief axiomatization for multiplication over a set of real numbers */
} // namespace TPTP

#endif // THEORY_TPTP_H