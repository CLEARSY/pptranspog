#include "optionPrelude.h"
#include "exprDesc.h"
#include "predDesc.h"
#include <iostream>

OptionPrelude::OptionPrelude(const pog::Pog &pog, bool default_value) {
    containsReal = default_value;
    containsFloat = default_value;
    containsInt = default_value;
    containsString = default_value;
    pow = default_value;
    cartesianProduct = default_value;
    division = default_value;
    containsIExp = default_value;
    containsRExp = default_value;
    containsISum = default_value;
    containsIProd = default_value;
    containsRSum = default_value;
    containsRProd = default_value;
    relationInt = default_value;
    relationReal = default_value;
    containsMem = default_value;
    containsCeiling = default_value;

    if (!default_value) {
        for (auto &define : pog.defines) {
            for (auto &c : define.contents) {
                if (std::holds_alternative<Pred>(c)) {
                    analyse(std::get<Pred>(c));
                } else {
                    pog::Set s = std::get<pog::Set>(c);
                    analyse(s.setName.type);
                    for (auto &e : s.elts) {
                        analyse(e.type);
                    }
                }
            }
        }
        for (auto &po : pog.pos) {
            for (auto &simpleGoal : po.simpleGoals)
                analyse(simpleGoal.goal);
            for (auto &localHyp : po.localHyps)
                analyse(localHyp);
            for (auto &hyp : po.hyps)
                analyse(hyp);
        }
    }
}

void OptionPrelude::analyse(const BType &type) {
    switch (type.getKind()) {
    case BType::Kind::INTEGER:
        containsInt = true;
        break;
    case BType::Kind::BOOLEAN: // Will it be needed ?
        break;
    case BType::Kind::FLOAT:
        containsFloat = true;
        break;
    case BType::Kind::REAL:
        containsReal = true;
        break;
    case BType::Kind::STRING:
        containsString = true;
        break;
    case BType::Kind::ProductType: {
        cartesianProduct = true;
        auto &c = type.toProductType();
        analyse(c.lhs);
        analyse(c.rhs);
        break;
    }
    case BType::Kind::PowerType: {
        pow = true;
        auto &c = type.toPowerType();
        analyse(c.content);
        break;
    }
    case BType::Kind::Struct: {
        const BType::RecordType &s = type.toRecordType();
        for (auto &fd : s.fields)
            analyse(fd.second);
        break;
    }
    }
}

void OptionPrelude::analyse(const Pred &p) {
    switch (p.getTag()) {
    case Pred::PKind::Implication: {
        auto &c = p.toImplication();
        analyse(c.lhs);
        analyse(c.rhs);
        break;
    }
    case Pred::PKind::Equivalence: {
        auto &c = p.toEquivalence();
        analyse(c.lhs);
        analyse(c.rhs);
        break;
    }
    case Pred::PKind::Conjunction: {
        auto &c = p.toConjunction();
        for (auto &s : c.operands) {
            analyse(s);
        }
        break;
    }
    case Pred::PKind::Disjunction: {
        auto &c = p.toDisjunction();
        for (auto &s : c.operands) {
            analyse(s);
        }
        break;
    }
    case Pred::PKind::Forall: {
        auto &c = p.toForall();
        analyse(c.body);
        break;
    }
    case Pred::PKind::Exists: {
        auto &e = p.toExists();
        analyse(e.body);
        break;
    }
    case Pred::PKind::ExprComparison: {
        auto &c = p.toExprComparison();
        switch (c.op) {
        case Pred::ComparisonOp::Membership:
        case Pred::ComparisonOp::Subset:
        case Pred::ComparisonOp::Strict_Subset:
            containsMem = true;
            break;
        case Pred::ComparisonOp::Equality:
            break;
        case Pred::ComparisonOp::Ige:
        case Pred::ComparisonOp::Igt:
        case Pred::ComparisonOp::Ilt:
        case Pred::ComparisonOp::Ile:
            containsInt = true;
            break;
        case Pred::ComparisonOp::Fge:
        case Pred::ComparisonOp::Fgt:
        case Pred::ComparisonOp::Flt:
        case Pred::ComparisonOp::Fle:
            containsFloat = true;
            break;
        case Pred::ComparisonOp::Rle:
        case Pred::ComparisonOp::Rlt:
        case Pred::ComparisonOp::Rge:
        case Pred::ComparisonOp::Rgt:
            containsReal = true;
            break;
        }
        analyse(c.lhs);
        analyse(c.rhs);
        break;
    }
    case Pred::PKind::Negation: {
        auto &c = p.toNegation();
        analyse(c.operand);
        break;
    }
    case Pred::PKind::True:
    case Pred::PKind::False:
        break;
    }
}

