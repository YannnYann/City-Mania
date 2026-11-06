package io.bidmachine.displays;

import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.adcom.Ad;
import com.explorestack.protobuf.adcom.NativeDataAssetType;
import com.explorestack.protobuf.adcom.NativeImageAssetType;
import com.explorestack.protobuf.adcom.Placement;
import com.explorestack.protobuf.adcom.SizeUnit;
import com.explorestack.protobuf.adcom.VideoCreativeType;
import com.vungle.ads.internal.protos.Sdk;
import io.bidmachine.AdContentType;
import io.bidmachine.AdPlacementConfig;
import io.bidmachine.AdsType;
import io.bidmachine.Constants;
import io.bidmachine.ContextProvider;
import io.bidmachine.MediaAssetType;
import io.bidmachine.NetworkAdUnit;
import io.bidmachine.NetworkConfig;
import io.bidmachine.models.AdObjectParams;
import io.bidmachine.protobuf.headerbidding.HeaderBiddingPlacement;
import io.bidmachine.unified.UnifiedAdRequestParams;
import io.bidmachine.unified.UnifiedNativeAdRequestParams;
import io.bidmachine.utils.ProtoUtilsKt;
import java.util.Collection;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes4.dex */
public final class NativePlacementBuilder extends PlacementBuilder<UnifiedNativeAdRequestParams> {
    public static final Companion Companion = new Companion(null);
    public static final Lazy<Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder> TITLE_ASSET$delegate = LazyKt__LazyJVMKt.lazy(g.a);
    public static final Lazy<Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder> DESC_ASSET$delegate = LazyKt__LazyJVMKt.lazy(c.a);
    public static final Lazy<Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder> CTA_ASSET$delegate = LazyKt__LazyJVMKt.lazy(b.a);
    public static final Lazy<Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder> RATING_ASSET$delegate = LazyKt__LazyJVMKt.lazy(f.a);
    public static final Lazy<Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder> AD_LABEL_ASSET$delegate = LazyKt__LazyJVMKt.lazy(a.a);
    public static final Lazy<Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder> PRIVACY_SHEET_ASSET$delegate = LazyKt__LazyJVMKt.lazy(e.a);
    public static final Lazy<Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder> DISCLAIMER_ASSET$delegate = LazyKt__LazyJVMKt.lazy(d.a);

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Placement.DisplayPlacement.NativeFormat.AssetFormat createIconAsset(UnifiedNativeAdRequestParams adRequestParams) {
            Intrinsics.checkNotNullParameter(adRequestParams, "adRequestParams");
            Placement.DisplayPlacement.NativeFormat.AssetFormat assetFormatBuild = Placement.DisplayPlacement.NativeFormat.AssetFormat.newBuilder().setId(Sdk.SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE).setReq(adRequestParams.getAdRequestParameters().containsAssetType(MediaAssetType.Icon)).setImg(Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormat.newBuilder().setType(NativeImageAssetType.NATIVE_IMAGE_ASSET_TYPE_ICON_IMAGE).addAllMime(Constants.IMAGE_MIME_TYPES).build()).build();
            Intrinsics.checkNotNullExpressionValue(assetFormatBuild, "newBuilder()\n           …\n                .build()");
            return assetFormatBuild;
        }

        public final Placement.DisplayPlacement.NativeFormat.AssetFormat createImageAsset(UnifiedNativeAdRequestParams adRequestParams) {
            Intrinsics.checkNotNullParameter(adRequestParams, "adRequestParams");
            Placement.DisplayPlacement.NativeFormat.AssetFormat assetFormatBuild = Placement.DisplayPlacement.NativeFormat.AssetFormat.newBuilder().setId(Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE).setReq(adRequestParams.getAdRequestParameters().containsAssetType(MediaAssetType.Image)).setImg(Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormat.newBuilder().setType(NativeImageAssetType.NATIVE_IMAGE_ASSET_TYPE_MAIN_IMAGE).addAllMime(Constants.IMAGE_MIME_TYPES).build()).build();
            Intrinsics.checkNotNullExpressionValue(assetFormatBuild, "newBuilder()\n           …\n                .build()");
            return assetFormatBuild;
        }

