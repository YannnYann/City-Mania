package io.bidmachine.iab.vast.processor;

import io.bidmachine.iab.vast.tags.VastXmlTag;

/* JADX INFO: loaded from: classes5.dex */
public class a {
    public final boolean a;
    public final boolean b;
    public final boolean c;

    public a() {
        this(true, true, true);
    }

    public boolean a() {
        return this.b;
    }

    public boolean b() {
        return this.c;
    }

    public boolean c() {
        return this.a;
    }

    public a(VastXmlTag vastXmlTag) {
        this(vastXmlTag.getBooleanAttributeValueByName("followAdditionalWrappers", true), vastXmlTag.getBooleanAttributeValueByName("allowMultipleAds", true), vastXmlTag.getBooleanAttributeValueByName("fallbackOnNoAd", true));
    }

    public a(boolean followAdditionalWrappers, boolean allowMultipleAds, boolean fallbackOnNoAd) {
        this.a = followAdditionalWrappers;
        this.b = allowMultipleAds;
        this.c = fallbackOnNoAd;
    }
}