void OptionPrelude::analyse(const Expr::BinaryExpr &b) {
    switch (b.op) {
    case Expr::BinaryOp::Mapplet:
    case Expr::BinaryOp::Cartesian_Product:
        cartesianProduct = true;
        break;
    case Expr::BinaryOp::Iteration:
    case Expr::BinaryOp::Father:
    case Expr::BinaryOp::Subtree:
        break;
    case Expr::BinaryOp::Partial_Functions:
    case Expr::BinaryOp::Partial_Injections:
    case Expr::BinaryOp::Partial_Surjections:
    case Expr::BinaryOp::Partial_Bijections:
    case Expr::BinaryOp::Total_Functions:
    case Expr::BinaryOp::Total_Injections:
    case Expr::BinaryOp::Total_Surjections:
    case Expr::BinaryOp::Total_Bijections:
        containsMem = true;
        pow = true;
        cartesianProduct = true;
        break;
    case Expr::BinaryOp::Interval:
    case Expr::BinaryOp::Intersection:
    case Expr::BinaryOp::Union:
    case Expr::BinaryOp::Set_Difference:
    case Expr::BinaryOp::Domain_Subtraction:
    case Expr::BinaryOp::Domain_Restriction:
    case Expr::BinaryOp::Head_Insertion:
    case Expr::BinaryOp::Head_Restriction:
    case Expr::BinaryOp::Tail_Insertion:
    case Expr::BinaryOp::Tail_Restriction:
        containsMem = true;
        break;
    case Expr::BinaryOp::Direct_Product:
    case Expr::BinaryOp::Parallel_Product:
    case Expr::BinaryOp::First_Projection:
    case Expr::BinaryOp::Second_Projection:
    case Expr::BinaryOp::Relations:
        containsMem = true;
        cartesianProduct = true;
        break;
    case Expr::BinaryOp::Composition:
    case Expr::BinaryOp::Surcharge:
    case Expr::BinaryOp::Image:
    case Expr::BinaryOp::Application:
    case Expr::BinaryOp::Rank:
    case Expr::BinaryOp::Const:
    case Expr::BinaryOp::Arity:
    case Expr::BinaryOp::Concatenation:
    case Expr::BinaryOp::Range_Restriction:
    case Expr::BinaryOp::Range_Subtraction:
        containsMem = true;
        break;
    case Expr::BinaryOp::Modulo:
        break;
    case Expr::BinaryOp::IAddition:
    case Expr::BinaryOp::ISubtraction:
    case Expr::BinaryOp::IMultiplication:
        containsInt = true;
        break;
    case Expr::BinaryOp::IDivision:
        containsInt = true;
        division = true;
        break;
    case Expr::BinaryOp::IExponentiation:
        containsInt = true;
        containsIExp = true;
        break;
    case Expr::BinaryOp::RAddition:
    case Expr::BinaryOp::RSubtraction:
    case Expr::BinaryOp::RMultiplication:
        containsReal = true;
        break;
    case Expr::BinaryOp::RDivision:
        containsReal = true;
        division = true;
        break;
    case Expr::BinaryOp::RExponentiation:
        containsReal = true;
        containsRExp = true;
        break;
    case Expr::BinaryOp::FAddition:
    case Expr::BinaryOp::FSubtraction:
    case Expr::BinaryOp::FMultiplication:
        containsFloat = true;
        break;
    case Expr::BinaryOp::FDivision:
        containsFloat = true;
        division = true;
        break;
    }
    analyse(b.lhs);
    analyse(b.rhs);
}

