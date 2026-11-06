package com.google.android.gms.common.api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.12.0 */
/* JADX INFO: loaded from: classes3.dex */
@KeepForSdk
@SafeParcelable.Class(creator = "ApiMetadataCreator")
public final class ApiMetadata extends AbstractSafeParcelable {
    public static final ApiMetadata zza;

    @SafeParcelable.Field(getter = "getComplianceOptions", id = 1)
    private final ComplianceOptions zzc;

    @SafeParcelable.Field(getter = "isCallbackSupportEnabled", id = 2)
    private final boolean zzd;

    @SafeParcelable.Field(getter = "getSourceUserContext", id = 3)
    private final SourceUserContext zze;
    private boolean zzf;
    public static final Parcelable.Creator<ApiMetadata> CREATOR = zza.zza();
    private static final ApiMetadata zzb = newBuilder().build();

    /* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.12.0 */
    @KeepForSdk
    public static final class Builder {
        private ComplianceOptions zza;
        private boolean zzb = false;
        private SourceUserContext zzc;
        private boolean zzd;

        @KeepForSdk
        public ApiMetadata build() {
            ApiMetadata apiMetadata = new ApiMetadata(this.zza, this.zzb, this.zzc);
            apiMetadata.zza(this.zzd);
            return apiMetadata;
        }

        @KeepForSdk
        public Builder setCallbackSupportEnabled(boolean z) {
            this.zzb = z;
            return this;
        }

        @KeepForSdk
        public Builder setComplianceOptions(ComplianceOptions complianceOptions) {
            this.zza = complianceOptions;
            return this;
        }

        @KeepForSdk
        public Builder setSourceUserContext(SourceUserContext sourceUserContext) {
            this.zzc = sourceUserContext;
            return this;
        }

        public final /* synthetic */ Builder zza(boolean z) {
            this.zzd = z;
            return this;
        }
    }

    static {
        Builder builderNewBuilder = newBuilder();
        builderNewBuilder.zza(true);
        zza = builderNewBuilder.build();
    }

    @SafeParcelable.Constructor
    public ApiMetadata(@SafeParcelable.Param(id = 1) ComplianceOptions complianceOptions, @SafeParcelable.Param(id = 2) boolean z, @SafeParcelable.Param(id = 3) SourceUserContext sourceUserContext) {
        this.zzc = complianceOptions;
        this.zzd = z;
        this.zze = sourceUserContext;
    }

    @KeepForSdk
    public static final ApiMetadata fromComplianceOptions(ComplianceOptions complianceOptions) {
        Builder builderNewBuilder = newBuilder();
        builderNewBuilder.setComplianceOptions(complianceOptions);
        return builderNewBuilder.build();
    }

    @KeepForSdk
    public static final ApiMetadata getEmptyInstance() {
        return zzb;
    }

    @KeepForSdk
    public static Builder newBuilder() {
        return new Builder();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ApiMetadata)) {
            return false;
        }
        ApiMetadata apiMetadata = (ApiMetadata) obj;
        return Objects.equals(this.zzc, apiMetadata.zzc) && this.zzf == apiMetadata.zzf && this.zzd == apiMetadata.zzd && Objects.equals(this.zze, apiMetadata.zze);
    }

    @KeepForSdk
    public SourceUserContext getSourceUserContext() {
        return this.zze;
    }

    public final int hashCode() {
        return Objects.hash(this.zzc, Boolean.valueOf(this.zzf), Boolean.valueOf(this.zzd), this.zze);
    }

    @KeepForSdk
    public Builder toBuilder() {
        Builder builderNewBuilder = newBuilder();
        builderNewBuilder.setComplianceOptions(this.zzc);
        builderNewBuilder.setCallbackSupportEnabled(this.zzd);
        builderNewBuilder.setSourceUserContext(this.zze);
        builderNewBuilder.zza(this.zzf);
        return builderNewBuilder;
    }

    public final String toString() {
        SourceUserContext sourceUserContext = this.zze;
        String strValueOf = String.valueOf(this.zzc);
        String strValueOf2 = String.valueOf(sourceUserContext);
        int length = strValueOf.length();
        boolean z = this.zzd;
        StringBuilder sb = new StringBuilder(length + 55 + String.valueOf(z).length() + 20 + strValueOf2.length() + 1);
        sb.append("ApiMetadata(complianceOptions=");
        sb.append(strValueOf);
        sb.append(", callbackSupportEnabled=");
        sb.append(z);
        sb.append(", sourceUserContext=");
        sb.append(strValueOf2);
        sb.append(")");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        if (this.zzf) {
            parcel.setDataPosition(parcel.dataPosition() - 4);
            parcel.setDataSize(parcel.dataSize() - 4);
            return;
        }
        parcel.writeInt(-204102970);
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 1, this.zzc, i, false);
        SafeParcelWriter.writeBoolean(parcel, 2, this.zzd);
        SafeParcelWriter.writeParcelable(parcel, 3, getSourceUserContext(), i, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final /* synthetic */ void zza(boolean z) {
        this.zzf = z;
    }
}
