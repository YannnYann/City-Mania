package io.bidmachine.iab.vast.tags;

import android.text.TextUtils;
import com.ironsource.C3670j8;
import io.bidmachine.iab.mraid.MraidUtils;
import io.bidmachine.iab.vast.TrackingEvent;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes5.dex */
public class CompanionTag extends VastXmlTag {
    public static final String[] j = {"width", "height", C3670j8.x, "assetWidth", "assetHeight", "expandedWidth", "expandedHeight", "apiFramework", "adSlotID", "required"};
    public StaticResourceTag c;
    public String d;
    public String e;
    public String f;
    public List g;
    public Map h;
    public String i;

    public CompanionTag(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        super(xmlPullParser);
        xmlPullParser.require(2, null, "Companion");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (VastXmlTag.a(name, "StaticResource")) {
                    StaticResourceTag staticResourceTag = new StaticResourceTag(xmlPullParser);
                    if (staticResourceTag.isValidTag()) {
                        a(staticResourceTag);
                    }
                } else if (VastXmlTag.a(name, "IFrameResource")) {
                    n(VastXmlTag.c(xmlPullParser));
                } else if (VastXmlTag.a(name, "HTMLResource")) {
                    setHtmlResource(VastXmlTag.c(xmlPullParser));
                } else if (VastXmlTag.a(name, "CompanionClickThrough")) {
                    m(VastXmlTag.c(xmlPullParser));
                } else if (VastXmlTag.a(name, "CompanionClickTracking")) {
                    l(VastXmlTag.c(xmlPullParser));
                } else if (VastXmlTag.a(name, "TrackingEvents")) {
                    a(new TrackingEventsTag(xmlPullParser).a());
                } else if (VastXmlTag.a(name, "AdParameters")) {
                    setAdParameters(VastXmlTag.c(xmlPullParser));
                } else {
                    VastXmlTag.d(xmlPullParser);
                }
            }
        }
        xmlPullParser.require(3, null, "Companion");
    }

    private void l(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (this.g == null) {
            this.g = new ArrayList();
        }
        this.g.add(str);
    }

    private void m(String str) {
        this.f = str;
    }

    private void n(String str) {
        this.d = str;
    }

    public final void a(StaticResourceTag staticResourceTag) {
        this.c = staticResourceTag;
    }

    public List<String> getCompanionClickTrackingList() {
        return this.g;
    }

    public int getHeight() {
        return b("height");
    }

    public String getHtml() {
        String htmlForMraid = getHtmlForMraid();
        if (htmlForMraid != null) {
            return MraidUtils.processRawHtml(htmlForMraid);
        }
        return null;
    }

    public String getHtmlForMraid() {
        String str = this.e;
        if (str != null) {
            return str;
        }
        StaticResourceTag staticResourceTag = this.c;
        if (staticResourceTag != null) {
            return String.format("<script type='text/javascript'>document.write('<a style=\"display: flex; width: 100%%; height: 100%%; justify-content: center; align-items: center\" href=\"%s\" target=\"_blank\"><img style=\"border-style: none; height: 100%%; width: 100%%; object-fit: contain;\" src=\"%s\"/></a>');</script>", this.f, staticResourceTag.getText());
        }
        if (this.d != null) {
            return String.format("<iframe frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\" style=\"border: 0px; margin: 0px;\" width=\"%s\" height=\"%s\" src=\"%s\"></iframe>", Integer.valueOf(getWidth()), Integer.valueOf(getHeight()), this.d);
        }
        return null;
    }

    @Override // io.bidmachine.iab.vast.tags.VastXmlTag
    public String[] getSupportedAttributes() {
        return j;
    }

    public Map<TrackingEvent, List<String>> getTrackingEventListMap() {
        return this.h;
    }

    public int getWidth() {
        return b("width");
    }

    public boolean hasCreative() {
        return (this.e == null && this.c == null && this.d == null) ? false : true;
    }

    public boolean isValidTag() {
        return (TextUtils.isEmpty(a("width")) || TextUtils.isEmpty(a("height"))) ? false : true;
    }

    public void setAdParameters(String adParameters) {
        this.i = adParameters;
    }

    public void setHtmlResource(String htmlResource) {
        this.e = htmlResource;
    }

    public final void a(Map map) {
        this.h = map;
    }
}