void OptionPrelude::analyse(const Expr &e, const Expr::EKind &k) {
    switch (k) {
    case Expr::EKind::MaxInt:
    case Expr::EKind::MinInt:
        containsInt = true;
        break;
    case Expr::EKind::NATURAL:
    case Expr::EKind::NATURAL1:
    case Expr::EKind::NAT:
    case Expr::EKind::NAT1:
    case Expr::EKind::INTEGER:
    case Expr::EKind::INT:
        containsInt = true;
        break;
    case Expr::EKind::STRING:
        containsString = true;
        break;
    case Expr::EKind::BOOL:
        break;
    case Expr::EKind::REAL:
        containsReal = true;
        break;
    case Expr::EKind::FLOAT:
        containsFloat = true;
        break;
    case Expr::EKind::TRUE:
    case Expr::EKind::FALSE:
    case Expr::EKind::EmptySet:
    case Expr::EKind::QuantifiedSet:
        break;
    case Expr::EKind::IntegerLiteral:
        containsInt = true;
        break;
    case Expr::EKind::StringLiteral:
        containsString = true;
        break;
    case Expr::EKind::RealLiteral:
        containsReal = true;
        break;
    case Expr::EKind::Id:
        break;
    case Expr::EKind::BooleanExpr:
        break;
    case Expr::EKind::QuantifiedExpr: {
        auto &q = e.toQuantiedExpr();
        switch (q.op) {
        case Expr::QuantifiedOp::ISum:
            pow = true;
            containsInt = true;
            containsISum = true;
            break;
        case Expr::QuantifiedOp::IProduct:
            pow = true;
            containsInt = true;
            containsIProd = true;
            break;
        case Expr::QuantifiedOp::RSum:
            pow = true;
            containsReal = true;
            containsRSum = true;
            break;
        case Expr::QuantifiedOp::RProduct:
            pow = true;
            containsReal = true;
            containsRProd = true;
            break;
        case Expr::QuantifiedOp::Lambda:
            break;
        case Expr::QuantifiedOp::Intersection:
        case Expr::QuantifiedOp::Union:
            containsMem = true;
            break;
        }
        analyse(q.body);
        break;
    }
    case Expr::EKind::UnaryExpr: {
        auto &u = e.toUnaryExpr();
        analyse(u.content);
        switch (u.op) {
        case Expr::UnaryOp::Range:
            containsInt = true;
            break;
        case Expr::UnaryOp::Last:
        case Expr::UnaryOp::First:
            cartesianProduct = true;
            containsMem = true;
            break;
        case Expr::UnaryOp::Ceiling:
            containsCeiling = true;
            break;
        case Expr::UnaryOp::Cardinality:
            cartesianProduct = true;
            break;
        default:
            break;
        }
        break;
    }
    case Expr::EKind::BinaryExpr: {
        auto &b = e.toBinaryExpr();
        analyse(b);
        break;
    }
    case Expr::EKind::TernaryExpr: {
        auto &t = e.toTernaryExpr();
        analyse(t.fst);
        analyse(t.snd);
        analyse(t.thd);
        break;
    }
    case Expr::EKind::NaryExpr: {
        auto &n = e.toNaryExpr();
        for (auto &s : n.vec) {
            analyse(s);
        }
        break;
    }
    case Expr::EKind::Struct: {
        auto &s = e.toStructExpr();
        for (auto &fd : s.fields)
            analyse(fd.second);
        break;
    }
    case Expr::EKind::Record: {
        auto &r = e.toRecordExpr();
        for (auto &fd : r.fields)
            analyse(fd.second);
        break;
    }
    case Expr::EKind::Record_Field_Access:
    case Expr::EKind::Record_Field_Update:
    case Expr::EKind::Successor:
    case Expr::EKind::Predecessor:
        break;
    }
}

void OptionPrelude::analyse(const Expr &e) {
    analyse(e, e.getTag());
    switch (e.getType().getKind()) { // TODO see if it's really useful (for now,
                                     // essentially basic type line NAT)
    case BType::Kind::PowerType:
        pow = true;
        break;
    case BType::Kind::ProductType:
        cartesianProduct = true;
        break;
    }
}

bool OptionPrelude::contains(const Option &opt) const {
    switch (opt) {
    case Option::Real:
        return containsReal;
    case Option::Float:
        return containsFloat;
    case Option::Int:
        return containsInt;
    case Option::String:
        return containsString;
    case Option::Pow:
        return pow;
    case Option::CartesianProduct:
        return cartesianProduct;
    case Option::Division:
        return division;
    case Option::IExp:
        return containsIExp;
    case Option::RExp:
        return containsRExp;
    case Option::ISum:
        return containsISum;
    case Option::IProd:
        return containsIProd;
    case Option::RSum:
        return containsRSum;
    case Option::RProd:
        return containsRProd;
    case Option::RelationInt:
        return relationInt;
    case Option::RelationReal:
        return relationReal;
    case Option::Mem:
        return containsMem;
    case Option::Ceiling:
        return containsCeiling;
    default:
        return false;
    }
    assert(false); // unreachable
}
