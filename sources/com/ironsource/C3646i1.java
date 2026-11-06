package com.ironsource;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;

/* JADX INFO: renamed from: com.ironsource.i1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3646i1 implements InterfaceC3789pf<JSONArray> {
    private final List<C3628h1> a = new ArrayList();

    /* JADX INFO: renamed from: com.ironsource.i1$a */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[EnumC3767of.values().length];
            try {
                iArr[EnumC3767of.a.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[EnumC3767of.b.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            a = iArr;
        }
    }

    @Override // com.ironsource.InterfaceC3616g7
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public JSONArray a(EnumC3767of mode) {
        Intrinsics.checkNotNullParameter(mode, "mode");
        int i = a.a[mode.ordinal()];
        if (i == 1) {
            List<C3628h1> listB = b();
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listB, 10));
            Iterator<T> it = listB.iterator();
            while (it.hasNext()) {
                arrayList.add(((C3628h1) it.next()).d());
            }
            return new JSONArray((Collection) arrayList);
        }
        if (i != 2) {
            throw new NoWhenBranchMatchedException();
        }
        List<C3628h1> listA = a();
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listA, 10));
        Iterator<T> it2 = listA.iterator();
        while (it2.hasNext()) {
            arrayList2.add(((C3628h1) it2.next()).c());
        }
        return new JSONArray((Collection) arrayList2);
    }

    public final void a(C3628h1 event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.a.add(event);
    }

    private final List<C3628h1> a() {
        List<C3628h1> list = this.a;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            C3628h1 c3628h1 = (C3628h1) obj;
            if (c3628h1.e() != EnumC3731mf.b && c3628h1.e() != EnumC3731mf.f) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((C3628h1) it.next()).a());
        }
        Set set = CollectionsKt___CollectionsKt.toSet(arrayList2);
        List<C3628h1> list2 = this.a;
        ArrayList arrayList3 = new ArrayList();
        for (Object obj2 : list2) {
            C3628h1 c3628h12 = (C3628h1) obj2;
            if (c3628h12.e() == EnumC3731mf.b && !set.contains(c3628h12.a())) {
                arrayList3.add(obj2);
            }
        }
        return arrayList3;
    }

    private final List<C3628h1> b() {
        List<C3628h1> list = this.a;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((C3628h1) obj).e() != EnumC3731mf.f) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }
}
