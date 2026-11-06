package com.unity3d.ads;

import java.util.Map;

/* JADX INFO: compiled from: UnityAdsInitModuleListener.kt */
/* JADX INFO: loaded from: classes4.dex */
public interface UnityAdsInitModuleListener {
    public static final Companion Companion = Companion.$$INSTANCE;
    public static final int ERROR_INITIALIZATION_FAILED = 1;
    public static final int ERROR_INTERNAL = 3;
    public static final int ERROR_NO_CONFIG = 2;

    byte[] initParams(Map<String, ? extends Object> map);

    String moduleName();

    void onFailure(String str, int i);

    void onSuccess(byte[] bArr, Map<String, ? extends Object> map);

    /* JADX INFO: compiled from: UnityAdsInitModuleListener.kt */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        public static final int ERROR_INITIALIZATION_FAILED = 1;
        public static final int ERROR_INTERNAL = 3;
        public static final int ERROR_NO_CONFIG = 2;

        private Companion() {
        }
    }
}
