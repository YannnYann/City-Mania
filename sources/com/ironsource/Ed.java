package com.ironsource;

import com.ironsource.E0;
import com.ironsource.mediationsdk.model.NetworkSettings;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public final class Ed implements Fd {
    private final T0 a;
    private final AbstractC3919x0 b;
    private final Function1<T0, T0> c;

    /* JADX WARN: Multi-variable type inference failed */
    public Ed(T0 adUnitTools, AbstractC3919x0 adUnitData, Function1<? super T0, ? extends T0> createProviderTools) {
        Intrinsics.checkNotNullParameter(adUnitTools, "adUnitTools");
        Intrinsics.checkNotNullParameter(adUnitData, "adUnitData");
        Intrinsics.checkNotNullParameter(createProviderTools, "createProviderTools");
        this.a = adUnitTools;
        this.b = adUnitData;
        this.c = createProviderTools;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final T0 a(T0 tools) {
        Intrinsics.checkNotNullParameter(tools, "tools");
        return new T0(tools, E0.b.PROVIDER);
    }

    private final List<NetworkSettings> b(List<String> list) {
        Set set = CollectionsKt___CollectionsKt.toSet(list);
        HashMap map = new HashMap(list.size());
        for (NetworkSettings networkSettings : this.b.n()) {
            if (set.contains(networkSettings.getProviderInstanceName())) {
                map.put(networkSettings.getProviderInstanceName(), networkSettings);
            }
        }
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            NetworkSettings networkSettings2 = (NetworkSettings) map.get((String) it.next());
            if (networkSettings2 != null) {
                arrayList.add(networkSettings2);
            }
        }
        return arrayList;
    }

    @Override // com.ironsource.Fd
    public List<C3722m6> a(List<String> instances) {
        Intrinsics.checkNotNullParameter(instances, "instances");
        if (instances.isEmpty()) {
            return CollectionsKt__CollectionsKt.emptyList();
        }
        List<NetworkSettings> listB = b(instances);
        C3885v2 c3885v2A = a();
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listB, 10));
        Iterator<T> it = listB.iterator();
        while (it.hasNext()) {
            arrayList.add(a(c3885v2A, (NetworkSettings) it.next()));
        }
        return arrayList;
    }

    public /* synthetic */ Ed(T0 t0, AbstractC3919x0 abstractC3919x0, Function1 function1, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(t0, abstractC3919x0, (i & 4) != 0 ? new Function1() { // from class: com.ironsource.Ed$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Ed.a((T0) obj);
            }
        } : function1);
    }

    private final C3722m6 a(C3885v2 c3885v2, NetworkSettings networkSettings) {
        H h = new H(this.a, this.b, networkSettings);
        return new C3722m6(this.c.invoke(this.a), new B(this.b, networkSettings, c3885v2, new C3537c1(networkSettings, this.b.b(networkSettings), this.b.b().a()), new C3939y2(networkSettings.getProviderInstanceName()), this.a.g(), true), h);
    }

    private final C3885v2 a() {
        return new C3885v2("", new JSONObject(), null, 0, "");
    }
}
