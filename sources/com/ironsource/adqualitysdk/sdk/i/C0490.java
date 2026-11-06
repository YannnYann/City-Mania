package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᒑ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0490 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public final /* synthetic */ C0324 f2293;

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final /* synthetic */ C0507 f2294;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ List f2295;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ String f2296;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ Context f2297;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ String f2298;

    public C0490(C0324 c0324, String str, Context context, String str2, List list, C0507 c0507) {
        this.f2293 = c0324;
        this.f2298 = str;
        this.f2297 = context;
        this.f2296 = str2;
        this.f2295 = list;
        this.f2294 = c0507;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        AbstractC0182.m1154(StringFog.decrypt("utkxaYguh7SL+z5pjCqWqQ==\n", "+bZfB+1N89s=\n"), StringFog.decrypt("+jDcETeLn5nJN9sCfomcnt071hExmNM=\n", "s161ZV7q8/A=\n") + this.f2298);
        try {
            C0324 c0324 = this.f2293;
            Context context = this.f2297;
            String str = this.f2296;
            String str2 = this.f2298;
            List list = this.f2295;
            C0507 c0507 = this.f2294;
            c0324.getClass();
            C0475 c0475 = new C0475(new AtomicBoolean(false), c0507);
            Iterator it = list.iterator();
            while (it.hasNext()) {
                c0324.m1237(context, str, str2, (AbstractC0248) it.next(), c0475);
            }
        } catch (Throwable th) {
            C0235 c0235 = this.f2293.f1898;
            if (c0235 != null) {
                AbstractC0272.m1210(new C0277(c0235, this.f2298, EnumC0307.f1828));
            }
            HashMap mapM1223 = C0324.m1223(this.f2293);
            String str3 = this.f2296;
            Throwable cause = th;
            while (cause.getCause() != null) {
                cause = cause.getCause();
            }
            mapM1223.put(str3, cause.toString());
            AbstractC1003.m1593(StringFog.decrypt("DwgQA1AwsKM+Kh8DVDShvg==\n", "TGd+bTVTxMw=\n"), StringFog.decrypt("U5Z6UAepyN1zhXxWG+6LzHmKZloW/cTdNg==\n", "FuQIP3WJq68=\n") + this.f2298, th, true, true, false);
        }
    }
}
