package io.bidmachine.internal;

import android.content.Context;
import io.bidmachine.util.file.FileUtilsKt;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.io.FilesKt__FileReadWriteKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringNumberConversionsKt;
import kotlin.text.StringsKt__StringsKt;
import kotlin.text.StringsKt___StringsKt;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public final class J {
    public static final a b = new a(null);
    public final Context a;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public J(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
        this.a = applicationContext;
    }

    public final Object a(I startupMetrics) {
        Intrinsics.checkNotNullParameter(startupMetrics, "startupMetrics");
        try {
            Result.Companion companion = Result.Companion;
            File fileB = b();
            if (fileB.exists()) {
                File file = new File(fileB, startupMetrics.b() + ".trace.json");
                String string = b(startupMetrics).toString();
                Intrinsics.checkNotNullExpressionValue(string, "startupMetrics.toJSONObject().toString()");
                FilesKt__FileReadWriteKt.writeText$default(file, string, null, 2, null);
            }
            return Result.m2760constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            return Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
    }

    public final File b() {
        File file = new File(this.a.getFilesDir(), "bm/quality/startup");
        file.mkdirs();
        return file;
    }

    public final JSONObject b(I i) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("startInitTime", i.b());
        jSONObject.put("initDuration", i.a());
        jSONObject.put("finished", i.c());
        return jSONObject;
    }

    public final List a(long j) {
        I iA;
        List listEmptyList = null;
        try {
            File fileB = b();
            if (!fileB.exists()) {
                listEmptyList = CollectionsKt__CollectionsKt.emptyList();
            } else {
                File[] fileArrListFiles = fileB.listFiles();
                if (fileArrListFiles == null) {
                    fileArrListFiles = new File[0];
                }
                ArrayList<File> arrayList = new ArrayList();
                for (File file : fileArrListFiles) {
                    String name = file.getName();
                    Intrinsics.checkNotNullExpressionValue(name, "it.name");
                    int iIndexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) name, ".", 0, false, 6, (Object) null);
                    if (iIndexOf$default >= 1) {
                        String name2 = file.getName();
                        Intrinsics.checkNotNullExpressionValue(name2, "it.name");
                        Long longOrNull = StringsKt__StringNumberConversionsKt.toLongOrNull(StringsKt___StringsKt.take(name2, iIndexOf$default));
                        if (longOrNull != null && longOrNull.longValue() > j) {
                            arrayList.add(file);
                        }
                    }
                }
                ArrayList arrayList2 = new ArrayList();
                for (File it : arrayList) {
                    Intrinsics.checkNotNullExpressionValue(it, "it");
                    String safely = FileUtilsKt.readSafely(it);
                    if (safely != null) {
                        arrayList2.add(safely);
                    }
                }
                ArrayList arrayList3 = new ArrayList();
                Iterator it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    try {
                        iA = a(new JSONObject((String) it2.next()));
                    } catch (Throwable unused) {
                        iA = null;
                    }
                    if (iA != null) {
                        arrayList3.add(iA);
                    }
                }
                listEmptyList = arrayList3;
            }
        } catch (Throwable unused2) {
        }
        return listEmptyList == null ? CollectionsKt__CollectionsKt.emptyList() : listEmptyList;
    }

    public final void a() {
        try {
            Result.Companion companion = Result.Companion;
            Result.m2760constructorimpl(Boolean.valueOf(FileUtilsKt.deleteFile(b())));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
    }

    public final I a(JSONObject jSONObject) {
        try {
            return new I(jSONObject.getLong("startInitTime"), jSONObject.getLong("initDuration"), jSONObject.getBoolean("finished"));
        } catch (Throwable unused) {
            return null;
        }
    }
}
