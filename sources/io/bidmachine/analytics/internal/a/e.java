package io.bidmachine.analytics.internal.a;

import io.bidmachine.analytics.Filter;
import io.bidmachine.analytics.internal.I.g;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes4.dex */
public final class e {

    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Filter.Operator.values().length];
            try {
                iArr[Filter.Operator.EQ.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Filter.Operator.NEQ.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Filter.Operator.GT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[Filter.Operator.GTE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[Filter.Operator.LT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[Filter.Operator.LTE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[Filter.Operator.IN.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[Filter.Operator.NOT_IN.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public final boolean a(Filter filter, Map map) {
        return a(filter.getExpression(), map);
    }

    private final boolean a(Filter.Expression expression, Map map) {
        if (expression instanceof Filter.Expression.AllOf) {
            List<Filter.Expression> expressions = ((Filter.Expression.AllOf) expression).getExpressions();
            if ((expressions instanceof Collection) && expressions.isEmpty()) {
                return true;
            }
            Iterator<T> it = expressions.iterator();
            while (it.hasNext()) {
                if (!a((Filter.Expression) it.next(), map)) {
                    return false;
                }
            }
            return true;
        }
        if (!(expression instanceof Filter.Expression.AnyOf)) {
            if (expression instanceof Filter.Expression.Rule) {
                return a((Filter.Expression.Rule) expression, map);
            }
            throw new NoWhenBranchMatchedException();
        }
        List<Filter.Expression> expressions2 = ((Filter.Expression.AnyOf) expression).getExpressions();
        if ((expressions2 instanceof Collection) && expressions2.isEmpty()) {
            return false;
        }
        Iterator<T> it2 = expressions2.iterator();
        while (it2.hasNext()) {
            if (a((Filter.Expression) it2.next(), map)) {
                return true;
            }
        }
        return false;
    }

    public final boolean a(Filter filter) {
        return a(filter.getExpression());
    }

    private final boolean a(Filter.Expression expression) {
        if (expression instanceof Filter.Expression.AllOf) {
            List<Filter.Expression> expressions = ((Filter.Expression.AllOf) expression).getExpressions();
            if ((expressions instanceof Collection) && expressions.isEmpty()) {
                return true;
            }
            Iterator<T> it = expressions.iterator();
            while (it.hasNext()) {
                if (!a((Filter.Expression) it.next())) {
                    return false;
                }
            }
            return true;
        }
        if (expression instanceof Filter.Expression.AnyOf) {
            List<Filter.Expression> expressions2 = ((Filter.Expression.AnyOf) expression).getExpressions();
            if ((expressions2 instanceof Collection) && expressions2.isEmpty()) {
                return true;
            }
            Iterator<T> it2 = expressions2.iterator();
            while (it2.hasNext()) {
                if (!a((Filter.Expression) it2.next())) {
                    return false;
                }
            }
            return true;
        }
        if (expression instanceof Filter.Expression.Rule) {
            return a((Filter.Expression.Rule) expression);
        }
        throw new NoWhenBranchMatchedException();
    }

    /* JADX WARN: Removed duplicated region for block: B:89:0x015a A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final boolean a(io.bidmachine.analytics.Filter.Expression.Rule r6, java.util.Map r7) {
        /*
            Method dump skipped, instruction units count: 384
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.analytics.internal.a.e.a(io.bidmachine.analytics.Filter$Expression$Rule, java.util.Map):boolean");
    }

    private final Map a(List list, Map map) {
        if (list.isEmpty()) {
            return null;
        }
        int lastIndex = CollectionsKt__CollectionsKt.getLastIndex(list);
        int i = 0;
        Object obj = map;
        while (i < lastIndex) {
            Map map2 = obj instanceof Map ? (Map) obj : null;
            if (map2 == null) {
                return null;
            }
            Object obj2 = map2.get(g.b((String) list.get(i)));
            i++;
            obj = obj2;
        }
        if (obj instanceof Map) {
            return (Map) obj;
        }
        return null;
    }

    private final Filter.Value a(Object obj) {
        if (obj instanceof String) {
            return Filter.Value.StringValue.m2533boximpl(Filter.Value.StringValue.m2534constructorimpl(g.d((String) obj)));
        }
        if (obj instanceof Boolean) {
            return Filter.Value.BoolValue.m2510boximpl(Filter.Value.BoolValue.m2511constructorimpl(((Boolean) obj).booleanValue()));
        }
        if (obj instanceof Integer) {
            return Filter.Value.LongValue.m2525boximpl(Filter.Value.LongValue.m2526constructorimpl(((Number) obj).intValue()));
        }
        if (obj instanceof Long) {
            return Filter.Value.LongValue.m2525boximpl(Filter.Value.LongValue.m2526constructorimpl(((Number) obj).longValue()));
        }
        if (obj instanceof Float) {
            return Filter.Value.DoubleValue.m2517boximpl(Filter.Value.DoubleValue.m2518constructorimpl(((Number) obj).floatValue()));
        }
        if (obj instanceof Double) {
            return Filter.Value.DoubleValue.m2517boximpl(Filter.Value.DoubleValue.m2518constructorimpl(((Number) obj).doubleValue()));
        }
        return null;
    }

    private final boolean a(Filter.Value value, List list) {
        if (list.isEmpty()) {
            return true;
        }
        KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(value.getClass());
        if (!list.isEmpty()) {
            Iterator it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                if (!Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(((Filter.Value) it.next()).getClass()), orCreateKotlinClass)) {
                    if (!(value instanceof Filter.Value.NumberValue)) {
                        return false;
                    }
                    if (!list.isEmpty()) {
                        Iterator it2 = list.iterator();
                        while (it2.hasNext()) {
                            if (!(((Filter.Value) it2.next()) instanceof Filter.Value.NumberValue)) {
                                return false;
                            }
                        }
                    }
                }
            }
        }
        return true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private final boolean a(Filter.Expression.Rule rule) {
        if (rule.getPath().isEmpty()) {
            return false;
        }
        if (rule.getOp() != Filter.Operator.EXISTS && rule.getOp() != Filter.Operator.NOT_EXISTS) {
            if (rule.getValues().isEmpty()) {
                return false;
            }
            KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CollectionsKt___CollectionsKt.first((List) rule.getValues()).getClass());
            List<Filter.Value> values = rule.getValues();
            if (!(values instanceof Collection) || !values.isEmpty()) {
                Iterator<T> it = values.iterator();
                while (it.hasNext()) {
                    if (!Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(((Filter.Value) it.next()).getClass()), orCreateKotlinClass)) {
                        return false;
                    }
                }
            }
            switch (a.$EnumSwitchMapping$0[rule.getOp().ordinal()]) {
                case 1:
                case 2:
                    if (rule.getValues().size() == 1) {
                    }
                    break;
                case 3:
                case 4:
                case 5:
                case 6:
                    if (rule.getValues().size() != 1 || !(CollectionsKt___CollectionsKt.first((List) rule.getValues()) instanceof Filter.Value.NumberValue)) {
                    }
                    break;
                case 7:
                case 8:
                    if (!rule.getValues().isEmpty()) {
                    }
                    break;
            }
            return false;
        }
        return rule.getValues().isEmpty();
    }

    private final boolean a(Filter.Value value, Filter.Value value2) {
        if ((value instanceof Filter.Value.NumberValue) && (value2 instanceof Filter.Value.NumberValue)) {
            return ((Filter.Value.NumberValue) value).compareTo((Filter.Value.NumberValue) value2) == 0;
        }
        return Intrinsics.areEqual(value, value2);
    }
}
