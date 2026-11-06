package ads_mobile_sdk;

import com.google.gson.JsonObject;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.Deferred;

/* JADX INFO: loaded from: classes.dex */
public final class vc1 {
    public final String a;
    public final Deferred b;
    public final String c;
    public final JsonObject d;
    public final String e;
    public final boolean f;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof vc1)) {
            return false;
        }
        vc1 vc1Var = (vc1) obj;
        return Intrinsics.areEqual(this.a, vc1Var.a) && Intrinsics.areEqual(this.b, vc1Var.b) && Intrinsics.areEqual(this.c, vc1Var.c) && Intrinsics.areEqual(this.d, vc1Var.d) && Intrinsics.areEqual(this.e, vc1Var.e) && this.f == vc1Var.f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v3, types: [int] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v6 */
    public final int hashCode() {
        String str = this.a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        Deferred deferred = this.b;
        int iHashCode2 = (iHashCode + (deferred == null ? 0 : deferred.hashCode())) * 31;
        String str2 = this.c;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        JsonObject jsonObject = this.d;
        int iHashCode4 = (iHashCode3 + (jsonObject == null ? 0 : jsonObject.hashCode())) * 31;
        String str3 = this.e;
        int iHashCode5 = (iHashCode4 + (str3 != null ? str3.hashCode() : 0)) * 31;
        boolean z = this.f;
        ?? r1 = z;
        if (z) {
            r1 = 1;
        }
        return iHashCode5 + r1;
    }

    public final String toString() {
        return "InlineAd(html=" + this.a + ", bodyDeferred=" + this.b + ", baseUrl=" + this.c + ", adJson=" + this.d + ", adConfigKey=" + this.e + ", hasMultiAdConfigKey=" + this.f + ")";
    }

    public vc1(String str, Deferred deferred, String str2, JsonObject jsonObject, String str3, boolean z) {
        this.a = str;
        this.b = deferred;
        this.c = str2;
        this.d = jsonObject;
        this.e = str3;
        this.f = z;
    }
}
