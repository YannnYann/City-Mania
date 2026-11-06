package io.bidmachine;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import com.explorestack.protobuf.Any;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.StringValue;
import com.explorestack.protobuf.Struct;
import com.explorestack.protobuf.Value;
import com.explorestack.protobuf.adcom.Placement;
import io.bidmachine.AdFormat;
import io.bidmachine.AdRequest;
import io.bidmachine.banner.BannerRequest;
import io.bidmachine.core.Logger;
import io.bidmachine.core.Utils;
import io.bidmachine.internal.AbstractC4234s;
import io.bidmachine.internal.C4236u;
import io.bidmachine.interstitial.InterstitialRequest;
import io.bidmachine.nativead.NativeRequest;
import io.bidmachine.o;
import io.bidmachine.protobuf.RequestTokenPayload;
import io.bidmachine.protobuf.ResponsePayload;
import io.bidmachine.protobuf.TokenConfiguration;
import io.bidmachine.protobuf.headerbidding.HeaderBiddingPlacement;
import io.bidmachine.protobuf.sdk.App;
import io.bidmachine.protobuf.sdk.MaskedSignals;
import io.bidmachine.protobuf.sdk.Placement;
import io.bidmachine.protobuf.sdk.Regs;
import io.bidmachine.protobuf.sdk.SDK;
import io.bidmachine.rewarded.RewardedRequest;
import io.bidmachine.tracking.TrackingObject;
import io.bidmachine.utils.BMError;
import io.bidmachine.utils.ProtoUtils;
import io.bidmachine.utils.lazy.LazyValue;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes4.dex */
public abstract class o {
    public static final TrackingObject a = new BidMachineTrackingObject();
    public static final Map b = new ConcurrentHashMap();
    public static final Map c = new ConcurrentHashMap();

    public static class b implements ExpirationListener {
        public b() {
        }

        public static /* synthetic */ String a(BidToken bidToken) {
            return String.format("BidToken expired - %s", bidToken.getId());
        }

        @Override // io.bidmachine.ExpirationListener
        public void onExpired(final BidToken bidToken) {
            Logger.d("BidTokenManager", (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.o$b$$ExternalSyntheticLambda0
                @Override // io.bidmachine.utils.lazy.LazyValue
                public final Object get() {
                    return o.b.a(bidToken);
                }
            });
            o.b(bidToken);
            bidToken.destroyAdRequest();
        }
    }

    public static String a(Context context, AdPlacementConfig adPlacementConfig) {
        AdsType adsType = adPlacementConfig.getAdFormat().getAdsType();
        RequestTokenPayload requestTokenPayloadB = b(context, adPlacementConfig);
        if (requestTokenPayloadB == null) {
            a(adsType, BMError.internal("Failed to create RequestTokenPayload"));
            return "";
        }
        try {
            String strEncodeToString = Base64.encodeToString(requestTokenPayloadB.toByteArray(), 2);
            a(adsType);
            return strEncodeToString;
        } catch (Exception e) {
            a(adsType, BMError.throwable("Failed to encode RequestTokenPayload", e));
            c(requestTokenPayloadB.getTokenHashValue());
            return "";
        }
    }