        public final Placement.DisplayPlacement.NativeFormat.AssetFormat createVideoAsset(UnifiedNativeAdRequestParams adRequestParams) {
            Intrinsics.checkNotNullParameter(adRequestParams, "adRequestParams");
            Placement.DisplayPlacement.NativeFormat.AssetFormat assetFormatBuild = Placement.DisplayPlacement.NativeFormat.AssetFormat.newBuilder().setId(4).setReq(adRequestParams.getAdRequestParameters().containsAssetType(MediaAssetType.Video)).setVideo(Placement.VideoPlacement.newBuilder().setSkip(false).addCtype(VideoCreativeType.VIDEO_CREATIVE_TYPE_VAST_2_0).addCtype(VideoCreativeType.VIDEO_CREATIVE_TYPE_VAST_3_0).addCtype(VideoCreativeType.VIDEO_CREATIVE_TYPE_VAST_WRAPPER_2_0).addCtype(VideoCreativeType.VIDEO_CREATIVE_TYPE_VAST_WRAPPER_3_0).addAllMime(Constants.VIDEO_MIME_TYPES).setMinbitr(56).setMaxbitr(4096).setMindur(5).setMaxdur(30).setLinearValue(1).build()).build();
            Intrinsics.checkNotNullExpressionValue(assetFormatBuild, "newBuilder()\n           …\n                .build()");
            return assetFormatBuild;
        }

        public final Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder getAD_LABEL_ASSET() {
            Object value = NativePlacementBuilder.AD_LABEL_ASSET$delegate.getValue();
            Intrinsics.checkNotNullExpressionValue(value, "<get-AD_LABEL_ASSET>(...)");
            return (Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder) value;
        }

        public final Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder getCTA_ASSET() {
            Object value = NativePlacementBuilder.CTA_ASSET$delegate.getValue();
            Intrinsics.checkNotNullExpressionValue(value, "<get-CTA_ASSET>(...)");
            return (Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder) value;
        }

        public final Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder getDESC_ASSET() {
            Object value = NativePlacementBuilder.DESC_ASSET$delegate.getValue();
            Intrinsics.checkNotNullExpressionValue(value, "<get-DESC_ASSET>(...)");
            return (Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder) value;
        }

        public final Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder getDISCLAIMER_ASSET() {
            Object value = NativePlacementBuilder.DISCLAIMER_ASSET$delegate.getValue();
            Intrinsics.checkNotNullExpressionValue(value, "<get-DISCLAIMER_ASSET>(...)");
            return (Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder) value;
        }

        public final Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder getPRIVACY_SHEET_ASSET() {
            Object value = NativePlacementBuilder.PRIVACY_SHEET_ASSET$delegate.getValue();
            Intrinsics.checkNotNullExpressionValue(value, "<get-PRIVACY_SHEET_ASSET>(...)");
            return (Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder) value;
        }

        public final Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder getRATING_ASSET() {
            Object value = NativePlacementBuilder.RATING_ASSET$delegate.getValue();
            Intrinsics.checkNotNullExpressionValue(value, "<get-RATING_ASSET>(...)");
            return (Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder) value;
        }

        public final Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder getTITLE_ASSET() {
            Object value = NativePlacementBuilder.TITLE_ASSET$delegate.getValue();
            Intrinsics.checkNotNullExpressionValue(value, "<get-TITLE_ASSET>(...)");
            return (Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder) value;
        }

