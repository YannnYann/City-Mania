package com.ironsource;

import com.ironsource.InterfaceC3851t4;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.j1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public class C3663j1 implements InterfaceC3810r1 {
    private final InterfaceC3717m1 a;
    private final F7 b;
    private final Ob<Integer, Integer> c;
    private final InterfaceC3851t4 d;
    private List<InterfaceC3753o1> e;

    public C3663j1(InterfaceC3717m1 eventBaseData, F7 eventsManager, Ob<Integer, Integer> eventsMapper, InterfaceC3851t4 currentTimeProvider) {
        Intrinsics.checkNotNullParameter(eventBaseData, "eventBaseData");
        Intrinsics.checkNotNullParameter(eventsManager, "eventsManager");
        Intrinsics.checkNotNullParameter(eventsMapper, "eventsMapper");
        Intrinsics.checkNotNullParameter(currentTimeProvider, "currentTimeProvider");
        this.a = eventBaseData;
        this.b = eventsManager;
        this.c = eventsMapper;
        this.d = currentTimeProvider;
        this.e = new ArrayList();
    }

    public final void a(List<InterfaceC3753o1> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.e = list;
    }

    public final List<InterfaceC3753o1> b() {
        return this.e;
    }

    private final JSONObject b(List<? extends InterfaceC3753o1> list) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<? extends InterfaceC3753o1> it = list.iterator();
        while (it.hasNext()) {
            it.next().a(linkedHashMap);
        }
        return new JSONObject(linkedHashMap);
    }

    @Override // com.ironsource.InterfaceC3810r1
    public void a(int i, List<InterfaceC3753o1> arrayList) {
        Intrinsics.checkNotNullParameter(arrayList, "arrayList");
        try {
            Iterator<T> it = this.a.a().iterator();
            while (it.hasNext()) {
                arrayList.add((InterfaceC3753o1) it.next());
            }
            Iterator<InterfaceC3753o1> it2 = this.e.iterator();
            while (it2.hasNext()) {
                arrayList.add(it2.next());
            }
            this.b.a(new C5(this.c.a(Integer.valueOf(i)).intValue(), this.d.a(), b(arrayList)));
        } catch (Exception e) {
            C3813r4.d().a(e);
            System.out.println((Object) ("LogRemote | Exception: " + e.getMessage()));
        }
    }

    public /* synthetic */ C3663j1(InterfaceC3717m1 interfaceC3717m1, F7 f7, Ob ob, InterfaceC3851t4 interfaceC3851t4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(interfaceC3717m1, f7, ob, (i & 8) != 0 ? new InterfaceC3851t4.a() : interfaceC3851t4);
    }

    @Override // com.ironsource.InterfaceC3810r1
    public void a() {
        this.e.clear();
    }

    @Override // com.ironsource.InterfaceC3810r1
    public void a(InterfaceC3753o1... analyticsEventEntity) {
        Intrinsics.checkNotNullParameter(analyticsEventEntity, "analyticsEventEntity");
        for (InterfaceC3753o1 interfaceC3753o1 : analyticsEventEntity) {
            this.e.add(interfaceC3753o1);
        }
    }
}
