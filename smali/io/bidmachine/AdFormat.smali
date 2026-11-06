###### Class io.bidmachine.AdFormat (io.bidmachine.AdFormat)
.class public abstract Lio/bidmachine/AdFormat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/AdFormat$Companion;,
        Lio/bidmachine/AdFormat$Matcher;,
        Lio/bidmachine/AdFormat$Banner;,
        Lio/bidmachine/AdFormat$Interstitial;,
        Lio/bidmachine/AdFormat$Rewarded;,
        Lio/bidmachine/AdFormat$Native;
    }
.end annotation


# static fields
.field public static final Companion:Lio/bidmachine/AdFormat$Companion;


# instance fields
.field private final adsType:Lio/bidmachine/AdsType;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lio/bidmachine/AdFormat$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/AdFormat$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/AdFormat;->Companion:Lio/bidmachine/AdFormat$Companion;

    return-void
.end method

.method private constructor <init>(Lio/bidmachine/AdsType;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/bidmachine/AdFormat;->adsType:Lio/bidmachine/AdsType;

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/AdsType;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/AdFormat;-><init>(Lio/bidmachine/AdsType;)V

    return-void
.end method

.method public static final byRemoteName(Ljava/lang/String;)Lio/bidmachine/AdFormat;
    .registers 2

    .line 0
    sget-object v0, Lio/bidmachine/AdFormat;->Companion:Lio/bidmachine/AdFormat$Companion;

    invoke-virtual {v0, p0}, Lio/bidmachine/AdFormat$Companion;->byRemoteName(Ljava/lang/String;)Lio/bidmachine/AdFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final createBanner(Lio/bidmachine/BannerAdSize;)Lio/bidmachine/AdFormat;
    .registers 2

    .line 0
    sget-object v0, Lio/bidmachine/AdFormat;->Companion:Lio/bidmachine/AdFormat$Companion;

    invoke-virtual {v0, p0}, Lio/bidmachine/AdFormat$Companion;->createBanner(Lio/bidmachine/BannerAdSize;)Lio/bidmachine/AdFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final createInterstitial(Lio/bidmachine/AdContentType;)Lio/bidmachine/AdFormat;
    .registers 2

    .line 0
    sget-object v0, Lio/bidmachine/AdFormat;->Companion:Lio/bidmachine/AdFormat$Companion;

    invoke-virtual {v0, p0}, Lio/bidmachine/AdFormat$Companion;->createInterstitial(Lio/bidmachine/AdContentType;)Lio/bidmachine/AdFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final createNative(Ljava/util/List;)Lio/bidmachine/AdFormat;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/MediaAssetType;",
            ">;)",
            "Lio/bidmachine/AdFormat;"
        }
    .end annotation

    .line 0
    sget-object v0, Lio/bidmachine/AdFormat;->Companion:Lio/bidmachine/AdFormat$Companion;

    invoke-virtual {v0, p0}, Lio/bidmachine/AdFormat$Companion;->createNative(Ljava/util/List;)Lio/bidmachine/AdFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final createRewarded(Lio/bidmachine/AdContentType;)Lio/bidmachine/AdFormat;
    .registers 2

    .line 0
    sget-object v0, Lio/bidmachine/AdFormat;->Companion:Lio/bidmachine/AdFormat$Companion;

    invoke-virtual {v0, p0}, Lio/bidmachine/AdFormat$Companion;->createRewarded(Lio/bidmachine/AdContentType;)Lio/bidmachine/AdFormat;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getAdsType()Lio/bidmachine/AdsType;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdFormat;->adsType:Lio/bidmachine/AdsType;

    return-object v0
.end method

.method public abstract getMatcher$bidmachine_android_sdk_ba_3_8_0()Lio/bidmachine/AdFormat$Matcher;
.end method

.method public abstract getRemoteName()Ljava/lang/String;
.end method

.method public final isMatch(Lio/bidmachine/AdsType;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/AdContentType;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/bidmachine/unified/UnifiedAdRequestParams;",
            ">(",
            "Lio/bidmachine/AdsType;",
            "TT;",
            "Lio/bidmachine/AdContentType;",
            ")Z"
        }
    .end annotation

    const-string v0, "adsType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adRequestParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adContentType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdFormat;->getMatcher$bidmachine_android_sdk_ba_3_8_0()Lio/bidmachine/AdFormat$Matcher;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lio/bidmachine/AdFormat$Matcher;->isMatch(Lio/bidmachine/AdsType;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/AdContentType;)Z

    move-result p1

    return p1
.end method

###### Class io.bidmachine.AdFormat.Banner (io.bidmachine.AdFormat$Banner)
.class public final Lio/bidmachine/AdFormat$Banner;
.super Lio/bidmachine/AdFormat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/AdFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Banner"
.end annotation


# instance fields
.field private final bannerAdSize:Lio/bidmachine/BannerAdSize;

.field private final matcher:Lio/bidmachine/AdFormat$Matcher;

