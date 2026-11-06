package com.google.android.gms.common;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.core.os.BundleCompat;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.12.0 */
/* JADX INFO: loaded from: classes3.dex */
@SafeParcelable.Class(creator = "ConnectionResultCreator")
public final class ConnectionResult extends AbstractSafeParcelable {
    public static final int API_DISABLED = 23;
    public static final int API_DISABLED_FOR_CONNECTION = 24;
    public static final int API_UNAVAILABLE = 16;
    public static final int CANCELED = 13;
    public static final int DEVELOPER_ERROR = 10;

    @Deprecated
    public static final int DRIVE_EXTERNAL_STORAGE_REQUIRED = 1500;
    public static final int INTERNAL_ERROR = 8;
    public static final int INTERRUPTED = 15;
    public static final int INVALID_ACCOUNT = 5;
    public static final int LICENSE_CHECK_FAILED = 11;
    public static final int NETWORK_ERROR = 7;
    public static final int RESOLUTION_ACTIVITY_NOT_FOUND = 22;
    public static final int RESOLUTION_REQUIRED = 6;
    public static final int RESTRICTED_PROFILE = 20;
    public static final int SERVICE_DISABLED = 3;
    public static final int SERVICE_INVALID = 9;
    public static final int SERVICE_MISSING = 1;
    public static final int SERVICE_MISSING_PERMISSION = 19;
    public static final int SERVICE_UPDATING = 18;
    public static final int SERVICE_VERSION_UPDATE_REQUIRED = 2;
    public static final int SIGN_IN_FAILED = 17;
    public static final int SIGN_IN_REQUIRED = 4;
    public static final int SUCCESS = 0;
    public static final int TIMEOUT = 14;

    @KeepForSdk
    public static final int UNKNOWN = -1;

    @SafeParcelable.VersionField(id = 1)
    final int zza;

    @SafeParcelable.Field(getter = "getErrorCode", id = 2)
    private final int zzb;

    @SafeParcelable.Field(getter = "getResolution", id = 3)
    private final PendingIntent zzc;

    @SafeParcelable.Field(getter = "getErrorMessage", id = 4)
    private final String zzd;

    @SafeParcelable.Field(getter = "getClientMethodKey", id = 5)
    private final Integer zze;

    @SafeParcelable.Field(getter = "getErrorResolutionInfo", id = 6)
    private final Bundle zzf;

    @ShowFirstParty
    @KeepForSdk
    public static final ConnectionResult RESULT_SUCCESS = new ConnectionResult(0);
    public static final Parcelable.Creator<ConnectionResult> CREATOR = new zza();

    public ConnectionResult(int i) {
        this(i, null, null);
    }

