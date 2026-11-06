package com.unity3d.ads.core.data.datasource;

/* JADX INFO: compiled from: UnityBootConfigDataSource.kt */
/* JADX INFO: loaded from: classes4.dex */
public interface UnityBootConfigDataSource {
    public static final String BUILD_GUID = "build-guid";
    public static final Companion Companion = Companion.$$INSTANCE;

    String getValue(String str);

    /* JADX INFO: compiled from: UnityBootConfigDataSource.kt */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        public static final String BUILD_GUID = "build-guid";

        private Companion() {
        }
    }
}
