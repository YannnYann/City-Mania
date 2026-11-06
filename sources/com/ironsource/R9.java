package com.ironsource;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class R9 {
    private final boolean a;
    private String b;
    private String c;
    private boolean d;
    private C3653i8 e;
    private Map<String, String> f;
    private Oc g;
    private String h;
    private boolean i;
    private boolean j;

    public R9(String str, String str2, boolean z, boolean z2, boolean z3, boolean z4, String str3, Map<String, String> map, Oc oc, C3653i8 c3653i8) {
        this.b = str;
        this.c = str2;
        this.a = z;
        this.d = z2;
        this.f = map;
        this.g = oc;
        this.e = c3653i8;
        this.i = z3;
        this.j = z4;
        this.h = str3;
    }

    public Map<String, String> a() {
        HashMap map = new HashMap();
        map.put("instanceId", this.b);
        map.put("instanceName", this.c);
        map.put("rewarded", Boolean.toString(this.a));
        map.put("inAppBidding", Boolean.toString(this.d));
        map.put("isOneFlow", Boolean.toString(this.i));
        map.put(C3522b4.s, String.valueOf(2));
        C3653i8 c3653i8 = this.e;
        map.put("width", c3653i8 != null ? Integer.toString(c3653i8.c()) : "0");
        C3653i8 c3653i82 = this.e;
        map.put("height", c3653i82 != null ? Integer.toString(c3653i82.a()) : "0");
        C3653i8 c3653i83 = this.e;
        map.put("label", c3653i83 != null ? c3653i83.b() : "");
        map.put(C3522b4.w, Boolean.toString(i()));
        if (this.j) {
            map.put("isMultipleAdObjects", "true");
        }
        String str = this.h;
        if (str != null) {
            map.put("adUnitId", str);
        }
        Map<String, String> map2 = this.f;
        if (map2 != null) {
            map.putAll(map2);
        }
        return map;
    }

    public final Oc b() {
        return this.g;
    }

    public String c() {
        return this.h;
    }

    public Map<String, String> d() {
        return this.f;
    }

    public String e() {
        return this.b;
    }

    public String f() {
        return this.c.replaceAll("IronSource_", "");
    }

    public String g() {
        return this.c;
    }

    public C3653i8 h() {
        return this.e;
    }

    public boolean i() {
        return h() != null && h().d();
    }

    public boolean j() {
        return this.d;
    }

    public boolean k() {
        return j() || m();
    }

    public boolean l() {
        return this.j;
    }

    public boolean m() {
        return this.i;
    }

    public boolean n() {
        return this.a;
    }

    public void a(Oc oc) {
        this.g = oc;
    }

    public void a(String str) {
        this.h = str;
    }
}
