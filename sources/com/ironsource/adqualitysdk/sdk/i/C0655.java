package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᴳ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0655 {

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public static final Map f2687;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final ExecutorService f2688;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final List f2689;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final C0684 f2690;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final C0932 f2691;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final Context f2692;

    static {
        HashMap map = new HashMap();
        map.put(StringFog.decrypt("M9HGcEd7Esk02tViWnkL5jPA\n", "XbSyBygJeY8=\n"), 1);
        map.put(StringFog.decrypt("mxvVDZ2+ht6bG9c3jLCG3ZsH\n", "/nWjZO/R6LM=\n"), 2);
        map.put(StringFog.decrypt("eToDt9pPjGVQLgW7yECKaXIyBao=\n", "EVtx060u/gA=\n"), 1);
        map.put(StringFog.decrypt("V5JIKW8OUq5Um3MtdxRSrg==\n", "NfcgSBlnPdw=\n"), 2);
        f2687 = Collections.unmodifiableMap(map);
    }

    public C0655(Context context, List list) {
        C0932 c0932 = new C0932();
        C0684 c0684 = new C0684();
        this.f2692 = context;
        this.f2691 = c0932;
        this.f2690 = c0684;
        this.f2689 = Collections.unmodifiableList(new ArrayList(list));
        this.f2688 = Executors.newSingleThreadExecutor();
    }
}
