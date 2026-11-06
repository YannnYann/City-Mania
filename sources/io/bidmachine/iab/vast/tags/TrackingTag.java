package io.bidmachine.iab.vast.tags;

import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: loaded from: classes5.dex */
public class TrackingTag extends VastXmlTag {
    public static final String[] c = {"event"};

    public TrackingTag(XmlPullParser xmlPullParser) {
        super(xmlPullParser);
    }

    @Override // io.bidmachine.iab.vast.tags.VastXmlTag
    public String[] getSupportedAttributes() {
        return c;
    }
}
