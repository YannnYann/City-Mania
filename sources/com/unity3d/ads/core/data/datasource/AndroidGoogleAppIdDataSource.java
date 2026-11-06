package com.unity3d.ads.core.data.datasource;

import android.content.Context;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AndroidGoogleAppIdDataSource.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class AndroidGoogleAppIdDataSource implements GoogleAppIdDataSource {
    public static final Companion Companion = new Companion(null);
    public static final String GOOGLE_APP_ID_RESOURCE_NAME = "google_app_id";
    private final Context context;
    private final Lazy googleAppId$delegate;

    public AndroidGoogleAppIdDataSource(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        this.googleAppId$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.unity3d.ads.core.data.datasource.AndroidGoogleAppIdDataSource$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return AndroidGoogleAppIdDataSource.googleAppId_delegate$lambda$3(this.f$0);
            }
        });
    }

    @Override // com.unity3d.ads.core.data.datasource.GoogleAppIdDataSource
    public String getGoogleAppId() {
        return (String) this.googleAppId$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String googleAppId_delegate$lambda$3(AndroidGoogleAppIdDataSource androidGoogleAppIdDataSource) {
        Object objM2760constructorimpl;
        try {
            Result.Companion companion = Result.Companion;
            objM2760constructorimpl = Result.m2760constructorimpl(Integer.valueOf(androidGoogleAppIdDataSource.context.getResources().getIdentifier(GOOGLE_APP_ID_RESOURCE_NAME, "string", androidGoogleAppIdDataSource.context.getPackageName())));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m2765isFailureimpl(objM2760constructorimpl)) {
            objM2760constructorimpl = null;
        }
        Integer num = (Integer) objM2760constructorimpl;
        if (num == null) {
            return null;
        }
        if (num.intValue() == 0) {
            num = null;
        }
        if (num == null) {
            return null;
        }
        return androidGoogleAppIdDataSource.context.getString(num.intValue());
    }

    /* JADX INFO: compiled from: AndroidGoogleAppIdDataSource.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
