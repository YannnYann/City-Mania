package com.ironsource.adqualitysdk.sdk.i;

import android.app.Activity;
import com.chartboost.sdk.ChartboostDelegate;
import com.chartboost.sdk.Model.CBError;
import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Ỳ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0747 extends ChartboostDelegate implements InterfaceC0445 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0728 f3061;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final C0875 f3062;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final ChartboostDelegate f3063;

    public C0747(C0728 c0728, ChartboostDelegate chartboostDelegate, C0875 c0875) {
        this.f3061 = c0728;
        this.f3063 = chartboostDelegate;
        this.f3062 = c0875;
    }

    public final void didCacheInPlay(String str) {
        this.f3061.m1187(this, this.f3062, StringFog.decrypt("DVKdapJh4709Trh9imbrszpf0nyPZ8+zLVKZUYhT4LM3\n", "Tjr8GOYDjNI=\n"), str);
        ChartboostDelegate chartboostDelegate = this.f3063;
        if (chartboostDelegate != null) {
            chartboostDelegate.didCacheInPlay(str);
        }
    }

    public final void didCacheInterstitial(String str) {
        this.f3061.m1187(this, this.f3062, StringFog.decrypt("NSWr6TibXr4FOY7+IJxWsAIo5P8lnXKwFSWv0iKNVKMFOaPvJZhd\n", "dk3Km0z5MdE=\n"), str);
        ChartboostDelegate chartboostDelegate = this.f3063;
        if (chartboostDelegate != null) {
            chartboostDelegate.didCacheInterstitial(str);
        }
    }

    public final void didCacheMoreApps(String str) {
        this.f3061.m1187(this, this.f3062, StringFog.decrypt("aI8nOszhL41YkwIt1OYng1+CaCzR5wODSI8jBdfxJaNblzU=\n", "K+dGSLiDQOI=\n"), str);
        ChartboostDelegate chartboostDelegate = this.f3063;
        if (chartboostDelegate != null) {
            chartboostDelegate.didCacheMoreApps(str);
        }
    }

    public final void didCacheRewardedVideo(String str) {
        this.f3061.m1187(this, this.f3062, StringFog.decrypt("bb+D6ZEJ1ZRdo6b+iQ7dmlqyzP+MD/maTb+HyYAc24lKsobNjA/flA==\n", "Ltfim+Vruvs=\n"), str);
        ChartboostDelegate chartboostDelegate = this.f3063;
        if (chartboostDelegate != null) {
            chartboostDelegate.didCacheRewardedVideo(str);
        }
    }

    public final void didClickInterstitial(String str) {
        this.f3061.m1187(this, this.f3062, StringFog.decrypt("AO03Y7fUGU8w8RJ0r9MRQTfgeHWq0jVMKuY9WK3CE1Iw8T9lqtca\n", "Q4VWEcO2diA=\n"), str);
        ChartboostDelegate chartboostDelegate = this.f3063;
        if (chartboostDelegate != null) {
            chartboostDelegate.didClickInterstitial(str);
        }
    }

    public final void didClickMoreApps(String str) {
        this.f3061.m1187(this, this.f3062, StringFog.decrypt("3V7QfPIdl4LtQvVr6hqfjOpTn2rvG7uB91XaQ+kNnazuRsI=\n", "njaxDoZ/+O0=\n"), str);
        ChartboostDelegate chartboostDelegate = this.f3063;
        if (chartboostDelegate != null) {
            chartboostDelegate.didClickMoreApps(str);
        }
    }

    public final void didClickRewardedVideo(String str) {
        this.f3061.m1187(this, this.f3062, StringFog.decrypt("cH4lk5VJ17ZAYgCEjU7fuEdzaoWIT/u1WnUvs4Rc2atXcyC3iE/dtg==\n", "MxZE4eEruNk=\n"), str);
        ChartboostDelegate chartboostDelegate = this.f3063;
        if (chartboostDelegate != null) {
            chartboostDelegate.didClickRewardedVideo(str);
        }
    }

    public final void didCloseInterstitial(String str) {
        this.f3061.m1187(this, this.f3062, StringFog.decrypt("qEn6VND9sJGYVd9DyPq4n59EtULN+5yShFL+b8rruoyYVfJSzf6z\n", "6yGbJqSf3/4=\n"), str);
        ChartboostDelegate chartboostDelegate = this.f3063;
        if (chartboostDelegate != null) {
            chartboostDelegate.didCloseInterstitial(str);
        }
    }

    public final void didCloseMoreApps(String str) {
        this.f3061.m1187(this, this.f3062, StringFog.decrypt("gGVfbOpgrLKweXp78mekvLdoEHr3ZoCxrH5bU/FwppyzfU0=\n", "ww0+Hp4Cw90=\n"), str);
        ChartboostDelegate chartboostDelegate = this.f3063;
        if (chartboostDelegate != null) {
            chartboostDelegate.didCloseMoreApps(str);
        }
    }

    public final void didCloseRewardedVideo(String str) {
        this.f3061.m1187(this, this.f3062, StringFog.decrypt("vplbbnv6bcqOhX55Y/1lxImUFHhm/EHJkoJfTmrvY9eZlF5KZvxnyg==\n", "/fE6HA+YAqU=\n"), str);
        ChartboostDelegate chartboostDelegate = this.f3063;
        if (chartboostDelegate != null) {
            chartboostDelegate.didCloseRewardedVideo(str);
        }
    }

    public final void didCompleteInterstitial(String str) {
        this.f3061.m1187(this, this.f3062, StringFog.decrypt("rl6bR2sehiSeQr5QcxmOKplT1FF2GKokgEaWUGsZoCWZU4hGaxWdIoxa\n", "7Tb6NR986Us=\n"), str);
        ChartboostDelegate chartboostDelegate = this.f3063;
        if (chartboostDelegate != null) {
            chartboostDelegate.didCompleteInterstitial(str);
        }
    }

    public final void didCompleteRewardedVideo(String str, int i) {
        this.f3061.m1187(this, this.f3062, StringFog.decrypt("wlvHp16HgnryR+KwRoCKdPVWiLFDga567EPKsF6Av3D2UtSxT4G7fOVWyQ==\n", "gTOm1Srl7RU=\n"), str, Integer.valueOf(i));
        ChartboostDelegate chartboostDelegate = this.f3063;
        if (chartboostDelegate != null) {
            chartboostDelegate.didCompleteRewardedVideo(str, i);
        }
    }

    public final void didDismissInterstitial(String str) {
        this.f3061.m1187(this, this.f3062, StringFog.decrypt("7M9lBjtvhTHc00ARI2iNP9vCKhAmaa433MptBzxEhCrK1XcAJnmDP8M=\n", "r6cEdE8N6l4=\n"), str);
        ChartboostDelegate chartboostDelegate = this.f3063;
        if (chartboostDelegate != null) {
            chartboostDelegate.didDismissInterstitial(str);
        }
    }

    public final void didDismissMoreApps(String str) {
        this.f3061.m1187(this, this.f3062, StringFog.decrypt("16iffG9r1mfntLprd2zeaeCl0Gpybf1h562XfWhE1nrxgY5+aA==\n", "lMD+DhsJuQg=\n"), str);
        ChartboostDelegate chartboostDelegate = this.f3063;
        if (chartboostDelegate != null) {
            chartboostDelegate.didDismissMoreApps(str);
        }
    }

    public final void didDismissRewardedVideo(String str) {
        this.f3061.m1187(this, this.f3062, StringFog.decrypt("do/y/LMXOR1Gk9frqxAxE0GCvequERIbRor6/bQnMwVUlffroyM/FlCI\n", "NeeTjsd1VnI=\n"), str);
        ChartboostDelegate chartboostDelegate = this.f3063;
        if (chartboostDelegate != null) {
            chartboostDelegate.didDismissRewardedVideo(str);
        }
    }

    public final void didDisplayInterstitial(String str) {
        this.f3061.m1187(this, this.f3062, StringFog.decrypt("pHp73vpCBCWUZl7J4kUMK5N3NMjnRC8jlGJ2zfdpBT6CYGnY51QCK4s=\n", "5xIarI4ga0o=\n"), str);
        ChartboostDelegate chartboostDelegate = this.f3063;
        if (chartboostDelegate != null) {
            chartboostDelegate.didDisplayInterstitial(str);
        }
    }

    public final void didDisplayMoreApps(String str) {
        this.f3061.m1187(this, this.f3062, StringFog.decrypt("VS4Zp1U+2j5lMjywTTnSMGIjVrFIOPE4ZTYUtFgR2iNzBwilUg==\n", "FkZ41SFctVE=\n"), str);
        ChartboostDelegate chartboostDelegate = this.f3063;
        if (chartboostDelegate != null) {
            chartboostDelegate.didDisplayMoreApps(str);
        }
    }

    public final void didDisplayRewardedVideo(String str) {
        this.f3061.m1187(this, this.f3062, StringFog.decrypt("hjlUXv6zu2K2JXFJ5rSzbLE0G0jjtZBktiFZTfODsXqkI1FJ7oe9aaA+\n", "xVE1LIrR1A0=\n"), str);
        ChartboostDelegate chartboostDelegate = this.f3063;
        if (chartboostDelegate != null) {
            chartboostDelegate.didDisplayRewardedVideo(str);
        }
    }

    public final void didFailToLoadInPlay(String str, CBError.CBImpressionError cBImpressionError) {
        this.f3061.m1187(this, this.f3062, StringFog.decrypt("VyZXlIROdKhnOnKDnEl8pmArGIKZSF2mfSJiibxDeqNdIGaKkVU=\n", "FE425vAsG8c=\n"), str, cBImpressionError);
        ChartboostDelegate chartboostDelegate = this.f3063;
        if (chartboostDelegate != null) {
            chartboostDelegate.didFailToLoadInPlay(str, cBImpressionError);
        }
    }

    public final void didFailToLoadInterstitial(String str, CBError.CBImpressionError cBImpressionError) {
        this.f3061.m1187(this, this.f3062, StringFog.decrypt("GS4+qsdeElspMhu931kaVS4jcbzaWDtVMyoLt/9THFATKCu9wU8JXS4vPrQ=\n", "WkZf2LM8fTQ=\n"), str, cBImpressionError);
        ChartboostDelegate chartboostDelegate = this.f3063;
        if (chartboostDelegate != null) {
            chartboostDelegate.didFailToLoadInterstitial(str, cBImpressionError);
        }
    }

    public final void didFailToLoadMoreApps(String str, CBError.CBImpressionError cBImpressionError) {
        this.f3061.m1187(this, this.f3062, StringFog.decrypt("WgC2xqPTta1qHJPRu9S9o20N+dC+1ZyjcASD25veu6ZUB6XRlsGqsQ==\n", "GWjXtNex2sI=\n"), str, cBImpressionError);
        ChartboostDelegate chartboostDelegate = this.f3063;
        if (chartboostDelegate != null) {
            chartboostDelegate.didFailToLoadMoreApps(str, cBImpressionError);
        }
    }

    public final void didFailToLoadRewardedVideo(String str, CBError.CBImpressionError cBImpressionError) {
        this.f3061.m1187(this, this.f3062, StringFog.decrypt("V/th7emyg95n50T68bWL0GD2Lvv0tKrQff9U8NG/jdVG9nf+77SJ1UL6ZPry\n", "FJMAn53Q7LE=\n"), str, cBImpressionError);
        ChartboostDelegate chartboostDelegate = this.f3063;
        if (chartboostDelegate != null) {
            chartboostDelegate.didFailToLoadRewardedVideo(str, cBImpressionError);
        }
    }

    public final void didFailToRecordClick(String str, CBError.CBClickError cBClickError) {
        this.f3061.m1187(this, this.f3062, StringFog.decrypt("8yykQSU6ENHDMIFWPT0Y38Qh61c4PDnf2SiRXAM9HNHCIIZfODsU\n", "sETFM1FYf74=\n"), str, cBClickError);
        ChartboostDelegate chartboostDelegate = this.f3063;
        if (chartboostDelegate != null) {
            chartboostDelegate.didFailToRecordClick(str, cBClickError);
        }
    }

    public final void didInitialize() {
        this.f3061.m1187(this, this.f3062, StringFog.decrypt("0rUf0jmSNnriqTrFIZU+dOW4UMQklBB7+KkXwSGZI3A=\n", "kd1+oE3wWRU=\n"), new Object[0]);
        ChartboostDelegate chartboostDelegate = this.f3063;
        if (chartboostDelegate != null) {
            chartboostDelegate.didInitialize();
        }
    }

    public final void didPauseClickForConfirmation(Activity activity) {
        this.f3061.m1187(this, this.f3062, StringFog.decrypt("YX+VXvlrLLRRY7BJ4WwkulZy2kjkbRO6V2SRb+FgILBkeIZv4mclslB6lVjkZi0=\n", "Ihf0LI0JQ9s=\n"), activity);
        ChartboostDelegate chartboostDelegate = this.f3063;
        if (chartboostDelegate != null) {
            try {
                chartboostDelegate.getClass().getDeclaredMethod(StringFog.decrypt("5AGjzaitcs7DBK7+op5u2cMHqfugqmzK9AGo8w==\n", "gGjHncnYAas=\n"), Activity.class).invoke(this.f3063, activity);
            } catch (Throwable unused) {
            }
        }
    }

    public final boolean shouldDisplayInterstitial(String str) {
        this.f3061.m1187(this, this.f3062, StringFog.decrypt("aZ6CCoYaJcRZgqcdnh0tyl6TzQuaFz/HTrKKC4IUK9JjmJcdgAs+wl6fghQ=\n", "KvbjePJ4Sqs=\n"), str);
        ChartboostDelegate chartboostDelegate = this.f3063;
        if (chartboostDelegate != null) {
            return chartboostDelegate.shouldDisplayInterstitial(str);
        }
        return false;
    }

    public final boolean shouldDisplayMoreApps(String str) {
        this.f3061.m1187(this, this.f3062, StringFog.decrypt("H03NvgH1MZAvUeipGfI5nihAgr8d+CuTOGHFvwX7P4YRSt6pNOcujA==\n", "XCWszHWXXv8=\n"), str);
        ChartboostDelegate chartboostDelegate = this.f3063;
        if (chartboostDelegate != null) {
            return chartboostDelegate.shouldDisplayMoreApps(str);
        }
        return false;
    }

    public final boolean shouldDisplayRewardedVideo(String str) {
        this.f3061.m1187(this, this.f3062, StringFog.decrypt("+onl9MKAdQ/KlcDj2od9Ac2EqvXejW8M3aXt9caOexnrhPPnxIZ/BO+I4OPZ\n", "ueGEhrbiGmA=\n"), str);
        ChartboostDelegate chartboostDelegate = this.f3063;
        if (chartboostDelegate != null) {
            return chartboostDelegate.shouldDisplayRewardedVideo(str);
        }
        return false;
    }

    public final boolean shouldRequestInterstitial(String str) {
        this.f3061.m1187(this, this.f3062, StringFog.decrypt("xmXfye/rieP2efre9+yB7fFokMjz5pPg4V/byu7slfjMY8re6fqS5fFk39c=\n", "hQ2+u5uJ5ow=\n"), str);
        ChartboostDelegate chartboostDelegate = this.f3063;
        if (chartboostDelegate != null) {
            return chartboostDelegate.shouldRequestInterstitial(str);
        }
        return false;
    }

    public final boolean shouldRequestMoreApps(String str) {
        this.f3061.m1187(this, this.f3062, StringFog.decrypt("OguJx/lbFRYKF6zQ4VwdGA0GxsblVg8VHTGNxPhcCQ00DJrQzEkKCg==\n", "eWPotY05enk=\n"), str);
        ChartboostDelegate chartboostDelegate = this.f3063;
        if (chartboostDelegate != null) {
            return chartboostDelegate.shouldRequestMoreApps(str);
        }
        return false;
    }

    public final void willDisplayVideo(String str) {
        this.f3061.m1187(this, this.f3062, StringFog.decrypt("QUSYJHxPe+JxWL0zZEhz7HZJ1yFhQXjJa1+JOmlUQuRmSZY=\n", "Aiz5VggtFI0=\n"), str);
        ChartboostDelegate chartboostDelegate = this.f3063;
        if (chartboostDelegate != null) {
            chartboostDelegate.willDisplayVideo(str);
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0445
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1025() {
        return this.f3063;
    }
}