    public static RequestTokenPayload b(Context context, AdPlacementConfig adPlacementConfig) {
        try {
            AdFormat adFormat = adPlacementConfig.getAdFormat();
            AdsType adsType = adFormat.getAdsType();
            k kVarB = k.b();
            C4236u c4236uB = kVarB.b(context);
            io.bidmachine.internal.v vVarC = c4236uB.c();
            MaskedSignals.Builder builderNewBuilder = MaskedSignals.newBuilder();
            RequestTokenPayload.Builder builderNewBuilder2 = RequestTokenPayload.newBuilder();
            final Placement.Builder placementBuilder = builderNewBuilder2.getPlacementBuilder();
            placementBuilder.setAdFormat(ProtoUtils.createAdFormatBuilder(adFormat));
            placementBuilder.setAdType(adsType.getName());
            Utils.ifNotNull(adPlacementConfig.getPlacementId(), new Executable() { // from class: io.bidmachine.o$$ExternalSyntheticLambda2
                @Override // io.bidmachine.Executable
                public final void execute(Object obj) {
                    o.a(placementBuilder, (String) obj);
                }
            });
            Utils.ifNotNull(adPlacementConfig.getCustomParams(), new Executable() { // from class: io.bidmachine.o$$ExternalSyntheticLambda3
                @Override // io.bidmachine.Executable
                public final void execute(Object obj) {
                    o.a(placementBuilder, (CustomParams) obj);
                }
            });
            App.Builder builderNewBuilder3 = App.newBuilder();
            kVarB.e().build(context, builderNewBuilder3);
            builderNewBuilder2.setAppData(builderNewBuilder3);
            SDK.Builder sdkver = SDK.newBuilder().setSdk(BidMachine.NAME).setSdkver("3.8.0");
            AbstractC4234s.a(sdkver);
            builderNewBuilder2.setPlacementData(sdkver);
            kVarB.f().build(context, builderNewBuilder2, builderNewBuilder, c4236uB.d(), vVarC);
            kVarB.o().build(context, builderNewBuilder2, c4236uB.h(), adsType);
            a(context, builderNewBuilder2, adPlacementConfig);
            Regs.Builder builderNewBuilder4 = Regs.newBuilder();
            io.bidmachine.internal.B.a(builderNewBuilder4, builderNewBuilder, c4236uB);
            builderNewBuilder2.setRegsData(builderNewBuilder4);
            Struct.Builder builderNewBuilder5 = Struct.newBuilder();
            Struct privateStruct = ExtraParamsManager.get().getPrivateStruct(context);
            if (privateStruct != null) {
                builderNewBuilder5.putAllFields(privateStruct.getFieldsMap());
            }
            if (builderNewBuilder5.getFieldsCount() > 0) {
                builderNewBuilder2.setExt(builderNewBuilder5.build());
            }
            return builderNewBuilder2.build();
        } catch (Throwable th) {
            Logger.w(th);
            return null;
        }
    }

    public static void c(BidToken bidToken) {
        c.put(bidToken.getId(), bidToken);
        bidToken.startExpiration();
    }

    public static BidToken c(String str) {
        BidToken bidToken = (BidToken) c.remove(str);
        if (bidToken != null) {
            bidToken.stopExpiration();
        }
        return bidToken;
    }

    public static /* synthetic */ void a(Placement.Builder builder, String str) {
        builder.setPlacementId(StringValue.of(str));
    }

    public static /* synthetic */ void a(Placement.Builder builder, CustomParams customParams) {
        Struct.Builder builderNewBuilder = Struct.newBuilder();
        customParams.fillStructBuilder(builderNewBuilder);
        if (builderNewBuilder.getFieldsCount() > 0) {
            builder.setCustomData(builderNewBuilder);
        }
    }

    public static void a(Context context, RequestTokenPayload.Builder builder, AdPlacementConfig adPlacementConfig) {
        try {
            AdRequest adRequestA = a(adPlacementConfig);
            if (adRequestA == null) {
                return;
            }
            NetworkRegistry.registerAndInitializeCoreNetworks(context);
            TokenConfiguration tokenConfigurationB = b(adPlacementConfig.getAdFormat());
            HeaderBiddingPlacement.Builder builderNewBuilder = HeaderBiddingPlacement.newBuilder();
            for (Message.Builder builder2 : adRequestA.collectPlacementFormats(context, tokenConfigurationB.getAdNetworksList(), null)) {
                if (builder2 instanceof Placement.DisplayPlacement.Builder) {
                    a(builderNewBuilder, ((Placement.DisplayPlacement.Builder) builder2).getExtProtoList());
                } else if (builder2 instanceof Placement.VideoPlacement.Builder) {
                    a(builderNewBuilder, ((Placement.VideoPlacement.Builder) builder2).getExtProtoList());
                }
            }
            if (builderNewBuilder.getAdUnitsList().isEmpty()) {
                return;
            }
            final BidToken bidToken = new BidToken(adRequestA, tokenConfigurationB.getExpirationTime(), new b());
            c(bidToken);
            builder.getPlacementBuilder().setHbPlacement(builderNewBuilder);
            builder.setTokenHashValue(bidToken.getId());
            Logger.d("BidTokenManager", (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.o$$ExternalSyntheticLambda4
                @Override // io.bidmachine.utils.lazy.LazyValue
                public final Object get() {
                    return o.a(bidToken);
                }
            });
        } catch (Throwable unused) {
            c(builder.getTokenHashValue());
        }
    }

