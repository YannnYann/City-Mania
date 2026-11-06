package io.bidmachine.iab.vast.tags;

import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: loaded from: classes5.dex */
public class ExtensionTag extends VastXmlTag {
    public static final String[] c = {"type"};

    public ExtensionTag(XmlPullParser xmlPullParser) {
        super(xmlPullParser);
    }

    @Override // io.bidmachine.iab.vast.tags.VastXmlTag
    public String[] getSupportedAttributes() {
        return c;
    }
}
