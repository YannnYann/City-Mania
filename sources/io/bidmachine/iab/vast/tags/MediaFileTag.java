package io.bidmachine.iab.vast.tags;

import android.text.TextUtils;
import com.ironsource.C3670j8;
import com.ironsource.C3844t;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: loaded from: classes5.dex */
public class MediaFileTag extends VastXmlTag {
    public static final String[] c = {C3844t.g, "type", "width", "height", "codec", C3670j8.x, "bitrate", "minBitrate", "maxBitrate", "scalable", "maintainAspectRatio", "apiFramework"};

    public MediaFileTag(XmlPullParser xmlPullParser) {
        super(xmlPullParser);
    }

    public int getHeight() {
        return b("height");
    }

    @Override // io.bidmachine.iab.vast.tags.VastXmlTag
    public String[] getSupportedAttributes() {
        return c;
    }

    public String getType() {
        return a("type");
    }

    public int getWidth() {
        return b("width");
    }

    @Override // io.bidmachine.iab.vast.tags.VastXmlTag
    public boolean isTextSupported() {
        return true;
    }

    public boolean isValidTag() {
        return (TextUtils.isEmpty(a("type")) || TextUtils.isEmpty(a("width")) || TextUtils.isEmpty(a("height")) || TextUtils.isEmpty(getText())) ? false : true;
    }
}
