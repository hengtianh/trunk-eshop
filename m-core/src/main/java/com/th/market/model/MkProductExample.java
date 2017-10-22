package com.th.market.model;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

public class MkProductExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public MkProductExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andPIdIsNull() {
            addCriterion("P_ID is null");
            return (Criteria) this;
        }

        public Criteria andPIdIsNotNull() {
            addCriterion("P_ID is not null");
            return (Criteria) this;
        }

        public Criteria andPIdEqualTo(int value) {
            addCriterion("P_ID =", value, "pId");
            return (Criteria) this;
        }

        public Criteria andPIdNotEqualTo(int value) {
            addCriterion("P_ID <>", value, "pId");
            return (Criteria) this;
        }

        public Criteria andPIdGreaterThan(int value) {
            addCriterion("P_ID >", value, "pId");
            return (Criteria) this;
        }

        public Criteria andPIdGreaterThanOrEqualTo(int value) {
            addCriterion("P_ID >=", value, "pId");
            return (Criteria) this;
        }

        public Criteria andPIdLessThan(int value) {
            addCriterion("P_ID <", value, "pId");
            return (Criteria) this;
        }

        public Criteria andPIdLessThanOrEqualTo(int value) {
            addCriterion("P_ID <=", value, "pId");
            return (Criteria) this;
        }

        public Criteria andPIdIn(List<Integer> values) {
            addCriterion("P_ID in", values, "pId");
            return (Criteria) this;
        }

        public Criteria andPIdNotIn(List<Integer> values) {
            addCriterion("P_ID not in", values, "pId");
            return (Criteria) this;
        }

        public Criteria andPIdBetween(int value1, int value2) {
            addCriterion("P_ID between", value1, value2, "pId");
            return (Criteria) this;
        }

        public Criteria andPIdNotBetween(int value1, int value2) {
            addCriterion("P_ID not between", value1, value2, "pId");
            return (Criteria) this;
        }

        public Criteria andCIdIsNull() {
            addCriterion("C_ID is null");
            return (Criteria) this;
        }

        public Criteria andCIdIsNotNull() {
            addCriterion("C_ID is not null");
            return (Criteria) this;
        }

        public Criteria andCIdEqualTo(BigDecimal value) {
            addCriterion("C_ID =", value, "cId");
            return (Criteria) this;
        }

        public Criteria andCIdNotEqualTo(BigDecimal value) {
            addCriterion("C_ID <>", value, "cId");
            return (Criteria) this;
        }

        public Criteria andCIdGreaterThan(BigDecimal value) {
            addCriterion("C_ID >", value, "cId");
            return (Criteria) this;
        }

        public Criteria andCIdGreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("C_ID >=", value, "cId");
            return (Criteria) this;
        }

        public Criteria andCIdLessThan(BigDecimal value) {
            addCriterion("C_ID <", value, "cId");
            return (Criteria) this;
        }

        public Criteria andCIdLessThanOrEqualTo(BigDecimal value) {
            addCriterion("C_ID <=", value, "cId");
            return (Criteria) this;
        }

        public Criteria andCIdIn(List<BigDecimal> values) {
            addCriterion("C_ID in", values, "cId");
            return (Criteria) this;
        }

        public Criteria andCIdNotIn(List<BigDecimal> values) {
            addCriterion("C_ID not in", values, "cId");
            return (Criteria) this;
        }

        public Criteria andCIdBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("C_ID between", value1, value2, "cId");
            return (Criteria) this;
        }

        public Criteria andCIdNotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("C_ID not between", value1, value2, "cId");
            return (Criteria) this;
        }

        public Criteria andPNameIsNull() {
            addCriterion("P_NAME is null");
            return (Criteria) this;
        }

        public Criteria andPNameIsNotNull() {
            addCriterion("P_NAME is not null");
            return (Criteria) this;
        }

        public Criteria andPNameEqualTo(String value) {
            addCriterion("P_NAME =", value, "pName");
            return (Criteria) this;
        }

        public Criteria andPNameNotEqualTo(String value) {
            addCriterion("P_NAME <>", value, "pName");
            return (Criteria) this;
        }

        public Criteria andPNameGreaterThan(String value) {
            addCriterion("P_NAME >", value, "pName");
            return (Criteria) this;
        }

        public Criteria andPNameGreaterThanOrEqualTo(String value) {
            addCriterion("P_NAME >=", value, "pName");
            return (Criteria) this;
        }

        public Criteria andPNameLessThan(String value) {
            addCriterion("P_NAME <", value, "pName");
            return (Criteria) this;
        }

        public Criteria andPNameLessThanOrEqualTo(String value) {
            addCriterion("P_NAME <=", value, "pName");
            return (Criteria) this;
        }

        public Criteria andPNameLike(String value) {
            addCriterion("P_NAME like", value, "pName");
            return (Criteria) this;
        }

        public Criteria andPNameNotLike(String value) {
            addCriterion("P_NAME not like", value, "pName");
            return (Criteria) this;
        }

        public Criteria andPNameIn(List<String> values) {
            addCriterion("P_NAME in", values, "pName");
            return (Criteria) this;
        }

        public Criteria andPNameNotIn(List<String> values) {
            addCriterion("P_NAME not in", values, "pName");
            return (Criteria) this;
        }

        public Criteria andPNameBetween(String value1, String value2) {
            addCriterion("P_NAME between", value1, value2, "pName");
            return (Criteria) this;
        }

        public Criteria andPNameNotBetween(String value1, String value2) {
            addCriterion("P_NAME not between", value1, value2, "pName");
            return (Criteria) this;
        }

        public Criteria andPDescIsNull() {
            addCriterion("P_DESC is null");
            return (Criteria) this;
        }

        public Criteria andPDescIsNotNull() {
            addCriterion("P_DESC is not null");
            return (Criteria) this;
        }

        public Criteria andPDescEqualTo(String value) {
            addCriterion("P_DESC =", value, "pDesc");
            return (Criteria) this;
        }

        public Criteria andPDescNotEqualTo(String value) {
            addCriterion("P_DESC <>", value, "pDesc");
            return (Criteria) this;
        }

        public Criteria andPDescGreaterThan(String value) {
            addCriterion("P_DESC >", value, "pDesc");
            return (Criteria) this;
        }

        public Criteria andPDescGreaterThanOrEqualTo(String value) {
            addCriterion("P_DESC >=", value, "pDesc");
            return (Criteria) this;
        }

        public Criteria andPDescLessThan(String value) {
            addCriterion("P_DESC <", value, "pDesc");
            return (Criteria) this;
        }

        public Criteria andPDescLessThanOrEqualTo(String value) {
            addCriterion("P_DESC <=", value, "pDesc");
            return (Criteria) this;
        }

        public Criteria andPDescLike(String value) {
            addCriterion("P_DESC like", value, "pDesc");
            return (Criteria) this;
        }

        public Criteria andPDescNotLike(String value) {
            addCriterion("P_DESC not like", value, "pDesc");
            return (Criteria) this;
        }

        public Criteria andPDescIn(List<String> values) {
            addCriterion("P_DESC in", values, "pDesc");
            return (Criteria) this;
        }

        public Criteria andPDescNotIn(List<String> values) {
            addCriterion("P_DESC not in", values, "pDesc");
            return (Criteria) this;
        }

        public Criteria andPDescBetween(String value1, String value2) {
            addCriterion("P_DESC between", value1, value2, "pDesc");
            return (Criteria) this;
        }

        public Criteria andPDescNotBetween(String value1, String value2) {
            addCriterion("P_DESC not between", value1, value2, "pDesc");
            return (Criteria) this;
        }

        public Criteria andPImgIsNull() {
            addCriterion("P_IMG is null");
            return (Criteria) this;
        }

        public Criteria andPImgIsNotNull() {
            addCriterion("P_IMG is not null");
            return (Criteria) this;
        }

        public Criteria andPImgEqualTo(String value) {
            addCriterion("P_IMG =", value, "pImg");
            return (Criteria) this;
        }

        public Criteria andPImgNotEqualTo(String value) {
            addCriterion("P_IMG <>", value, "pImg");
            return (Criteria) this;
        }

        public Criteria andPImgGreaterThan(String value) {
            addCriterion("P_IMG >", value, "pImg");
            return (Criteria) this;
        }

        public Criteria andPImgGreaterThanOrEqualTo(String value) {
            addCriterion("P_IMG >=", value, "pImg");
            return (Criteria) this;
        }

        public Criteria andPImgLessThan(String value) {
            addCriterion("P_IMG <", value, "pImg");
            return (Criteria) this;
        }

        public Criteria andPImgLessThanOrEqualTo(String value) {
            addCriterion("P_IMG <=", value, "pImg");
            return (Criteria) this;
        }

        public Criteria andPImgLike(String value) {
            addCriterion("P_IMG like", value, "pImg");
            return (Criteria) this;
        }

        public Criteria andPImgNotLike(String value) {
            addCriterion("P_IMG not like", value, "pImg");
            return (Criteria) this;
        }

        public Criteria andPImgIn(List<String> values) {
            addCriterion("P_IMG in", values, "pImg");
            return (Criteria) this;
        }

        public Criteria andPImgNotIn(List<String> values) {
            addCriterion("P_IMG not in", values, "pImg");
            return (Criteria) this;
        }

        public Criteria andPImgBetween(String value1, String value2) {
            addCriterion("P_IMG between", value1, value2, "pImg");
            return (Criteria) this;
        }

        public Criteria andPImgNotBetween(String value1, String value2) {
            addCriterion("P_IMG not between", value1, value2, "pImg");
            return (Criteria) this;
        }

        public Criteria andPPriceIsNull() {
            addCriterion("P_PRICE is null");
            return (Criteria) this;
        }

        public Criteria andPPriceIsNotNull() {
            addCriterion("P_PRICE is not null");
            return (Criteria) this;
        }

        public Criteria andPPriceEqualTo(BigDecimal value) {
            addCriterion("P_PRICE =", value, "pPrice");
            return (Criteria) this;
        }

        public Criteria andPPriceNotEqualTo(BigDecimal value) {
            addCriterion("P_PRICE <>", value, "pPrice");
            return (Criteria) this;
        }

        public Criteria andPPriceGreaterThan(BigDecimal value) {
            addCriterion("P_PRICE >", value, "pPrice");
            return (Criteria) this;
        }

        public Criteria andPPriceGreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("P_PRICE >=", value, "pPrice");
            return (Criteria) this;
        }

        public Criteria andPPriceLessThan(BigDecimal value) {
            addCriterion("P_PRICE <", value, "pPrice");
            return (Criteria) this;
        }

        public Criteria andPPriceLessThanOrEqualTo(BigDecimal value) {
            addCriterion("P_PRICE <=", value, "pPrice");
            return (Criteria) this;
        }

        public Criteria andPPriceIn(List<BigDecimal> values) {
            addCriterion("P_PRICE in", values, "pPrice");
            return (Criteria) this;
        }

        public Criteria andPPriceNotIn(List<BigDecimal> values) {
            addCriterion("P_PRICE not in", values, "pPrice");
            return (Criteria) this;
        }

        public Criteria andPPriceBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("P_PRICE between", value1, value2, "pPrice");
            return (Criteria) this;
        }

        public Criteria andPPriceNotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("P_PRICE not between", value1, value2, "pPrice");
            return (Criteria) this;
        }

        public Criteria andPCountIsNull() {
            addCriterion("P_COUNT is null");
            return (Criteria) this;
        }

        public Criteria andPCountIsNotNull() {
            addCriterion("P_COUNT is not null");
            return (Criteria) this;
        }

        public Criteria andPCountEqualTo(Double value) {
            addCriterion("P_COUNT =", value, "pCount");
            return (Criteria) this;
        }

        public Criteria andPCountNotEqualTo(Double value) {
            addCriterion("P_COUNT <>", value, "pCount");
            return (Criteria) this;
        }

        public Criteria andPCountGreaterThan(Double value) {
            addCriterion("P_COUNT >", value, "pCount");
            return (Criteria) this;
        }

        public Criteria andPCountGreaterThanOrEqualTo(Double value) {
            addCriterion("P_COUNT >=", value, "pCount");
            return (Criteria) this;
        }

        public Criteria andPCountLessThan(Double value) {
            addCriterion("P_COUNT <", value, "pCount");
            return (Criteria) this;
        }

        public Criteria andPCountLessThanOrEqualTo(Double value) {
            addCriterion("P_COUNT <=", value, "pCount");
            return (Criteria) this;
        }

        public Criteria andPCountIn(List<Double> values) {
            addCriterion("P_COUNT in", values, "pCount");
            return (Criteria) this;
        }

        public Criteria andPCountNotIn(List<Double> values) {
            addCriterion("P_COUNT not in", values, "pCount");
            return (Criteria) this;
        }

        public Criteria andPCountBetween(Double value1, Double value2) {
            addCriterion("P_COUNT between", value1, value2, "pCount");
            return (Criteria) this;
        }

        public Criteria andPCountNotBetween(Double value1, Double value2) {
            addCriterion("P_COUNT not between", value1, value2, "pCount");
            return (Criteria) this;
        }

        public Criteria andPCommentIsNull() {
            addCriterion("P_COMMENT is null");
            return (Criteria) this;
        }

        public Criteria andPCommentIsNotNull() {
            addCriterion("P_COMMENT is not null");
            return (Criteria) this;
        }

        public Criteria andPCommentEqualTo(String value) {
            addCriterion("P_COMMENT =", value, "pComment");
            return (Criteria) this;
        }

        public Criteria andPCommentNotEqualTo(String value) {
            addCriterion("P_COMMENT <>", value, "pComment");
            return (Criteria) this;
        }

        public Criteria andPCommentGreaterThan(String value) {
            addCriterion("P_COMMENT >", value, "pComment");
            return (Criteria) this;
        }

        public Criteria andPCommentGreaterThanOrEqualTo(String value) {
            addCriterion("P_COMMENT >=", value, "pComment");
            return (Criteria) this;
        }

        public Criteria andPCommentLessThan(String value) {
            addCriterion("P_COMMENT <", value, "pComment");
            return (Criteria) this;
        }

        public Criteria andPCommentLessThanOrEqualTo(String value) {
            addCriterion("P_COMMENT <=", value, "pComment");
            return (Criteria) this;
        }

        public Criteria andPCommentLike(String value) {
            addCriterion("P_COMMENT like", value, "pComment");
            return (Criteria) this;
        }

        public Criteria andPCommentNotLike(String value) {
            addCriterion("P_COMMENT not like", value, "pComment");
            return (Criteria) this;
        }

        public Criteria andPCommentIn(List<String> values) {
            addCriterion("P_COMMENT in", values, "pComment");
            return (Criteria) this;
        }

        public Criteria andPCommentNotIn(List<String> values) {
            addCriterion("P_COMMENT not in", values, "pComment");
            return (Criteria) this;
        }

        public Criteria andPCommentBetween(String value1, String value2) {
            addCriterion("P_COMMENT between", value1, value2, "pComment");
            return (Criteria) this;
        }

        public Criteria andPCommentNotBetween(String value1, String value2) {
            addCriterion("P_COMMENT not between", value1, value2, "pComment");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}