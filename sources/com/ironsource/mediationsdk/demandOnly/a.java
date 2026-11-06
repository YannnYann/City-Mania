package com.ironsource.mediationsdk.demandOnly;

import com.ironsource.C3939y2;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public interface a {

    /* JADX INFO: renamed from: com.ironsource.mediationsdk.demandOnly.a$a, reason: collision with other inner class name */
    public static final class C1049a implements a {
        private final List<C3939y2> a;

        /* JADX WARN: Multi-variable type inference failed */
        public C1049a() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        @Override // com.ironsource.mediationsdk.demandOnly.a
        public C3939y2 a(String instanceName) {
            Object next;
            Intrinsics.checkNotNullParameter(instanceName, "instanceName");
            Iterator<T> it = this.a.iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                if (Intrinsics.areEqual(((C3939y2) next).c(), instanceName)) {
                    break;
                }
            }
            return (C3939y2) next;
        }

        @Override // com.ironsource.mediationsdk.demandOnly.a
        public String b() {
            if (this.a.isEmpty()) {
                return "";
            }
            return "1" + ((C3939y2) CollectionsKt___CollectionsKt.first((List) this.a)).c();
        }

        @Override // com.ironsource.mediationsdk.demandOnly.a
        public C3939y2 get(int i) {
            if (i < 0 || i >= this.a.size()) {
                return null;
            }
            return this.a.get(i);
        }

        @Override // com.ironsource.mediationsdk.demandOnly.a
        public boolean isEmpty() {
            return this.a.isEmpty();
        }

        public C1049a(List<C3939y2> waterfall) {
            Intrinsics.checkNotNullParameter(waterfall, "waterfall");
            this.a = waterfall;
        }

        @Override // com.ironsource.mediationsdk.demandOnly.a
        public List<C3939y2> a() {
            return this.a;
        }

        public /* synthetic */ C1049a(List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? new ArrayList() : list);
        }
    }

    C3939y2 a(String str);

    List<C3939y2> a();

    String b();

    C3939y2 get(int i);

    boolean isEmpty();
}
