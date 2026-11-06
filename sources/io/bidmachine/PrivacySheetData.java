package io.bidmachine;

import io.bidmachine.rendering.model.PrivacySheetParams;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class PrivacySheetData {
    private final LabelData labelData;
    private final PrivacySheetParams privacySheetParams;

    public PrivacySheetData(LabelData labelData, PrivacySheetParams privacySheetParams) {
        Intrinsics.checkNotNullParameter(labelData, "labelData");
        Intrinsics.checkNotNullParameter(privacySheetParams, "privacySheetParams");
        this.labelData = labelData;
        this.privacySheetParams = privacySheetParams;
    }

    public static /* synthetic */ PrivacySheetData copy$default(PrivacySheetData privacySheetData, LabelData labelData, PrivacySheetParams privacySheetParams, int i, Object obj) {
        if ((i & 1) != 0) {
            labelData = privacySheetData.labelData;
        }
        if ((i & 2) != 0) {
            privacySheetParams = privacySheetData.privacySheetParams;
        }
        return privacySheetData.copy(labelData, privacySheetParams);
    }

    public final LabelData component1() {
        return this.labelData;
    }

    public final PrivacySheetParams component2() {
        return this.privacySheetParams;
    }

    public final PrivacySheetData copy(LabelData labelData, PrivacySheetParams privacySheetParams) {
        Intrinsics.checkNotNullParameter(labelData, "labelData");
        Intrinsics.checkNotNullParameter(privacySheetParams, "privacySheetParams");
        return new PrivacySheetData(labelData, privacySheetParams);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PrivacySheetData)) {
            return false;
        }
        PrivacySheetData privacySheetData = (PrivacySheetData) obj;
        return Intrinsics.areEqual(this.labelData, privacySheetData.labelData) && Intrinsics.areEqual(this.privacySheetParams, privacySheetData.privacySheetParams);
    }

    public final LabelData getLabelData() {
        return this.labelData;
    }

    public final PrivacySheetParams getPrivacySheetParams() {
        return this.privacySheetParams;
    }

    public int hashCode() {
        return (this.labelData.hashCode() * 31) + this.privacySheetParams.hashCode();
    }

    public String toString() {
        return "PrivacySheetData(labelData=" + this.labelData + ", privacySheetParams=" + this.privacySheetParams + ')';
    }
}
