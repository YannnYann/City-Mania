package com.iab.omid.library.unity3d.adsession;

import com.ironsource.C3647i2;

/* JADX INFO: loaded from: classes3.dex */
public enum DeviceCategory {
    CTV("ctv"),
    MOBILE("mobile"),
    OTHER(C3647i2.d);

    private final String deviceCategory;

    DeviceCategory(String str) {
        this.deviceCategory = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.deviceCategory;
    }
}