    @SafeParcelable.Constructor
    public ConnectionResult(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) int i2, @SafeParcelable.Param(id = 3) PendingIntent pendingIntent, @SafeParcelable.Param(id = 4) String str, @SafeParcelable.Param(id = 5) Integer num, @SafeParcelable.Param(id = 6) Bundle bundle) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = pendingIntent;
        this.zzd = str;
        this.zze = num;
        this.zzf = bundle;
    }

    public ConnectionResult(int i, PendingIntent pendingIntent) {
        this(i, pendingIntent, null);
    }

    public static String zza(int i) {
        if (i == 99) {
            return "UNFINISHED";
        }
        if (i == 1500) {
            return "DRIVE_EXTERNAL_STORAGE_REQUIRED";
        }
        switch (i) {
            case -1:
                return "UNKNOWN";
            case 0:
                return "SUCCESS";
            case 1:
                return "SERVICE_MISSING";
            case 2:
                return "SERVICE_VERSION_UPDATE_REQUIRED";
            case 3:
                return "SERVICE_DISABLED";
            case 4:
                return "SIGN_IN_REQUIRED";
            case 5:
                return "INVALID_ACCOUNT";
            case 6:
                return "RESOLUTION_REQUIRED";
            case 7:
                return "NETWORK_ERROR";
            case 8:
                return "INTERNAL_ERROR";
            case 9:
                return "SERVICE_INVALID";
            case 10:
                return "DEVELOPER_ERROR";
            case 11:
                return "LICENSE_CHECK_FAILED";
            default:
                switch (i) {
                    case 13:
                        return "CANCELED";
                    case 14:
                        return "TIMEOUT";
                    case 15:
                        return "INTERRUPTED";
                    case 16:
                        return "API_UNAVAILABLE";
                    case 17:
                        return "SIGN_IN_FAILED";
                    case 18:
                        return "SERVICE_UPDATING";
                    case 19:
                        return "SERVICE_MISSING_PERMISSION";
                    case 20:
                        return "RESTRICTED_PROFILE";
                    case 21:
                        return "API_VERSION_UPDATE_REQUIRED";
                    case 22:
                        return "RESOLUTION_ACTIVITY_NOT_FOUND";
                    case 23:
                        return "API_DISABLED";
                    case 24:
                        return "API_DISABLED_FOR_CONNECTION";
                    case 25:
                        return "API_INSTALL_REQUIRED";
                    case 26:
                        return "FEATURE_MISSING_OR_NEEDS_UPDATE";
                    default:
                        StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 20);
                        sb.append("UNKNOWN_ERROR_CODE(");
                        sb.append(i);
                        sb.append(")");
                        return sb.toString();
                }
        }
    }

    @KeepForSdk
    public ConnectionResult duplicateWithResolution(PendingIntent pendingIntent) {
        Bundle bundle;
        Bundle bundle2 = this.zzf;
        if (bundle2 != null) {
            bundle = new Bundle(bundle2);
            if (bundle2.containsKey("pendingIntent")) {
                bundle.putParcelable("pendingIntent", pendingIntent);
            }
        } else {
            bundle = null;
        }
        return new ConnectionResult(this.zza, this.zzb, pendingIntent, this.zzd, this.zze, bundle);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ConnectionResult) {
            ConnectionResult connectionResult = (ConnectionResult) obj;
            if (this.zzb == connectionResult.zzb && Objects.equals(this.zzc, connectionResult.zzc) && Objects.equals(this.zzd, connectionResult.zzd) && Objects.equals(this.zze, connectionResult.zze) && com.google.android.gms.common.internal.Objects.checkBundlesEquality(this.zzf, connectionResult.zzf)) {
                return true;
            }
        }
        return false;
    }

    @KeepForSdk
    public Integer getClientMethodKey() {
        return this.zze;
    }

    public int getErrorCode() {
        return this.zzb;
    }

    public String getErrorMessage() {
        return this.zzd;
    }

    @KeepForSdk
    public Bundle getErrorResolutionInfo() {
        return this.zzf;
    }

    public PendingIntent getResolution() {
        Bundle bundle = this.zzf;
        PendingIntent pendingIntent = bundle != null ? (PendingIntent) BundleCompat.getParcelable(bundle, "pendingIntent", PendingIntent.class) : null;
        return pendingIntent == null ? this.zzc : pendingIntent;
    }

    public boolean hasResolution() {
        return (this.zzb == 0 || getResolution() == null) ? false : true;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.zzb), this.zzc, this.zzd, this.zze, Boolean.valueOf(this.zzf != null));
    }

    public boolean isSuccess() {
        return this.zzb == 0;
    }

    public void startResolutionForResult(Activity activity, int i) throws IntentSender.SendIntentException {
        if (hasResolution()) {
            PendingIntent resolution = getResolution();
            Preconditions.checkNotNull(resolution);
            activity.startIntentSenderForResult(resolution.getIntentSender(), i, null, 0, 0, 0);
        }
    }

    public String toString() {
        Objects.ToStringHelper stringHelper = com.google.android.gms.common.internal.Objects.toStringHelper(this);
        stringHelper.add("statusCode", zza(this.zzb));
        stringHelper.add("resolution", this.zzc);
        stringHelper.add("message", this.zzd);
        stringHelper.add("clientMethodKey", this.zze);
        stringHelper.add("errorResolutionInfo", this.zzf);
        return stringHelper.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int i2 = this.zza;
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, i2);
        SafeParcelWriter.writeInt(parcel, 2, getErrorCode());
        SafeParcelWriter.writeParcelable(parcel, 3, getResolution(), i, false);
        SafeParcelWriter.writeString(parcel, 4, getErrorMessage(), false);
        SafeParcelWriter.writeIntegerObject(parcel, 5, getClientMethodKey(), false);
        SafeParcelWriter.writeBundle(parcel, 6, getErrorResolutionInfo(), false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public ConnectionResult(int i, PendingIntent pendingIntent, String str) {
        this(1, i, pendingIntent, str, null, null);
    }

    @KeepForSdk
    public ConnectionResult(int i, PendingIntent pendingIntent, String str, Bundle bundle) {
        this(1, i, pendingIntent, str, null, bundle);
    }

    @KeepForSdk
    public ConnectionResult(int i, PendingIntent pendingIntent, String str, Integer num) {
        this(1, i, pendingIntent, str, num, null);
    }

    @KeepForSdk
    public ConnectionResult(int i, PendingIntent pendingIntent, String str, Integer num, Bundle bundle) {
        this(1, i, pendingIntent, str, num, bundle);
    }
}
