package com.vungle.ads.internal.model;

import com.vungle.ads.AdConfig;
import com.vungle.ads.TpatError;
import com.vungle.ads.internal.protos.Sdk;
import java.io.File;
import java.net.URI;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.regex.Pattern;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import kotlinx.serialization.ContextualSerializer;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.LinkedHashMapSerializer;
import kotlinx.serialization.internal.LongSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.json.JsonElementBuildersKt;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.JsonObjectBuilder;

/* JADX INFO: loaded from: classes4.dex */
public final class i0 {
    public static final p Companion = new p();
    public final List a;
    public final w2 b;
    public Long c;
    public ConcurrentHashMap d;
    public Map e;
    public boolean f;
    public AdConfig g;
    public com.vungle.ads.internal.util.t h;
    public String i;

    public /* synthetic */ i0(int i, List list, w2 w2Var, Long l, ConcurrentHashMap concurrentHashMap, Map map, boolean z, String str) {
        if ((i & 1) == 0) {
            this.a = null;
        } else {
            this.a = list;
        }
        if ((i & 2) == 0) {
            this.b = null;
        } else {
            this.b = w2Var;
        }
        if ((i & 4) == 0) {
            this.c = null;
        } else {
            this.c = l;
        }
        if ((i & 8) == 0) {
            this.d = new ConcurrentHashMap();
        } else {
            this.d = concurrentHashMap;
        }
        if ((i & 16) == 0) {
            this.e = new HashMap();
        } else {
            this.e = map;
        }
        if ((i & 32) == 0) {
            this.f = false;
        } else {
            this.f = z;
        }
        this.g = null;
        this.h = null;
        if ((i & 64) == 0) {
            this.i = null;
        } else {
            this.i = str;
        }
    }

