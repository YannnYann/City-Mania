package io.bidmachine.displays;

import com.explorestack.protobuf.adcom.Ad;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public class DisplayAdObjectParams extends IabAdObjectParams {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DisplayAdObjectParams(Ad ad) {
        super(ad);
        Intrinsics.checkNotNullParameter(ad, "ad");
        prepareEvents(ad.getDisplay().getEventList());
    }
}
