package io.bidmachine.models;

import com.explorestack.protobuf.adcom.Ad;
import com.explorestack.protobuf.adcom.CreativeAttribute;
import io.bidmachine.rendering.model.engagedclick.CreativeProfile;
import io.bidmachine.rendering.model.engagedclick.CreativeProfileInfo;
import io.bidmachine.rendering.model.engagedclick.ProfileSource;
import io.bidmachine.rendering.utils.CreativeProfileClassifier;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class AdObjectParamsKt {
    public static final CreativeProfileInfo classifyCreativeProfile(Ad ad) {
        Intrinsics.checkNotNullParameter(ad, "<this>");
        if (ad.getAttrList().contains(CreativeAttribute.CREATIVE_ATTRIBUTE_USER_INTERACTIVE)) {
            return new CreativeProfileInfo(CreativeProfile.PLAYABLE, ProfileSource.BID_ATTR_13);
        }
        if (!ad.hasDisplay() || ad.getDisplay().hasNative()) {
            return CreativeProfileInfo.Companion.getDEFAULT_CREATIVE_PROFILE_INFO();
        }
        CreativeProfileClassifier creativeProfileClassifier = CreativeProfileClassifier.INSTANCE;
        String adm = ad.getDisplay().getAdm();
        Intrinsics.checkNotNullExpressionValue(adm, "display.adm");
        return creativeProfileClassifier.classifyByMarkup(adm);
    }
}
