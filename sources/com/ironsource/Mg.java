package com.ironsource;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;

/* JADX INFO: loaded from: classes3.dex */
public final class Mg {
    private final List<A> a;

    /* JADX WARN: Multi-variable type inference failed */
    public Mg(List<? extends A> instances) {
        Intrinsics.checkNotNullParameter(instances, "instances");
        this.a = instances;
    }

    public final List<A> a() {
        return this.a;
    }

    public final List<A> b() {
        return this.a;
    }

    public final int c() {
        return this.a.size();
    }

    public final String d() {
        ArrayList arrayList = new ArrayList();
        for (A a : this.a) {
            arrayList.add(a(a.h(), a.r()));
        }
        return CollectionsKt___CollectionsKt.joinToString$default(arrayList, ",", null, null, 0, null, null, 62, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof Mg) && Intrinsics.areEqual(this.a, ((Mg) obj).a);
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public String toString() {
        return "WaterfallInstances(instances=" + this.a + ")";
    }

    public final Mg a(List<? extends A> instances) {
        Intrinsics.checkNotNullParameter(instances, "instances");
        return new Mg(instances);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Mg a(Mg mg, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            list = mg.a;
        }
        return mg.a(list);
    }

    private final String a(C3939y2 c3939y2, int i) {
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String str = String.format("%s%s", Arrays.copyOf(new Object[]{Integer.valueOf(i), c3939y2.c()}, 2));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        return str;
    }
}
