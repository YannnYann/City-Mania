package com.ironsource;

import java.util.HashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class Cg {
    private int b = 4;
    private int c = 4;
    private HashMap<String, Boolean> a = new a();

    public class a extends HashMap<String, Boolean> {
        public a() {
            put(C3670j8.k, Boolean.valueOf(Cg.this.b == 0));
            put(C3670j8.l, Boolean.valueOf(Cg.this.c == 0));
            Boolean bool = Boolean.FALSE;
            put(C3670j8.m, bool);
            put(C3670j8.n, bool);
        }
    }

    public void a(String str, int i, boolean z) {
        boolean z2 = false;
        if (this.a.containsKey(str)) {
            this.a.put(str, Boolean.valueOf(i == 0));
        }
        this.a.put(C3670j8.m, Boolean.valueOf(z));
        if ((this.a.get(C3670j8.l).booleanValue() || this.a.get(C3670j8.k).booleanValue()) && this.a.get(C3670j8.m).booleanValue()) {
            z2 = true;
        }
        this.a.put(C3670j8.n, Boolean.valueOf(z2));
    }

    public JSONObject a() {
        return new JSONObject(this.a);
    }
}
