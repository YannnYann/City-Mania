package com.iab.omid.library.appodeal.walking;

import com.iab.omid.library.appodeal.walking.async.b;
import com.iab.omid.library.appodeal.walking.async.d;
import com.iab.omid.library.appodeal.walking.async.e;
import com.iab.omid.library.appodeal.walking.async.f;
import java.util.HashSet;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class b implements b.InterfaceC0013b {
    private JSONObject a;
    private final com.iab.omid.library.appodeal.walking.async.c b;

    public b(com.iab.omid.library.appodeal.walking.async.c cVar) {
        this.b = cVar;
    }

    @Override // com.iab.omid.library.appodeal.walking.async.b.InterfaceC0013b
    public JSONObject a() {
        return this.a;
    }

    @Override // com.iab.omid.library.appodeal.walking.async.b.InterfaceC0013b
    public void a(JSONObject jSONObject) {
        this.a = jSONObject;
    }

    public void a(JSONObject jSONObject, HashSet<String> hashSet, long j) {
        this.b.b(new e(this, hashSet, jSONObject, j));
    }

    public void b() {
        this.b.b(new d(this));
    }

    public void b(JSONObject jSONObject, HashSet<String> hashSet, long j) {
        this.b.b(new f(this, hashSet, jSONObject, j));
    }
}
