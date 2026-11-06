package com.unity3d.ads.core.data.datasource;

import android.os.Bundle;
import com.ironsource.G5;
import com.unity3d.ads.core.data.model.AdRevenueData;
import com.unity3d.ads.core.data.model.AdRevenueOrigin;
import com.unity3d.ads.core.domain.events.HandleAdRevenueEvent;
import com.unity3d.ads.core.log.Logger;
import gatewayprotocol.v1.ClientInfoOuterClass;
import java.util.Set;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import kotlin.text.StringsKt___StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: MaxAdRevenueListener.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class MaxAdRevenueListener {
    public static final Companion Companion = new Companion(null);
    private static final String KEY_AD_FORMAT = "ad_format";
    private static final String KEY_COUNTRY_CODE = "country_code";
    private static final String KEY_MAX_AD_UNIT_ID = "max_ad_unit_id";
    private static final String KEY_NETWORK_NAME = "network_name";
    private static final String KEY_REVENUE = "revenue";
    private static final String KEY_THIRD_PARTY_AD_PLACEMENT_ID = "third_party_ad_placement_id";
    private static final int MAX_STRING_LENGTH = 500;
    private final HandleAdRevenueEvent handleAdRevenueEvent;
    private final Logger logger;
    private final CoroutineScope scope;

    public MaxAdRevenueListener(HandleAdRevenueEvent handleAdRevenueEvent, CoroutineScope scope, Logger logger) {
        Intrinsics.checkNotNullParameter(handleAdRevenueEvent, "handleAdRevenueEvent");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.handleAdRevenueEvent = handleAdRevenueEvent;
        this.scope = scope;
        this.logger = logger;
    }

    /* JADX INFO: compiled from: MaxAdRevenueListener.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.data.datasource.MaxAdRevenueListener$onMessageReceived$2, reason: invalid class name */
    /* JADX INFO: compiled from: MaxAdRevenueListener.kt */
    @DebugMetadata(c = "com.unity3d.ads.core.data.datasource.MaxAdRevenueListener$onMessageReceived$2", f = "MaxAdRevenueListener.kt", l = {45}, m = "invokeSuspend")
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Bundle $messageData;
        Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(Bundle bundle, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$messageData = bundle;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return MaxAdRevenueListener.this.new AnonymousClass2(this.$messageData, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            AdRevenueData adRevenueData;
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
            } catch (Exception e) {
                MaxAdRevenueListener.this.logger.trace("Failed to process ad revenue event", e);
            }
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                AdRevenueData revenueBundle = MaxAdRevenueListener.this.parseRevenueBundle(this.$messageData);
                if (revenueBundle != null) {
                    HandleAdRevenueEvent handleAdRevenueEvent = MaxAdRevenueListener.this.handleAdRevenueEvent;
                    ClientInfoOuterClass.MediationProvider mediationProvider = ClientInfoOuterClass.MediationProvider.MEDIATION_PROVIDER_MAX;
                    AdRevenueOrigin adRevenueOrigin = AdRevenueOrigin.AUTOMATIC_COLLECTION;
                    this.L$0 = revenueBundle;
                    this.label = 1;
                    if (handleAdRevenueEvent.invoke(revenueBundle, mediationProvider, adRevenueOrigin, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    adRevenueData = revenueBundle;
                } else {
                    Logger.DefaultImpls.trace$default(MaxAdRevenueListener.this.logger, "Failed to parse revenue event", null, 2, null);
                    return Unit.INSTANCE;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                adRevenueData = (AdRevenueData) this.L$0;
                ResultKt.throwOnFailure(obj);
            }
            Logger.DefaultImpls.trace$default(MaxAdRevenueListener.this.logger, "Ad revenue event sent: revenue=" + adRevenueData.getRevenue() + ", network=" + adRevenueData.getNetworkName(), null, 2, null);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String onMessageReceived$lambda$0(MaxAdRevenueListener maxAdRevenueListener, Bundle bundle) {
        return "Ad revenue subscribed event (raw): " + maxAdRevenueListener.bundleToTraceString(bundle);
    }

    public final void onMessageReceived(final Bundle messageData) {
        Intrinsics.checkNotNullParameter(messageData, "messageData");
        this.logger.trace(new Function0() { // from class: com.unity3d.ads.core.data.datasource.MaxAdRevenueListener$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return MaxAdRevenueListener.onMessageReceived$lambda$0(this.f$0, messageData);
            }
        });
        BuildersKt__Builders_commonKt.launch$default(this.scope, null, null, new AnonymousClass2(messageData, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0053 A[Catch: Exception -> 0x0013, TryCatch #0 {Exception -> 0x0013, blocks: (B:3:0x0003, B:5:0x000a, B:15:0x004b, B:17:0x0053, B:19:0x005a, B:21:0x0062, B:23:0x0069, B:25:0x0071, B:27:0x0078, B:29:0x0080, B:31:0x0087, B:9:0x0017, B:11:0x0021, B:13:0x002e, B:14:0x0034), top: B:35:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0062 A[Catch: Exception -> 0x0013, TryCatch #0 {Exception -> 0x0013, blocks: (B:3:0x0003, B:5:0x000a, B:15:0x004b, B:17:0x0053, B:19:0x005a, B:21:0x0062, B:23:0x0069, B:25:0x0071, B:27:0x0078, B:29:0x0080, B:31:0x0087, B:9:0x0017, B:11:0x0021, B:13:0x002e, B:14:0x0034), top: B:35:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0071 A[Catch: Exception -> 0x0013, TryCatch #0 {Exception -> 0x0013, blocks: (B:3:0x0003, B:5:0x000a, B:15:0x004b, B:17:0x0053, B:19:0x005a, B:21:0x0062, B:23:0x0069, B:25:0x0071, B:27:0x0078, B:29:0x0080, B:31:0x0087, B:9:0x0017, B:11:0x0021, B:13:0x002e, B:14:0x0034), top: B:35:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0080 A[Catch: Exception -> 0x0013, TryCatch #0 {Exception -> 0x0013, blocks: (B:3:0x0003, B:5:0x000a, B:15:0x004b, B:17:0x0053, B:19:0x005a, B:21:0x0062, B:23:0x0069, B:25:0x0071, B:27:0x0078, B:29:0x0080, B:31:0x0087, B:9:0x0017, B:11:0x0021, B:13:0x002e, B:14:0x0034), top: B:35:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0086  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.unity3d.ads.core.data.model.AdRevenueData parseRevenueBundle(android.os.Bundle r15) {
        /*
            r14 = this;
            java.lang.String r0 = "revenue"
            r1 = 0
            boolean r2 = r15.containsKey(r0)     // Catch: java.lang.Exception -> L13
            r3 = 2
            if (r2 != 0) goto L17
            com.unity3d.ads.core.log.Logger r0 = r14.logger     // Catch: java.lang.Exception -> L13
            java.lang.String r2 = "Missing revenue key in revenue event"
            com.unity3d.ads.core.log.Logger.DefaultImpls.trace$default(r0, r2, r1, r3, r1)     // Catch: java.lang.Exception -> L13
        L11:
            r6 = r1
            goto L4b
        L13:
            r0 = move-exception
            r15 = r0
            goto L9a
        L17:
            double r4 = r15.getDouble(r0)     // Catch: java.lang.Exception -> L13
            r6 = 0
            int r0 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r0 < 0) goto L34
            double r6 = java.lang.Math.abs(r4)     // Catch: java.lang.Exception -> L13
            r8 = 9218868437227405311(0x7fefffffffffffff, double:1.7976931348623157E308)
            int r0 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r0 > 0) goto L34
            java.lang.Double r0 = java.lang.Double.valueOf(r4)     // Catch: java.lang.Exception -> L13
            r6 = r0
            goto L4b
        L34:
            com.unity3d.ads.core.log.Logger r0 = r14.logger     // Catch: java.lang.Exception -> L13
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L13
            r2.<init>()     // Catch: java.lang.Exception -> L13
            java.lang.String r6 = "Invalid or missing revenue in revenue event: "
            r2.append(r6)     // Catch: java.lang.Exception -> L13
            r2.append(r4)     // Catch: java.lang.Exception -> L13
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Exception -> L13
            com.unity3d.ads.core.log.Logger.DefaultImpls.trace$default(r0, r2, r1, r3, r1)     // Catch: java.lang.Exception -> L13
            goto L11
        L4b:
            java.lang.String r0 = "country_code"
            java.lang.String r0 = r15.getString(r0)     // Catch: java.lang.Exception -> L13
            if (r0 == 0) goto L59
            java.lang.String r0 = r14.validateString(r0)     // Catch: java.lang.Exception -> L13
            r7 = r0
            goto L5a
        L59:
            r7 = r1
        L5a:
            java.lang.String r0 = "network_name"
            java.lang.String r0 = r15.getString(r0)     // Catch: java.lang.Exception -> L13
            if (r0 == 0) goto L68
            java.lang.String r0 = r14.validateString(r0)     // Catch: java.lang.Exception -> L13
            r8 = r0
            goto L69
        L68:
            r8 = r1
        L69:
            java.lang.String r0 = "max_ad_unit_id"
            java.lang.String r0 = r15.getString(r0)     // Catch: java.lang.Exception -> L13
            if (r0 == 0) goto L77
            java.lang.String r0 = r14.validateString(r0)     // Catch: java.lang.Exception -> L13
            r9 = r0
            goto L78
        L77:
            r9 = r1
        L78:
            java.lang.String r0 = "third_party_ad_placement_id"
            java.lang.String r0 = r15.getString(r0)     // Catch: java.lang.Exception -> L13
            if (r0 == 0) goto L86
            java.lang.String r0 = r14.validateString(r0)     // Catch: java.lang.Exception -> L13
            r10 = r0
            goto L87
        L86:
            r10 = r1
        L87:
            java.lang.String r0 = "ad_format"
            java.lang.String r15 = r15.getString(r0)     // Catch: java.lang.Exception -> L13
            com.unity3d.ads.core.data.model.AdRevenueAdFormat r11 = r14.parseMaxAdFormatString(r15)     // Catch: java.lang.Exception -> L13
            com.unity3d.ads.core.data.model.AdRevenueData r4 = new com.unity3d.ads.core.data.model.AdRevenueData     // Catch: java.lang.Exception -> L13
            r12 = 1
            r13 = 0
            r5 = 0
            r4.<init>(r5, r6, r7, r8, r9, r10, r11, r12, r13)     // Catch: java.lang.Exception -> L13
            return r4
        L9a:
            com.unity3d.ads.core.log.Logger r0 = r14.logger
            java.lang.String r2 = "Failed to parse revenue Bundle"
            r0.trace(r2, r15)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.data.datasource.MaxAdRevenueListener.parseRevenueBundle(android.os.Bundle):com.unity3d.ads.core.data.model.AdRevenueData");
    }

    private final String bundleToTraceString(final Bundle bundle) {
        try {
            if (bundle.isEmpty()) {
                return "{}";
            }
            Set<String> setKeySet = bundle.keySet();
            Intrinsics.checkNotNullExpressionValue(setKeySet, "keySet(...)");
            return CollectionsKt___CollectionsKt.joinToString$default(setKeySet, null, "{", "}", 0, null, new Function1() { // from class: com.unity3d.ads.core.data.datasource.MaxAdRevenueListener$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return MaxAdRevenueListener.bundleToTraceString$lambda$1(bundle, (String) obj);
                }
            }, 25, null);
        } catch (Throwable unused) {
            return "<error serializing bundle>";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence bundleToTraceString$lambda$1(Bundle bundle, String str) {
        String string;
        StringBuilder sb;
        try {
            Object obj = bundle.get(str);
            if (obj == null) {
                string = "null";
            } else if (obj instanceof String) {
                if (((String) obj).length() <= 500) {
                    sb = new StringBuilder();
                    sb.append('\"');
                    sb.append((String) obj);
                    sb.append('\"');
                } else {
                    sb = new StringBuilder();
                    sb.append('\"');
                    sb.append(StringsKt___StringsKt.take((String) obj, 500));
                    sb.append("...\"");
                }
                string = sb.toString();
            } else {
                string = obj.toString();
            }
            return str + G5.U + string;
        } catch (Throwable unused) {
            return str + "=<error>";
        }
    }

    private final String validateString(String str) {
        if (StringsKt__StringsKt.isBlank(str) || str.length() > 500) {
            return null;
        }
        return str;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x002f, code lost:
    
        if (r0.equals("REWARDED_INTERSTITIAL") == false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0038, code lost:
    
        if (r0.equals("REWARDED_INTER") == false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0041, code lost:
    
        if (r0.equals("REWARDED") == false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0046, code lost:
    
        return com.unity3d.ads.core.data.model.AdRevenueAdFormat.REWARDED;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x004d, code lost:
    
        if (r0.equals("INTER") == false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0062, code lost:
    
        if (r0.equals("INTERSTITIAL") == false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0067, code lost:
    
        return com.unity3d.ads.core.data.model.AdRevenueAdFormat.INTERSTITIAL;
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final com.unity3d.ads.core.data.model.AdRevenueAdFormat parseMaxAdFormatString(java.lang.String r3) {
        /*
            r2 = this;
            if (r3 == 0) goto L7a
            boolean r0 = kotlin.text.StringsKt__StringsKt.isBlank(r3)
            if (r0 == 0) goto La
            goto L7a
        La:
            java.util.Locale r0 = java.util.Locale.ROOT
            java.lang.String r0 = r3.toUpperCase(r0)
            java.lang.String r1 = "toUpperCase(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            int r1 = r0.hashCode()
            switch(r1) {
                case -1999289321: goto L68;
                case -1372958932: goto L5c;
                case 2374915: goto L50;
                case 69823676: goto L47;
                case 543046670: goto L3b;
                case 1654540619: goto L32;
                case 1854800829: goto L29;
                case 1951953708: goto L1d;
                default: goto L1c;
            }
        L1c:
            goto L70
        L1d:
            java.lang.String r1 = "BANNER"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L26
            goto L70
        L26:
            com.unity3d.ads.core.data.model.AdRevenueAdFormat r3 = com.unity3d.ads.core.data.model.AdRevenueAdFormat.BANNER
            return r3
        L29:
            java.lang.String r1 = "REWARDED_INTERSTITIAL"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L44
            goto L70
        L32:
            java.lang.String r1 = "REWARDED_INTER"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L44
            goto L70
        L3b:
            java.lang.String r1 = "REWARDED"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L44
            goto L70
        L44:
            com.unity3d.ads.core.data.model.AdRevenueAdFormat r3 = com.unity3d.ads.core.data.model.AdRevenueAdFormat.REWARDED
            return r3
        L47:
            java.lang.String r1 = "INTER"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L65
            goto L70
        L50:
            java.lang.String r1 = "MREC"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L59
            goto L70
        L59:
            com.unity3d.ads.core.data.model.AdRevenueAdFormat r3 = com.unity3d.ads.core.data.model.AdRevenueAdFormat.MREC
            return r3
        L5c:
            java.lang.String r1 = "INTERSTITIAL"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L65
            goto L70
        L65:
            com.unity3d.ads.core.data.model.AdRevenueAdFormat r3 = com.unity3d.ads.core.data.model.AdRevenueAdFormat.INTERSTITIAL
            return r3
        L68:
            java.lang.String r1 = "NATIVE"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L77
        L70:
            com.unity3d.ads.core.data.model.AdRevenueAdFormat$Companion r0 = com.unity3d.ads.core.data.model.AdRevenueAdFormat.Companion
            com.unity3d.ads.core.data.model.AdRevenueAdFormat r3 = r0.fromString(r3)
            return r3
        L77:
            com.unity3d.ads.core.data.model.AdRevenueAdFormat r3 = com.unity3d.ads.core.data.model.AdRevenueAdFormat.NATIVE
            return r3
        L7a:
            r3 = 0
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.data.datasource.MaxAdRevenueListener.parseMaxAdFormatString(java.lang.String):com.unity3d.ads.core.data.model.AdRevenueAdFormat");
    }
}
