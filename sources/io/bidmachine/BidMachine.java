package io.bidmachine;

import android.content.Context;
import io.bidmachine.AdPlacementConfig;
import io.bidmachine.AdRequest;
import io.bidmachine.core.Logger;
import io.bidmachine.core.Utils;
import io.bidmachine.utils.lazy.LazyValue;
import java.util.List;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public class BidMachine {
    public static final String NAME = "BidMachine";
    private static final String TAG = "BidMachine";
    public static final String VERSION = "3.8.0";

    public static /* synthetic */ String $r8$lambda$nqYig_aspZaW0m35IRTyId7kkag(Boolean bool) {
        return "setNonPersonalized - " + bool;
    }

    @Deprecated
    public static String getBidToken(Context context, AdsFormat adsFormat) {
        return getBidToken(context, new AdPlacementConfig.Builder(adsFormat.toAdFormat()).build());
    }

    public static Object getExtrasParam(Context context, String str) {
        return ExtraParamsManager.get().getPublic(context, str);
    }

    public static void initialize(Context context, String str) {
        initialize(context, str, null);
    }

    public static boolean isInitialized() {
        return k.b().s();
    }

    public static void registerAdRequestListener(AdRequest.AdRequestListener<?> adRequestListener) {
        Logger.d("BidMachine", "registerAdRequestListener");
        k.b().a(adRequestListener);
    }

    public static void registerNetworks(NetworkConfig... networkConfigArr) {
        Logger.d("BidMachine", "registerNetworks with NetworkConfig array");
        NetworkRegistry.registerNetworks(networkConfigArr);
    }

    @Deprecated
    public static void setConsentConfig(final boolean z, final String str) {
        Logger.d("BidMachine", (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.BidMachine$$ExternalSyntheticLambda6
            @Override // io.bidmachine.utils.lazy.LazyValue
            public final Object get() {
                return String.format("setConsentConfig - %s, %s", Boolean.valueOf(z), str);
            }
        });
        k.b().k().a(new Function1() { // from class: io.bidmachine.BidMachine$$ExternalSyntheticLambda7
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ((io.bidmachine.internal.A) obj).a(Boolean.valueOf(z)).b(str);
            }
        });
    }

    public static void setConsentStatus(final boolean z) {
        Logger.d("BidMachine", (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.BidMachine$$ExternalSyntheticLambda14
            @Override // io.bidmachine.utils.lazy.LazyValue
            public final Object get() {
                return String.format("setConsentStatus - %s", Boolean.valueOf(z));
            }
        });
        k.b().k().a(new Function1() { // from class: io.bidmachine.BidMachine$$ExternalSyntheticLambda15
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ((io.bidmachine.internal.A) obj).a(Boolean.valueOf(z));
            }
        });
    }

    public static void setCoppa(final Boolean bool) {
        Logger.d("BidMachine", (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.BidMachine$$ExternalSyntheticLambda0
            @Override // io.bidmachine.utils.lazy.LazyValue
            public final Object get() {
                return String.format("setCoppa - %s", bool);
            }
        });
        k.b().k().a(new Function1() { // from class: io.bidmachine.BidMachine$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Boolean bool2 = bool;
                return ((io.bidmachine.internal.A) obj).b(bool2).c(bool2);
            }
        });
    }

    public static void setEndpoint(final String str) {
        Logger.d("BidMachine", (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.BidMachine$$ExternalSyntheticLambda8
            @Override // io.bidmachine.utils.lazy.LazyValue
            public final Object get() {
                return String.format("setEndpoint - %s", str);
            }
        });
        UrlProvider.setEndpoint(str);
    }

    public static void setGPP(final String str, final List<Integer> list) {
        Logger.d("BidMachine", (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.BidMachine$$ExternalSyntheticLambda2
            @Override // io.bidmachine.utils.lazy.LazyValue
            public final Object get() {
                return String.format("setGPP - %s, [%s]", str, Utils.join(list));
            }
        });
        k.b().k().a(new Function1() { // from class: io.bidmachine.BidMachine$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ((io.bidmachine.internal.A) obj).c(str).a(list);
            }
        });
    }

    public static void setLoggingEnabled(boolean z) {
        if (Debugger.isLoggingLock()) {
            Logger.d("BidMachine", "setLoggingEnabled skipped");
            return;
        }
        if (z) {
            Logger.setLoggingEnabled(true);
            Logger.d("BidMachine", "setLoggingEnabled - true");
        } else {
            Logger.d("BidMachine", "setLoggingEnabled - false");
            Logger.setLoggingEnabled(false);
        }
        NetworkRegistry.setLoggingEnabled(z);
    }

    public static void setNonPersonalized(final Boolean bool) {
        Logger.d("BidMachine", (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.BidMachine$$ExternalSyntheticLambda11
            @Override // io.bidmachine.utils.lazy.LazyValue
            public final Object get() {
                return BidMachine.$r8$lambda$nqYig_aspZaW0m35IRTyId7kkag(bool);
            }
        });
        k.b().k().a(new Function1() { // from class: io.bidmachine.BidMachine$$ExternalSyntheticLambda12
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ((io.bidmachine.internal.A) obj).c(bool);
            }
        });
    }

    public static void setPublisher(Publisher publisher) {
        Logger.d("BidMachine", "setPublisher");
        k.b().a(publisher);
    }

    public static void setSubjectToGDPR(final Boolean bool) {
        Logger.d("BidMachine", (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.BidMachine$$ExternalSyntheticLambda16
            @Override // io.bidmachine.utils.lazy.LazyValue
            public final Object get() {
                return String.format("setSubjectToGDPR - %s", bool);
            }
        });
        k.b().k().a(new Function1() { // from class: io.bidmachine.BidMachine$$ExternalSyntheticLambda17
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ((io.bidmachine.internal.A) obj).d(bool);
            }
        });
    }

    public static void setTargetingParams(TargetingParams targetingParams) {
        Logger.d("BidMachine", "setTargetingParams");
        k.b().a(targetingParams);
    }

    public static void setTestMode(final boolean z) {
        if (Debugger.isTestModeLock()) {
            Logger.d("BidMachine", "setTestMode skipped");
        } else {
            Logger.d("BidMachine", (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.BidMachine$$ExternalSyntheticLambda5
                @Override // io.bidmachine.utils.lazy.LazyValue
                public final Object get() {
                    return String.format("setTestMode - %s", Boolean.valueOf(z));
                }
            });
            k.b().a(z);
        }
    }

    @Deprecated
    public static void setUSPrivacyString(final String str) {
        Logger.d("BidMachine", (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.BidMachine$$ExternalSyntheticLambda9
            @Override // io.bidmachine.utils.lazy.LazyValue
            public final Object get() {
                return String.format("setUSPrivacyString - %s", str);
            }
        });
        k.b().k().a(new Function1() { // from class: io.bidmachine.BidMachine$$ExternalSyntheticLambda10
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ((io.bidmachine.internal.A) obj).a(str);
            }
        });
    }

    public static void unregisterAdRequestListener(AdRequest.AdRequestListener<?> adRequestListener) {
        Logger.d("BidMachine", "unregisterAdRequestListener");
        k.b().b(adRequestListener);
    }

    public static String getBidToken(Context context, AdPlacementConfig adPlacementConfig) {
        final String strA = o.a(context.getApplicationContext(), adPlacementConfig);
        Logger.d("BidMachine", (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.BidMachine$$ExternalSyntheticLambda4
            @Override // io.bidmachine.utils.lazy.LazyValue
            public final Object get() {
                return String.format("getBidToken - %s", strA);
            }
        });
        return strA;
    }

    public static void initialize(Context context, final String str, InitializationCallback initializationCallback) {
        Logger.d("BidMachine", (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.BidMachine$$ExternalSyntheticLambda18
            @Override // io.bidmachine.utils.lazy.LazyValue
            public final Object get() {
                return String.format("initialize - %s", str);
            }
        });
        k.b().a(context, str, initializationCallback);
    }

    public static void registerNetworks(Context context, String str) {
        Logger.d("BidMachine", "registerNetworks with JSON string");
        NetworkRegistry.registerNetworks(context, str);
    }

    @Deprecated
    public static void getBidToken(Context context, AdsFormat adsFormat, BidTokenCallback bidTokenCallback) {
        getBidToken(context, new AdPlacementConfig.Builder(adsFormat.toAdFormat()).build(), bidTokenCallback);
    }

    public static void getBidToken(Context context, final AdPlacementConfig adPlacementConfig, final BidTokenCallback bidTokenCallback) {
        final Context applicationContext = context.getApplicationContext();
        BidTokenTaskManager.execute(new Runnable() { // from class: io.bidmachine.BidMachine$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                bidTokenCallback.onCollected(BidMachine.getBidToken(applicationContext, adPlacementConfig));
            }
        });
    }

    public static void registerNetworks(Context context, String str, NetworkRegistryCallback networkRegistryCallback) {
        Logger.d("BidMachine", "registerNetworks with JSON string");
        NetworkRegistry.registerNetworks(context, str, networkRegistryCallback);
    }
}
