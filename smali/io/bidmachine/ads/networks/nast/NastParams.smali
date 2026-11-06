###### Class io.bidmachine.ads.networks.nast.NastParams (io.bidmachine.ads.networks.nast.NastParams)
.class public final Lio/bidmachine/ads/networks/nast/NastParams;
.super Lio/bidmachine/unified/UnifiedParams;
.source "SourceFile"


# instance fields
.field public final adLabelData:Lio/bidmachine/LabelData;

.field public final callToAction:Ljava/lang/String;

.field public final clickUrl:Ljava/lang/String;

.field public final description:Ljava/lang/String;

.field public final disclaimerData:Lio/bidmachine/internal/k;

.field public final iconUrl:Ljava/lang/String;

.field public final imageUrl:Ljava/lang/String;

.field public final privacySheetData:Lio/bidmachine/PrivacySheetData;

.field public final rating:Ljava/lang/Float;

.field public final title:Ljava/lang/String;

.field public final videoAdm:Ljava/lang/String;

.field public final videoUrl:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$GAy5KroDVqYhqCTaKYsEmP09Gu0(Ljava/lang/Object;)Lio/bidmachine/PrivacySheetData;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/ads/networks/nast/NastParams;->privacySheetData$lambda$1(Ljava/lang/Object;)Lio/bidmachine/PrivacySheetData;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$cs4qYIUrDX-NzL2OfgzEC1W5g1Y(Ljava/lang/Object;)Lio/bidmachine/internal/k;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/ads/networks/nast/NastParams;->disclaimerData$lambda$2(Ljava/lang/Object;)Lio/bidmachine/internal/k;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$yqNYfJTslKnRVPPDIRUcTgb0qj4(Ljava/lang/Object;)Lio/bidmachine/LabelData;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/ads/networks/nast/NastParams;->adLabelData$lambda$0(Ljava/lang/Object;)Lio/bidmachine/LabelData;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lio/bidmachine/unified/UnifiedMediationParams;)V
    .registers 4

    const-string v0, "unifiedMediationParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/unified/UnifiedParams;-><init>(Lio/bidmachine/unified/UnifiedMediationParams;)V

    .line 3
    const-string v0, "title"

    invoke-interface {p1, v0}, Lio/bidmachine/utils/data/DataRetriever;->getStringOrNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/ads/networks/nast/NastParams;->title:Ljava/lang/String;

    .line 4
    const-string v0, "description"

    invoke-interface {p1, v0}, Lio/bidmachine/utils/data/DataRetriever;->getStringOrNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/ads/networks/nast/NastParams;->description:Ljava/lang/String;

    .line 5
    const-string v0, "cta"

    invoke-interface {p1, v0}, Lio/bidmachine/utils/data/DataRetriever;->getStringOrNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/ads/networks/nast/NastParams;->callToAction:Ljava/lang/String;

    .line 6
    const-string v0, "rating"

    invoke-interface {p1, v0}, Lio/bidmachine/utils/data/DataRetriever;->getFloatOrNull(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/ads/networks/nast/NastParams;->rating:Ljava/lang/Float;

    .line 7
    const-string v0, "iconUrl"

    invoke-interface {p1, v0}, Lio/bidmachine/utils/data/DataRetriever;->getStringOrNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/ads/networks/nast/NastParams;->iconUrl:Ljava/lang/String;

    .line 8
    const-string v0, "imageUrl"

    invoke-interface {p1, v0}, Lio/bidmachine/utils/data/DataRetriever;->getStringOrNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/ads/networks/nast/NastParams;->imageUrl:Ljava/lang/String;

    .line 9
    const-string v0, "videoUrl"

    invoke-interface {p1, v0}, Lio/bidmachine/utils/data/DataRetriever;->getStringOrNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/ads/networks/nast/NastParams;->videoUrl:Ljava/lang/String;

    .line 10
    const-string v0, "videoAdm"

    invoke-interface {p1, v0}, Lio/bidmachine/utils/data/DataRetriever;->getStringOrNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/ads/networks/nast/NastParams;->videoAdm:Ljava/lang/String;

    .line 11
    const-string v0, "clickUrl"

    invoke-interface {p1, v0}, Lio/bidmachine/utils/data/DataRetriever;->getStringOrNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/ads/networks/nast/NastParams;->clickUrl:Ljava/lang/String;

    .line 12
    new-instance v0, Lio/bidmachine/ads/networks/nast/NastParams$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lio/bidmachine/ads/networks/nast/NastParams$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "adLabel"

    invoke-interface {p1, v1, v0}, Lio/bidmachine/utils/data/DataRetriever;->getOrNullSafely(Ljava/lang/Object;Lio/bidmachine/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/LabelData;

    iput-object v0, p0, Lio/bidmachine/ads/networks/nast/NastParams;->adLabelData:Lio/bidmachine/LabelData;

    .line 15
    new-instance v0, Lio/bidmachine/ads/networks/nast/NastParams$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lio/bidmachine/ads/networks/nast/NastParams$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "privacySheet"

    invoke-interface {p1, v1, v0}, Lio/bidmachine/utils/data/DataRetriever;->getOrNullSafely(Ljava/lang/Object;Lio/bidmachine/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/PrivacySheetData;

    iput-object v0, p0, Lio/bidmachine/ads/networks/nast/NastParams;->privacySheetData:Lio/bidmachine/PrivacySheetData;

    .line 18
    new-instance v0, Lio/bidmachine/ads/networks/nast/NastParams$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lio/bidmachine/ads/networks/nast/NastParams$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "disclaimer"

    invoke-interface {p1, v1, v0}, Lio/bidmachine/utils/data/DataRetriever;->getOrNullSafely(Ljava/lang/Object;Lio/bidmachine/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/internal/k;

    iput-object p1, p0, Lio/bidmachine/ads/networks/nast/NastParams;->disclaimerData:Lio/bidmachine/internal/k;

    return-void
.end method

.method public static final adLabelData$lambda$0(Ljava/lang/Object;)Lio/bidmachine/LabelData;
    .registers 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p0, Lio/bidmachine/LabelData;

    if-eqz v0, :cond_c

    check-cast p0, Lio/bidmachine/LabelData;

    return-object p0

    :cond_c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final disclaimerData$lambda$2(Ljava/lang/Object;)Lio/bidmachine/internal/k;
    .registers 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p0, Lio/bidmachine/internal/k;

    if-eqz v0, :cond_c

    check-cast p0, Lio/bidmachine/internal/k;

    return-object p0

    :cond_c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final privacySheetData$lambda$1(Ljava/lang/Object;)Lio/bidmachine/PrivacySheetData;
    .registers 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p0, Lio/bidmachine/PrivacySheetData;

    if-eqz v0, :cond_c

    check-cast p0, Lio/bidmachine/PrivacySheetData;

    return-object p0

    :cond_c
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final getAdLabelData()Lio/bidmachine/LabelData;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/nast/NastParams;->adLabelData:Lio/bidmachine/LabelData;

    return-object v0
.end method

.method public final getCallToAction()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/nast/NastParams;->callToAction:Ljava/lang/String;

    return-object v0
.end method

.method public final getClickUrl()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/nast/NastParams;->clickUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/nast/NastParams;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisclaimerData()Lio/bidmachine/internal/k;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/nast/NastParams;->disclaimerData:Lio/bidmachine/internal/k;

    return-object v0
.end method

.method public final getIconUrl()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/nast/NastParams;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getImageUrl()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/nast/NastParams;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrivacySheetData()Lio/bidmachine/PrivacySheetData;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/nast/NastParams;->privacySheetData:Lio/bidmachine/PrivacySheetData;

    return-object v0
.end method

.method public final getRating()Ljava/lang/Float;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/nast/NastParams;->rating:Ljava/lang/Float;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/nast/NastParams;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideoAdm()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/nast/NastParams;->videoAdm:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideoUrl()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/nast/NastParams;->videoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isValid(Lio/bidmachine/unified/UnifiedAdCallback;)Z
    .registers 5

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/nast/NastParams;->title:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_11

    goto :goto_2d

    .line 5
    :cond_11
    iget-object v0, p0, Lio/bidmachine/ads/networks/nast/NastParams;->callToAction:Ljava/lang/String;

    if-eqz v0, :cond_1e

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 p1, 0x1

    return p1

    .line 6
    :cond_1e
    :goto_1e
    const-string v0, "cta"

    invoke-static {v0}, Lio/bidmachine/utils/BMError;->notFound(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object v0

    const-string v2, "notFound(KEY_CTA)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdLoadFailed(Lio/bidmachine/utils/BMError;)V

    return v1

    .line 7
    :cond_2d
    :goto_2d
    const-string v0, "title"

    invoke-static {v0}, Lio/bidmachine/utils/BMError;->notFound(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object v0

    const-string v2, "notFound(KEY_TITLE)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdLoadFailed(Lio/bidmachine/utils/BMError;)V

    return v1
.end method

.method public final isValid(Lio/bidmachine/unified/UnifiedNativeAdRequestParams;Lio/bidmachine/unified/UnifiedAdCallback;)Z
    .registers 5

    const-string v0, "adRequestParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, p2}, Lio/bidmachine/ads/networks/nast/NastParams;->isValid(Lio/bidmachine/unified/UnifiedAdCallback;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    return v1

    .line 11
    :cond_12
    invoke-interface {p1}, Lio/bidmachine/unified/UnifiedNativeAdRequestParams;->getAdRequestParameters()Lio/bidmachine/nativead/NativeAdRequestParameters;

    move-result-object p1

    const-string v0, "adRequestParams.getAdRequestParameters()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lio/bidmachine/nativead/NativeAdRequestParameters;->isValidateAssets()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 13
    sget-object v0, Lio/bidmachine/MediaAssetType;->Icon:Lio/bidmachine/MediaAssetType;

    invoke-virtual {p1, v0}, Lio/bidmachine/nativead/NativeAdRequestParameters;->containsAssetType(Lio/bidmachine/MediaAssetType;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 14
    iget-object v0, p0, Lio/bidmachine/ads/networks/nast/NastParams;->iconUrl:Ljava/lang/String;

    if-eqz v0, :cond_33

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_42

    .line 15
    :cond_33
    const-string p1, "iconUrl"

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->notFound(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    const-string v0, "notFound(KEY_ICON_URL)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdLoadFailed(Lio/bidmachine/utils/BMError;)V

    return v1

    .line 18
    :cond_42
    invoke-virtual {p1}, Lio/bidmachine/nativead/NativeAdRequestParameters;->isValidateAssets()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 19
    sget-object v0, Lio/bidmachine/MediaAssetType;->Image:Lio/bidmachine/MediaAssetType;

    invoke-virtual {p1, v0}, Lio/bidmachine/nativead/NativeAdRequestParameters;->containsAssetType(Lio/bidmachine/MediaAssetType;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 20
    iget-object v0, p0, Lio/bidmachine/ads/networks/nast/NastParams;->imageUrl:Ljava/lang/String;

    if-eqz v0, :cond_5a

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_69

    .line 21
    :cond_5a
    const-string p1, "imageUrl"

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->notFound(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    const-string v0, "notFound(KEY_IMAGE_URL)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdLoadFailed(Lio/bidmachine/utils/BMError;)V

    return v1

    .line 24
    :cond_69
    invoke-virtual {p1}, Lio/bidmachine/nativead/NativeAdRequestParameters;->isValidateAssets()Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 25
    sget-object v0, Lio/bidmachine/MediaAssetType;->Video:Lio/bidmachine/MediaAssetType;

    invoke-virtual {p1, v0}, Lio/bidmachine/nativead/NativeAdRequestParameters;->containsAssetType(Lio/bidmachine/MediaAssetType;)Z

    move-result p1

    if-eqz p1, :cond_9a

    .line 26
    iget-object p1, p0, Lio/bidmachine/ads/networks/nast/NastParams;->videoAdm:Ljava/lang/String;

    if-eqz p1, :cond_81

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_9a

    .line 27
    :cond_81
    iget-object p1, p0, Lio/bidmachine/ads/networks/nast/NastParams;->videoUrl:Ljava/lang/String;

    if-eqz p1, :cond_8b

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_9a

    .line 28
    :cond_8b
    const-string p1, "videoAdm or videoUrl"

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->notFound(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    const-string v0, "notFound(\"$KEY_VIDEO_ADM or $KEY_VIDEO_URL\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdLoadFailed(Lio/bidmachine/utils/BMError;)V

    return v1

    :cond_9a
    const/4 p1, 0x1

    return p1
.end method

###### Class io.bidmachine.ads.networks.nast.NastParams$$ExternalSyntheticLambda0 (io.bidmachine.ads.networks.nast.NastParams$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/ads/networks/nast/NastParams$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {p1}, Lio/bidmachine/ads/networks/nast/NastParams;->$r8$lambda$yqNYfJTslKnRVPPDIRUcTgb0qj4(Ljava/lang/Object;)Lio/bidmachine/LabelData;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.ads.networks.nast.NastParams$$ExternalSyntheticLambda1 (io.bidmachine.ads.networks.nast.NastParams$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/ads/networks/nast/NastParams$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {p1}, Lio/bidmachine/ads/networks/nast/NastParams;->$r8$lambda$GAy5KroDVqYhqCTaKYsEmP09Gu0(Ljava/lang/Object;)Lio/bidmachine/PrivacySheetData;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.ads.networks.nast.NastParams$$ExternalSyntheticLambda2 (io.bidmachine.ads.networks.nast.NastParams$$ExternalSyntheticLambda2)
.class public final synthetic Lio/bidmachine/ads/networks/nast/NastParams$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {p1}, Lio/bidmachine/ads/networks/nast/NastParams;->$r8$lambda$cs4qYIUrDX-NzL2OfgzEC1W5g1Y(Ljava/lang/Object;)Lio/bidmachine/internal/k;

    move-result-object p1

    return-object p1
.end method