.field private final remoteName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/bidmachine/BannerAdSize;)V
    .registers 4

    const-string v0, "bannerAdSize"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lio/bidmachine/AdsType;->Banner:Lio/bidmachine/AdsType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/bidmachine/AdFormat;-><init>(Lio/bidmachine/AdsType;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 2
    iput-object p1, p0, Lio/bidmachine/AdFormat$Banner;->bannerAdSize:Lio/bidmachine/BannerAdSize;

    .line 5
    invoke-virtual {p0}, Lio/bidmachine/AdFormat;->getAdsType()Lio/bidmachine/AdsType;

    move-result-object v0

    new-instance v1, Lio/bidmachine/AdFormat$Banner$matcher$1;

    invoke-direct {v1, p0, v0}, Lio/bidmachine/AdFormat$Banner$matcher$1;-><init>(Lio/bidmachine/AdFormat$Banner;Lio/bidmachine/AdsType;)V

    iput-object v1, p0, Lio/bidmachine/AdFormat$Banner;->matcher:Lio/bidmachine/AdFormat$Matcher;

    .line 18
    sget-object v0, Lio/bidmachine/BannerAdSize;->Leaderboard:Lio/bidmachine/BannerAdSize;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string p1, "banner_728x90"

    goto :goto_3b

    .line 19
    :cond_23
    sget-object v0, Lio/bidmachine/BannerAdSize;->MediumRectangle:Lio/bidmachine/BannerAdSize;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string p1, "banner_300x250"

    goto :goto_3b

    .line 20
    :cond_2e
    sget-object v0, Lio/bidmachine/BannerAdSize;->Banner:Lio/bidmachine/BannerAdSize;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_39

    const-string p1, "banner_320x50"

    goto :goto_3b

    .line 21
    :cond_39
    const-string p1, "banner"

    .line 22
    :goto_3b
    iput-object p1, p0, Lio/bidmachine/AdFormat$Banner;->remoteName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lio/bidmachine/AdFormat$Banner;Lio/bidmachine/BannerAdSize;ILjava/lang/Object;)Lio/bidmachine/AdFormat$Banner;
    .registers 4

    .line 0
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget-object p1, p0, Lio/bidmachine/AdFormat$Banner;->bannerAdSize:Lio/bidmachine/BannerAdSize;

    :cond_6
    invoke-virtual {p0, p1}, Lio/bidmachine/AdFormat$Banner;->copy(Lio/bidmachine/BannerAdSize;)Lio/bidmachine/AdFormat$Banner;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lio/bidmachine/BannerAdSize;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/AdFormat$Banner;->bannerAdSize:Lio/bidmachine/BannerAdSize;

    return-object v0
.end method

