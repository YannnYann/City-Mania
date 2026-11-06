package com.ironsource;

import android.text.TextUtils;
import com.ironsource.C3855t8;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class Y4 {
    private final Map<String, X4> a = new LinkedHashMap();
    private final Map<String, X4> b = new LinkedHashMap();
    private final Map<String, X4> c = new LinkedHashMap();

    private Map<String, X4> b(C3855t8.e eVar) {
        if (eVar.name().equalsIgnoreCase(C3855t8.e.RewardedVideo.name())) {
            return this.a;
        }
        if (eVar.name().equalsIgnoreCase(C3855t8.e.Interstitial.name())) {
            return this.b;
        }
        if (eVar.name().equalsIgnoreCase(C3855t8.e.Banner.name())) {
            return this.c;
        }
        return null;
    }

    public Collection<X4> a(C3855t8.e eVar) {
        Map<String, X4> mapB = b(eVar);
        return mapB != null ? mapB.values() : new ArrayList();
    }

    public X4 a(C3855t8.e eVar, String str) {
        Map<String, X4> mapB;
        if (TextUtils.isEmpty(str) || (mapB = b(eVar)) == null) {
            return null;
        }
        return mapB.get(str);
    }

    public void b(C3855t8.e eVar, String str) {
        Map<String, X4> mapB;
        X4 x4Remove;
        if (TextUtils.isEmpty(str) || (mapB = b(eVar)) == null || (x4Remove = mapB.remove(str)) == null) {
            return;
        }
        x4Remove.a();
    }

    private void a(C3855t8.e eVar, String str, X4 x4) {
        Map<String, X4> mapB;
        if (TextUtils.isEmpty(str) || x4 == null || (mapB = b(eVar)) == null) {
            return;
        }
        mapB.put(str, x4);
    }

    public X4 a(C3855t8.e eVar, R9 r9) {
        X4 x4 = new X4(r9);
        a(eVar, r9.e(), x4);
        return x4;
    }

    public X4 a(C3855t8.e eVar, String str, Map<String, String> map, Oc oc) {
        X4 x4 = new X4(str, str, map, oc);
        a(eVar, str, x4);
        return x4;
    }
}