    public static /* synthetic */ String a(BidToken bidToken) {
        return String.format("BidTokenId - %s", bidToken.getId());
    }

    public static void a(HeaderBiddingPlacement.Builder builder, List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            try {
                builder.addAllAdUnits(((HeaderBiddingPlacement) ((Any) it.next()).unpack(HeaderBiddingPlacement.class)).getAdUnitsList());
            } catch (Throwable unused) {
            }
        }
    }

    public static AdRequest a(AdPlacementConfig adPlacementConfig) {
        AdRequest.AdRequestBuilderImpl builder;
        AdFormat adFormat = adPlacementConfig.getAdFormat();
        if (adFormat instanceof AdFormat.Banner) {
            builder = new BannerRequest.Builder(adPlacementConfig);
        } else if (adFormat instanceof AdFormat.Interstitial) {
            builder = new InterstitialRequest.Builder(adPlacementConfig);
        } else if (adFormat instanceof AdFormat.Rewarded) {
            builder = new RewardedRequest.Builder(adPlacementConfig);
        } else {
            builder = adFormat instanceof AdFormat.Native ? new NativeRequest.Builder(adPlacementConfig) : null;
        }
        if (builder == null) {
            return null;
        }
        return builder.build();
    }

    public static TokenConfiguration b(AdFormat adFormat) {
        TokenConfiguration tokenConfigurationA = a(adFormat);
        return tokenConfigurationA == null ? TokenConfiguration.newBuilder().setExpirationTime(300).build() : tokenConfigurationA;
    }

    public static void a(AdsType adsType) {
        b(adsType, (BMError) null);
    }

    public static void a(AdsType adsType, BMError bMError) {
        b(adsType, bMError);
    }

    public static AdRequest a(ResponsePayload responsePayload) {
        if (responsePayload == null) {
            return null;
        }
        final String strB = b(responsePayload);
        Logger.d("BidTokenManager", (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.o$$ExternalSyntheticLambda0
            @Override // io.bidmachine.utils.lazy.LazyValue
            public final Object get() {
                return o.a(strB);
            }
        });
        if (TextUtils.isEmpty(strB)) {
            return null;
        }
        BidToken bidTokenC = c(strB);
        if (bidTokenC == null) {
            Logger.d("BidTokenManager", (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.o$$ExternalSyntheticLambda1
                @Override // io.bidmachine.utils.lazy.LazyValue
                public final Object get() {
                    return o.b(strB);
                }
            });
            return null;
        }
        return bidTokenC.getAdRequest();
    }

    public static void b(AdsType adsType, BMError bMError) {
        a.eventFinish(TrackEventType.GetBidToken, adsType, null, bMError);
    }

    public static BidToken b(BidToken bidToken) {
        return c(bidToken.getId());
    }

    public static /* synthetic */ String b(String str) {
        return String.format("BidToken is null by bidTokenId - %s", str);
    }

    public static String b(ResponsePayload responsePayload) {
        try {
            Value value = responsePayload.getResponseCache().getResponse().getExt().getFieldsMap().get("tokenHashValue");
            if (value == null) {
                return null;
            }
            return value.getStringValue();
        } catch (Throwable unused) {
            return null;
        }
    }

    public static /* synthetic */ String a(String str) {
        return String.format("BidTokenId from bidPayload - %s", str);
    }

    public static void a(List list) {
        b.clear();
        if (list == null) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            TokenConfiguration tokenConfiguration = (TokenConfiguration) it.next();
            AdFormat adFormatByRemoteName = AdFormat.byRemoteName(tokenConfiguration.getType());
            if (adFormatByRemoteName != null) {
                b.put(adFormatByRemoteName, tokenConfiguration);
            }
        }
    }

    public static TokenConfiguration a(AdFormat adFormat) {
        if (adFormat == null) {
            return null;
        }
        return (TokenConfiguration) b.get(adFormat);
    }
}