    public static final void a(i0 self, CompositeEncoder output, PluginGeneratedSerialDescriptor serialDesc) {
        Intrinsics.checkNotNullParameter(self, "self");
        Intrinsics.checkNotNullParameter(output, "output");
        Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
        if (output.shouldEncodeElementDefault(serialDesc, 0) || self.a != null) {
            output.encodeNullableSerializableElement(serialDesc, 0, new ArrayListSerializer(q.a), self.a);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 1) || self.b != null) {
            output.encodeNullableSerializableElement(serialDesc, 1, v1.a, self.b);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 2) || self.c != null) {
            output.encodeNullableSerializableElement(serialDesc, 2, LongSerializer.INSTANCE, self.c);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 3) || !Intrinsics.areEqual(self.d, new ConcurrentHashMap())) {
            KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ConcurrentHashMap.class);
            StringSerializer stringSerializer = StringSerializer.INSTANCE;
            output.encodeSerializableElement(serialDesc, 3, new ContextualSerializer(orCreateKotlinClass, null, new KSerializer[]{stringSerializer, stringSerializer}), self.d);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 4) || !Intrinsics.areEqual(self.e, new HashMap())) {
            StringSerializer stringSerializer2 = StringSerializer.INSTANCE;
            output.encodeSerializableElement(serialDesc, 4, new LinkedHashMapSerializer(stringSerializer2, stringSerializer2), self.e);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 5) || self.f) {
            output.encodeBooleanElement(serialDesc, 5, self.f);
        }
        if (!output.shouldEncodeElementDefault(serialDesc, 6) && self.i == null) {
            return;
        }
        output.encodeNullableSerializableElement(serialDesc, 6, StringSerializer.INSTANCE, self.i);
    }

    public final String A() {
        s sVarI = i();
        if (sVarI != null) {
            return sVarI.a;
        }
        return null;
    }

    public final void B() {
        this.c = Long.valueOf(System.currentTimeMillis());
    }

    public final void C() {
        this.f = true;
    }

    public final String D() {
        i iVarK = k();
        if (iVarK != null) {
            return iVarK.t;
        }
        return null;
    }

    public final boolean E() {
        i iVarK = k();
        return (iVarK != null ? Intrinsics.areEqual(iVarK.l(), Boolean.TRUE) : false) && !y();
    }

    public final boolean b() {
        Boolean bool;
        i iVarK = k();
        if (iVarK == null || (bool = iVarK.h) == null) {
            return true;
        }
        return bool.booleanValue();
    }

    public final i c() {
        return k();
    }

    public final int d() {
        f fVar;
        Integer num;
        i iVarK = k();
        if (iVarK == null || (fVar = iVarK.z) == null || (num = fVar.a) == null) {
            return 0;
        }
        return num.intValue();
    }

    public final String e() {
        i iVarK = k();
        if (iVarK != null) {
            return iVarK.w;
        }
        return null;
    }

    public final w2 f() {
        return this.b;
    }

    public final JsonObject g() {
        LinkedHashMap linkedHashMapR = r();
        JsonObjectBuilder jsonObjectBuilder = new JsonObjectBuilder();
        for (Map.Entry entry : linkedHashMapR.entrySet()) {
            JsonElementBuildersKt.put(jsonObjectBuilder, (String) entry.getKey(), (String) entry.getValue());
        }
        return jsonObjectBuilder.build();
    }

    public final String h() {
        i iVarK = k();
        if (iVarK != null) {
            return iVarK.a;
        }
        return null;
    }

    public final s i() {
        List list = this.a;
        if (list == null || list.isEmpty()) {
            return null;
        }
        return (s) list.get(0);
    }

    public final AdConfig j() {
        return this.g;
    }

    public final i k() {
        s sVarI = i();
        if (sVarI != null) {
            return sVarI.b;
        }
        return null;
    }

    public final String l() {
        i iVarK = k();
        if (iVarK != null) {
            return iVarK.c;
        }
        return null;
    }

    public final l m() {
        s sVarI = i();
        if (sVarI != null) {
            return sVarI.c;
        }
        return null;
    }

    public final String n() {
        String str;
        i iVarK = k();
        return (iVarK == null || (str = iVarK.v) == null) ? "unknown" : str;
    }

    public final String o() {
        v vVar;
        Map map;
        i iVarK = k();
        if (iVarK == null || (vVar = iVarK.u) == null || (map = vVar.a) == null) {
            return null;
        }
        return (String) map.get("OBSERVED_EXPERIMENTS");
    }

    public final String p() {
        return this.i;
    }

    public final com.vungle.ads.internal.util.t q() {
        return this.h;
    }

    public final LinkedHashMap r() {
        v vVar;
        Map map;
        v vVar2;
        Map map2;
        i iVarK = k();
        if ((iVarK != null ? iVarK.u : null) == null) {
            throw new IllegalArgumentException("Advertisement does not have MRAID Arguments!");
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        i iVarK2 = k();
        if (iVarK2 != null && (vVar2 = iVarK2.u) != null && (map2 = vVar2.a) != null) {
            linkedHashMap.putAll(map2);
        }
        i iVarK3 = k();
        if (iVarK3 != null && (vVar = iVarK3.u) != null && (map = vVar.b) != null) {
            for (Map.Entry entry : map.entrySet()) {
                String str = ((o) entry.getValue()).a;
                if (str != null) {
                    linkedHashMap.put(entry.getKey(), str);
                }
            }
        }
        if (!this.d.isEmpty()) {
            linkedHashMap.putAll(this.d);
        }
        if (!this.e.isEmpty()) {
            linkedHashMap.putAll(this.e);
        }
        return linkedHashMap;
    }

    public final String s() {
        i iVarK = k();
        if (iVarK != null) {
            return iVarK.i;
        }
        return null;
    }

    public final String t() {
        i iVarK = k();
        if (iVarK != null) {
            return iVarK.o;
        }
        return null;
    }

    public final f0 u() {
        i iVarK = k();
        if (iVarK != null) {
            return iVarK.A;
        }
        return null;
    }

    public final boolean v() {
        i iVarK = k();
        if (iVarK == null) {
            return false;
        }
        Long l = this.c;
        if (iVarK.e != null && l != null) {
            if ((System.currentTimeMillis() - l.longValue()) / 1000 > (iVarK.e != null ? Long.valueOf(r0.intValue()) : null).longValue()) {
                return true;
            }
        } else if (iVarK.d != null) {
            if (System.currentTimeMillis() / 1000 > (iVarK.d != null ? Long.valueOf(r0.intValue()) : null).longValue()) {
                return true;
            }
        }
        return false;
    }

    public final boolean w() {
        v vVarJ;
        Map mapB;
        String str;
        i iVarK = k();
        return (iVarK == null || (vVarJ = iVarK.j()) == null || (mapB = vVarJ.b()) == null || (str = (String) mapB.get("AD_PODDING")) == null || !StringsKt__StringsJVMKt.equals(str, "true", true)) ? false : true;
    }

    public final boolean x() {
        Boolean bool;
        i iVarK = k();
        if (iVarK == null || (bool = iVarK.g) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    public final boolean y() {
        return Intrinsics.areEqual(D(), "native");
    }

    public final boolean z() {
        z zVar;
        c0 c0Var;
        Boolean bool;
        i iVarK = k();
        if (iVarK == null || (zVar = iVarK.s) == null || (c0Var = zVar.a) == null || (bool = c0Var.a) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final List b(String event, String str, String str2) {
        Map mapK;
        Map mapK2;
        Intrinsics.checkNotNullParameter(event, "event");
        i iVarK = k();
        if (iVarK != null && (mapK2 = iVarK.k()) != null && !mapK2.containsKey(event)) {
            new TpatError(Sdk.SDKError.Reason.INVALID_TPAT_KEY, com.iab.omid.library.vungle.d.a("Arbitrary tpat key: ", event)).setLogEntry$vungle_ads_release(this.h).logErrorNoReturnValue$vungle_ads_release();
            return null;
        }
        i iVarK2 = k();
        List list = (iVarK2 == null || (mapK = iVarK2.k()) == null) ? null : (List) mapK.get(event);
        if (list == null || list.isEmpty()) {
            new TpatError(Sdk.SDKError.Reason.EMPTY_TPAT_ERROR, com.iab.omid.library.vungle.d.a("Empty tpat key: ", event)).setLogEntry$vungle_ads_release(this.h).logErrorNoReturnValue$vungle_ads_release();
            return null;
        }
        switch (event.hashCode()) {
            case -2125915830:
                if (event.equals("checkpoint.0")) {
                    ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        arrayList.add(a(a(a((String) it.next(), "{{{remote_play}}}", String.valueOf(!this.f)), "{{{carrier}}}", str), "{{{vol}}}", str2));
                    }
                    return arrayList;
                }
                return list;
            case -747709511:
                if (event.equals("video.length")) {
                    ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
                    Iterator it2 = list.iterator();
                    while (it2.hasNext()) {
                        arrayList2.add(a((String) it2.next(), "{{{vlen}}}", str));
                    }
                    return arrayList2;
                }
                return list;
            case -132489083:
                if (event.equals("ad.loadDuration")) {
                    ArrayList arrayList3 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
                    Iterator it3 = list.iterator();
                    while (it3.hasNext()) {
                        arrayList3.add(a((String) it3.next(), "{{{time_dl}}}", str));
                    }
                    return arrayList3;
                }
                return list;
            case 1516630125:
                if (event.equals("ad.close")) {
                    ArrayList arrayList4 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
                    Iterator it4 = list.iterator();
                    while (it4.hasNext()) {
                        arrayList4.add(a(a((String) it4.next(), "{{{dur}}}", str), "{{{vol}}}", str2));
                    }
                    return arrayList4;
                }
                return list;
            case 1940309120:
                if (event.equals("deeplink.click")) {
                    ArrayList arrayList5 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
                    Iterator it5 = list.iterator();
                    while (it5.hasNext()) {
                        arrayList5.add(a((String) it5.next(), "{{{is_success}}}", str));
                    }
                    return arrayList5;
                }
                return list;
            default:
                return list;
        }
    }

    public final int a() {
        f fVar;
        Integer num;
        i iVarK = k();
        if (iVarK == null || (fVar = iVarK.z) == null || (num = fVar.b) == null) {
            return 0;
        }
        return num.intValue();
    }

    public final void a(AdConfig adConfig) {
        this.g = adConfig;
    }

    public final void a(com.vungle.ads.internal.util.t tVar) {
        this.h = tVar;
    }

    public final boolean a(String failingUrl) {
        v vVarJ;
        Map mapA;
        Intrinsics.checkNotNullParameter(failingUrl, "failingUrl");
        if (!y()) {
            i iVarK = k();
            if (Intrinsics.areEqual(iVarK != null ? iVarK.m() : null, failingUrl)) {
                return true;
            }
        }
        i iVarK2 = k();
        if (iVarK2 == null || (vVarJ = iVarK2.j()) == null || (mapA = vVarJ.a()) == null) {
            return false;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry entry : mapA.entrySet()) {
            if (Intrinsics.areEqual(((o) entry.getValue()).b(), failingUrl)) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        return !linkedHashMap.isEmpty();
    }

    public final ArrayList a(File dir) {
        i0 i0Var;
        v vVarJ;
        Map mapA;
        i iVarK;
        String strM;
        Object objM2760constructorimpl;
        File parentFile;
        Intrinsics.checkNotNullParameter(dir, "dir");
        ArrayList arrayList = new ArrayList();
        Pair pair = null;
        if (!y() && (iVarK = k()) != null && (strM = iVarK.m()) != null) {
            String str = com.vungle.ads.internal.util.o.a(strM) ? strM : null;
            if (str != null) {
                try {
                    Result.Companion companion = Result.Companion;
                    String path = new URI(str).getPath();
                    Intrinsics.checkNotNullExpressionValue(path, "URI(url).path");
                    List listSplit$default = StringsKt__StringsKt.split$default((CharSequence) StringsKt__StringsKt.trim(path, '/'), new char[]{'/'}, false, 0, 6, (Object) null);
                    objM2760constructorimpl = Result.m2760constructorimpl(listSplit$default.size() >= 2 ? CollectionsKt___CollectionsKt.joinToString$default(CollectionsKt___CollectionsKt.takeLast(listSplit$default, 2), "_", null, null, 0, null, null, 62, null) : "index.html");
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.Companion;
                    objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th));
                }
                if (Result.m2765isFailureimpl(objM2760constructorimpl)) {
                    objM2760constructorimpl = null;
                }
                String str2 = (String) objM2760constructorimpl;
                if (str2 != null && (parentFile = dir.getParentFile()) != null) {
                    pair = new Pair(str, new File(parentFile, str2));
                }
            }
        }
        if (pair != null) {
            String str3 = (String) pair.component1();
            File file = (File) pair.component2();
            i0Var = this;
            i0Var.i = file.getAbsolutePath();
            if (!file.exists()) {
                boolean z = com.vungle.ads.internal.util.v.a;
                com.vungle.ads.internal.util.u.a("AdPayload", "No cacheable index file found, creating new one: " + file);
                String absolutePath = file.getAbsolutePath();
                Intrinsics.checkNotNullExpressionValue(absolutePath, "indexFile.absolutePath");
                arrayList.add(new b("vmURL", str3, absolutePath, true));
            }
        } else {
            i0Var = this;
        }
        i iVarK2 = i0Var.k();
        if (iVarK2 != null && (vVarJ = iVarK2.j()) != null && (mapA = vVarJ.a()) != null) {
            for (Map.Entry entry : mapA.entrySet()) {
                String str4 = (String) entry.getKey();
                o oVar = (o) entry.getValue();
                String strB = oVar.b();
                if (strB != null && com.vungle.ads.internal.util.o.a(strB)) {
                    String filePath = new File(dir, com.vungle.ads.internal.util.o.a(strB, oVar.a())).getAbsolutePath();
                    Intrinsics.checkNotNullExpressionValue(filePath, "filePath");
                    arrayList.add(new b(str4, strB, filePath, i0Var.y() || !i0Var.b()));
                }
            }
        }
        if (arrayList.size() > 1) {
            CollectionsKt__MutableCollectionsJVMKt.sortWith(arrayList, new h0());
        }
        return arrayList;
    }

    public static /* synthetic */ List a(i0 i0Var, String str, String str2, int i) {
        if ((i & 2) != 0) {
            str2 = null;
        }
        return i0Var.b(str, str2, null);
    }

    public final void a(String title, String body, String keepWatching, String close) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(body, "body");
        Intrinsics.checkNotNullParameter(keepWatching, "keepWatching");
        Intrinsics.checkNotNullParameter(close, "close");
        if (title.length() > 0) {
            this.e.put("INCENTIVIZED_TITLE_TEXT", title);
        }
        if (body.length() > 0) {
            this.e.put("INCENTIVIZED_BODY_TEXT", body);
        }
        if (keepWatching.length() > 0) {
            this.e.put("INCENTIVIZED_CONTINUE_TEXT", keepWatching);
        }
        if (close.length() > 0) {
            this.e.put("INCENTIVIZED_CLOSE_TEXT", close);
        }
    }

    public final int a(Boolean bool) {
        Integer numG;
        int iIntValue;
        Integer numH;
        if (Intrinsics.areEqual(bool, Boolean.TRUE)) {
            i iVarK = k();
            if (iVarK == null || (numH = iVarK.h()) == null) {
                return 0;
            }
            iIntValue = numH.intValue();
        } else {
            i iVarK2 = k();
            if (iVarK2 == null || (numG = iVarK2.g()) == null) {
                return 0;
            }
            iIntValue = numG.intValue();
        }
        return iIntValue * 1000;
    }

    public static String a(String str, String str2, String str3) {
        if (str3 == null) {
            str3 = "";
        }
        String strQuote = Pattern.quote(str2);
        Intrinsics.checkNotNullExpressionValue(strQuote, "quote(oldValue)");
        return new Regex(strQuote).replace(str, new g0(str3));
    }

    public final synchronized void a(File localFile, String adIdentifier) {
        Intrinsics.checkNotNullParameter(adIdentifier, "adIdentifier");
        Intrinsics.checkNotNullParameter(localFile, "localFile");
        if (localFile.exists()) {
            ConcurrentHashMap concurrentHashMap = this.d;
            StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("file://");
            sbA.append(localFile.getAbsolutePath());
            concurrentHashMap.put(adIdentifier, sbA.toString());
        }
    }
}
