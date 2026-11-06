package ads_mobile_sdk;

import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class m83 {

    @SerializedName("name")
    public final String a;

    @SerializedName("adapter_version")
    public final String b;

    @SerializedName("sdk_version")
    public final String c;

    @SerializedName("signals")
    public String d;

    @SerializedName("signal_error")
    public String e;

    @SerializedName("signal_error_code")
    public Integer f;

    @SerializedName("latency")
    public Long g;

    public m83() {
        this(null, null, null, null, null, Sdk.SDKError.Reason.ASSET_FAILED_MAX_SPACE_EXCEEDED_VALUE);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof m83)) {
            return false;
        }
        m83 m83Var = (m83) obj;
        return Intrinsics.areEqual(this.a, m83Var.a) && Intrinsics.areEqual(this.b, m83Var.b) && Intrinsics.areEqual(this.c, m83Var.c) && Intrinsics.areEqual(this.d, m83Var.d) && Intrinsics.areEqual(this.e, m83Var.e) && Intrinsics.areEqual(this.f, m83Var.f) && Intrinsics.areEqual(this.g, m83Var.g);
    }

    public final int hashCode() {
        String str = this.a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.c;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.d;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.e;
        int iHashCode5 = (iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        Integer num = this.f;
        int iHashCode6 = (iHashCode5 + (num == null ? 0 : num.hashCode())) * 31;
        Long l = this.g;
        return iHashCode6 + (l != null ? l.hashCode() : 0);
    }

    public final String toString() {
        return "RtbAdapterData(adapterClassName=" + this.a + ", adapterVersion=" + this.b + ", sdkVersion=" + this.c + ", signals=" + this.d + ", signalErrorMessage=" + this.e + ", signalErrorCode=" + this.f + ", latency=" + this.g + ")";
    }

    public /* synthetic */ m83(String str, String str2, String str3, String str4, Integer num, int i) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, null, (i & 16) != 0 ? null : str4, (i & 32) != 0 ? null : num, null);
    }

    public m83(String str, String str2, String str3, String str4, String str5, Integer num, Long l) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = str5;
        this.f = num;
        this.g = l;
    }
}
