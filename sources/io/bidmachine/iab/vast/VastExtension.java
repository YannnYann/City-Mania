package io.bidmachine.iab.vast;

import io.bidmachine.iab.utils.IabElementStyle;
import io.bidmachine.iab.vast.tags.PostBannerTag;

/* JADX INFO: loaded from: classes5.dex */
public interface VastExtension {
    Integer getAssetsBackgroundColor();

    Integer getAssetsColor();

    IabElementStyle getCloseStyle();

    Float getCloseTimeSec();

    IabElementStyle getCountDownStyle();

    IabElementStyle getCtaStyle();

    Integer getForceOrientation();

    IabElementStyle getLoadingStyle();

    IabElementStyle getMuteStyle();

    PostBannerTag getPostBannerTag();

    IabElementStyle getProgressStyle();

    IabElementStyle getRepeatStyle();

    IabElementStyle getVideoStyle();

    Boolean isAutoRotate();

    boolean isR1();

    boolean isR2();

    boolean isVideoClickable();
}
