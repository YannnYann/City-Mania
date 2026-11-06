package io.bidmachine.displays;

import com.explorestack.protobuf.adcom.Ad;
import io.bidmachine.models.AdObjectParams;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public class IabAdObjectParams extends AdObjectParams {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IabAdObjectParams(Ad ad) {
        super(ad);
        Intrinsics.checkNotNullParameter(ad, "ad");
    }

    @Override // io.bidmachine.models.AdObjectParams
    public boolean isValid() {
        Object obj = getData().get("creativeAdm");
        return (obj instanceof CharSequence) && ((CharSequence) obj).length() > 0;
    }

    public final void setCreativeAdm(String str) {
        if (str == null || str.length() == 0) {
            getData().remove("creativeAdm");
        } else {
            getData().put("creativeAdm", str);
        }
    }
}