.method public final copy(Lio/bidmachine/BannerAdSize;)Lio/bidmachine/AdFormat$Banner;
    .registers 3

    .line 0
    const-string v0, "bannerAdSize"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/bidmachine/AdFormat$Banner;

    invoke-direct {v0, p1}, Lio/bidmachine/AdFormat$Banner;-><init>(Lio/bidmachine/BannerAdSize;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/bidmachine/AdFormat$Banner;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/bidmachine/AdFormat$Banner;

    iget-object v1, p0, Lio/bidmachine/AdFormat$Banner;->bannerAdSize:Lio/bidmachine/BannerAdSize;

    iget-object p1, p1, Lio/bidmachine/AdFormat$Banner;->bannerAdSize:Lio/bidmachine/BannerAdSize;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public final getBannerAdSize()Lio/bidmachine/BannerAdSize;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdFormat$Banner;->bannerAdSize:Lio/bidmachine/BannerAdSize;

    return-object v0
.end method

.method public getMatcher$bidmachine_android_sdk_ba_3_8_0()Lio/bidmachine/AdFormat$Matcher;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdFormat$Banner;->matcher:Lio/bidmachine/AdFormat$Matcher;

    return-object v0
.end method

.method public getRemoteName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdFormat$Banner;->remoteName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/AdFormat$Banner;->bannerAdSize:Lio/bidmachine/BannerAdSize;

    invoke-virtual {v0}, Lio/bidmachine/BannerAdSize;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Banner(bannerAdSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/AdFormat$Banner;->bannerAdSize:Lio/bidmachine/BannerAdSize;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.AdFormat$Banner$matcher$1 (io.bidmachine.AdFormat$Banner$matcher$1)
.class public final Lio/bidmachine/AdFormat$Banner$matcher$1;
.super Lio/bidmachine/AdFormat$Matcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/AdFormat$Banner;-><init>(Lio/bidmachine/BannerAdSize;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/AdFormat$Banner;


# direct methods
.method public constructor <init>(Lio/bidmachine/AdFormat$Banner;Lio/bidmachine/AdsType;)V
    .registers 3

    iput-object p1, p0, Lio/bidmachine/AdFormat$Banner$matcher$1;->this$0:Lio/bidmachine/AdFormat$Banner;

    .line 1
    invoke-direct {p0, p2}, Lio/bidmachine/AdFormat$Matcher;-><init>(Lio/bidmachine/AdsType;)V

    return-void
.end method


# virtual methods
.method public isMatch(Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/AdContentType;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/bidmachine/unified/UnifiedAdRequestParams;",
            ">(TT;",
            "Lio/bidmachine/AdContentType;",
            ")Z"
        }
    .end annotation

    const-string v0, "adRequestParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adContentType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of p2, p1, Lio/bidmachine/unified/UnifiedBannerAdRequestParams;

    if-eqz p2, :cond_3c

    .line 2
    iget-object p2, p0, Lio/bidmachine/AdFormat$Banner$matcher$1;->this$0:Lio/bidmachine/AdFormat$Banner;

    invoke-virtual {p2}, Lio/bidmachine/AdFormat$Banner;->getBannerAdSize()Lio/bidmachine/BannerAdSize;

    move-result-object p2

    sget-object v0, Lio/bidmachine/BannerAdSize;->Undefined:Lio/bidmachine/BannerAdSize;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3a

    .line 3
    iget-object p2, p0, Lio/bidmachine/AdFormat$Banner$matcher$1;->this$0:Lio/bidmachine/AdFormat$Banner;

    invoke-virtual {p2}, Lio/bidmachine/AdFormat$Banner;->getBannerAdSize()Lio/bidmachine/BannerAdSize;

    move-result-object p2

    invoke-virtual {p2}, Lio/bidmachine/BannerAdSize;->toSize()Landroid/util/Size;

    move-result-object p2

    check-cast p1, Lio/bidmachine/unified/UnifiedBannerAdRequestParams;

    invoke-interface {p1}, Lio/bidmachine/unified/UnifiedBannerAdRequestParams;->getAdRequestParameters()Lio/bidmachine/banner/BannerAdRequestParameters;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/banner/BannerAdRequestParameters;->getBannerAdSize()Lio/bidmachine/BannerAdSize;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/BannerAdSize;->toSize()Landroid/util/Size;

    move-result-object p1

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3c

    :cond_3a
    const/4 p1, 0x1

    return p1

    :cond_3c
    const/4 p1, 0x0

    return p1
.end method

###### Class io.bidmachine.AdFormat.Companion (io.bidmachine.AdFormat$Companion)
.class public final Lio/bidmachine/AdFormat$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/AdFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/AdFormat$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final byRemoteName(Ljava/lang/String;)Lio/bidmachine/AdFormat;
    .registers 3

    const-string v0, "remoteName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_c8

    goto/16 :goto_bf

    :sswitch_e
    const-string v0, "interstitial_static"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    goto/16 :goto_bf

    .line 8
    :cond_18
    sget-object p1, Lio/bidmachine/AdContentType;->Static:Lio/bidmachine/AdContentType;

    invoke-virtual {p0, p1}, Lio/bidmachine/AdFormat$Companion;->createInterstitial(Lio/bidmachine/AdContentType;)Lio/bidmachine/AdFormat;

    move-result-object p1

    return-object p1

    .line 9
    :sswitch_1f
    const-string v0, "interstitial"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29

    goto/16 :goto_bf

    .line 14
    :cond_29
    sget-object p1, Lio/bidmachine/AdContentType;->All:Lio/bidmachine/AdContentType;

    invoke-virtual {p0, p1}, Lio/bidmachine/AdFormat$Companion;->createInterstitial(Lio/bidmachine/AdContentType;)Lio/bidmachine/AdFormat;

    move-result-object p1

    return-object p1

    .line 15
    :sswitch_30
    const-string v0, "rewarded_static"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3a

    goto/16 :goto_bf

    .line 19
    :cond_3a
    sget-object p1, Lio/bidmachine/AdContentType;->Static:Lio/bidmachine/AdContentType;

    invoke-virtual {p0, p1}, Lio/bidmachine/AdFormat$Companion;->createRewarded(Lio/bidmachine/AdContentType;)Lio/bidmachine/AdFormat;

    move-result-object p1

    return-object p1

    .line 20
    :sswitch_41
    const-string v0, "interstitial_video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4b

    goto/16 :goto_bf

    .line 26
    :cond_4b
    sget-object p1, Lio/bidmachine/AdContentType;->Video:Lio/bidmachine/AdContentType;

    invoke-virtual {p0, p1}, Lio/bidmachine/AdFormat$Companion;->createInterstitial(Lio/bidmachine/AdContentType;)Lio/bidmachine/AdFormat;

    move-result-object p1

    return-object p1

    .line 27
    :sswitch_52
    const-string v0, "banner_300x250"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5b

    goto :goto_bf

    .line 36
    :cond_5b
    sget-object p1, Lio/bidmachine/BannerAdSize;->MediumRectangle:Lio/bidmachine/BannerAdSize;

    invoke-virtual {p0, p1}, Lio/bidmachine/AdFormat$Companion;->createBanner(Lio/bidmachine/BannerAdSize;)Lio/bidmachine/AdFormat;

    move-result-object p1

    return-object p1

    .line 37
    :sswitch_62
    const-string v0, "rewarded"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6b

    goto :goto_bf

    .line 39
    :cond_6b
    sget-object p1, Lio/bidmachine/AdContentType;->All:Lio/bidmachine/AdContentType;

    invoke-virtual {p0, p1}, Lio/bidmachine/AdFormat$Companion;->createRewarded(Lio/bidmachine/AdContentType;)Lio/bidmachine/AdFormat;

    move-result-object p1

    return-object p1

    .line 40
    :sswitch_72
    const-string v0, "banner_728x90"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7b

    goto :goto_bf

    .line 48
    :cond_7b
    sget-object p1, Lio/bidmachine/BannerAdSize;->Leaderboard:Lio/bidmachine/BannerAdSize;

    invoke-virtual {p0, p1}, Lio/bidmachine/AdFormat$Companion;->createBanner(Lio/bidmachine/BannerAdSize;)Lio/bidmachine/AdFormat;

    move-result-object p1

    return-object p1

    .line 49
    :sswitch_82
    const-string v0, "banner_320x50"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8b

    goto :goto_bf

    .line 59
    :cond_8b
    sget-object p1, Lio/bidmachine/BannerAdSize;->Banner:Lio/bidmachine/BannerAdSize;

    invoke-virtual {p0, p1}, Lio/bidmachine/AdFormat$Companion;->createBanner(Lio/bidmachine/BannerAdSize;)Lio/bidmachine/AdFormat;

    move-result-object p1

    return-object p1

    .line 60
    :sswitch_92
    const-string v0, "native"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9b

    goto :goto_bf

    .line 61
    :cond_9b
    sget-object p1, Lio/bidmachine/MediaAssetType;->DEFAULT:Ljava/util/List;

    const-string v0, "DEFAULT"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/bidmachine/AdFormat$Companion;->createNative(Ljava/util/List;)Lio/bidmachine/AdFormat;

    move-result-object p1

    return-object p1

    .line 62
    :sswitch_a7
    const-string v0, "rewarded_video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b0

    goto :goto_bf

    .line 65
    :cond_b0
    sget-object p1, Lio/bidmachine/AdContentType;->Video:Lio/bidmachine/AdContentType;

    invoke-virtual {p0, p1}, Lio/bidmachine/AdFormat$Companion;->createRewarded(Lio/bidmachine/AdContentType;)Lio/bidmachine/AdFormat;

    move-result-object p1

    return-object p1

    .line 66
    :sswitch_b7
    const-string v0, "banner"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c1

    :goto_bf
    const/4 p1, 0x0

    return-object p1

    .line 77
    :cond_c1
    sget-object p1, Lio/bidmachine/BannerAdSize;->Undefined:Lio/bidmachine/BannerAdSize;

    invoke-virtual {p0, p1}, Lio/bidmachine/AdFormat$Companion;->createBanner(Lio/bidmachine/BannerAdSize;)Lio/bidmachine/AdFormat;

    move-result-object p1

    return-object p1

    :sswitch_data_c8
    .sparse-switch
        -0x533a80d4 -> :sswitch_b7
        -0x514cfef6 -> :sswitch_a7
        -0x3ebdafe9 -> :sswitch_92
        -0x191f51cb -> :sswitch_82
        -0x12484bdb -> :sswitch_72
        -0xe47b3f2 -> :sswitch_62
        -0xe34a34b -> :sswitch_52
        0x1200cda8 -> :sswitch_41
        0x232873bf -> :sswitch_30
        0x240b672c -> :sswitch_1f
        0x29943ae1 -> :sswitch_e
    .end sparse-switch
.end method

.method public final createBanner(Lio/bidmachine/BannerAdSize;)Lio/bidmachine/AdFormat;
    .registers 3

    const-string v0, "bannerAdSize"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lio/bidmachine/AdFormat$Banner;

    invoke-direct {v0, p1}, Lio/bidmachine/AdFormat$Banner;-><init>(Lio/bidmachine/BannerAdSize;)V

    return-object v0
.end method

.method public final createInterstitial(Lio/bidmachine/AdContentType;)Lio/bidmachine/AdFormat;
    .registers 3

    const-string v0, "adContentType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lio/bidmachine/AdFormat$Interstitial;

    invoke-direct {v0, p1}, Lio/bidmachine/AdFormat$Interstitial;-><init>(Lio/bidmachine/AdContentType;)V

    return-object v0
.end method

.method public final createNative(Ljava/util/List;)Lio/bidmachine/AdFormat;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/MediaAssetType;",
            ">;)",
            "Lio/bidmachine/AdFormat;"
        }
    .end annotation

    const-string v0, "mediaAssetTypes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lio/bidmachine/AdFormat$Native;

    invoke-direct {v0, p1}, Lio/bidmachine/AdFormat$Native;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final createRewarded(Lio/bidmachine/AdContentType;)Lio/bidmachine/AdFormat;
    .registers 3

    const-string v0, "adContentType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lio/bidmachine/AdFormat$Rewarded;

    invoke-direct {v0, p1}, Lio/bidmachine/AdFormat$Rewarded;-><init>(Lio/bidmachine/AdContentType;)V

    return-object v0
.end method

###### Class io.bidmachine.AdFormat.Interstitial (io.bidmachine.AdFormat$Interstitial)
.class public final Lio/bidmachine/AdFormat$Interstitial;
.super Lio/bidmachine/AdFormat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/AdFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Interstitial"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/AdFormat$Interstitial$WhenMappings;
    }
.end annotation


# instance fields
.field private final adContentType:Lio/bidmachine/AdContentType;

.field private final matcher:Lio/bidmachine/AdFormat$Matcher;

.field private final remoteName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/bidmachine/AdContentType;)V
    .registers 4

    const-string v0, "adContentType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lio/bidmachine/AdsType;->Interstitial:Lio/bidmachine/AdsType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/bidmachine/AdFormat;-><init>(Lio/bidmachine/AdsType;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 2
    iput-object p1, p0, Lio/bidmachine/AdFormat$Interstitial;->adContentType:Lio/bidmachine/AdContentType;

    .line 5
    invoke-virtual {p0}, Lio/bidmachine/AdFormat;->getAdsType()Lio/bidmachine/AdsType;

    move-result-object v0

    new-instance v1, Lio/bidmachine/AdFormat$Interstitial$matcher$1;

    invoke-direct {v1, p0, v0}, Lio/bidmachine/AdFormat$Interstitial$matcher$1;-><init>(Lio/bidmachine/AdFormat$Interstitial;Lio/bidmachine/AdsType;)V

    iput-object v1, p0, Lio/bidmachine/AdFormat$Interstitial;->matcher:Lio/bidmachine/AdFormat$Matcher;

    .line 15
    sget-object v0, Lio/bidmachine/AdFormat$Interstitial$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_29

    .line 18
    const-string p1, "interstitial"

    goto :goto_2e

    .line 19
    :cond_29
    const-string p1, "interstitial_static"

    goto :goto_2e

    .line 20
    :cond_2c
    const-string p1, "interstitial_video"

    .line 21
    :goto_2e
    iput-object p1, p0, Lio/bidmachine/AdFormat$Interstitial;->remoteName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lio/bidmachine/AdFormat$Interstitial;Lio/bidmachine/AdContentType;ILjava/lang/Object;)Lio/bidmachine/AdFormat$Interstitial;
    .registers 4

    .line 0
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget-object p1, p0, Lio/bidmachine/AdFormat$Interstitial;->adContentType:Lio/bidmachine/AdContentType;

    :cond_6
    invoke-virtual {p0, p1}, Lio/bidmachine/AdFormat$Interstitial;->copy(Lio/bidmachine/AdContentType;)Lio/bidmachine/AdFormat$Interstitial;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lio/bidmachine/AdContentType;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/AdFormat$Interstitial;->adContentType:Lio/bidmachine/AdContentType;

    return-object v0
