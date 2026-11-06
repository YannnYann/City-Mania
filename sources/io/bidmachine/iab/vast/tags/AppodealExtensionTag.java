package io.bidmachine.iab.vast.tags;

import io.bidmachine.iab.utils.IabElementStyle;
import io.bidmachine.iab.vast.VastExtension;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes5.dex */
public class AppodealExtensionTag extends ExtensionTag implements VastExtension {
    public final IabElementStyle d;
    public final IabElementStyle e;
    public final IabElementStyle f;
    public final IabElementStyle g;
    public final IabElementStyle h;
    public final IabElementStyle i;
    public final IabElementStyle j;
    public final IabElementStyle k;
    public final PostBannerTag l;
    public Integer m;
    public Integer n;
    public CompanionTag o;
    public Boolean p;
    public Float q;
    public boolean r;
    public boolean s;
    public boolean t;
    public boolean u;
    public Integer v;

    public AppodealExtensionTag(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        super(xmlPullParser);
        this.d = new IabElementStyle();
        this.e = new IabElementStyle();
        this.f = new IabElementStyle();
        this.g = new IabElementStyle();
        this.h = new IabElementStyle();
        this.i = new IabElementStyle();
        this.j = new IabElementStyle();
        this.k = new IabElementStyle();
        this.l = new PostBannerTag();
        this.r = false;
        this.s = false;
        this.t = false;
        this.u = false;
        xmlPullParser.require(2, null, "Extension");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (VastXmlTag.a(name, "Video")) {
                    VastXmlTag.a(xmlPullParser, this.d);
                } else if (VastXmlTag.a(name, "LoadingView")) {
                    VastXmlTag.a(xmlPullParser, this.j);
                } else if (VastXmlTag.a(name, "Countdown")) {
                    VastXmlTag.a(xmlPullParser, this.k);
                } else if (VastXmlTag.a(name, "Progress")) {
                    VastXmlTag.a(xmlPullParser, this.h);
                } else if (VastXmlTag.a(name, "ClosableView")) {
                    VastXmlTag.a(xmlPullParser, this.g);
                } else if (VastXmlTag.a(name, "Mute")) {
                    VastXmlTag.a(xmlPullParser, this.f);
                } else if (VastXmlTag.a(name, "CTA")) {
                    VastXmlTag.a(xmlPullParser, this.e);
                } else if (VastXmlTag.a(name, "RepeatView")) {
                    VastXmlTag.a(xmlPullParser, this.i);
                } else if (VastXmlTag.a(name, "Postbanner")) {
                    this.l.parse(xmlPullParser);
                } else if (VastXmlTag.a(name, "Autorotate")) {
                    this.p = Boolean.valueOf(VastXmlTag.b(xmlPullParser));
                } else if (VastXmlTag.a(name, "R1")) {
                    this.t = VastXmlTag.b(xmlPullParser);
                } else if (VastXmlTag.a(name, "R2")) {
                    this.u = VastXmlTag.b(xmlPullParser);
                } else if (VastXmlTag.a(name, "ForceOrientation")) {
                    this.v = VastXmlTag.g(VastXmlTag.c(xmlPullParser));
                } else if (VastXmlTag.a(name, "CtaText")) {
                    this.e.setContent(VastXmlTag.c(xmlPullParser));
                } else if (VastXmlTag.a(name, "ShowCta")) {
                    this.e.setVisible(Boolean.valueOf(VastXmlTag.b(xmlPullParser)));
                } else if (VastXmlTag.a(name, "ShowMute")) {
                    this.f.setVisible(Boolean.valueOf(VastXmlTag.b(xmlPullParser)));
                } else if (VastXmlTag.a(name, "ShowCompanion")) {
                    this.l.setVisible(VastXmlTag.b(xmlPullParser));
                } else if (VastXmlTag.a(name, "CompanionCloseTime")) {
                    int iF = VastXmlTag.f(VastXmlTag.c(xmlPullParser));
                    if (iF > -1) {
                        this.l.setCloseTimeSec(iF);
                    }
                } else if (VastXmlTag.a(name, "Muted")) {
                    this.r = VastXmlTag.b(xmlPullParser);
                } else if (VastXmlTag.a(name, "VideoClickable")) {
                    this.s = VastXmlTag.b(xmlPullParser);
                } else if (VastXmlTag.a(name, "CtaXPosition")) {
                    this.e.setHorizontalPosition(VastXmlTag.h(VastXmlTag.c(xmlPullParser)));
                } else if (VastXmlTag.a(name, "CtaYPosition")) {
                    this.e.setVerticalPosition(VastXmlTag.i(VastXmlTag.c(xmlPullParser)));
                } else if (VastXmlTag.a(name, "CloseXPosition")) {
                    this.g.setHorizontalPosition(VastXmlTag.h(VastXmlTag.c(xmlPullParser)));
                } else if (VastXmlTag.a(name, "CloseYPosition")) {
                    this.g.setVerticalPosition(VastXmlTag.i(VastXmlTag.c(xmlPullParser)));
                } else if (VastXmlTag.a(name, "MuteXPosition")) {
                    this.f.setHorizontalPosition(VastXmlTag.h(VastXmlTag.c(xmlPullParser)));
                } else if (VastXmlTag.a(name, "MuteYPosition")) {
                    this.f.setVerticalPosition(VastXmlTag.i(VastXmlTag.c(xmlPullParser)));
                } else if (VastXmlTag.a(name, "AssetsColor")) {
                    Integer numC = VastXmlTag.c(VastXmlTag.c(xmlPullParser));
                    if (numC != null) {
                        this.m = numC;
                    }
                } else if (VastXmlTag.a(name, "AssetsBackgroundColor")) {
                    Integer numC2 = VastXmlTag.c(VastXmlTag.c(xmlPullParser));
                    if (numC2 != null) {
                        this.n = numC2;
                    }
                } else if (VastXmlTag.a(name, "Companion")) {
                    CompanionTag companionTag = new CompanionTag(xmlPullParser);
                    if (companionTag.isValidTag() && companionTag.hasCreative()) {
                        this.o = companionTag;
                    }
                } else if (VastXmlTag.a(name, "CloseTime")) {
                    String strC = VastXmlTag.c(xmlPullParser);
                    if (strC != null) {
                        this.q = Float.valueOf(Float.parseFloat(strC));
                    }
                } else if (VastXmlTag.a(name, "ShowProgress")) {
                    this.h.setVisible(Boolean.valueOf(VastXmlTag.b(xmlPullParser)));
                } else {
                    VastXmlTag.d(xmlPullParser);
                }
            }
        }
        xmlPullParser.require(3, null, "Extension");
    }

    @Override // io.bidmachine.iab.vast.VastExtension
    public Integer getAssetsBackgroundColor() {
        return this.n;
    }

    @Override // io.bidmachine.iab.vast.VastExtension
    public Integer getAssetsColor() {
        return this.m;
    }

    @Override // io.bidmachine.iab.vast.VastExtension
    public IabElementStyle getCloseStyle() {
        return this.g;
    }

    @Override // io.bidmachine.iab.vast.VastExtension
    public Float getCloseTimeSec() {
        return this.q;
    }

    public CompanionTag getCompanionTag() {
        return this.o;
    }

    @Override // io.bidmachine.iab.vast.VastExtension
    public IabElementStyle getCountDownStyle() {
        return this.k;
    }

    @Override // io.bidmachine.iab.vast.VastExtension
    public IabElementStyle getCtaStyle() {
        return this.e;
    }

    @Override // io.bidmachine.iab.vast.VastExtension
    public Integer getForceOrientation() {
        return this.v;
    }

    @Override // io.bidmachine.iab.vast.VastExtension
    public IabElementStyle getLoadingStyle() {
        return this.j;
    }

    @Override // io.bidmachine.iab.vast.VastExtension
    public IabElementStyle getMuteStyle() {
        return this.f;
    }

    @Override // io.bidmachine.iab.vast.VastExtension
    public PostBannerTag getPostBannerTag() {
        return this.l;
    }

    @Override // io.bidmachine.iab.vast.VastExtension
    public IabElementStyle getProgressStyle() {
        return this.h;
    }

    @Override // io.bidmachine.iab.vast.VastExtension
    public IabElementStyle getRepeatStyle() {
        return this.i;
    }

    @Override // io.bidmachine.iab.vast.VastExtension
    public IabElementStyle getVideoStyle() {
        return this.d;
    }

    @Override // io.bidmachine.iab.vast.VastExtension
    public Boolean isAutoRotate() {
        return this.p;
    }

    public boolean isMuted() {
        return this.r;
    }

    @Override // io.bidmachine.iab.vast.VastExtension
    public boolean isR1() {
        return this.t;
    }

    @Override // io.bidmachine.iab.vast.VastExtension
    public boolean isR2() {
        return this.u;
    }

    @Override // io.bidmachine.iab.vast.VastExtension
    public boolean isVideoClickable() {
        return this.s;
    }
}
