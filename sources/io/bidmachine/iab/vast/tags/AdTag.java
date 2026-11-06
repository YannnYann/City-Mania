package io.bidmachine.iab.vast.tags;

import com.ironsource.C3670j8;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes5.dex */
public class AdTag extends VastXmlTag {
    public static final String[] d = {C3670j8.x};
    public AdContentTag c;

    public AdTag(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        super(xmlPullParser);
        xmlPullParser.require(2, null, "Ad");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (VastXmlTag.a(name, "InLine")) {
                    this.c = new InLineAdTag(xmlPullParser);
                } else if (VastXmlTag.a(name, "Wrapper")) {
                    this.c = new WrapperAdTag(xmlPullParser);
                } else {
                    VastXmlTag.d(xmlPullParser);
                }
            }
        }
        xmlPullParser.require(3, null, "Ad");
    }

    public AdContentTag getAdContentTag() {
        return this.c;
    }

    @Override // io.bidmachine.iab.vast.tags.VastXmlTag
    public String[] getSupportedAttributes() {
        return d;
    }
}
