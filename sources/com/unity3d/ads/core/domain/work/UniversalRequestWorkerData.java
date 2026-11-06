package com.unity3d.ads.core.domain.work;

import androidx.work.Data;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UniversalRequestWorkerData.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class UniversalRequestWorkerData {
    public static final Companion Companion = new Companion(null);
    public static final String KEY_UNIVERSAL_REQUEST_ID = "universalRequestId";
    private final String universalRequestId;

    public UniversalRequestWorkerData(String universalRequestId) {
        Intrinsics.checkNotNullParameter(universalRequestId, "universalRequestId");
        this.universalRequestId = universalRequestId;
    }

    public final Data invoke() throws Throwable {
        Data dataBuild = new Data.Builder().putString(KEY_UNIVERSAL_REQUEST_ID, this.universalRequestId).build();
        Intrinsics.checkNotNullExpressionValue(dataBuild, "build(...)");
        return dataBuild;
    }

    /* JADX INFO: compiled from: UniversalRequestWorkerData.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
