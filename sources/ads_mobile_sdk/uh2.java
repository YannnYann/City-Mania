package ads_mobile_sdk;

import android.widget.ImageView;
import com.google.android.libraries.ads.mobile.sdk.banner.AdSize;
import com.google.android.libraries.ads.mobile.sdk.common.AdChoicesPlacement;
import com.google.android.libraries.ads.mobile.sdk.common.AdRequest;
import com.google.android.libraries.ads.mobile.sdk.common.VideoOptions;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd;
import com.google.android.libraries.ads.mobile.sdk.rewarded.ServerSideVerificationOptions;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class uh2 {
    public final String a;
    public final j53 b;
    public final AdChoicesPlacement c;
    public final AdRequest d;
    public final AdSize e;
    public final boolean f;
    public final List g;
    public final boolean h;
    public final NativeAd.NativeMediaAspectRatio i;
    public final ServerSideVerificationOptions j;
    public final VideoOptions k;
    public final String l;
    public final boolean m;
    public final ImageView.ScaleType n;
    public final int o;

    public uh2(String adUnitId, j53 format, AdChoicesPlacement adChoicesPosition, AdRequest adRequest, AdSize adSize, boolean z, List list, boolean z2, NativeAd.NativeMediaAspectRatio mediaAspectRatio, ServerSideVerificationOptions serverSideVerificationOptions, VideoOptions videoOptions, String bannerPosition, boolean z3, ImageView.ScaleType imageScaleType, int i) {
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(format, "format");
        Intrinsics.checkNotNullParameter(adChoicesPosition, "adChoicesPosition");
        Intrinsics.checkNotNullParameter(adSize, "adSize");
        Intrinsics.checkNotNullParameter(mediaAspectRatio, "mediaAspectRatio");
        Intrinsics.checkNotNullParameter(bannerPosition, "bannerPosition");
        Intrinsics.checkNotNullParameter(imageScaleType, "imageScaleType");
        this.a = adUnitId;
        this.b = format;
        this.c = adChoicesPosition;
        this.d = adRequest;
        this.e = adSize;
        this.f = z;
        this.g = list;
        this.h = z2;
        this.i = mediaAspectRatio;
        this.j = serverSideVerificationOptions;
        this.k = videoOptions;
        this.l = bannerPosition;
        this.m = z3;
        this.n = imageScaleType;
        this.o = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof uh2)) {
            return false;
        }
        uh2 uh2Var = (uh2) obj;
        return Intrinsics.areEqual(this.a, uh2Var.a) && this.b == uh2Var.b && this.c == uh2Var.c && Intrinsics.areEqual(this.d, uh2Var.d) && Intrinsics.areEqual(this.e, uh2Var.e) && this.f == uh2Var.f && Intrinsics.areEqual(this.g, uh2Var.g) && this.h == uh2Var.h && this.i == uh2Var.i && Intrinsics.areEqual(this.j, uh2Var.j) && Intrinsics.areEqual(this.k, uh2Var.k) && Intrinsics.areEqual(this.l, uh2Var.l) && this.m == uh2Var.m && this.n == uh2Var.n && this.o == uh2Var.o;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [int] */
    /* JADX WARN: Type inference failed for: r0v15, types: [int] */
    /* JADX WARN: Type inference failed for: r0v30 */
    /* JADX WARN: Type inference failed for: r0v32 */
    /* JADX WARN: Type inference failed for: r0v33 */
    /* JADX WARN: Type inference failed for: r0v34 */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1, types: [int] */
    /* JADX WARN: Type inference failed for: r4v2 */
    public final int hashCode() {
        int iHashCode = (this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31)) * 31;
        AdRequest adRequest = this.d;
        int iHashCode2 = (this.e.hashCode() + ((iHashCode + (adRequest == null ? 0 : adRequest.hashCode())) * 31)) * 31;
        boolean z = this.f;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        int i = (iHashCode2 + r0) * 31;
        List list = this.g;
        int iHashCode3 = (i + (list == null ? 0 : list.hashCode())) * 31;
        boolean z2 = this.h;
        ?? r02 = z2;
        if (z2) {
            r02 = 1;
        }
        int iHashCode4 = (this.i.hashCode() + ((iHashCode3 + r02) * 31)) * 31;
        ServerSideVerificationOptions serverSideVerificationOptions = this.j;
        int iHashCode5 = (iHashCode4 + (serverSideVerificationOptions == null ? 0 : serverSideVerificationOptions.hashCode())) * 31;
        VideoOptions videoOptions = this.k;
        int iA = ob.a(this.l, (iHashCode5 + (videoOptions != null ? videoOptions.hashCode() : 0)) * 31, 31);
        boolean z3 = this.m;
        return Integer.hashCode(this.o) + ((this.n.hashCode() + ((iA + (z3 ? 1 : z3)) * 31)) * 31);
    }

    public final String toString() {
        return "OutOfContextTestingConfiguration(adUnitId=" + this.a + ", format=" + this.b + ", adChoicesPosition=" + this.c + ", adRequest=" + this.d + ", adSize=" + this.e + ", customMuteThisAd=" + this.f + ", customNativeTemplates=" + this.g + ", isImageLoadingDisabled=" + this.h + ", mediaAspectRatio=" + this.i + ", serverSideVerificationOptions=" + this.j + ", videoOptions=" + this.k + ", bannerPosition=" + this.l + ", isImmersiveMode=" + this.m + ", imageScaleType=" + this.n + ", widthConstraint=" + this.o + ")";
    }

    public final String a() {
        return this.a;
    }

    public final ServerSideVerificationOptions b() {
        return this.j;
    }
}