.end method

.method public final copy(Lio/bidmachine/AdContentType;)Lio/bidmachine/AdFormat$Interstitial;
    .registers 3

    .line 0
    const-string v0, "adContentType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/bidmachine/AdFormat$Interstitial;

    invoke-direct {v0, p1}, Lio/bidmachine/AdFormat$Interstitial;-><init>(Lio/bidmachine/AdContentType;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/bidmachine/AdFormat$Interstitial;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/bidmachine/AdFormat$Interstitial;

    iget-object v1, p0, Lio/bidmachine/AdFormat$Interstitial;->adContentType:Lio/bidmachine/AdContentType;

    iget-object p1, p1, Lio/bidmachine/AdFormat$Interstitial;->adContentType:Lio/bidmachine/AdContentType;

    if-eq v1, p1, :cond_13

    return v2

    :cond_13
    return v0
.end method

.method public final getAdContentType()Lio/bidmachine/AdContentType;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdFormat$Interstitial;->adContentType:Lio/bidmachine/AdContentType;

    return-object v0
.end method

.method public getMatcher$bidmachine_android_sdk_ba_3_8_0()Lio/bidmachine/AdFormat$Matcher;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdFormat$Interstitial;->matcher:Lio/bidmachine/AdFormat$Matcher;

    return-object v0
.end method

.method public getRemoteName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdFormat$Interstitial;->remoteName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/AdFormat$Interstitial;->adContentType:Lio/bidmachine/AdContentType;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Interstitial(adContentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/AdFormat$Interstitial;->adContentType:Lio/bidmachine/AdContentType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.AdFormat.Interstitial.WhenMappings (io.bidmachine.AdFormat$Interstitial$WhenMappings)
.class public final synthetic Lio/bidmachine/AdFormat$Interstitial$WhenMappings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/AdFormat$Interstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 0
    invoke-static {}, Lio/bidmachine/AdContentType;->values()[Lio/bidmachine/AdContentType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lio/bidmachine/AdContentType;->Video:Lio/bidmachine/AdContentType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lio/bidmachine/AdContentType;->Static:Lio/bidmachine/AdContentType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    sput-object v0, Lio/bidmachine/AdFormat$Interstitial$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method

###### Class io.bidmachine.AdFormat$Interstitial$matcher$1 (io.bidmachine.AdFormat$Interstitial$matcher$1)
.class public final Lio/bidmachine/AdFormat$Interstitial$matcher$1;
.super Lio/bidmachine/AdFormat$Matcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/AdFormat$Interstitial;-><init>(Lio/bidmachine/AdContentType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/AdFormat$Interstitial;


# direct methods
.method public constructor <init>(Lio/bidmachine/AdFormat$Interstitial;Lio/bidmachine/AdsType;)V
    .registers 3

    iput-object p1, p0, Lio/bidmachine/AdFormat$Interstitial$matcher$1;->this$0:Lio/bidmachine/AdFormat$Interstitial;

    .line 1
    invoke-direct {p0, p2}, Lio/bidmachine/AdFormat$Matcher;-><init>(Lio/bidmachine/AdsType;)V

    return-void
.end method


# virtual methods
.method public isMatch(Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/AdContentType;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/bidmachine/unified/UnifiedAdRequestParams;",
            ">(TT;",
            "Lio/bidmachine/AdContentType;",
            ")Z"
        }
    .end annotation

    const-string v0, "adRequestParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adContentType"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lio/bidmachine/AdFormat$Interstitial$matcher$1;->this$0:Lio/bidmachine/AdFormat$Interstitial;

    invoke-virtual {p1}, Lio/bidmachine/AdFormat$Interstitial;->getAdContentType()Lio/bidmachine/AdContentType;

    move-result-object p1

    .line 2
    sget-object v0, Lio/bidmachine/AdContentType;->All:Lio/bidmachine/AdContentType;

    if-eq p1, v0, :cond_19

    if-ne p1, p2, :cond_17

    goto :goto_19

    :cond_17
    const/4 p1, 0x0

    return p1

    :cond_19
    :goto_19
    const/4 p1, 0x1

    return p1
.end method

###### Class io.bidmachine.AdFormat.Matcher (io.bidmachine.AdFormat$Matcher)
.class public abstract Lio/bidmachine/AdFormat$Matcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/AdFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Matcher"
.end annotation


# instance fields
.field private final adsType:Lio/bidmachine/AdsType;


# direct methods
.method public constructor <init>(Lio/bidmachine/AdsType;)V
    .registers 3

    const-string v0, "adsType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/AdFormat$Matcher;->adsType:Lio/bidmachine/AdsType;

    return-void
.end method


# virtual methods
.method public final isMatch(Lio/bidmachine/AdsType;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/AdContentType;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/bidmachine/unified/UnifiedAdRequestParams;",
            ">(",
            "Lio/bidmachine/AdsType;",
            "TT;",
            "Lio/bidmachine/AdContentType;",
            ")Z"
        }
    .end annotation

    const-string v0, "adsType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adRequestParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adContentType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdFormat$Matcher;->adsType:Lio/bidmachine/AdsType;

    if-ne p1, v0, :cond_1b

    invoke-virtual {p0, p2, p3}, Lio/bidmachine/AdFormat$Matcher;->isMatch(Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/AdContentType;)Z

    move-result p1

    if-eqz p1, :cond_1b

    const/4 p1, 0x1

    return p1

    :cond_1b
    const/4 p1, 0x0

    return p1
.end method

.method public abstract isMatch(Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/AdContentType;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/bidmachine/unified/UnifiedAdRequestParams;",
            ">(TT;",
            "Lio/bidmachine/AdContentType;",
            ")Z"
        }
    .end annotation
.end method

###### Class io.bidmachine.AdFormat.Native (io.bidmachine.AdFormat$Native)
.class public final Lio/bidmachine/AdFormat$Native;
.super Lio/bidmachine/AdFormat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/AdFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Native"
.end annotation


# instance fields
.field private final matcher:Lio/bidmachine/AdFormat$Matcher;

.field private final mediaAssetTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/MediaAssetType;",
            ">;"
        }
    .end annotation
.end field

.field private final remoteName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/MediaAssetType;",
            ">;)V"
        }
    .end annotation

    const-string v0, "mediaAssetTypes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lio/bidmachine/AdsType;->Native:Lio/bidmachine/AdsType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/bidmachine/AdFormat;-><init>(Lio/bidmachine/AdsType;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 2
    iput-object p1, p0, Lio/bidmachine/AdFormat$Native;->mediaAssetTypes:Ljava/util/List;

    .line 5
    invoke-virtual {p0}, Lio/bidmachine/AdFormat;->getAdsType()Lio/bidmachine/AdsType;

    move-result-object p1

    new-instance v0, Lio/bidmachine/AdFormat$Native$matcher$1;

    invoke-direct {v0, p1}, Lio/bidmachine/AdFormat$Native$matcher$1;-><init>(Lio/bidmachine/AdsType;)V

    iput-object v0, p0, Lio/bidmachine/AdFormat$Native;->matcher:Lio/bidmachine/AdFormat$Matcher;

    .line 12
    const-string p1, "native"

    iput-object p1, p0, Lio/bidmachine/AdFormat$Native;->remoteName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lio/bidmachine/AdFormat$Native;Ljava/util/List;ILjava/lang/Object;)Lio/bidmachine/AdFormat$Native;
    .registers 4

    .line 0
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget-object p1, p0, Lio/bidmachine/AdFormat$Native;->mediaAssetTypes:Ljava/util/List;

    :cond_6
    invoke-virtual {p0, p1}, Lio/bidmachine/AdFormat$Native;->copy(Ljava/util/List;)Lio/bidmachine/AdFormat$Native;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/MediaAssetType;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lio/bidmachine/AdFormat$Native;->mediaAssetTypes:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/util/List;)Lio/bidmachine/AdFormat$Native;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/MediaAssetType;",
            ">;)",
            "Lio/bidmachine/AdFormat$Native;"
        }
    .end annotation

    .line 0
    const-string v0, "mediaAssetTypes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/bidmachine/AdFormat$Native;

    invoke-direct {v0, p1}, Lio/bidmachine/AdFormat$Native;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/bidmachine/AdFormat$Native;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/bidmachine/AdFormat$Native;

    iget-object v1, p0, Lio/bidmachine/AdFormat$Native;->mediaAssetTypes:Ljava/util/List;

    iget-object p1, p1, Lio/bidmachine/AdFormat$Native;->mediaAssetTypes:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public getMatcher$bidmachine_android_sdk_ba_3_8_0()Lio/bidmachine/AdFormat$Matcher;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdFormat$Native;->matcher:Lio/bidmachine/AdFormat$Matcher;

    return-object v0
