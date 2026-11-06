package io.bidmachine.iab.vast.tags;

import com.ironsource.C3670j8;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes5.dex */
public class CreativeTag extends VastXmlTag {
    public static final String[] d = {C3670j8.x, "adID"};
    public CreativeContentTag c;

    public CreativeTag(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        super(xmlPullParser);
        xmlPullParser.require(2, null, "Creative");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (VastXmlTag.a(name, "Linear")) {
                    this.c = new LinearCreativeTag(xmlPullParser);
                } else if (VastXmlTag.a(name, "CompanionAds")) {
                    this.c = new CompanionAdsCreativeTag(xmlPullParser);
                } else {
                    VastXmlTag.d(xmlPullParser);
                }
            }
        }
        xmlPullParser.require(3, null, "Creative");
    }

    public CreativeContentTag getCreativeContentTag() {
        return this.c;
    }

    @Override // io.bidmachine.iab.vast.tags.VastXmlTag
    public String[] getSupportedAttributes() {
        return d;
    }
}
