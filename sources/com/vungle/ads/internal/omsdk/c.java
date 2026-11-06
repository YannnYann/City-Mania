package com.vungle.ads.internal.omsdk;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.iab.omid.library.vungle.Omid;
import com.iab.omid.library.vungle.internal.l;
import com.vungle.ads.R;
import com.vungle.ads.internal.util.u;
import com.vungle.ads.internal.util.v;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileWriter;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.io.TextStreamsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;

/* JADX INFO: loaded from: classes4.dex */
public final class c {
    public final Context a;
    public final Handler b;
    public AtomicReference c;
    public AtomicReference d;

    public c(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.a = context;
        this.b = new Handler(Looper.getMainLooper());
        this.c = new AtomicReference(null);
        this.d = new AtomicReference(null);
    }

    public static final void a(c this$0) {
        Object objM2760constructorimpl;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            Result.Companion companion = Result.Companion;
            if (!Omid.isActive()) {
                Omid.activate(this$0.a);
            }
            objM2760constructorimpl = Result.m2760constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
        Throwable thM2763exceptionOrNullimpl = Result.m2763exceptionOrNullimpl(objM2760constructorimpl);
        if (thM2763exceptionOrNullimpl != null) {
            boolean z = v.a;
            StringBuilder sbA = l.a("error: ");
            sbA.append(thM2763exceptionOrNullimpl.getLocalizedMessage());
            u.b("OMInjector", sbA.toString());
        }
    }

    public final void b() {
        this.b.post(new Runnable() { // from class: com.vungle.ads.internal.omsdk.c$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                c.a(this.f$0);
            }
        });
    }

    public final void a(File dir) {
        FileWriter fileWriter;
        Intrinsics.checkNotNullParameter(dir, "dir");
        ArrayList arrayList = new ArrayList();
        File file = new File(dir, "omsdk.js");
        if (!file.exists()) {
            boolean z = v.a;
            StringBuilder sbA = l.a("injecting omsdk.js to ");
            sbA.append(file.getAbsolutePath());
            u.a("OMInjector", sbA.toString());
            String strA = a();
            if (strA != null) {
                fileWriter = new FileWriter(file);
                try {
                    fileWriter.write(strA);
                    fileWriter.flush();
                    CloseableKt.closeFinally(fileWriter, null);
                } finally {
                }
            }
            arrayList.add(file);
        }
        File file2 = new File(dir, "omsdk-session.js");
        if (file2.exists()) {
            return;
        }
        boolean z2 = v.a;
        StringBuilder sbA2 = l.a("injecting omsdk-session.js to ");
        sbA2.append(file2.getAbsolutePath());
        u.a("OMInjector", sbA2.toString());
        String strA2 = (String) this.d.get();
        if (strA2 == null) {
            strA2 = a(R.raw.omid_session_client_v1_6_9);
            this.d.set(strA2);
        }
        if (strA2 != null) {
            fileWriter = new FileWriter(file2);
            try {
                fileWriter.write(strA2);
                fileWriter.flush();
                CloseableKt.closeFinally(fileWriter, null);
            } finally {
            }
        }
        arrayList.add(file2);
    }

    public final String a() {
        String str = (String) this.c.get();
        if (str != null) {
            return str;
        }
        String strA = a(R.raw.omsdk_v1_6_9);
        this.c.set(strA);
        return strA;
    }

    public final String a(int i) {
        Object objM2760constructorimpl;
        try {
            Result.Companion companion = Result.Companion;
            InputStream inputStreamOpenRawResource = this.a.getResources().openRawResource(i);
            Intrinsics.checkNotNullExpressionValue(inputStreamOpenRawResource, "context.resources.openRawResource(resId)");
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStreamOpenRawResource, Charsets.UTF_8), 8192);
            try {
                String text = TextStreamsKt.readText(bufferedReader);
                CloseableKt.closeFinally(bufferedReader, null);
                objM2760constructorimpl = Result.m2760constructorimpl(text);
            } finally {
            }
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
        return (String) (Result.m2765isFailureimpl(objM2760constructorimpl) ? null : objM2760constructorimpl);
    }
}