.end method

.method public final getMediaAssetTypes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/MediaAssetType;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdFormat$Native;->mediaAssetTypes:Ljava/util/List;

    return-object v0
.end method

.method public getRemoteName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdFormat$Native;->remoteName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/AdFormat$Native;->mediaAssetTypes:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Native(mediaAssetTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/AdFormat$Native;->mediaAssetTypes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.AdFormat$Native$matcher$1 (io.bidmachine.AdFormat$Native$matcher$1)
.class public final Lio/bidmachine/AdFormat$Native$matcher$1;
.super Lio/bidmachine/AdFormat$Matcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/AdFormat$Native;-><init>(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lio/bidmachine/AdsType;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/AdFormat$Matcher;-><init>(Lio/bidmachine/AdsType;)V

    return-void
.end method


# virtual methods
.method public isMatch(Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/AdContentType;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/bidmachine/unified/UnifiedAdRequestParams;",
            ">(TT;",
            "Lio/bidmachine/AdContentType;",
            ")Z"
        }
    .end annotation

    .line 0
    const-string v0, "adRequestParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adContentType"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

###### Class io.bidmachine.AdFormat.Rewarded (io.bidmachine.AdFormat$Rewarded)
.class public final Lio/bidmachine/AdFormat$Rewarded;
.super Lio/bidmachine/AdFormat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/AdFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Rewarded"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/AdFormat$Rewarded$WhenMappings;
    }
.end annotation


# instance fields
.field private final adContentType:Lio/bidmachine/AdContentType;

.field private final matcher:Lio/bidmachine/AdFormat$Matcher;

.field private final remoteName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/bidmachine/AdContentType;)V
    .registers 4

    const-string v0, "adContentType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lio/bidmachine/AdsType;->Rewarded:Lio/bidmachine/AdsType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/bidmachine/AdFormat;-><init>(Lio/bidmachine/AdsType;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 2
    iput-object p1, p0, Lio/bidmachine/AdFormat$Rewarded;->adContentType:Lio/bidmachine/AdContentType;

    .line 5
    invoke-virtual {p0}, Lio/bidmachine/AdFormat;->getAdsType()Lio/bidmachine/AdsType;

    move-result-object v0

    new-instance v1, Lio/bidmachine/AdFormat$Rewarded$matcher$1;

    invoke-direct {v1, p0, v0}, Lio/bidmachine/AdFormat$Rewarded$matcher$1;-><init>(Lio/bidmachine/AdFormat$Rewarded;Lio/bidmachine/AdsType;)V

    iput-object v1, p0, Lio/bidmachine/AdFormat$Rewarded;->matcher:Lio/bidmachine/AdFormat$Matcher;

    .line 15
    sget-object v0, Lio/bidmachine/AdFormat$Rewarded$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_29

    .line 18
    const-string p1, "rewarded"

    goto :goto_2e

    .line 19
    :cond_29
    const-string p1, "rewarded_static"

    goto :goto_2e

    .line 20
    :cond_2c
    const-string p1, "rewarded_video"

    .line 21
    :goto_2e
    iput-object p1, p0, Lio/bidmachine/AdFormat$Rewarded;->remoteName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lio/bidmachine/AdFormat$Rewarded;Lio/bidmachine/AdContentType;ILjava/lang/Object;)Lio/bidmachine/AdFormat$Rewarded;
    .registers 4

    .line 0
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget-object p1, p0, Lio/bidmachine/AdFormat$Rewarded;->adContentType:Lio/bidmachine/AdContentType;

    :cond_6
    invoke-virtual {p0, p1}, Lio/bidmachine/AdFormat$Rewarded;->copy(Lio/bidmachine/AdContentType;)Lio/bidmachine/AdFormat$Rewarded;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lio/bidmachine/AdContentType;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/AdFormat$Rewarded;->adContentType:Lio/bidmachine/AdContentType;

    return-object v0
