/** ppTrans.h

   \copyright Copyright © CLEARSY 2022
   \license This file is part of ppTransSmt.

   ppTransSmt is free software: you can redistribute it and/or modify it
   under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   ppTransSmt is distributed in the hope that it will be useful, but
   WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
   General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with ppTransSmt. If not, see <https://www.gnu.org/licenses/>.
*/
#ifndef PPTRANSTPTP_H
#define PPTRANSTPTP_H

#include<map>
#include<set>
#include<vector>
#include <sstream>
#include <string>
#include "pog.h"
#include "vars.h"
#include "expr.h"
#include "optionPrelude.h"

// TODO: Should eventually be deleted
class ppTransException : public std::exception
{
public:
    explicit ppTransException(const std::string &desc);
    ~ppTransException() throw();
    const char *what() const throw();
private:
    std::string description;
};

namespace ppTransTPTP {
    typedef struct lexicon_t {
      std::vector<std::string> order;
      std::set<std::string> contents;
      lexicon_t() : order(), contents() {}
      bool insert(const std::string &symbol) {
        if (contents.find(symbol) == contents.end()) {
          order.push_back(symbol);
          contents.insert(symbol);
          return true;
        }
        return false;
      }
      void merge(const lexicon_t &other) {
        for (auto &e: other.order) {
          insert(e);
        }
    }


    } lexicon_t;
    class LocalEquations;
    class Context {
        public:
            void pop_vars();
            void push_vars(const std::vector<TypedVar> &vars);
            std::string registerId(const VarName &v, const BType &ty, lexicon_t &used_ids);
            std::string registerMem(const BType &ty, lexicon_t &used_ids);
            std::string registerIterate(const BType &ty, lexicon_t &used_ids);
            std::string registerRecordType(const BType &ty, lexicon_t &used_ids);
            std::string registerStringLiteral(const std::string &s, lexicon_t &used_ids);
            std::string registerSetType(const BType &ty, lexicon_t &used_ids);
            std::string registerProductType(const BType &ty, lexicon_t &used_ids);

        std::string nameSimpleExpression(const Expr &e, LocalEquations &local_eqs, lexicon_t &used_ids);
            const std::map<std::string,std::string> &getTPTPDeclarations() const { return tptpDeclarations; } ;
        private:
            std::map<BType,std::string> memberships = { {BType::POW_INT,"mem0"}, {BType::POW_REAL,"mem1"} };
            std::map<BType, std::string> types = { {BType::INT, "set_0"}, {BType::REAL,"set_1"} };
            unsigned setTypeCount = 2;
            unsigned recordTypeCount = 0;
            unsigned productTypeCount = 0;
            std::map<BType, std::string> recordTypes;
            std::map<BType,std::string> setTypes = { {BType::INT, "set_0"}, {BType::REAL,"set_1"} };
            std::map<BType,std::string> productTypes;
            std::map<BType,std::string> iterates;
            std::map<std::string,std::string> stringLiterals;
            std::map<TypedVar,std::string> globalIdents;
            std::vector<std::vector<TypedVar> > bv_stack;
            std::map<std::string,std::string> tptpDeclarations = {};
            void registerId(const std::string& id);
    };
    void ppTrans(std::ostringstream &str, Context &ctx, const Pred &p, lexicon_t &used_ids);
    void ppTrans(std::ostringstream &str, Context &env, const pog::Set &set,lexicon_t &used_ids);
    void printPrelude ( std::ofstream &out, const OptionPrelude options, const std::string &minint, const std::string &maxint );
}

#endif // PPTRANSTPTP_H
