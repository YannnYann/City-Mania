package io.bidmachine.analytics.internal.s;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import io.bidmachine.analytics.ReaderConfig;
import io.bidmachine.analytics.internal.I.g;
import io.bidmachine.analytics.internal.a.C4105a;
import io.bidmachine.analytics.internal.r.a;
import io.bidmachine.util.ReflectionUtilsKt;
import io.bidmachine.util.UtilsKt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class a extends io.bidmachine.analytics.internal.r.a {
    public static final C1145a j = new C1145a(null);
    private final C4105a g;
    private Context h;
    private final String i = "aapp";

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.s.a$a, reason: collision with other inner class name */
    public static final class C1145a {
        public /* synthetic */ C1145a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C1145a() {
        }
    }

    public a(C4105a c4105a) {
        this.g = c4105a;
    }

    private final b d() {
        return this.g.d().a();
    }

    @Override // io.bidmachine.analytics.internal.h.AbstractC4124d
    public String a() {
        return this.i;
    }

    @Override // io.bidmachine.analytics.internal.r.a, io.bidmachine.analytics.internal.h.AbstractC4124d
    /* JADX INFO: renamed from: a */
    public void b(a.C1144a c1144a) {
        super.b(c1144a);
        if (c1144a.c().size() != 1) {
            throw new IllegalStateException(("Reader " + a() + " should contains only one rule, received " + c1144a.c().size()).toString());
        }
        ReaderConfig.Rule rule = (ReaderConfig.Rule) CollectionsKt___CollectionsKt.first(c1144a.c());
        if (!(rule instanceof ReaderConfig.Rule.GeneralRule)) {
            throw new IllegalStateException("Check failed.");
        }
        b bVarD = d();
        Integer intOrDefault$default = UtilsKt.toIntOrDefault$default(g.b(((ReaderConfig.Rule.GeneralRule) rule).getPath()), null, 1, null);
        bVarD.a(intOrDefault$default != null ? intOrDefault$default.intValue() : 0);
    }

    @Override // io.bidmachine.analytics.internal.h.AbstractC4124d
    public void d(Context context) {
        this.h = context;
    }

    @Override // io.bidmachine.analytics.internal.r.a
    public Object a(ReaderConfig.Rule rule, Continuation continuation) {
        Context context = this.h;
        if (context != null) {
            Object objFindAndInvokeMethod = ReflectionUtilsKt.findAndInvokeMethod(context.getPackageManager(), g.a("cXVlcnlJbnRlbnRBY3Rpdml0aWVz"), new Class[]{Intent.class, Integer.TYPE}, new Object[]{new Intent(g.a("YW5kcm9pZC5pbnRlbnQuYWN0aW9uLk1BSU4=")), Boxing.boxInt(0)});
            Intrinsics.checkNotNull(objFindAndInvokeMethod, "null cannot be cast to non-null type kotlin.collections.List<android.content.pm.ResolveInfo>");
            List list = (List) objFindAndInvokeMethod;
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(((ResolveInfo) it.next()).activityInfo.packageName);
            }
            ArrayList arrayList2 = new ArrayList(CollectionsKt___CollectionsKt.distinct(arrayList));
            d().a(arrayList2);
            return String.valueOf(arrayList2.hashCode());
        }
        throw new IllegalArgumentException("Context is null");
    }
}