.end method

.method public final copy(Lio/bidmachine/AdContentType;)Lio/bidmachine/AdFormat$Rewarded;
    .registers 3

    .line 0
    const-string v0, "adContentType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/bidmachine/AdFormat$Rewarded;

    invoke-direct {v0, p1}, Lio/bidmachine/AdFormat$Rewarded;-><init>(Lio/bidmachine/AdContentType;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/bidmachine/AdFormat$Rewarded;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/bidmachine/AdFormat$Rewarded;

    iget-object v1, p0, Lio/bidmachine/AdFormat$Rewarded;->adContentType:Lio/bidmachine/AdContentType;

    iget-object p1, p1, Lio/bidmachine/AdFormat$Rewarded;->adContentType:Lio/bidmachine/AdContentType;

    if-eq v1, p1, :cond_13

    return v2

    :cond_13
    return v0
.end method

.method public final getAdContentType()Lio/bidmachine/AdContentType;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdFormat$Rewarded;->adContentType:Lio/bidmachine/AdContentType;

    return-object v0
.end method

.method public getMatcher$bidmachine_android_sdk_ba_3_8_0()Lio/bidmachine/AdFormat$Matcher;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdFormat$Rewarded;->matcher:Lio/bidmachine/AdFormat$Matcher;

    return-object v0
.end method

.method public getRemoteName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdFormat$Rewarded;->remoteName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/AdFormat$Rewarded;->adContentType:Lio/bidmachine/AdContentType;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rewarded(adContentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/AdFormat$Rewarded;->adContentType:Lio/bidmachine/AdContentType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.AdFormat.Rewarded.WhenMappings (io.bidmachine.AdFormat$Rewarded$WhenMappings)
.class public final synthetic Lio/bidmachine/AdFormat$Rewarded$WhenMappings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/AdFormat$Rewarded;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 0
    invoke-static {}, Lio/bidmachine/AdContentType;->values()[Lio/bidmachine/AdContentType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lio/bidmachine/AdContentType;->Video:Lio/bidmachine/AdContentType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lio/bidmachine/AdContentType;->Static:Lio/bidmachine/AdContentType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    sput-object v0, Lio/bidmachine/AdFormat$Rewarded$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method

###### Class io.bidmachine.AdFormat$Rewarded$matcher$1 (io.bidmachine.AdFormat$Rewarded$matcher$1)
.class public final Lio/bidmachine/AdFormat$Rewarded$matcher$1;
.super Lio/bidmachine/AdFormat$Matcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/AdFormat$Rewarded;-><init>(Lio/bidmachine/AdContentType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/AdFormat$Rewarded;


# direct methods
.method public constructor <init>(Lio/bidmachine/AdFormat$Rewarded;Lio/bidmachine/AdsType;)V
    .registers 3

    iput-object p1, p0, Lio/bidmachine/AdFormat$Rewarded$matcher$1;->this$0:Lio/bidmachine/AdFormat$Rewarded;

    .line 1
    invoke-direct {p0, p2}, Lio/bidmachine/AdFormat$Matcher;-><init>(Lio/bidmachine/AdsType;)V

    return-void
.end method


# virtual methods
.method public isMatch(Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/AdContentType;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/bidmachine/unified/UnifiedAdRequestParams;",
            ">(TT;",
            "Lio/bidmachine/AdContentType;",
            ")Z"
        }
    .end annotation

    const-string v0, "adRequestParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adContentType"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lio/bidmachine/AdFormat$Rewarded$matcher$1;->this$0:Lio/bidmachine/AdFormat$Rewarded;

    invoke-virtual {p1}, Lio/bidmachine/AdFormat$Rewarded;->getAdContentType()Lio/bidmachine/AdContentType;

    move-result-object p1

    .line 2
    sget-object v0, Lio/bidmachine/AdContentType;->All:Lio/bidmachine/AdContentType;

    if-eq p1, v0, :cond_19

    if-ne p1, p2, :cond_17

    goto :goto_19

    :cond_17
    const/4 p1, 0x0

    return p1

    :cond_19
    :goto_19
    const/4 p1, 0x1

    return p1
.end method
