package com.google.android.gms.libs.throttling;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.unity3d.services.UnityAdsConstants;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.12.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zze implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        int i = UnityAdsConstants.AdOperations.SHOW_TIMEOUT_MS;
        ThrottlingLimits throttlingLimits = null;
        boolean z = false;
        ThrottlingOverride[] throttlingOverrideArr = null;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            int fieldId = SafeParcelReader.getFieldId(header);
            if (fieldId == 1) {
                z = SafeParcelReader.readBoolean(parcel, header);
            } else if (fieldId == 2) {
                throttlingLimits = (ThrottlingLimits) SafeParcelReader.createParcelable(parcel, header, ThrottlingLimits.CREATOR);
            } else if (fieldId == 3) {
                throttlingOverrideArr = (ThrottlingOverride[]) SafeParcelReader.createTypedArray(parcel, header, ThrottlingOverride.CREATOR);
            } else if (fieldId != 4) {
                SafeParcelReader.skipUnknownField(parcel, header);
            } else {
                i = SafeParcelReader.readInt(parcel, header);
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new ThrottlingPolicy(z, throttlingLimits, throttlingOverrideArr, i);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new ThrottlingPolicy[i];
    }
}
