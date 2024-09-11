#ifndef OPTIONPRELUDE_H
#define OPTIONPRELUDE_H

#include "pog.h"

class OptionPrelude {
public:
    enum class Option {
        Real,
        Float,
        Int,
        String,
        Pow,
        CartesianProduct,
        Division,
        IExp,
        RExp,
        ISum,          /**@brief quantified integer addition */
        IProd,         /**@brief quantified addition over real numbers*/
        RSum,          /**@brief quantified integer multiplication */
        RProd,         /**@brief quantified multiplication over real numbers */
        RelationInt,
        RelationReal,
        Mem,
        Ceiling
    };

    OptionPrelude(const pog::Pog &pog, bool default_value = false);
    void analyse(const Expr &e);
    void analyse(const Pred &p);
    void analyse(const BType &type);
    void analyse(const Expr::BinaryExpr &b);
    void analyse(const Expr &e, const Expr::EKind &k);
    bool contains(const Option &opt) const;

private:
    bool containsReal;
    bool containsFloat;
    bool containsInt;
    bool containsString;
    bool pow;
    bool cartesianProduct;
    bool division;
    bool containsIExp;
    bool containsRExp;
    bool containsISum;
    bool containsIProd;
    bool containsRSum;
    bool containsRProd;
    bool relationInt;
    bool relationReal;
    bool containsMem;
    bool containsCeiling;
};

#endif // OPTIONPRELUDE_H
