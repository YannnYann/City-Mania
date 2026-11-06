package com.google.android.libraries.ads.mobile.sdk.internal.inspector;

import ads_mobile_sdk.ob;
import ads_mobile_sdk.y1;
import ads_mobile_sdk.z1;
import android.os.Build;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.annotations.SerializedName;
import com.ironsource.C3939y2;
import com.ironsource.R6;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class InspectorData {

    @SerializedName("adSlots")
    public final JsonObject adSlotData;

    @SerializedName("adapters")
    public final JsonArray adapterData;

    @SerializedName("appInfo")
    public final JsonObject appInfo;

    @SerializedName("applicationMuted")
    public final boolean applicationMuted;

    @SerializedName("applicationVolume")
    public final float applicationVolume;

    @SerializedName("cld")
    public final JsonObject cldData;

    @SerializedName("decagonVersion")
    public final String decagonVersion;

    @SerializedName("gesture")
    public final String gesture;

    @SerializedName("internalSdkVersion")
    public final String internalSdkVersion;

    @SerializedName("isGamRegisteredTestDevice")
    public final boolean isGamRegisteredTestDevice;

    @SerializedName("isSimulator")
    public final boolean isSimulator;

    @SerializedName("maxAdContentRating")
    public final String maxAdContentRating;

    @SerializedName("networkExtras")
    public final String networkExtras;

    @SerializedName("openAction")
    public final String openAction;

    @SerializedName("osVersion")
    public final String osVersion;

    @SerializedName(R6.H)
    public final String platform;

    @SerializedName(R6.L)
    public final String plugin;

    @SerializedName("privacy")
    public final JsonObject privacy;

    @SerializedName("publisherFirstPartyIdEnabled")
    public final int publisherFirstPartyIdEnabled;

    @SerializedName("sdkVersion")
    public final String sdkVersion;

    @SerializedName(C3939y2.s)
    public final JsonObject serverData;

    @SerializedName("uiStorage")
    public final JsonObject uiStorage;

    @SerializedName("userDisk")
    public final JsonObject userStorage;

    public InspectorData(JsonObject appInfo, String sdkVersion, String gesture, boolean z, boolean z2, JsonArray adapterData, String networkExtras, JsonObject serverData, JsonObject cldData, JsonObject uiStorage, JsonObject userStorage, String openAction, JsonObject adSlotData, float f, boolean z3, String maxAdContentRating, int i, JsonObject privacy, String plugin) {
        Intrinsics.checkNotNullParameter(appInfo, "appInfo");
        Intrinsics.checkNotNullParameter(sdkVersion, "sdkVersion");
        Intrinsics.checkNotNullParameter(gesture, "gesture");
        Intrinsics.checkNotNullParameter(adapterData, "adapterData");
        Intrinsics.checkNotNullParameter(networkExtras, "networkExtras");
        Intrinsics.checkNotNullParameter(serverData, "serverData");
        Intrinsics.checkNotNullParameter(cldData, "cldData");
        Intrinsics.checkNotNullParameter(uiStorage, "uiStorage");
        Intrinsics.checkNotNullParameter(userStorage, "userStorage");
        Intrinsics.checkNotNullParameter(openAction, "openAction");
        Intrinsics.checkNotNullParameter(adSlotData, "adSlotData");
        Intrinsics.checkNotNullParameter(maxAdContentRating, "maxAdContentRating");
        Intrinsics.checkNotNullParameter(privacy, "privacy");
        Intrinsics.checkNotNullParameter(plugin, "plugin");
        this.appInfo = appInfo;
        this.sdkVersion = sdkVersion;
        this.gesture = gesture;
        this.isGamRegisteredTestDevice = z;
        this.isSimulator = z2;
        this.adapterData = adapterData;
        this.networkExtras = networkExtras;
        this.serverData = serverData;
        this.cldData = cldData;
        this.uiStorage = uiStorage;
        this.userStorage = userStorage;
        this.openAction = openAction;
        this.adSlotData = adSlotData;
        this.applicationVolume = f;
        this.applicationMuted = z3;
        this.maxAdContentRating = maxAdContentRating;
        this.publisherFirstPartyIdEnabled = i;
        this.privacy = privacy;
        this.plugin = plugin;
        this.internalSdkVersion = sdkVersion;
        this.decagonVersion = sdkVersion;
        this.platform = "ANDROID";
        String RELEASE = Build.VERSION.RELEASE;
        Intrinsics.checkNotNullExpressionValue(RELEASE, "RELEASE");
        this.osVersion = RELEASE;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof InspectorData)) {
            return false;
        }
        InspectorData inspectorData = (InspectorData) obj;
        return Intrinsics.areEqual(this.appInfo, inspectorData.appInfo) && Intrinsics.areEqual(this.sdkVersion, inspectorData.sdkVersion) && Intrinsics.areEqual(this.gesture, inspectorData.gesture) && this.isGamRegisteredTestDevice == inspectorData.isGamRegisteredTestDevice && this.isSimulator == inspectorData.isSimulator && Intrinsics.areEqual(this.adapterData, inspectorData.adapterData) && Intrinsics.areEqual(this.networkExtras, inspectorData.networkExtras) && Intrinsics.areEqual(this.serverData, inspectorData.serverData) && Intrinsics.areEqual(this.cldData, inspectorData.cldData) && Intrinsics.areEqual(this.uiStorage, inspectorData.uiStorage) && Intrinsics.areEqual(this.userStorage, inspectorData.userStorage) && Intrinsics.areEqual(this.openAction, inspectorData.openAction) && Intrinsics.areEqual(this.adSlotData, inspectorData.adSlotData) && Float.compare(this.applicationVolume, inspectorData.applicationVolume) == 0 && this.applicationMuted == inspectorData.applicationMuted && Intrinsics.areEqual(this.maxAdContentRating, inspectorData.maxAdContentRating) && this.publisherFirstPartyIdEnabled == inspectorData.publisherFirstPartyIdEnabled && Intrinsics.areEqual(this.privacy, inspectorData.privacy) && Intrinsics.areEqual(this.plugin, inspectorData.plugin);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v24 */
    /* JADX WARN: Type inference failed for: r2v25 */
    /* JADX WARN: Type inference failed for: r2v26 */
    /* JADX WARN: Type inference failed for: r2v27 */
    /* JADX WARN: Type inference failed for: r2v3, types: [int] */
    /* JADX WARN: Type inference failed for: r2v5, types: [int] */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [int] */
    /* JADX WARN: Type inference failed for: r3v2 */
    public final int hashCode() {
        int iA = ob.a(this.gesture, ob.a(this.sdkVersion, this.appInfo.hashCode() * 31, 31), 31);
        boolean z = this.isGamRegisteredTestDevice;
        ?? r2 = z;
        if (z) {
            r2 = 1;
        }
        int i = (iA + r2) * 31;
        boolean z2 = this.isSimulator;
        ?? r22 = z2;
        if (z2) {
            r22 = 1;
        }
        int iHashCode = (Float.hashCode(this.applicationVolume) + z1.a(this.adSlotData, ob.a(this.openAction, z1.a(this.userStorage, z1.a(this.uiStorage, z1.a(this.cldData, z1.a(this.serverData, ob.a(this.networkExtras, (this.adapterData.hashCode() + ((i + r22) * 31)) * 31, 31), 31), 31), 31), 31), 31), 31)) * 31;
        boolean z3 = this.applicationMuted;
        return this.plugin.hashCode() + z1.a(this.privacy, y1.a(this.publisherFirstPartyIdEnabled, ob.a(this.maxAdContentRating, (iHashCode + (z3 ? 1 : z3)) * 31, 31), 31), 31);
    }

    public final String toString() {
        return "InspectorData(appInfo=" + this.appInfo + ", sdkVersion=" + this.sdkVersion + ", gesture=" + this.gesture + ", isGamRegisteredTestDevice=" + this.isGamRegisteredTestDevice + ", isSimulator=" + this.isSimulator + ", adapterData=" + this.adapterData + ", networkExtras=" + this.networkExtras + ", serverData=" + this.serverData + ", cldData=" + this.cldData + ", uiStorage=" + this.uiStorage + ", userStorage=" + this.userStorage + ", openAction=" + this.openAction + ", adSlotData=" + this.adSlotData + ", applicationVolume=" + this.applicationVolume + ", applicationMuted=" + this.applicationMuted + ", maxAdContentRating=" + this.maxAdContentRating + ", publisherFirstPartyIdEnabled=" + this.publisherFirstPartyIdEnabled + ", privacy=" + this.privacy + ", plugin=" + this.plugin + ")";
    }
}
