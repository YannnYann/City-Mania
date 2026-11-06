package io.bidmachine.iab.vast.tags;

import android.text.TextUtils;
import com.unity3d.services.UnityAdsConstants;
import io.bidmachine.iab.utils.IabElementStyle;
import io.bidmachine.iab.vast.VastLog;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes5.dex */
public class PostBannerTag extends VastXmlTag {
    public String g;
    public final IabElementStyle c = new IabElementStyle();
    public final IabElementStyle d = new IabElementStyle();
    public final IabElementStyle e = new IabElementStyle();
    public final IabElementStyle f = new IabElementStyle();
    public float h = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    public float i = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    public boolean j = true;
    public boolean k = false;
    public boolean l = false;
    public boolean m = false;
    public boolean n = false;

    @Override // io.bidmachine.iab.vast.tags.VastXmlTag
    public void a(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "Postbanner");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                try {
                    String name = xmlPullParser.getName();
                    if (VastXmlTag.a(name, "CloseTime")) {
                        String strC = VastXmlTag.c(xmlPullParser);
                        if (!TextUtils.isEmpty(strC)) {
                            this.h = Float.parseFloat(strC);
                        }
                    } else if (VastXmlTag.a(name, "Duration")) {
                        String strC2 = VastXmlTag.c(xmlPullParser);
                        if (!TextUtils.isEmpty(strC2)) {
                            this.i = Float.parseFloat(strC2);
                        }
                    } else if (VastXmlTag.a(name, "ClosableView")) {
                        VastXmlTag.a(xmlPullParser, this.c);
                    } else if (VastXmlTag.a(name, "Countdown")) {
                        VastXmlTag.a(xmlPullParser, this.d);
                    } else if (VastXmlTag.a(name, "LoadingView")) {
                        VastXmlTag.a(xmlPullParser, this.e);
                    } else if (VastXmlTag.a(name, "Progress")) {
                        VastXmlTag.a(xmlPullParser, this.f);
                    } else if (VastXmlTag.a(name, "UseNativeClose")) {
                        this.l = VastXmlTag.b(xmlPullParser);
                    } else if (VastXmlTag.a(name, "IgnoresSafeAreaLayoutGuide")) {
                        this.k = VastXmlTag.b(xmlPullParser);
                    } else if (VastXmlTag.a(name, "ProductLink")) {
                        this.g = VastXmlTag.c(xmlPullParser);
                    } else if (VastXmlTag.a(name, "R1")) {
                        this.m = VastXmlTag.b(xmlPullParser);
                    } else if (VastXmlTag.a(name, "R2")) {
                        this.n = VastXmlTag.b(xmlPullParser);
                    } else {
                        VastXmlTag.d(xmlPullParser);
                    }
                } catch (Throwable th) {
                    VastLog.e("VastXmlTag", th);
                }
            }
        }
        xmlPullParser.require(3, null, "Postbanner");
    }

    public IabElementStyle getCloseStyle() {
        return this.c;
    }

    public float getCloseTimeSec() {
        return this.h;
    }

    public IabElementStyle getCountDownStyle() {
        return this.d;
    }

    public float getDurationSec() {
        return this.i;
    }

    public IabElementStyle getLoadingStyle() {
        return this.e;
    }

    public String getProductLink() {
        return this.g;
    }

    public IabElementStyle getProgressStyle() {
        return this.f;
    }

    public boolean isForceUseNativeClose() {
        return this.l;
    }

    public boolean isR1() {
        return this.m;
    }

    public boolean isR2() {
        return this.n;
    }

    public boolean isVisible() {
        return this.j;
    }

    public void setCloseTimeSec(int closeTimeSec) {
        this.h = closeTimeSec;
    }

    public void setVisible(boolean visible) {
        this.j = visible;
    }
}
