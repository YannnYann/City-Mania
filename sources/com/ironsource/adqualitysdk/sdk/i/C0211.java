package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.MBridgeSDK;
import com.mbridge.msdk.activity.DomainMBCommonActivity;
import com.mbridge.msdk.activity.MBBaseActivity;
import com.mbridge.msdk.activity.MBCommonActivity;
import com.mbridge.msdk.click.CommonJumpLoader;
import com.mbridge.msdk.config.activity.BaseActivity;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.fragment.BaseFragment;
import com.mbridge.msdk.foundation.tools.FastKV;
import com.mbridge.msdk.foundation.tools.MIMManager;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.webview.BrowserView;
import com.mbridge.msdk.foundation.webview.WebViewFragment;
import com.mbridge.msdk.interstitial.signalcommon.interstitial;
import com.mbridge.msdk.interstitial.view.MBInterstitialActivity;
import com.mbridge.msdk.interstitialvideo.out.InterstitialVideoListener;
import com.mbridge.msdk.interstitialvideo.out.MBInterstitialVideoHandler;
import com.mbridge.msdk.mbbanner.view.MBBannerWebView;
import com.mbridge.msdk.mbsignalcommon.base.BaseWebView;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.newinterstitial.out.NewInterstitialListener;
import com.mbridge.msdk.newout.IMBRRewardVideoHandler;
import com.mbridge.msdk.newout.MBBidRewardVideoHandler;
import com.mbridge.msdk.out.BannerAdListener;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.out.IDownloadListener;
import com.mbridge.msdk.out.InterstitialListener;
import com.mbridge.msdk.out.LoadingActivity;
import com.mbridge.msdk.out.MBBannerView;
import com.mbridge.msdk.out.MBConfiguration;
import com.mbridge.msdk.out.MBInterstitialHandler;
import com.mbridge.msdk.out.MBRewardVideoHandler;
import com.mbridge.msdk.out.MBridgeIds;
import com.mbridge.msdk.out.MBridgeSDKFactory;
import com.mbridge.msdk.out.NativeListener;
import com.mbridge.msdk.out.OnMBMediaViewListener;
import com.mbridge.msdk.out.RewardInfo;
import com.mbridge.msdk.out.RewardVideoListener;
import com.mbridge.msdk.reward.player.MBRewardVideoActivity;
import com.mbridge.msdk.video.module.MBridgeBaseView;
import com.mbridge.msdk.video.module.MBridgeClickCTAView;
import com.mbridge.msdk.video.module.MBridgeClickMiniCardView;
import com.mbridge.msdk.video.module.MBridgeContainerView;
import com.mbridge.msdk.video.module.MBridgeH5EndCardView;
import com.mbridge.msdk.video.module.MBridgeLandingPageView;
import com.mbridge.msdk.video.module.MBridgeNativeEndCardView;
import com.mbridge.msdk.video.module.MBridgePlayableView;
import com.mbridge.msdk.video.module.MBridgeVastEndCardView;
import com.mbridge.msdk.video.module.MBridgeVideoView;
import com.mbridge.msdk.video.signal.activity.AbstractJSActivity;
import com.mbridge.msdk.videocommon.listener.InterVideoOutListener;
import com.mbridge.msdk.widget.MBImageView;
import java.util.HashMap;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ϳ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0211 extends AbstractC0210 {

    /* JADX INFO: renamed from: ঘ, reason: contains not printable characters */
    public static final String f1386;

    /* JADX INFO: renamed from: ষ, reason: contains not printable characters */
    public static final String f1387;

    /* JADX INFO: renamed from: ঢ়, reason: contains not printable characters */
    public static final String f1388;

    /* JADX INFO: renamed from: ฑ, reason: contains not printable characters */
    public static final String f1389;

    /* JADX INFO: renamed from: ต, reason: contains not printable characters */
    public static final String f1390;

    /* JADX INFO: renamed from: น, reason: contains not printable characters */
    public static final String f1391;

    /* JADX INFO: renamed from: ม, reason: contains not printable characters */
    public static final String f1392;

    /* JADX INFO: renamed from: อ, reason: contains not printable characters */
    public static final String f1393;

    /* JADX INFO: renamed from: ງ, reason: contains not printable characters */
    public static final String f1394;

    /* JADX INFO: renamed from: ე, reason: contains not printable characters */
    public static final String f1395;

    /* JADX INFO: renamed from: პ, reason: contains not printable characters */
    public static final String f1396;

    /* JADX INFO: renamed from: סּ, reason: contains not printable characters */
    public static final String f1444 = StringFog.decrypt("GwSp2xk5ECsOBLjwIi8v\n", "fGHdnnddQ0g=\n");

    /* JADX INFO: renamed from: טּ, reason: contains not printable characters */
    public static final String f1443 = StringFog.decrypt("j9Kbnd/rgnCB0IGL0O+GWIw=\n", "6Lfv3r6G8hE=\n");

    /* JADX INFO: renamed from: ﬤ, reason: contains not printable characters */
    public static final String f1442 = StringFog.decrypt("yQ/PA8uoG83DD9Un7q0=\n", "rmq7U6fJeKg=\n");

    /* JADX INFO: renamed from: 爫, reason: contains not printable characters */
    public static final String f1441 = StringFog.decrypt("KauWMY77zq08m5Af\n", "Ts7ic++VoMg=\n");

    /* JADX INFO: renamed from: 乁, reason: contains not printable characters */
    public static final String f1440 = StringFog.decrypt("u/Sw6PGHqLI=\n", "3JHEqZXdwcI=\n");

    /* JADX INFO: renamed from: 丫, reason: contains not printable characters */
    public static final String f1439 = StringFog.decrypt("adJfRaHel5pbxUdWptmdkWs=\n", "DrcrE8i68vU=\n");

    /* JADX INFO: renamed from: ヶ, reason: contains not printable characters */
    public static final String f1438 = StringFog.decrypt("UPkEzb71jW1e6hXHqA==\n", "N5xwjsyQ7Bk=\n");

    /* JADX INFO: renamed from: ヮ, reason: contains not printable characters */
    public static final String f1437 = StringFog.decrypt("YWFvw8ffjOtq\n", "BgQbgqOX+IY=\n");

    /* JADX INFO: renamed from: リ, reason: contains not printable characters */
    public static final String f1436 = StringFog.decrypt("V7/WrjaXH5lCktaBOw==\n", "MNqi7Ff5cfw=\n");

    /* JADX INFO: renamed from: ト, reason: contains not printable characters */
    public static final String f1435 = StringFog.decrypt("VkAikECN5+xEVzWl\n", "MSVWwCvqtIM=\n");

    /* JADX INFO: renamed from: ゥ, reason: contains not printable characters */
    public static final String f1434 = StringFog.decrypt("m4BnwLNczlyOiQ==\n", "/OUTiMcxogk=\n");

    /* JADX INFO: renamed from: へ, reason: contains not printable characters */
    public static final String f1433 = StringFog.decrypt("g/cVD9w8RZu7xzcU2zVC\n", "zrVWYLJaLPw=\n");

    /* JADX INFO: renamed from: っ, reason: contains not printable characters */
    public static final String f1432 = StringFog.decrypt("cz9adi7fibJoFGx2Nv+YolcLYWcg\n", "Pn0IE1m++9Y=\n");

    /* JADX INFO: renamed from: く, reason: contains not printable characters */
    public static final String f1431 = StringFog.decrypt("G26cehOF5ogiVQ==\n", "VizdGWfskOE=\n");

    /* JADX INFO: renamed from: Ↄ, reason: contains not printable characters */
    public static final String f1430 = StringFog.decrypt("jCoYUUw58peACy9XVz3pgA==\n", "wWhbPiFUnfk=\n");

    /* JADX INFO: renamed from: Ⅽ, reason: contains not printable characters */
    public static final String f1429 = StringFog.decrypt("3gCRGqDt4uXnK6wdteTR9ecrrh2g8Q==\n", "k0LYdNSIkJY=\n");

    /* JADX INFO: renamed from: K, reason: contains not printable characters */
    public static final String f1428 = StringFog.decrypt("ZA34YTgIBShdJsVmLQE/Okcr3Wo+\n", "KU+xD0xtd1s=\n");

    /* JADX INFO: renamed from: Ύ, reason: contains not printable characters */
    public static final String f1427 = StringFog.decrypt("v3C2daiHiAiGW4tyvY6sEpZXkFO9jJ4Xl0A=\n", "8jL/G9zi+ns=\n");

    /* JADX INFO: renamed from: Ὺ, reason: contains not printable characters */
    public static final String f1426 = StringFog.decrypt("gbnSAa5GKlqou/w3rl4DSaKJ+Ta5\n", "zO2VU8sxSyg=\n");

    /* JADX INFO: renamed from: Ῡ, reason: contains not printable characters */
    public static final String f1425 = StringFog.decrypt("jeYiW65HUJGWzQVN\n", "wKRgOsApNeM=\n");

    /* JADX INFO: renamed from: Ῠ, reason: contains not printable characters */
    public static final String f1424 = StringFog.decrypt("M74k53ckl040tizndzWBTH6+PL00C6dlMb8nrGgQjEIn\n", "UNFJyRpG5Sc=\n");

    /* JADX INFO: renamed from: Ὑ, reason: contains not printable characters */
    public static final String f1423 = StringFog.decrypt("nSsmzq4SMr7BMQHumRU5rA==\n", "s2ZkjM98XNs=\n");

    /* JADX INFO: renamed from: Ṿ, reason: contains not printable characters */
    public static final String f1422 = StringFog.decrypt("OdfiG7fESEs+3+obt9VeSXTV7Ve7yFRHKJb5XL/RFG8Y+u5btMNIdT/a2Vy/0Q==\n", "WriPNdqmOiI=\n");

    /* JADX INFO: renamed from: Ḽ, reason: contains not printable characters */
    public static final String f1421 = StringFog.decrypt("qIAZpC8RuM6uiAbrLla7ya+EWugjC7OUvIoW/CsdoZSJnRv9MR2k7KKKAw==\n", "y+90ikJ41ro=\n");

    /* JADX INFO: renamed from: Ḹ, reason: contains not printable characters */
    public static final String f1420 = StringFog.decrypt("koaSRd+KFRy2oaw=\n", "38TbKL7tcEo=\n");

    /* JADX INFO: renamed from: Ḟ, reason: contains not printable characters */
    public static final String f1419 = StringFog.decrypt("mu/V7no1kTOd593ueiSHMdf30aRwMpd0tMLxrXYwhgyQ5c8=\n", "+YC4wBdX41o=\n");

    /* JADX INFO: renamed from: ᵆ, reason: contains not printable characters */
    public static final String f1418 = StringFog.decrypt("1GcgGVdfvxnTbygZV06pG5llL0RTWqMR22siWldSo17VaT5SFH+sA9JfKFVsVKgH\n", "twhNNzo9zXA=\n");

    /* JADX INFO: renamed from: ᘥ, reason: contains not printable characters */
    public static final String f1417 = StringFog.decrypt("VRpD1S30USBSEkvVLeVHIhgYTIgp8U0oWhZBli35TWdBHECfNvdNLBgiR5UkwEInUyJLmRb/Rj4=\n", "NnUu+0CWI0k=\n");

    /* JADX INFO: renamed from: ᗀ, reason: contains not printable characters */
    public static final String f1416 = StringFog.decrypt("eTceMz579TV+PxYzPmrjNzQuGnk2dqkxdTwGcTY3yh5oMRd6Nk/uOH83JXQ2bg==\n", "GlhzHVMZh1w=\n");

    /* JADX INFO: renamed from: ᖺ, reason: contains not printable characters */
    public static final String f1415 = StringFog.decrypt("YpnrYlJ80ttlkeNiUm3E2S+A7yhacY7fbpLzIFow7fBzn+IrWkjBwXWz6Ch8f9LWV5/jOw==\n", "AfaGTD8eoLI=\n");

    /* JADX INFO: renamed from: ᖸ, reason: contains not printable characters */
    public static final String f1414 = StringFog.decrypt("6vwDffUwhUTt9At99SGTRqflBzf9PdlA5vcbP/18um/7+go0/RyWWeDlCxb2NrRM+/c4Ov0l\n", "iZNuU5hS9y0=\n");

    /* JADX INFO: renamed from: ᖭ, reason: contains not printable characters */
    public static final String f1413 = StringFog.decrypt("gGu5nBpnEP7JbLGUGmcB6MsmoJhQbx2izWeyhFhvXMHier+VU28x4MlrvbJgSyTlxX8=\n", "oAjW8TQKcow=\n");

    /* JADX INFO: renamed from: ᖫ, reason: contains not printable characters */
    public static final String f1412 = StringFog.decrypt("KcT3p6Dtuy8uzP+noPytLWTd8+2o4OcrJc/v5aihhAQ4wv7uqM2oNS/98+y6\n", "Squaic2PyUY=\n");

    /* JADX INFO: renamed from: ᖩ, reason: contains not printable characters */
    public static final String f1411 = StringFog.decrypt("XwpuMkxCF7FYAmYyTFMBsxITanhET0u1UwF2cEQOKJpODGd7RGMJsV8OTnVPSSa5TgFVdURX\n", "PGUDHCEgZdg=\n");

    /* JADX INFO: renamed from: ᖅ, reason: contains not printable characters */
    public static final String f1410 = StringFog.decrypt("HVdDlAlT2SsaX0uUCULPKVBOR94BXoUvEVxb1gEf5gAMUUrdAXLELApZR9QBQ/0rG08=\n", "fjguumQxq0I=\n");

    /* JADX INFO: renamed from: ᕆ, reason: contains not printable characters */
    public static final String f1409 = StringFog.decrypt("3jU0nbWq/APZPTydtbvqAZMsMNe9p6AH0j4s373mwyjPMz3UvYC7L9M+GtKqrNgD2C0=\n", "vVpZs9jIjmo=\n");

    /* JADX INFO: renamed from: ᕄ, reason: contains not printable characters */
    public static final String f1408 = StringFog.decrypt("ZmdnFgznNzdhb28WDPYhNSt+Y1wE6mszamx/VASrCBx3YW5fBMkkMGFhZF8x5CI7U2FvTw==\n", "BQgKOGGFRV4=\n");

    /* JADX INFO: renamed from: ᕃ, reason: contains not printable characters */
    public static final String f1407 = StringFog.decrypt("YkmB7cd5VeNlQYntx2hD4S9QhafPdAnnbkKZr881ashzT4ikz0tL63hHjq/PTU7v\n", "ASbsw6obJ4o=\n");

    /* JADX INFO: renamed from: ᕂ, reason: contains not printable characters */
    public static final String f1406 = StringFog.decrypt("xqiJbPs24c7okK1LwR/s1P2jqkvE\n", "icbELrZThac=\n");

    /* JADX INFO: renamed from: ᔽ, reason: contains not printable characters */
    public static final String f1405 = StringFog.decrypt("yMD4aIGsyVbPwPhkh6zFV/jG42Ccuw==\n", "jK+VCejChDQ=\n");

    /* JADX INFO: renamed from: ᔺ, reason: contains not printable characters */
    public static final String f1404 = StringFog.decrypt("qYn2kp0kk5qugf6SnTWFmOSH+MiZMIiHs8jf050niJ2HpNjTnSuOnYuF79WGL5WK\n", "yuabvPBG4fM=\n");

    /* JADX INFO: renamed from: ᔹ, reason: contains not printable characters */
    public static final String f1403 = StringFog.decrypt("fbIaMRYPO3B9sj4QNR43eX+5GjUw\n", "GtdufFR9UhQ=\n");

    /* JADX INFO: renamed from: ᔲ, reason: contains not printable characters */
    public static final String f1402 = StringFog.decrypt("PIYCeN7fhOw8hiNb9dmk7A==\n", "W+N2NZyt7Yg=\n");

    /* JADX INFO: renamed from: ᔱ, reason: contains not printable characters */
    public static final String f1401 = StringFog.decrypt("T4FOOkoo2zJlnXEvUSzdM3CbeSg=\n", "JvIcXz1JqVY=\n");

    /* JADX INFO: renamed from: ᓮ, reason: contains not printable characters */
    public static final String f1400 = StringFog.decrypt("NzluVVTJalo0EntqVA==\n", "UFwaBzG+Cyg=\n");

    /* JADX INFO: renamed from: ᐱ, reason: contains not printable characters */
    public static final String f1399 = StringFog.decrypt("5Vj00a1JtsvmfO3svVCj\n", "gj2Ag8g+17k=\n");

    /* JADX INFO: renamed from: Ꮭ, reason: contains not printable characters */
    public static final String f1398 = StringFog.decrypt("y3lhbUt4sr/iSA==\n", "hjsTBC8f1/Y=\n");

    /* JADX INFO: renamed from: Ꮧ, reason: contains not printable characters */
    public static final String f1397 = StringFog.decrypt("G6NG713yqicvqQ==\n", "ScYxji+W40k=\n");

    static {
        StringFog.decrypt("JuJcSvnHl6YP4HJ8+d++tQXSd33u\n", "a7YbGJyw9tQ=\n");
        f1396 = StringFog.decrypt("r0aJmc13vV6Ddq+mwEG9RqplpZTFQKo=\n", "4gTL8Kkl2Ck=\n");
        f1395 = StringFog.decrypt("cZG1/z/uhFtKuKHECe6cclmyk8EI+Q==\n", "ONz3rW2L8zo=\n");
        f1394 = StringFog.decrypt("xCP92QKK5UruEOPvApLIUfky7+UCjw==\n", "ikaKi2f9hDg=\n");
        f1393 = StringFog.decrypt("6BApxkSTngfHBzrdb6WeH+cWKuJwqI8J\n", "pnVeiwbB+3A=\n");
        f1392 = StringFog.decrypt("zGOWf4OEGz/La55/g5UNPYFvlD+Ijw54zm+POJiPHS+BQp4mo6Q7M9htiTW4jw0zwE2YJYeQACLW\n", "rwz7Ue7maVY=\n");
        f1391 = StringFog.decrypt("GbpehIhZWbM0q0CwgF5F\n", "V98pxukqPPI=\n");
        f1390 = StringFog.decrypt("LklCPYtu1IUpQUo9i3/Ch2NFQH2AZcHCLEVbepBl0pVjaEpkpG3ViQxFW3qQZdKV\n", "TSYvE+YMpuw=\n");
        f1389 = StringFog.decrypt("2JlS0iyVCxrwog==\n", "ldAfn037an0=\n");
        f1388 = StringFog.decrypt("FKLQptGE\n", "UsOj0prSw/Q=\n");
        f1387 = StringFog.decrypt("9z9efxkHZA==\n", "pF4zGlRDUZI=\n");
        f1386 = StringFog.decrypt("ZmLAEok9WPhbc94vjihRxkF0wz6JLE8=\n", "KAe3W+dJPYo=\n");
    }

    public C0211(String str) {
        super(str);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0208
    /* JADX INFO: renamed from: ﾇ */
    public final HashMap mo1005() {
        HashMap map = new HashMap();
        map.put(StringFog.decrypt("dzLM1IbZbjx3Jdn1vPNR\n", "EFe4me+3Glk=\n"), new C0538(this));
        map.put(StringFog.decrypt("tyGzPDVEomW3IYkNOUI=\n", "0ETHbFQnyQQ=\n"), new C0290(this));
        map.put(StringFog.decrypt("Q363pUFMx3Fxaa8=\n", "JBvD5i0lpBo=\n"), new C0289(this));
        map.put(StringFog.decrypt("Wqq3fzvYQ3REv6Y=\n", "Pc/DM1K2KCA=\n"), new C0246(this));
        map.put(StringFog.decrypt("McmOlERijh0D3pY=\n", "Vqz63SkD6Xg=\n"), new C0242(this));
        map.put(StringFog.decrypt("Ja5WKOwyZQ8wpw==\n", "QssiYY9dC1o=\n"), new C0233(this));
        map.put(StringFog.decrypt("lwmqYrvBOA==\n", "8GzeI9+IXCA=\n"), new C0231(this));
        map.put(StringFog.decrypt("rmd10cycZSOvVGj22rNvCrRxdfbDl3k=\n", "3QIBk63yC0Y=\n"), new C0230(this));
        map.put(StringFog.decrypt("pYZZkBBnxIun\n", "wuMt0XQzvfs=\n"), new C0217(this));
        map.put(f1444, new C0707(this));
        map.put(f1443, new C0685(this));
        map.put(f1442, new C0676(this));
        map.put(f1441, new C0662(this));
        map.put(f1440, new C0640(this));
        map.put(f1439, new C0635(this));
        map.put(f1438, new C0629(this));
        map.put(f1437, new C0590(this));
        map.put(f1436, new C0579(this));
        map.put(f1435, new C0541(this));
        map.put(f1434, new C0536(this));
        map.put(f1403, new C0435(this));
        map.put(f1402, new C0401(this));
        map.put(f1401, new C0336(this));
        map.put(f1400, new C0335(this));
        map.put(f1399, new C0313(this));
        map.put(StringFog.decrypt("acl7qwAdOCJr+maBBAYFJm/PZIwPDgIgfMVhgg==\n", "DqwP5WFpUVQ=\n"), new C0306(this));
        return map;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0208
    /* JADX INFO: renamed from: ﾒ */
    public final String mo1007() {
        C0564 c0564 = C0725.m1432().f2973;
        String strDecrypt = StringFog.decrypt("JGjt1/H4CmNuae2d5fhAFSRo\n", "CkKxs9qkJD8=\n");
        c0564.getClass();
        return C0564.m1316((Object) null, MBConfiguration.class, strDecrypt);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0208
    /* JADX INFO: renamed from: ﾒ */
    public final Class mo1006(String str) {
        byte b;
        byte b2 = 3;
        switch (str.hashCode()) {
            case -2107186802:
                b = !str.equals(StringFog.decrypt("yMG9Udds6SXKybpMxGfNMw==\n", "hqDJOKEJqEE=\n")) ? (byte) -1 : (byte) 22;
                break;
            case -1980005015:
                b = !str.equals(StringFog.decrypt("mDUl0g3BwPu9MSDpAcrD\n", "z1BHhGSkt70=\n")) ? (byte) -1 : (byte) 27;
                break;
            case -1945308362:
                b = !str.equals(f1414) ? (byte) -1 : (byte) 45;
                break;
            case -1940754118:
                b = !str.equals(StringFog.decrypt("2JPtpASy6GLTot+zArr9f+2I\n", "mfGe0HbTixY=\n")) ? (byte) -1 : (byte) 3;
                break;
            case -1874906197:
                b = !str.equals(StringFog.decrypt("GxFw4MkLjuE6Ln/n2CmS5BUZbPD6BZn3\n", "VngelKxs/IA=\n")) ? (byte) -1 : (byte) 42;
                break;
            case -1850171958:
                b = !str.equals(f1423) ? (byte) -1 : (byte) 15;
                break;
            case -1766796574:
                b = !str.equals(StringFog.decrypt("LytSA9saeXAAKU0DwxhhaxI+QwTIDQ==\n", "YUomaq1/LQI=\n")) ? (byte) -1 : (byte) 21;
                break;
            case -1728440643:
                b = !str.equals(f1416) ? (byte) -1 : (byte) 41;
                break;
            case -1702626105:
                b = !str.equals(StringFog.decrypt("gDnRErw3ZG6hBtYCvD9AZqgn\n", "zVC/ZtlQFg8=\n")) ? (byte) -1 : (byte) 40;
                break;
            case -1679044855:
                b = !str.equals(f1406) ? (byte) -1 : (byte) 60;
                break;
            case -1656370481:
                b = !str.equals(StringFog.decrypt("SeZaZG1/PwZJ6lZWUnsm\n", "Ho80ADseUWM=\n")) ? (byte) -1 : (byte) 38;
                break;
            case -1358506046:
                b = !str.equals(f1424) ? (byte) -1 : (byte) 14;
                break;
            case -1355055839:
                b = !str.equals(f1415) ? (byte) -1 : (byte) 43;
                break;
            case -1346045035:
                b = !str.equals(f1418) ? (byte) -1 : (byte) 37;
                break;
            case -1119480813:
                b = !str.equals(f1405) ? (byte) -1 : (byte) 63;
                break;
            case -1091491584:
                b = !str.equals(f1422) ? (byte) -1 : (byte) 16;
                break;
            case -1058625022:
                b = !str.equals(StringFog.decrypt("ZqUuKGJFViNGuDsnYF1dEnSvPS91QGM4\n", "NcxJRgMpF0E=\n")) ? (byte) -1 : (byte) 62;
                break;
            case -920590771:
                b = !str.equals(StringFog.decrypt("qFAfTnGVCTOJeh5UYJMSPIBLJ1NxhQ==\n", "5TlxOhTye1I=\n")) ? (byte) -1 : (byte) 52;
                break;
            case -894298414:
                b = !str.equals(StringFog.decrypt("V9DQn1PbxLt29d+FUtXYvUrY2Y5g1dOt\n", "Grm+6za8tto=\n")) ? (byte) -1 : (byte) 56;
                break;
            case -667901878:
                b = !str.equals(StringFog.decrypt("TwauKvzK9nRuJ/Ub98nHdHALljf82g==\n", "Am/AXpmthBU=\n")) ? (byte) -1 : (byte) 54;
                break;
            case -610610019:
                b = !str.equals(f1397) ? (byte) -1 : (byte) 66;
                break;
            case -495785498:
                b = !str.equals(f1432) ? (byte) -1 : (byte) 2;
                break;
            case -453012127:
                b = !str.equals(f1433) ? (byte) -1 : (byte) 0;
                break;
            case -374448056:
                b = !str.equals(f1408) ? (byte) -1 : (byte) 57;
                break;
            case -323393690:
                b = !str.equals(f1425) ? (byte) -1 : (byte) 13;
                break;
            case -239039370:
                b = !str.equals(f1404) ? (byte) -1 : (byte) 64;
                break;
            case -156796625:
                b = !str.equals(StringFog.decrypt("LPUgG8VkY/sN3i8cxVV4/xY=\n", "YZxOb6ADEZo=\n")) ? (byte) -1 : (byte) 48;
                break;
            case -126256187:
                b = !str.equals(StringFog.decrypt("LZPv9SlrZQwAm+nxM2JkCBY=\n", "ZNeAgkcHCm0=\n")) ? (byte) -1 : (byte) 34;
                break;
            case -121577375:
                b = !str.equals(StringFog.decrypt("DOVuxrIBIT4t/0T5\n", "QawAstdmU18=\n")) ? (byte) -1 : (byte) 31;
                break;
            case -75274960:
                b = !str.equals(StringFog.decrypt("yae+R3dhClk=\n", "isbTNxYIbTc=\n")) ? (byte) -1 : (byte) 6;
                break;
            case -33766813:
                b = !str.equals(StringFog.decrypt("X3/IvnIPhhtieN23VhWWF3ld1ah0GZwXZA==\n", "FhG82wB88nI=\n")) ? (byte) -1 : (byte) 9;
                break;
            case 114573451:
                b = !str.equals(f1420) ? (byte) -1 : (byte) 29;
                break;
            case 154057692:
                b = !str.equals(StringFog.decrypt("uUR915wCNxKYTnzNihEkHYc=\n", "9A0To/llRXM=\n")) ? (byte) -1 : (byte) 32;
                break;
            case 174921027:
                b = !str.equals(f1410) ? (byte) -1 : (byte) 53;
                break;
            case 329817920:
                b = !str.equals(StringFog.decrypt("Dix8YOpSJt04LGRN8UUE0TIseQ==\n", "XEkLAZg2cLQ=\n")) ? (byte) -1 : (byte) 10;
                break;
            case 336960212:
                b = !str.equals(StringFog.decrypt("g7xrHQ6KZTiVs28Z\n", "wN0GbW/jAlY=\n")) ? (byte) -1 : (byte) 23;
                break;
            case 373899945:
                b = !str.equals(f1428) ? (byte) -1 : (byte) 17;
                break;
            case 427609920:
                b = !str.equals(f1409) ? (byte) -1 : (byte) 55;
                break;
            case 604727084:
                b = !str.equals(StringFog.decrypt("rRTx0howCRKwE+Tb\n", "xHqFt2hDfXs=\n")) ? (byte) -1 : (byte) 35;
                break;
            case 675209731:
                b = !str.equals(StringFog.decrypt("i1mylfriAWONQA==\n", "yDjf5ZuLZg0=\n")) ? (byte) -1 : (byte) 7;
                break;
            case 713779451:
                b = !str.equals(StringFog.decrypt("EqyznhVrojczhrGDE2edPzGsnosCaIY/OrI=\n", "X8Xd6nAM0FY=\n")) ? (byte) -1 : (byte) 50;
                break;
            case 745946635:
                b = !str.equals(StringFog.decrypt("QKtkNOdz/eJ9vnUz9GQ=\n", "DsoQXZEWsYs=\n")) ? (byte) -1 : (byte) 20;
                break;
            case 824636291:
                b = !str.equals(StringFog.decrypt("vxBqhJD+wTeTEVGUluTBIIIbcISQ\n", "9n4e4eKoqFM=\n")) ? (byte) -1 : (byte) 8;
                break;
            case 858158177:
                b = !str.equals(f1407) ? (byte) -1 : (byte) 59;
                break;
            case 888727913:
                b = !str.equals(StringFog.decrypt("M+/zNHHhOfES9dkLUuco5BHU5A==\n", "fqadQBSGS5A=\n")) ? (byte) -1 : (byte) 1;
                break;
            case 892841421:
                b = !str.equals(StringFog.decrypt("EHIezMUmvHA7ZQY=\n", "UgBxu7ZDziY=\n")) ? (byte) -1 : (byte) 25;
                break;
            case 897829864:
                b = !str.equals(StringFog.decrypt("QgrFCb37z+dpDsE=\n", "AGu2bOqerbE=\n")) ? (byte) -1 : (byte) 36;
                break;
            case 950749305:
                b = !str.equals(f1412) ? (byte) -1 : (byte) 49;
                break;
            case 989671232:
                b = !str.equals(StringFog.decrypt("MiBozh5K2bETB2fOElvOlREtRdsJSf25Gj4=\n", "f0kGunstq9A=\n")) ? (byte) -1 : (byte) 44;
                break;
            case 1014009286:
                b = !str.equals(StringFog.decrypt("mARe19G2BFy5LlzK17o1aZQ7WcbD\n", "1W0wo7TRdj0=\n")) ? (byte) -1 : (byte) 46;
                break;
            case 1050400725:
                b = !str.equals(f1417) ? (byte) -1 : (byte) 39;
                break;
            case 1074855404:
                b = !str.equals(StringFog.decrypt("srVWnELAeuWTjFSJXsZq6JqKUY1Q\n", "/9w46CenCIQ=\n")) ? (byte) -1 : (byte) 58;
                break;
            case 1118286493:
                b = !str.equals(f1419) ? (byte) -1 : (byte) 30;
                break;
            case 1139753057:
                b = !str.equals(StringFog.decrypt("0Mcn6Y9kehz/wzr4\n", "kqZUjMkWG3s=\n")) ? (byte) -1 : (byte) 24;
                break;
            case 1297340448:
                b = !str.equals(StringFog.decrypt("SCCZgP/jM9x1J4yJwfk0wWQgiJc=\n", "AU7t5Y2QR7U=\n")) ? (byte) -1 : (byte) 12;
                break;
            case 1331885131:
                b = !str.equals(StringFog.decrypt("Z1tAa/1u5TZIQEh5/XT7\n", "KzQhD5QAgnc=\n")) ? (byte) -1 : (byte) 33;
                break;
            case 1342927760:
                b = !str.equals(f1429) ? (byte) -1 : (byte) 11;
                break;
            case 1357502028:
                b = !str.equals(StringFog.decrypt("Yzwih3zvO9hNIwOFcuUU3w==\n", "IFNP6hOBca0=\n")) ? (byte) -1 : (byte) 28;
                break;
            case 1424096196:
                b = !str.equals(f1431) ? (byte) -1 : (byte) 4;
                break;
            case 1492060322:
                b = !str.equals(f1398) ? (byte) -1 : (byte) 65;
                break;
            case 1505622627:
                b = !str.equals(StringFog.decrypt("xHvQbIO7jIbKc812g6eokA==\n", "hhq+AubJzeI=\n")) ? (byte) -1 : (byte) 61;
                break;
            case 1664904176:
                b = !str.equals(f1413) ? (byte) -1 : (byte) 47;
                break;
            case 1855930960:
                b = !str.equals(f1427) ? (byte) -1 : (byte) 18;
                break;
            case 1884374718:
                b = !str.equals(f1426) ? (byte) -1 : (byte) 19;
                break;
            case 2041991951:
                b = !str.equals(f1430) ? (byte) -1 : (byte) 5;
                break;
            case 2073767153:
                b = !str.equals(f1411) ? (byte) -1 : (byte) 51;
                break;
            case 2118015322:
                b = !str.equals(f1421) ? (byte) -1 : (byte) 26;
                break;
            default:
                b = -1;
                break;
        }
        switch (b) {
            case 0:
                return MBConfiguration.class;
            case 1:
                return MBridgeSDKFactory.class;
            case 2:
                return MBRewardVideoActivity.class;
            case 3:
                return AbstractJSActivity.class;
            case 4:
                return MBBaseActivity.class;
            case 5:
                return MBCommonActivity.class;
            case 6:
                return Campaign.class;
            case 7:
                return CampaignEx.class;
            case 8:
                return InterVideoOutListener.class;
            case 9:
                return InterstitialVideoListener.class;
            case 10:
                return RewardVideoListener.class;
            case 11:
                return MBInterstitialActivity.class;
            case 12:
                return InterstitialListener.class;
            case 13:
            case 14:
                return MBBannerView.class;
            case 15:
            case 16:
                return MBBannerWebView.class;
            case 17:
                return MBInterstitialHandler.class;
            case 18:
                return MBInterstitialVideoHandler.class;
            case 19:
                return MBRewardVideoHandler.class;
            case 20:
                return NativeListener.class;
            case 21:
                return NativeListener.NativeTrackingListener.class;
            case 22:
                return NativeListener.NativeAdListener.class;
            case 23:
                return CampaignUnit.class;
            case 24:
                return BaseFragment.class;
            case 25:
            case 26:
                return BrowserView.class;
            case 27:
                return WebViewFragment.class;
            case 28:
                return CommonJumpLoader.class;
            case 29:
            case 30:
                return MBImageView.class;
            case 31:
                return MBridgeSDK.class;
            case 32:
                return MBridgeConstans.class;
            case 33:
                return LoadingActivity.class;
            case 34:
                return IDownloadListener.class;
            case 35:
                return interstitial.class;
            case 36:
            case 37:
                return BaseWebView.class;
            case 38:
            case 39:
                return WindVaneWebView.class;
            case 40:
            case 41:
                return MBridgeVideoView.class;
            case 42:
            case 43:
                return MBridgeVastEndCardView.class;
            case 44:
            case 45:
                return MBridgeNativeEndCardView.class;
            case 46:
            case 47:
                return MBridgeClickCTAView.class;
            case 48:
            case 49:
                return MBridgeBaseView.class;
            case 50:
            case 51:
                return MBridgeClickMiniCardView.class;
            case 52:
            case 53:
                return MBridgeContainerView.class;
            case 54:
            case 55:
                return MBridgeH5EndCardView.class;
            case 56:
            case 57:
                return MBridgeLandingPageView.class;
            case 58:
            case 59:
                return MBridgePlayableView.class;
            case 60:
                return OnMBMediaViewListener.class;
            case 61:
                return BannerAdListener.class;
            case 62:
                return AbstractJSActivity.class;
            case 63:
            case 64:
                return DomainMBCommonActivity.class;
            case 65:
                return MBridgeIds.class;
            case 66:
                return RewardInfo.class;
            default:
                switch (str.hashCode()) {
                    case -1789471684:
                        b2 = !str.equals(f1389) ? (byte) -1 : (byte) 8;
                        break;
                    case -1613020512:
                        b2 = !str.equals(f1391) ? (byte) -1 : (byte) 6;
                        break;
                    case -1258619456:
                        if (!str.equals(f1394)) {
                            b2 = -1;
                        }
                        break;
                    case -828904331:
                        b2 = !str.equals(f1392) ? (byte) -1 : (byte) 5;
                        break;
                    case -765829320:
                        b2 = !str.equals(f1387) ? (byte) -1 : (byte) 10;
                        break;
                    case -699577952:
                        b2 = !str.equals(f1386) ? (byte) -1 : (byte) 11;
                        break;
                    case 450781617:
                        b2 = !str.equals(f1390) ? (byte) -1 : (byte) 7;
                        break;
                    case 834115686:
                        b2 = !str.equals(f1396) ? (byte) -1 : (byte) 1;
                        break;
                    case 1499766450:
                        b2 = !str.equals(f1395) ? (byte) -1 : (byte) 2;
                        break;
                    case 1884374718:
                        b2 = !str.equals(f1426) ? (byte) -1 : (byte) 0;
                        break;
                    case 2024253542:
                        b2 = !str.equals(f1393) ? (byte) -1 : (byte) 4;
                        break;
                    case 2097161959:
                        b2 = !str.equals(f1388) ? (byte) -1 : (byte) 9;
                        break;
                    default:
                        b2 = -1;
                        break;
                }
                switch (b2) {
                    case 0:
                        return com.mbridge.msdk.newout.MBRewardVideoHandler.class;
                    case 1:
                        return MBBidRewardVideoHandler.class;
                    case 2:
                        return IMBRRewardVideoHandler.class;
                    case 3:
                        return com.mbridge.msdk.newout.RewardVideoListener.class;
                    case 4:
                    case 5:
                        return com.mbridge.msdk.config.activity.MBRewardVideoActivity.class;
                    case 6:
                    case 7:
                        return BaseActivity.class;
                    case 8:
                        return MIMManager.class;
                    case 9:
                        return FastKV.class;
                    case 10:
                        return SameMD5.class;
                    case 11:
                        return NewInterstitialListener.class;
                    default:
                        return null;
                }
        }
    }
}
