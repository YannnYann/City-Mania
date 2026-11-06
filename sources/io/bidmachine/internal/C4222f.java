package io.bidmachine.internal;

import android.content.Context;
import com.explorestack.protobuf.ProtocolStringList;
import com.explorestack.protobuf.Struct;
import io.bidmachine.analytics.AnalyticsConfig;
import io.bidmachine.analytics.BidMachineAnalytics;
import io.bidmachine.analytics.Filter;
import io.bidmachine.analytics.MonitorConfig;
import io.bidmachine.analytics.ReaderConfig;
import io.bidmachine.protobuf.InitResponse;
import io.bidmachine.protobuf.sdk.Configuration;
import io.bidmachine.protobuf.sdk.Monitor;
import io.bidmachine.protobuf.sdk.Reader;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;

/* JADX INFO: renamed from: io.bidmachine.internal.f, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C4222f {
    public static final C4222f a = new C4222f();

    /* JADX INFO: renamed from: io.bidmachine.internal.f$a */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;
        public static final /* synthetic */ int[] $EnumSwitchMapping$2;
        public static final /* synthetic */ int[] $EnumSwitchMapping$3;

        static {
            int[] iArr = new int[Monitor.FilterExpression.NodeCase.values().length];
            try {
                iArr[Monitor.FilterExpression.NodeCase.ALL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Monitor.FilterExpression.NodeCase.ANY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Monitor.FilterExpression.NodeCase.RULE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[Monitor.Operator.values().length];
            try {
                iArr2[Monitor.Operator.IN.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[Monitor.Operator.NOT_IN.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[Monitor.Operator.EQ.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[Monitor.Operator.NEQ.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr2[Monitor.Operator.EXISTS.ordinal()] = 5;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr2[Monitor.Operator.NOT_EXISTS.ordinal()] = 6;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr2[Monitor.Operator.GREATER_THAN.ordinal()] = 7;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr2[Monitor.Operator.GREATER_THAN_OR_EQUAL.ordinal()] = 8;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr2[Monitor.Operator.LESS_THAN.ordinal()] = 9;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr2[Monitor.Operator.LESS_THAN_OR_EQUAL.ordinal()] = 10;
            } catch (NoSuchFieldError unused13) {
            }
            $EnumSwitchMapping$1 = iArr2;
            int[] iArr3 = new int[Monitor.MissingBehavior.values().length];
            try {
                iArr3[Monitor.MissingBehavior.PASS.ordinal()] = 1;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr3[Monitor.MissingBehavior.FAIL.ordinal()] = 2;
            } catch (NoSuchFieldError unused15) {
            }
            $EnumSwitchMapping$2 = iArr3;
            int[] iArr4 = new int[Monitor.Value.KindCase.values().length];
            try {
                iArr4[Monitor.Value.KindCase.STRING_VALUE.ordinal()] = 1;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr4[Monitor.Value.KindCase.BOOL_VALUE.ordinal()] = 2;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr4[Monitor.Value.KindCase.INT_VALUE.ordinal()] = 3;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                iArr4[Monitor.Value.KindCase.DOUBLE_VALUE.ordinal()] = 4;
            } catch (NoSuchFieldError unused19) {
            }
            $EnumSwitchMapping$3 = iArr4;
        }
    }

    public static final void a(Context context, String currentSessionId, InitResponse initResponse, String initResponseSessionId) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(currentSessionId, "currentSessionId");
        Intrinsics.checkNotNullParameter(initResponse, "initResponse");
        Intrinsics.checkNotNullParameter(initResponseSessionId, "initResponseSessionId");
        try {
            if (initResponse.hasSdkAnalyticConfigV2()) {
                Configuration sdkAnalyticConfigV2 = initResponse.getSdkAnalyticConfigV2();
                List<Monitor.Configuration> monitorsList = sdkAnalyticConfigV2.getMonitorsList();
                Intrinsics.checkNotNullExpressionValue(monitorsList, "sdkAnalyticConfig.monitorsList");
                ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(monitorsList, 10));
                for (Monitor.Configuration it : monitorsList) {
                    C4222f c4222f = a;
                    Intrinsics.checkNotNullExpressionValue(it, "it");
                    arrayList.add(c4222f.a(it));
                }
                List<Reader.Configuration> readersList = sdkAnalyticConfigV2.getReadersList();
                Intrinsics.checkNotNullExpressionValue(readersList, "sdkAnalyticConfig.readersList");
                ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(readersList, 10));
                for (Reader.Configuration it2 : readersList) {
                    C4222f c4222f2 = a;
                    Intrinsics.checkNotNullExpressionValue(it2, "it");
                    arrayList2.add(c4222f2.a(it2));
                }
                Struct privateExtras = initResponse.getExtras().getPrivate();
                String bpk = sdkAnalyticConfigV2.getBpk().getValue();
                Intrinsics.checkNotNullExpressionValue(bpk, "bpk");
                Intrinsics.checkNotNullExpressionValue(privateExtras, "privateExtras");
                AnalyticsConfig analyticsConfig = new AnalyticsConfig(initResponseSessionId, arrayList, arrayList2, bpk, privateExtras);
                BidMachineAnalytics bidMachineAnalytics = BidMachineAnalytics.INSTANCE;
                bidMachineAnalytics.configure(context, analyticsConfig);
                if (Intrinsics.areEqual(currentSessionId, initResponseSessionId)) {
                    return;
                }
                bidMachineAnalytics.configure(context, new AnalyticsConfig(currentSessionId, arrayList, arrayList2, bpk, privateExtras));
            }
        } catch (Throwable unused) {
        }
    }

    public final MonitorConfig a(Monitor.Configuration configuration) {
        Filter filterA;
        Intrinsics.checkNotNullParameter(configuration, "<this>");
        boolean value = configuration.hasShouldReport() ? configuration.getShouldReport().getValue() : false;
        MonitorConfig.ConfigExtension configExtensionA = null;
        if (configuration.hasFilter()) {
            Monitor.EventFilter filter = configuration.getFilter();
            Intrinsics.checkNotNullExpressionValue(filter, "filter");
            filterA = a(filter);
        } else {
            filterA = null;
        }
        if (configuration.hasImpExtension()) {
            Monitor.Configuration.ImpExtension impExtension = configuration.getImpExtension();
            Intrinsics.checkNotNullExpressionValue(impExtension, "impExtension");
            configExtensionA = a(impExtension);
        } else if (configuration.hasGenExtension()) {
            Monitor.Configuration.GenericExtension genExtension = configuration.getGenExtension();
            Intrinsics.checkNotNullExpressionValue(genExtension, "genExtension");
            configExtensionA = a(genExtension);
        }
        MonitorConfig.ConfigExtension configExtension = configExtensionA;
        String value2 = configuration.getName().getValue();
        Intrinsics.checkNotNullExpressionValue(value2, "name.value");
        String value3 = configuration.getUrl().getValue();
        Intrinsics.checkNotNullExpressionValue(value3, "url.value");
        return new MonitorConfig(value2, value3, configuration.getBatchSize().getValue(), configuration.getInterval().getValue(), value, filterA, configExtension);
    }

    public final ReaderConfig a(Reader.Configuration configuration) {
        Intrinsics.checkNotNullParameter(configuration, "<this>");
        boolean value = configuration.hasUniqueOnly() ? configuration.getUniqueOnly().getValue() : true;
        String value2 = configuration.getName().getValue();
        Intrinsics.checkNotNullExpressionValue(value2, "name.value");
        String value3 = configuration.getUrl().getValue();
        Intrinsics.checkNotNullExpressionValue(value3, "url.value");
        long value4 = configuration.getUpdateInterval().getValue();
        List<Reader.Rule> rulesList = configuration.getRulesList();
        Intrinsics.checkNotNullExpressionValue(rulesList, "rulesList");
        ArrayList arrayList = new ArrayList();
        for (Reader.Rule it : rulesList) {
            C4222f c4222f = a;
            Intrinsics.checkNotNullExpressionValue(it, "it");
            ReaderConfig.Rule ruleA = c4222f.a(it);
            if (ruleA != null) {
                arrayList.add(ruleA);
            }
        }
        return new ReaderConfig(value2, value3, value4, value, arrayList);
    }

    public final ReaderConfig.Rule a(Reader.Rule rule) {
        Intrinsics.checkNotNullParameter(rule, "<this>");
        if (rule.hasGeneralRule()) {
            Reader.Rule.GeneralRule generalRule = rule.getGeneralRule();
            String value = generalRule.getTag().getValue();
            Intrinsics.checkNotNullExpressionValue(value, "generalRule.tag.value");
            String value2 = generalRule.getPath().getValue();
            Intrinsics.checkNotNullExpressionValue(value2, "generalRule.path.value");
            return new ReaderConfig.Rule.GeneralRule(value, value2);
        }
        if (!rule.hasPurRule()) {
            return null;
        }
        Reader.Rule.PurRule purRule = rule.getPurRule();
        String value3 = purRule.hasQuery() ? purRule.getQuery().getValue() : null;
        boolean value4 = purRule.hasShouldReport() ? purRule.getShouldReport().getValue() : true;
        String value5 = purRule.getTag().getValue();
        Intrinsics.checkNotNullExpressionValue(value5, "purRule.tag.value");
        String value6 = purRule.getPath().getValue();
        Intrinsics.checkNotNullExpressionValue(value6, "purRule.path.value");
        return new ReaderConfig.Rule.PurRule(value5, value6, value3, value4);
    }

    public final Filter a(Monitor.EventFilter eventFilter) {
        Intrinsics.checkNotNullParameter(eventFilter, "<this>");
        if (!eventFilter.hasExpr()) {
            return null;
        }
        Monitor.FilterExpression expr = eventFilter.getExpr();
        Intrinsics.checkNotNullExpressionValue(expr, "expr");
        Filter.Expression expressionA = a(expr);
        if (expressionA == null) {
            return null;
        }
        return new Filter(expressionA);
    }

    public final Filter.Expression a(Monitor.FilterExpression filterExpression) {
        Intrinsics.checkNotNullParameter(filterExpression, "<this>");
        Monitor.FilterExpression.NodeCase nodeCase = filterExpression.getNodeCase();
        int i = nodeCase == null ? -1 : a.$EnumSwitchMapping$0[nodeCase.ordinal()];
        if (i == 1) {
            if (!filterExpression.hasAll()) {
                return null;
            }
            Monitor.All all = filterExpression.getAll();
            Intrinsics.checkNotNullExpressionValue(all, "all");
            return a(all);
        }
        if (i != 2) {
            if (i != 3 || !filterExpression.hasRule()) {
                return null;
            }
            Monitor.Rule rule = filterExpression.getRule();
            Intrinsics.checkNotNullExpressionValue(rule, "rule");
            return a(rule);
        }
        if (!filterExpression.hasAny()) {
            return null;
        }
        Monitor.Any any = filterExpression.getAny();
        Intrinsics.checkNotNullExpressionValue(any, "any");
        return a(any);
    }

    public final Filter.Expression a(Monitor.All all) {
        Intrinsics.checkNotNullParameter(all, "<this>");
        ArrayList arrayList = new ArrayList();
        int itemsCount = all.getItemsCount();
        for (int i = 0; i < itemsCount; i++) {
            Monitor.FilterExpression items = all.getItems(i);
            Intrinsics.checkNotNullExpressionValue(items, "getItems(i)");
            Filter.Expression expressionA = a(items);
            if (expressionA == null) {
                return null;
            }
            arrayList.add(expressionA);
        }
        return new Filter.Expression.AllOf(arrayList);
    }

    public final Filter.Expression a(Monitor.Any any) {
        Intrinsics.checkNotNullParameter(any, "<this>");
        ArrayList arrayList = new ArrayList();
        int itemsCount = any.getItemsCount();
        for (int i = 0; i < itemsCount; i++) {
            Monitor.FilterExpression items = any.getItems(i);
            Intrinsics.checkNotNullExpressionValue(items, "getItems(i)");
            Filter.Expression expressionA = a(items);
            if (expressionA == null) {
                return null;
            }
            arrayList.add(expressionA);
        }
        return new Filter.Expression.AnyOf(arrayList);
    }

    public final Filter.Expression a(Monitor.Rule rule) {
        Intrinsics.checkNotNullParameter(rule, "<this>");
        if (rule.getPathCount() == 0) {
            return null;
        }
        ProtocolStringList pathList = rule.getPathList();
        Intrinsics.checkNotNullExpressionValue(pathList, "pathList");
        List list = CollectionsKt___CollectionsKt.toList(pathList);
        if (list.isEmpty()) {
            return null;
        }
        Monitor.Operator op = rule.getOp();
        Intrinsics.checkNotNullExpressionValue(op, "op");
        Filter.Operator operatorA = a(op);
        if (operatorA == null) {
            return null;
        }
        Monitor.MissingBehavior missing = rule.getMissing();
        Intrinsics.checkNotNullExpressionValue(missing, "missing");
        Filter.MissingBehavior missingBehaviorA = a(missing);
        List<Monitor.Value> protoValues = rule.getValuesList();
        if (operatorA != Filter.Operator.EXISTS && operatorA != Filter.Operator.NOT_EXISTS) {
            if (protoValues.isEmpty()) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            for (Monitor.Value value : protoValues) {
                Intrinsics.checkNotNullExpressionValue(value, "value");
                Filter.Value valueA = a(value);
                if (valueA == null) {
                    return null;
                }
                arrayList.add(valueA);
            }
            return new Filter.Expression.Rule(list, operatorA, arrayList, missingBehaviorA);
        }
        Intrinsics.checkNotNullExpressionValue(protoValues, "protoValues");
        if (protoValues.isEmpty()) {
            return new Filter.Expression.Rule(list, operatorA, CollectionsKt__CollectionsKt.emptyList(), missingBehaviorA);
        }
        return null;
    }

    public final Filter.Operator a(Monitor.Operator operator) {
        Intrinsics.checkNotNullParameter(operator, "<this>");
        switch (a.$EnumSwitchMapping$1[operator.ordinal()]) {
            case 1:
                return Filter.Operator.IN;
            case 2:
                return Filter.Operator.NOT_IN;
            case 3:
                return Filter.Operator.EQ;
            case 4:
                return Filter.Operator.NEQ;
            case 5:
                return Filter.Operator.EXISTS;
            case 6:
                return Filter.Operator.NOT_EXISTS;
            case 7:
                return Filter.Operator.GT;
            case 8:
                return Filter.Operator.GTE;
            case 9:
                return Filter.Operator.LT;
            case 10:
                return Filter.Operator.LTE;
            default:
                return null;
        }
    }

    public final Filter.MissingBehavior a(Monitor.MissingBehavior missingBehavior) {
        Intrinsics.checkNotNullParameter(missingBehavior, "<this>");
        int i = a.$EnumSwitchMapping$2[missingBehavior.ordinal()];
        if (i == 1) {
            return Filter.MissingBehavior.PASS;
        }
        if (i != 2) {
            return Filter.MissingBehavior.FAIL;
        }
        return Filter.MissingBehavior.FAIL;
    }

    public final Filter.Value a(Monitor.Value value) {
        Intrinsics.checkNotNullParameter(value, "<this>");
        Monitor.Value.KindCase kindCase = value.getKindCase();
        int i = kindCase == null ? -1 : a.$EnumSwitchMapping$3[kindCase.ordinal()];
        if (i == 1) {
            String stringValue = value.getStringValue();
            Intrinsics.checkNotNullExpressionValue(stringValue, "stringValue");
            return Filter.Value.StringValue.m2533boximpl(Filter.Value.StringValue.m2534constructorimpl(stringValue));
        }
        if (i == 2) {
            return Filter.Value.BoolValue.m2510boximpl(Filter.Value.BoolValue.m2511constructorimpl(value.getBoolValue()));
        }
        if (i == 3) {
            return Filter.Value.LongValue.m2525boximpl(Filter.Value.LongValue.m2526constructorimpl(value.getIntValue()));
        }
        if (i != 4) {
            return null;
        }
        return Filter.Value.DoubleValue.m2517boximpl(Filter.Value.DoubleValue.m2518constructorimpl(value.getDoubleValue()));
    }

    public final MonitorConfig.ConfigExtension a(Monitor.Configuration.ImpExtension impExtension) {
        long duration;
        Intrinsics.checkNotNullParameter(impExtension, "<this>");
        String value = impExtension.hasIaaQuery() ? impExtension.getIaaQuery().getValue() : null;
        if (impExtension.hasTtlSeconds()) {
            Duration.Companion companion = Duration.Companion;
            duration = DurationKt.toDuration(impExtension.getTtlSeconds().getValue(), DurationUnit.SECONDS);
        } else {
            Duration.Companion companion2 = Duration.Companion;
            duration = DurationKt.toDuration(Duration.m2883getInWholeSecondsimpl(DurationKt.toDuration(90, DurationUnit.DAYS)), DurationUnit.SECONDS);
        }
        return new MonitorConfig.ImpConfigExtension(value, duration, null);
    }

    public final MonitorConfig.ConfigExtension a(Monitor.Configuration.GenericExtension genericExtension) {
        Intrinsics.checkNotNullParameter(genericExtension, "<this>");
        return new MonitorConfig.GenericConfigExtension(genericExtension.hasConfig() ? genericExtension.getConfig().getValue() : null);
    }
}
