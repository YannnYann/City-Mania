package com.google.android.libraries.ads.mobile.sdk.internal.signals;

import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class SdkEnvironment {

    @SerializedName("instant_app")
    public Boolean isInstantApp;

    @SerializedName("is_privileged_process")
    public boolean isPrivilegedProcess;

    public SdkEnvironment() {
        this(0);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SdkEnvironment)) {
            return false;
        }
        SdkEnvironment sdkEnvironment = (SdkEnvironment) obj;
        return Intrinsics.areEqual(this.isInstantApp, sdkEnvironment.isInstantApp) && this.isPrivilegedProcess == sdkEnvironment.isPrivilegedProcess;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3 */
    public final int hashCode() {
        Boolean bool = this.isInstantApp;
        int iHashCode = (bool == null ? 0 : bool.hashCode()) * 31;
        boolean z = this.isPrivilegedProcess;
        ?? r1 = z;
        if (z) {
            r1 = 1;
        }
        return iHashCode + r1;
    }

    public final String toString() {
        return "SdkEnvironment(isInstantApp=" + this.isInstantApp + ", isPrivilegedProcess=" + this.isPrivilegedProcess + ")";
    }

    public SdkEnvironment(Boolean bool, boolean z) {
        this.isInstantApp = bool;
        this.isPrivilegedProcess = z;
    }

    public /* synthetic */ SdkEnvironment(int i) {
        this(null, false);
    }
}
