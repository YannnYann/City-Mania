package com.vungle.ads.internal.session;

import android.content.Context;
import com.iab.omid.library.vungle.internal.l;
import com.vungle.ads.internal.executor.d;
import com.vungle.ads.internal.model.s3;
import com.vungle.ads.internal.util.PathProvider;
import com.vungle.ads.internal.util.o;
import com.vungle.ads.internal.util.u;
import com.vungle.ads.internal.util.v;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.TimeUnit;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KTypeProjection;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonKt;

/* JADX INFO: loaded from: classes4.dex */
public final class b {
    public static final Json f = JsonKt.Json$default(null, a.a, 1, null);
    public final String a;
    public final com.vungle.ads.internal.executor.a b;
    public File c;
    public final CopyOnWriteArrayList d;
    public boolean e;

    public b(Context context, String sessionId, com.vungle.ads.internal.executor.a executors, PathProvider pathProvider) {
        Object objM2760constructorimpl;
        boolean zM2766isSuccessimpl;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(sessionId, "sessionId");
        Intrinsics.checkNotNullParameter(executors, "executors");
        Intrinsics.checkNotNullParameter(pathProvider, "pathProvider");
        this.a = sessionId;
        this.b = executors;
        this.c = pathProvider.b();
        this.d = new CopyOnWriteArrayList();
        if (this.c.exists()) {
            zM2766isSuccessimpl = true;
        } else {
            try {
                Result.Companion companion = Result.Companion;
                objM2760constructorimpl = Result.m2760constructorimpl(Boolean.valueOf(this.c.createNewFile()));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.Companion;
                objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th));
            }
            Throwable thM2763exceptionOrNullimpl = Result.m2763exceptionOrNullimpl(objM2760constructorimpl);
            if (thM2763exceptionOrNullimpl != null) {
                boolean z = v.a;
                StringBuilder sbA = l.a("Fail to create unclosed ad file: ");
                sbA.append(thM2763exceptionOrNullimpl.getMessage());
                u.b("UnclosedAdDetector", sbA.toString());
            }
            zM2766isSuccessimpl = Result.m2766isSuccessimpl(objM2760constructorimpl);
        }
        this.e = zM2766isSuccessimpl;
    }

    public final void a(s3 ad) {
        Intrinsics.checkNotNullParameter(ad, "ad");
        if (this.e) {
            ad.a(this.a);
            this.d.add(ad);
            a(this.d);
        }
    }

    public final void b(s3 ad) {
        Intrinsics.checkNotNullParameter(ad, "ad");
        if (this.e && this.d.contains(ad)) {
            this.d.remove(ad);
            a(this.d);
        }
    }

    public final List a() {
        if (!this.e) {
            return CollectionsKt__CollectionsKt.emptyList();
        }
        final File file = this.c;
        return (List) new com.vungle.ads.internal.executor.b(((d) this.b).c().submit(new Callable() { // from class: com.vungle.ads.internal.session.b$$ExternalSyntheticLambda1
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return b.a(file);
            }
        })).get(1000L, TimeUnit.MILLISECONDS);
    }

    public final ArrayList b() {
        ArrayList arrayList = new ArrayList();
        if (!this.e) {
            return arrayList;
        }
        List listA = a();
        if (listA != null) {
            arrayList.addAll(listA);
        }
        final File file = this.c;
        ((d) this.b).a.execute(new Runnable() { // from class: com.vungle.ads.internal.session.b$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                b.b(file);
            }
        });
        return arrayList;
    }

    public static final void b(File fileToDelete) {
        Intrinsics.checkNotNullParameter(fileToDelete, "$fileToDelete");
        try {
            o.b(fileToDelete);
        } catch (Exception e) {
            boolean z = v.a;
            StringBuilder sbA = l.a("Fail to delete file ");
            sbA.append(e.getMessage());
            u.b("UnclosedAdDetector", sbA.toString());
        }
    }

    public static final List a(File fileToRead) {
        Intrinsics.checkNotNullParameter(fileToRead, "$fileToRead");
        try {
            String strD = o.d(fileToRead);
            if (strD != null && strD.length() != 0) {
                Json json = f;
                KSerializer<Object> kSerializerSerializer = SerializersKt.serializer(json.getSerializersModule(), Reflection.typeOf(List.class, KTypeProjection.Companion.invariant(Reflection.typeOf(s3.class))));
                Intrinsics.checkNotNull(kSerializerSerializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
                return (List) json.decodeFromString(kSerializerSerializer, strD);
            }
            return new ArrayList();
        } catch (Exception e) {
            boolean z = v.a;
            StringBuilder sbA = l.a("Fail to read unclosed ad file ");
            sbA.append(e.getMessage());
            u.b("UnclosedAdDetector", sbA.toString());
            return new ArrayList();
        }
    }

    public final void a(CopyOnWriteArrayList copyOnWriteArrayList) {
        if (this.e) {
            try {
                Json json = f;
                KSerializer<Object> kSerializerSerializer = SerializersKt.serializer(json.getSerializersModule(), Reflection.typeOf(List.class, KTypeProjection.Companion.invariant(Reflection.typeOf(s3.class))));
                Intrinsics.checkNotNull(kSerializerSerializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
                final String strEncodeToString = json.encodeToString(kSerializerSerializer, copyOnWriteArrayList);
                final File file = this.c;
                ((d) this.b).c().execute(new Runnable() { // from class: com.vungle.ads.internal.session.b$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        b.a(file, strEncodeToString);
                    }
                });
            } catch (Throwable th) {
                boolean z = v.a;
                StringBuilder sbA = l.a("Fail to write unclosed ad file ");
                sbA.append(th.getMessage());
                u.b("UnclosedAdDetector", sbA.toString());
            }
        }
    }

    public static final void a(File fileToWrite, String jsonContent) {
        Intrinsics.checkNotNullParameter(fileToWrite, "$fileToWrite");
        Intrinsics.checkNotNullParameter(jsonContent, "$jsonContent");
        o.a(fileToWrite, jsonContent);
    }
}
