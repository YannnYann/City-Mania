package io.bidmachine.analytics;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class Filter {
    private final Expression a;

    public interface Expression {

        public static final class AllOf implements Expression {
            private final List a;

            public AllOf(List<? extends Expression> list) {
                this.a = list;
            }

            /* JADX WARN: Multi-variable type inference failed */
            public static /* synthetic */ AllOf copy$default(AllOf allOf, List list, int i, Object obj) {
                if ((i & 1) != 0) {
                    list = allOf.a;
                }
                return allOf.copy(list);
            }

            public final List<Expression> component1() {
                return this.a;
            }

            public final AllOf copy(List<? extends Expression> list) {
                return new AllOf(list);
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof AllOf) && Intrinsics.areEqual(this.a, ((AllOf) obj).a);
            }

            public final List<Expression> getExpressions() {
                return this.a;
            }

            public int hashCode() {
                return this.a.hashCode();
            }

            public String toString() {
                return "AllOf(expressions=" + this.a + ')';
            }
        }

        public static final class AnyOf implements Expression {
            private final List a;

            public AnyOf(List<? extends Expression> list) {
                this.a = list;
            }

            /* JADX WARN: Multi-variable type inference failed */
            public static /* synthetic */ AnyOf copy$default(AnyOf anyOf, List list, int i, Object obj) {
                if ((i & 1) != 0) {
                    list = anyOf.a;
                }
                return anyOf.copy(list);
            }

            public final List<Expression> component1() {
                return this.a;
            }

            public final AnyOf copy(List<? extends Expression> list) {
                return new AnyOf(list);
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof AnyOf) && Intrinsics.areEqual(this.a, ((AnyOf) obj).a);
            }

            public final List<Expression> getExpressions() {
                return this.a;
            }

            public int hashCode() {
                return this.a.hashCode();
            }

            public String toString() {
                return "AnyOf(expressions=" + this.a + ')';
            }
        }

        public static final class Rule implements Expression {
            private final List a;
            private final Operator b;
            private final List c;
            private final MissingBehavior d;

            public Rule(List<String> list, Operator operator, List<? extends Value> list2, MissingBehavior missingBehavior) {
                this.a = list;
                this.b = operator;
                this.c = list2;
                this.d = missingBehavior;
            }

            /* JADX WARN: Multi-variable type inference failed */
            public static /* synthetic */ Rule copy$default(Rule rule, List list, Operator operator, List list2, MissingBehavior missingBehavior, int i, Object obj) {
                if ((i & 1) != 0) {
                    list = rule.a;
                }
                if ((i & 2) != 0) {
                    operator = rule.b;
                }
                if ((i & 4) != 0) {
                    list2 = rule.c;
                }
                if ((i & 8) != 0) {
                    missingBehavior = rule.d;
                }
                return rule.copy(list, operator, list2, missingBehavior);
            }

            public final List<String> component1() {
                return this.a;
            }

            public final Operator component2() {
                return this.b;
            }

            public final List<Value> component3() {
                return this.c;
            }

            public final MissingBehavior component4() {
                return this.d;
            }

            public final Rule copy(List<String> list, Operator operator, List<? extends Value> list2, MissingBehavior missingBehavior) {
                return new Rule(list, operator, list2, missingBehavior);
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof Rule)) {
                    return false;
                }
                Rule rule = (Rule) obj;
                return Intrinsics.areEqual(this.a, rule.a) && this.b == rule.b && Intrinsics.areEqual(this.c, rule.c) && this.d == rule.d;
            }

            public final MissingBehavior getMissingBehavior() {
                return this.d;
            }

            public final Operator getOp() {
                return this.b;
            }

            public final List<String> getPath() {
                return this.a;
            }

            public final List<Value> getValues() {
                return this.c;
            }

            public int hashCode() {
                return (((((this.a.hashCode() * 31) + this.b.hashCode()) * 31) + this.c.hashCode()) * 31) + this.d.hashCode();
            }

            public String toString() {
                return "Rule(path=" + this.a + ", op=" + this.b + ", values=" + this.c + ", missingBehavior=" + this.d + ')';
            }
        }
    }

    public enum MissingBehavior {
        FAIL(false),
        PASS(true);

        private final boolean a;

        MissingBehavior(boolean z) {
            this.a = z;
        }

        public final boolean getValue() {
            return this.a;
        }
    }

    public enum Operator {
        IN,
        NOT_IN,
        EQ,
        NEQ,
        GT,
        GTE,
        LT,
        LTE,
        EXISTS,
        NOT_EXISTS
    }

    public interface Value {

        public static final class BoolValue implements Value {
            private final boolean a;

            private /* synthetic */ BoolValue(boolean z) {
                this.a = z;
            }

            /* JADX INFO: renamed from: box-impl, reason: not valid java name */
            public static final /* synthetic */ BoolValue m2510boximpl(boolean z) {
                return new BoolValue(z);
            }

            /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
            public static boolean m2511constructorimpl(boolean z) {
                return z;
            }

            /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
            public static boolean m2512equalsimpl(boolean z, Object obj) {
                return (obj instanceof BoolValue) && z == ((BoolValue) obj).m2516unboximpl();
            }

            /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
            public static final boolean m2513equalsimpl0(boolean z, boolean z2) {
                return z == z2;
            }

            /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
            public static int m2514hashCodeimpl(boolean z) {
                if (z) {
                    return 1;
                }
                return z ? 1 : 0;
            }

            /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
            public static String m2515toStringimpl(boolean z) {
                return "BoolValue(value=" + z + ')';
            }

            public boolean equals(Object obj) {
                return m2512equalsimpl(this.a, obj);
            }

            public final boolean getValue() {
                return this.a;
            }

            public int hashCode() {
                return m2514hashCodeimpl(this.a);
            }

            public String toString() {
                return m2515toStringimpl(this.a);
            }

            /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
            public final /* synthetic */ boolean m2516unboximpl() {
                return this.a;
            }
        }

        public static final class DoubleValue implements NumberValue {
            private final double a;

            private /* synthetic */ DoubleValue(double d) {
                this.a = d;
            }

            /* JADX INFO: renamed from: box-impl, reason: not valid java name */
            public static final /* synthetic */ DoubleValue m2517boximpl(double d) {
                return new DoubleValue(d);
            }

            /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
            public static double m2518constructorimpl(double d) {
                return d;
            }

            /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
            public static boolean m2519equalsimpl(double d, Object obj) {
                return (obj instanceof DoubleValue) && Double.compare(d, ((DoubleValue) obj).m2524unboximpl()) == 0;
            }

            /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
            public static final boolean m2520equalsimpl0(double d, double d2) {
                return Double.compare(d, d2) == 0;
            }

            /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
            public static int m2521hashCodeimpl(double d) {
                return Double.hashCode(d);
            }

            /* JADX INFO: renamed from: toDouble-impl, reason: not valid java name */
            public static double m2522toDoubleimpl(double d) {
                return d;
            }

            /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
            public static String m2523toStringimpl(double d) {
                return "DoubleValue(value=" + d + ')';
            }

            public boolean equals(Object obj) {
                return m2519equalsimpl(this.a, obj);
            }

            public final double getValue() {
                return this.a;
            }

            public int hashCode() {
                return m2521hashCodeimpl(this.a);
            }

            @Override // io.bidmachine.analytics.Filter.Value.NumberValue
            public double toDouble() {
                return m2522toDoubleimpl(this.a);
            }

            public String toString() {
                return m2523toStringimpl(this.a);
            }

            /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
            public final /* synthetic */ double m2524unboximpl() {
                return this.a;
            }
        }

        public static final class LongValue implements NumberValue {
            private final long a;

            private /* synthetic */ LongValue(long j) {
                this.a = j;
            }

            /* JADX INFO: renamed from: box-impl, reason: not valid java name */
            public static final /* synthetic */ LongValue m2525boximpl(long j) {
                return new LongValue(j);
            }

            /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
            public static long m2526constructorimpl(long j) {
                return j;
            }

            /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
            public static boolean m2527equalsimpl(long j, Object obj) {
                return (obj instanceof LongValue) && j == ((LongValue) obj).m2532unboximpl();
            }

            /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
            public static final boolean m2528equalsimpl0(long j, long j2) {
                return j == j2;
            }

            /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
            public static int m2529hashCodeimpl(long j) {
                return Long.hashCode(j);
            }

            /* JADX INFO: renamed from: toDouble-impl, reason: not valid java name */
            public static double m2530toDoubleimpl(long j) {
                return j;
            }

            /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
            public static String m2531toStringimpl(long j) {
                return "LongValue(value=" + j + ')';
            }

            public boolean equals(Object obj) {
                return m2527equalsimpl(this.a, obj);
            }

            public final long getValue() {
                return this.a;
            }

            public int hashCode() {
                return m2529hashCodeimpl(this.a);
            }

            @Override // io.bidmachine.analytics.Filter.Value.NumberValue
            public double toDouble() {
                return m2530toDoubleimpl(this.a);
            }

            public String toString() {
                return m2531toStringimpl(this.a);
            }

            /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
            public final /* synthetic */ long m2532unboximpl() {
                return this.a;
            }
        }

        public interface NumberValue extends Value, Comparable<NumberValue> {
            double toDouble();

            @Override // java.lang.Comparable
            default int compareTo(NumberValue numberValue) {
                return Double.compare(toDouble(), numberValue.toDouble());
            }
        }

        public static final class StringValue implements Value {
            private final String a;

            private /* synthetic */ StringValue(String str) {
                this.a = str;
            }

            /* JADX INFO: renamed from: box-impl, reason: not valid java name */
            public static final /* synthetic */ StringValue m2533boximpl(String str) {
                return new StringValue(str);
            }

            /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
            public static String m2534constructorimpl(String str) {
                return str;
            }

            /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
            public static boolean m2535equalsimpl(String str, Object obj) {
                return (obj instanceof StringValue) && Intrinsics.areEqual(str, ((StringValue) obj).m2539unboximpl());
            }

            /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
            public static final boolean m2536equalsimpl0(String str, String str2) {
                return Intrinsics.areEqual(str, str2);
            }

            /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
            public static int m2537hashCodeimpl(String str) {
                return str.hashCode();
            }

            /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
            public static String m2538toStringimpl(String str) {
                return "StringValue(value=" + str + ')';
            }

            public boolean equals(Object obj) {
                return m2535equalsimpl(this.a, obj);
            }

            public final String getValue() {
                return this.a;
            }

            public int hashCode() {
                return m2537hashCodeimpl(this.a);
            }

            public String toString() {
                return m2538toStringimpl(this.a);
            }

            /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
            public final /* synthetic */ String m2539unboximpl() {
                return this.a;
            }
        }
    }

    public Filter(Expression expression) {
        this.a = expression;
    }

    public static /* synthetic */ Filter copy$default(Filter filter, Expression expression, int i, Object obj) {
        if ((i & 1) != 0) {
            expression = filter.a;
        }
        return filter.copy(expression);
    }

    public final Expression component1() {
        return this.a;
    }

    public final Filter copy(Expression expression) {
        return new Filter(expression);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof Filter) && Intrinsics.areEqual(this.a, ((Filter) obj).a);
    }

    public final Expression getExpression() {
        return this.a;
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public String toString() {
        return "Filter(expression=" + this.a + ')';
    }
}
