package io.bidmachine.iab.vast.tags;

import android.text.TextUtils;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: loaded from: classes5.dex */
public class StaticResourceTag extends VastXmlTag {
    public static final String[] c = {"creativeType"};

    public StaticResourceTag(XmlPullParser xmlPullParser) {
        super(xmlPullParser);
    }

    @Override // io.bidmachine.iab.vast.tags.VastXmlTag
    public String[] getSupportedAttributes() {
        return c;
    }

    @Override // io.bidmachine.iab.vast.tags.VastXmlTag
    public boolean isTextSupported() {
        return true;
    }

    public boolean isValidTag() {
        String strA = a("creativeType");
        if (TextUtils.isEmpty(strA)) {
            return false;
        }
        return strA.matches("image/.*(?i)(gif|jpeg|jpg|bmp|png)");
    }
}
