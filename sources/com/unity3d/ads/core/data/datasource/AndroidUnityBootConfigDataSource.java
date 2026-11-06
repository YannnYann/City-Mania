package com.unity3d.ads.core.data.datasource;

import android.content.Context;
import com.ironsource.G5;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.io.TextStreamsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.text.Charsets;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: compiled from: AndroidUnityBootConfigDataSource.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class AndroidUnityBootConfigDataSource implements UnityBootConfigDataSource {
    private final Context context;

    public AndroidUnityBootConfigDataSource(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.unity3d.ads.core.data.datasource.UnityBootConfigDataSource
    public String getValue(String key) {
        Object objM2760constructorimpl;
        Intrinsics.checkNotNullParameter(key, "key");
        try {
            Result.Companion companion = Result.Companion;
            final String str = key + G5.U;
            final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
            InputStream inputStreamOpen = this.context.getAssets().open("bin/Data/boot.config");
            try {
                Intrinsics.checkNotNull(inputStreamOpen);
                TextStreamsKt.forEachLine(new BufferedReader(new InputStreamReader(inputStreamOpen, Charsets.UTF_8), 8192), new Function1() { // from class: com.unity3d.ads.core.data.datasource.AndroidUnityBootConfigDataSource$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return AndroidUnityBootConfigDataSource.getValue$lambda$2$lambda$1$lambda$0(str, ref$ObjectRef, (String) obj);
                    }
                });
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(inputStreamOpen, null);
                objM2760constructorimpl = Result.m2760constructorimpl((String) ref$ObjectRef.element);
            } finally {
            }
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
        return (String) (Result.m2765isFailureimpl(objM2760constructorimpl) ? null : objM2760constructorimpl);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r3v3, types: [T, java.lang.Object, java.lang.String] */
    public static final Unit getValue$lambda$2$lambda$1$lambda$0(String str, Ref$ObjectRef ref$ObjectRef, String line) {
        Intrinsics.checkNotNullParameter(line, "line");
        if (StringsKt__StringsJVMKt.startsWith$default(line, str, false, 2, null)) {
            ?? Substring = line.substring(str.length());
            Intrinsics.checkNotNullExpressionValue(Substring, "substring(...)");
            ref$ObjectRef.element = Substring;
        }
        return Unit.INSTANCE;
    }
}