        public Companion() {
        }
    }

    public static final class a extends Lambda implements Function0 {
        public static final a a = new a();

        public a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder invoke() {
            return Placement.DisplayPlacement.NativeFormat.AssetFormat.newBuilder().setId(101).setReq(false);
        }
    }

    public static final class b extends Lambda implements Function0 {
        public static final b a = new b();

        public b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder invoke() {
            return Placement.DisplayPlacement.NativeFormat.AssetFormat.newBuilder().setId(8).setReq(true).setData(Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormat.newBuilder().setType(NativeDataAssetType.NATIVE_DATA_ASSET_TYPE_CTA_TEXT).build());
        }
    }

    public static final class c extends Lambda implements Function0 {
        public static final c a = new c();

        public c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder invoke() {
            return Placement.DisplayPlacement.NativeFormat.AssetFormat.newBuilder().setId(Sdk.SDKError.Reason.ASSET_FAILED_MAX_SPACE_EXCEEDED_VALUE).setReq(true).setData(Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormat.newBuilder().setType(NativeDataAssetType.NATIVE_DATA_ASSET_TYPE_DESC).build());
        }
    }

    public static final class d extends Lambda implements Function0 {
        public static final d a = new d();

        public d() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder invoke() {
            return Placement.DisplayPlacement.NativeFormat.AssetFormat.newBuilder().setId(103).setReq(false);
        }
    }

    public static final class e extends Lambda implements Function0 {
        public static final e a = new e();

        public e() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder invoke() {
            return Placement.DisplayPlacement.NativeFormat.AssetFormat.newBuilder().setId(102).setReq(false);
        }
    }

    public static final class f extends Lambda implements Function0 {
        public static final f a = new f();

        public f() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder invoke() {
            return Placement.DisplayPlacement.NativeFormat.AssetFormat.newBuilder().setId(7).setReq(false).setData(Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormat.newBuilder().setType(NativeDataAssetType.NATIVE_DATA_ASSET_TYPE_RATING).build());
        }
    }

    public static final class g extends Lambda implements Function0 {
        public static final g a = new g();

        public g() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder invoke() {
            return Placement.DisplayPlacement.NativeFormat.AssetFormat.newBuilder().setId(Sdk.SDKError.Reason.INVALID_RI_ENDPOINT_VALUE).setReq(true).setTitle(Placement.DisplayPlacement.NativeFormat.AssetFormat.TitleAssetFormat.newBuilder().setLen(104).build());
        }
    }

    public NativePlacementBuilder() {
        super(AdContentType.All);
    }

    @Override // io.bidmachine.displays.PlacementBuilder
    public AdObjectParams createAdObjectParams(Ad ad) {
        Intrinsics.checkNotNullParameter(ad, "ad");
        AdObjectParams adObjectParamsCreateHeaderBiddingAdObjectParams = createHeaderBiddingAdObjectParams(ad);
        return (adObjectParamsCreateHeaderBiddingAdObjectParams == null && ad.hasDisplay() && ad.getDisplay().hasNative()) ? new NativeAdObjectParams(ad) : adObjectParamsCreateHeaderBiddingAdObjectParams;
    }

    @Override // io.bidmachine.displays.PlacementBuilder
    public /* bridge */ /* synthetic */ Message.Builder createPlacement(ContextProvider contextProvider, UnifiedAdRequestParams unifiedAdRequestParams, AdsType adsType, Collection collection, List list, AdPlacementConfig adPlacementConfig, int i) {
        return createPlacement(contextProvider, (UnifiedNativeAdRequestParams) unifiedAdRequestParams, adsType, (Collection<NetworkConfig>) collection, (List<NetworkAdUnit>) list, adPlacementConfig, i);
    }

    public Message.Builder createPlacement(ContextProvider contextProvider, UnifiedNativeAdRequestParams adRequestParams, AdsType adsType, Collection<NetworkConfig> networkConfigs, List<NetworkAdUnit> networkAdUnits, AdPlacementConfig adPlacementConfig, int i) throws Exception {
        Intrinsics.checkNotNullParameter(contextProvider, "contextProvider");
        Intrinsics.checkNotNullParameter(adRequestParams, "adRequestParams");
        Intrinsics.checkNotNullParameter(adsType, "adsType");
        Intrinsics.checkNotNullParameter(networkConfigs, "networkConfigs");
        Intrinsics.checkNotNullParameter(networkAdUnits, "networkAdUnits");
        Placement.DisplayPlacement.NativeFormat.Builder builderNewBuilder = Placement.DisplayPlacement.NativeFormat.newBuilder();
        Companion companion = Companion;
        Placement.DisplayPlacement.NativeFormat.Builder builderAddAsset = builderNewBuilder.addAsset(companion.getTITLE_ASSET()).addAsset(companion.getDESC_ASSET()).addAsset(companion.getCTA_ASSET()).addAsset(companion.getRATING_ASSET()).addAsset(companion.createIconAsset(adRequestParams)).addAsset(companion.createImageAsset(adRequestParams)).addAsset(companion.createVideoAsset(adRequestParams)).addAsset(companion.getAD_LABEL_ASSET()).addAsset(companion.getPRIVACY_SHEET_ASSET()).addAsset(companion.getDISCLAIMER_ASSET());
        Intrinsics.checkNotNullExpressionValue(builderAddAsset, "newBuilder()\n           …ddAsset(DISCLAIMER_ASSET)");
        Placement.DisplayPlacement.Builder nativefmt = Placement.DisplayPlacement.newBuilder().setInstl(false).setUnit(SizeUnit.SIZE_UNIT_DIPS).addAllMime(Constants.IMAGE_MIME_TYPES).addAllMime(Constants.VIDEO_MIME_TYPES).setNativefmt(builderAddAsset);
        Intrinsics.checkNotNullExpressionValue(nativefmt, "newBuilder()\n           …efmt(nativeFormatBuilder)");
        HeaderBiddingPlacement.Builder builderCreateHeaderBiddingPlacement = createHeaderBiddingPlacement(contextProvider, adRequestParams, adsType, networkConfigs, networkAdUnits, i);
        if (adPlacementConfig == null && builderCreateHeaderBiddingPlacement != null) {
            nativefmt.addExtProto(ProtoUtilsKt.pack(builderCreateHeaderBiddingPlacement));
            return nativefmt;
        }
        if (adPlacementConfig != null) {
            io.bidmachine.protobuf.sdk.Placement placementCreateSdkPlacement = createSdkPlacement(adPlacementConfig, builderCreateHeaderBiddingPlacement);
            Intrinsics.checkNotNullExpressionValue(placementCreateSdkPlacement, "createSdkPlacement(\n    …acement\n                )");
            nativefmt.addExtProto(ProtoUtilsKt.pack(placementCreateSdkPlacement));
        }
        return nativefmt;
    }
}
