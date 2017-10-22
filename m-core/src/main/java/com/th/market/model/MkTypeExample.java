package com.th.market.model;

import java.util.ArrayList;
import java.util.List;

public class MkTypeExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public MkTypeExample() {
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

        public Criteria andTIdIsNull() {
            addCriterion("T_ID is null");
            return (Criteria) this;
        }

        public Criteria andTIdIsNotNull() {
            addCriterion("T_ID is not null");
            return (Criteria) this;
        }

        public Criteria andTIdEqualTo(int value) {
            addCriterion("T_ID =", value, "tId");
            return (Criteria) this;
        }

        public Criteria andTIdNotEqualTo(int value) {
            addCriterion("T_ID <>", value, "tId");
            return (Criteria) this;
        }

        public Criteria andTIdGreaterThan(int value) {
            addCriterion("T_ID >", value, "tId");
            return (Criteria) this;
        }

        public Criteria andTIdGreaterThanOrEqualTo(int value) {
            addCriterion("T_ID >=", value, "tId");
            return (Criteria) this;
        }

        public Criteria andTIdLessThan(int value) {
            addCriterion("T_ID <", value, "tId");
            return (Criteria) this;
        }

        public Criteria andTIdLessThanOrEqualTo(int value) {
            addCriterion("T_ID <=", value, "tId");
            return (Criteria) this;
        }

        public Criteria andTIdIn(List<Integer> values) {
            addCriterion("T_ID in", values, "tId");
            return (Criteria) this;
        }

        public Criteria andTIdNotIn(List<Integer> values) {
            addCriterion("T_ID not in", values, "tId");
            return (Criteria) this;
        }

        public Criteria andTIdBetween(int value1, int value2) {
            addCriterion("T_ID between", value1, value2, "tId");
            return (Criteria) this;
        }

        public Criteria andTIdNotBetween(int value1, int value2) {
            addCriterion("T_ID not between", value1, value2, "tId");
            return (Criteria) this;
        }

        public Criteria andTNameIsNull() {
            addCriterion("T_NAME is null");
            return (Criteria) this;
        }

        public Criteria andTNameIsNotNull() {
            addCriterion("T_NAME is not null");
            return (Criteria) this;
        }

        public Criteria andTNameEqualTo(String value) {
            addCriterion("T_NAME =", value, "tName");
            return (Criteria) this;
        }

        public Criteria andTNameNotEqualTo(String value) {
            addCriterion("T_NAME <>", value, "tName");
            return (Criteria) this;
        }

        public Criteria andTNameGreaterThan(String value) {
            addCriterion("T_NAME >", value, "tName");
            return (Criteria) this;
        }

        public Criteria andTNameGreaterThanOrEqualTo(String value) {
            addCriterion("T_NAME >=", value, "tName");
            return (Criteria) this;
        }

        public Criteria andTNameLessThan(String value) {
            addCriterion("T_NAME <", value, "tName");
            return (Criteria) this;
        }

        public Criteria andTNameLessThanOrEqualTo(String value) {
            addCriterion("T_NAME <=", value, "tName");
            return (Criteria) this;
        }

        public Criteria andTNameLike(String value) {
            addCriterion("T_NAME like", value, "tName");
            return (Criteria) this;
        }

        public Criteria andTNameNotLike(String value) {
            addCriterion("T_NAME not like", value, "tName");
            return (Criteria) this;
        }

        public Criteria andTNameIn(List<String> values) {
            addCriterion("T_NAME in", values, "tName");
            return (Criteria) this;
        }

        public Criteria andTNameNotIn(List<String> values) {
            addCriterion("T_NAME not in", values, "tName");
            return (Criteria) this;
        }

        public Criteria andTNameBetween(String value1, String value2) {
            addCriterion("T_NAME between", value1, value2, "tName");
            return (Criteria) this;
        }

        public Criteria andTNameNotBetween(String value1, String value2) {
            addCriterion("T_NAME not between", value1, value2, "tName");
            return (Criteria) this;
        }

        public Criteria andTDescIsNull() {
            addCriterion("T_DESC is null");
            return (Criteria) this;
        }

        public Criteria andTDescIsNotNull() {
            addCriterion("T_DESC is not null");
            return (Criteria) this;
        }

        public Criteria andTDescEqualTo(String value) {
            addCriterion("T_DESC =", value, "tDesc");
            return (Criteria) this;
        }

        public Criteria andTDescNotEqualTo(String value) {
            addCriterion("T_DESC <>", value, "tDesc");
            return (Criteria) this;
        }

        public Criteria andTDescGreaterThan(String value) {
            addCriterion("T_DESC >", value, "tDesc");
            return (Criteria) this;
        }

        public Criteria andTDescGreaterThanOrEqualTo(String value) {
            addCriterion("T_DESC >=", value, "tDesc");
            return (Criteria) this;
        }

        public Criteria andTDescLessThan(String value) {
            addCriterion("T_DESC <", value, "tDesc");
            return (Criteria) this;
        }

        public Criteria andTDescLessThanOrEqualTo(String value) {
            addCriterion("T_DESC <=", value, "tDesc");
            return (Criteria) this;
        }

        public Criteria andTDescLike(String value) {
            addCriterion("T_DESC like", value, "tDesc");
            return (Criteria) this;
        }

        public Criteria andTDescNotLike(String value) {
            addCriterion("T_DESC not like", value, "tDesc");
            return (Criteria) this;
        }

        public Criteria andTDescIn(List<String> values) {
            addCriterion("T_DESC in", values, "tDesc");
            return (Criteria) this;
        }

        public Criteria andTDescNotIn(List<String> values) {
            addCriterion("T_DESC not in", values, "tDesc");
            return (Criteria) this;
        }

        public Criteria andTDescBetween(String value1, String value2) {
            addCriterion("T_DESC between", value1, value2, "tDesc");
            return (Criteria) this;
        }

        public Criteria andTDescNotBetween(String value1, String value2) {
            addCriterion("T_DESC not between", value1, value2, "tDesc");
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