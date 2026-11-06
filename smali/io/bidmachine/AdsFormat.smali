###### Class io.bidmachine.AdsFormat (io.bidmachine.AdsFormat)
.class public final enum Lio/bidmachine/AdsFormat;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/AdsFormat;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
    since = "3.5.0"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/bidmachine/AdsFormat;

.field public static final enum Banner:Lio/bidmachine/AdsFormat;

.field public static final enum Banner_300x250:Lio/bidmachine/AdsFormat;

.field public static final enum Banner_320x50:Lio/bidmachine/AdsFormat;

.field public static final enum Banner_728x90:Lio/bidmachine/AdsFormat;

.field public static final enum Interstitial:Lio/bidmachine/AdsFormat;

.field public static final enum InterstitialStatic:Lio/bidmachine/AdsFormat;

.field public static final enum InterstitialVideo:Lio/bidmachine/AdsFormat;

.field public static final enum Native:Lio/bidmachine/AdsFormat;

.field public static final enum Rewarded:Lio/bidmachine/AdsFormat;

.field public static final enum RewardedStatic:Lio/bidmachine/AdsFormat;

.field public static final enum RewardedVideo:Lio/bidmachine/AdsFormat;


# instance fields
.field private final parent:Lio/bidmachine/AdsFormat;

.field private final remoteName:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lio/bidmachine/AdsFormat;
    .registers 11

    .line 1
    sget-object v0, Lio/bidmachine/AdsFormat;->Banner:Lio/bidmachine/AdsFormat;

    sget-object v1, Lio/bidmachine/AdsFormat;->Banner_320x50:Lio/bidmachine/AdsFormat;

    sget-object v2, Lio/bidmachine/AdsFormat;->Banner_300x250:Lio/bidmachine/AdsFormat;

    sget-object v3, Lio/bidmachine/AdsFormat;->Banner_728x90:Lio/bidmachine/AdsFormat;

    sget-object v4, Lio/bidmachine/AdsFormat;->Interstitial:Lio/bidmachine/AdsFormat;

    sget-object v5, Lio/bidmachine/AdsFormat;->InterstitialVideo:Lio/bidmachine/AdsFormat;

    sget-object v6, Lio/bidmachine/AdsFormat;->InterstitialStatic:Lio/bidmachine/AdsFormat;

    sget-object v7, Lio/bidmachine/AdsFormat;->Rewarded:Lio/bidmachine/AdsFormat;

    sget-object v8, Lio/bidmachine/AdsFormat;->RewardedVideo:Lio/bidmachine/AdsFormat;

    sget-object v9, Lio/bidmachine/AdsFormat;->RewardedStatic:Lio/bidmachine/AdsFormat;

    sget-object v10, Lio/bidmachine/AdsFormat;->Native:Lio/bidmachine/AdsFormat;

    filled-new-array/range {v0 .. v10}, [Lio/bidmachine/AdsFormat;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 6

    .line 1
    new-instance v0, Lio/bidmachine/AdsFormat;

    const-string v1, "Banner"

    const/4 v2, 0x0

    const-string v3, "banner"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lio/bidmachine/AdsFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/AdsFormat;)V

    sput-object v0, Lio/bidmachine/AdsFormat;->Banner:Lio/bidmachine/AdsFormat;

    .line 2
    new-instance v1, Lio/bidmachine/AdsFormat;

    const/4 v2, 0x1

    const-string v3, "banner_320x50"

    const-string v5, "Banner_320x50"

    invoke-direct {v1, v5, v2, v3, v0}, Lio/bidmachine/AdsFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/AdsFormat;)V

    sput-object v1, Lio/bidmachine/AdsFormat;->Banner_320x50:Lio/bidmachine/AdsFormat;

    .line 3
    new-instance v1, Lio/bidmachine/AdsFormat;

    const/4 v2, 0x2

    const-string v3, "banner_300x250"

    const-string v5, "Banner_300x250"

    invoke-direct {v1, v5, v2, v3, v0}, Lio/bidmachine/AdsFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/AdsFormat;)V

    sput-object v1, Lio/bidmachine/AdsFormat;->Banner_300x250:Lio/bidmachine/AdsFormat;

    .line 4
    new-instance v1, Lio/bidmachine/AdsFormat;

    const/4 v2, 0x3

    const-string v3, "banner_728x90"

    const-string v5, "Banner_728x90"

    invoke-direct {v1, v5, v2, v3, v0}, Lio/bidmachine/AdsFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/AdsFormat;)V

    sput-object v1, Lio/bidmachine/AdsFormat;->Banner_728x90:Lio/bidmachine/AdsFormat;

    .line 5
    new-instance v0, Lio/bidmachine/AdsFormat;

    const/4 v1, 0x4

    const-string v2, "interstitial"

    const-string v3, "Interstitial"

    invoke-direct {v0, v3, v1, v2, v4}, Lio/bidmachine/AdsFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/AdsFormat;)V

    sput-object v0, Lio/bidmachine/AdsFormat;->Interstitial:Lio/bidmachine/AdsFormat;

    .line 6
    new-instance v1, Lio/bidmachine/AdsFormat;

    const/4 v2, 0x5

    const-string v3, "interstitial_video"

    const-string v5, "InterstitialVideo"

    invoke-direct {v1, v5, v2, v3, v0}, Lio/bidmachine/AdsFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/AdsFormat;)V

    sput-object v1, Lio/bidmachine/AdsFormat;->InterstitialVideo:Lio/bidmachine/AdsFormat;

    .line 7
    new-instance v1, Lio/bidmachine/AdsFormat;

    const/4 v2, 0x6

    const-string v3, "interstitial_static"

    const-string v5, "InterstitialStatic"

    invoke-direct {v1, v5, v2, v3, v0}, Lio/bidmachine/AdsFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/AdsFormat;)V

    sput-object v1, Lio/bidmachine/AdsFormat;->InterstitialStatic:Lio/bidmachine/AdsFormat;

    .line 8
    new-instance v0, Lio/bidmachine/AdsFormat;

    const/4 v1, 0x7

    const-string v2, "rewarded"

    const-string v3, "Rewarded"

    invoke-direct {v0, v3, v1, v2, v4}, Lio/bidmachine/AdsFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/AdsFormat;)V

    sput-object v0, Lio/bidmachine/AdsFormat;->Rewarded:Lio/bidmachine/AdsFormat;

    .line 9
    new-instance v1, Lio/bidmachine/AdsFormat;

    const/16 v2, 0x8

    const-string v3, "rewarded_video"

    const-string v5, "RewardedVideo"

    invoke-direct {v1, v5, v2, v3, v0}, Lio/bidmachine/AdsFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/AdsFormat;)V

    sput-object v1, Lio/bidmachine/AdsFormat;->RewardedVideo:Lio/bidmachine/AdsFormat;

    .line 10
    new-instance v1, Lio/bidmachine/AdsFormat;

    const/16 v2, 0x9

    const-string v3, "rewarded_static"

    const-string v5, "RewardedStatic"

    invoke-direct {v1, v5, v2, v3, v0}, Lio/bidmachine/AdsFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/AdsFormat;)V

    sput-object v1, Lio/bidmachine/AdsFormat;->RewardedStatic:Lio/bidmachine/AdsFormat;

    .line 11
    new-instance v0, Lio/bidmachine/AdsFormat;

    const/16 v1, 0xa

    const-string v2, "native"

    const-string v3, "Native"

    invoke-direct {v0, v3, v1, v2, v4}, Lio/bidmachine/AdsFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/AdsFormat;)V

    sput-object v0, Lio/bidmachine/AdsFormat;->Native:Lio/bidmachine/AdsFormat;

    .line 12
    invoke-static {}, Lio/bidmachine/AdsFormat;->$values()[Lio/bidmachine/AdsFormat;

    move-result-object v0

    sput-object v0, Lio/bidmachine/AdsFormat;->$VALUES:[Lio/bidmachine/AdsFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/AdsFormat;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/bidmachine/AdsFormat;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lio/bidmachine/AdsFormat;->remoteName:Ljava/lang/String;

    .line 3
    iput-object p4, p0, Lio/bidmachine/AdsFormat;->parent:Lio/bidmachine/AdsFormat;

    return-void
.end method

.method public static byRemoteName(Ljava/lang/String;)Lio/bidmachine/AdsFormat;
    .registers 6

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 2
    invoke-static {}, Lio/bidmachine/AdsFormat;->values()[Lio/bidmachine/AdsFormat;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_1c

    aget-object v3, v0, v2

    .line 3
    iget-object v4, v3, Lio/bidmachine/AdsFormat;->remoteName:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    return-object v3

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static fromAdFormat(Lio/bidmachine/AdFormat;)Lio/bidmachine/AdsFormat;
    .registers 2

    .line 1
    instance-of v0, p0, Lio/bidmachine/AdFormat$Native;

    if-eqz v0, :cond_7

    .line 2
    sget-object p0, Lio/bidmachine/AdsFormat;->Native:Lio/bidmachine/AdsFormat;

    return-object p0

    .line 3
    :cond_7
    instance-of v0, p0, Lio/bidmachine/AdFormat$Rewarded;

    if-eqz v0, :cond_2a

    .line 4
    check-cast p0, Lio/bidmachine/AdFormat$Rewarded;

    invoke-virtual {p0}, Lio/bidmachine/AdFormat$Rewarded;->getAdContentType()Lio/bidmachine/AdContentType;

    move-result-object p0

    .line 5
    sget-object v0, Lio/bidmachine/AdContentType;->Video:Lio/bidmachine/AdContentType;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 6
    sget-object p0, Lio/bidmachine/AdsFormat;->RewardedVideo:Lio/bidmachine/AdsFormat;

    return-object p0

    .line 7
    :cond_1c
    sget-object v0, Lio/bidmachine/AdContentType;->Static:Lio/bidmachine/AdContentType;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_27

    .line 8
    sget-object p0, Lio/bidmachine/AdsFormat;->RewardedStatic:Lio/bidmachine/AdsFormat;

    return-object p0

    .line 10
    :cond_27
    sget-object p0, Lio/bidmachine/AdsFormat;->Rewarded:Lio/bidmachine/AdsFormat;

    return-object p0

    .line 12
    :cond_2a
    instance-of v0, p0, Lio/bidmachine/AdFormat$Interstitial;

    if-eqz v0, :cond_4d

    .line 13
    check-cast p0, Lio/bidmachine/AdFormat$Interstitial;

    invoke-virtual {p0}, Lio/bidmachine/AdFormat$Interstitial;->getAdContentType()Lio/bidmachine/AdContentType;

    move-result-object p0

    .line 14
    sget-object v0, Lio/bidmachine/AdContentType;->Video:Lio/bidmachine/AdContentType;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 15
    sget-object p0, Lio/bidmachine/AdsFormat;->InterstitialVideo:Lio/bidmachine/AdsFormat;

    return-object p0

    .line 16
    :cond_3f
    sget-object v0, Lio/bidmachine/AdContentType;->Static:Lio/bidmachine/AdContentType;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4a

    .line 17
    sget-object p0, Lio/bidmachine/AdsFormat;->InterstitialStatic:Lio/bidmachine/AdsFormat;

    return-object p0

    .line 19
    :cond_4a
    sget-object p0, Lio/bidmachine/AdsFormat;->Interstitial:Lio/bidmachine/AdsFormat;

    return-object p0

    .line 21
    :cond_4d
    instance-of v0, p0, Lio/bidmachine/AdFormat$Banner;

    if-eqz v0, :cond_7b

    .line 22
    check-cast p0, Lio/bidmachine/AdFormat$Banner;

    invoke-virtual {p0}, Lio/bidmachine/AdFormat$Banner;->getBannerAdSize()Lio/bidmachine/BannerAdSize;

    move-result-object p0

    .line 23
    sget-object v0, Lio/bidmachine/BannerAdSize;->Leaderboard:Lio/bidmachine/BannerAdSize;

    invoke-virtual {p0, v0}, Lio/bidmachine/BannerAdSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 24
    sget-object p0, Lio/bidmachine/AdsFormat;->Banner_728x90:Lio/bidmachine/AdsFormat;

    return-object p0

    .line 25
    :cond_62
    sget-object v0, Lio/bidmachine/BannerAdSize;->MediumRectangle:Lio/bidmachine/BannerAdSize;

    invoke-virtual {p0, v0}, Lio/bidmachine/BannerAdSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 26
    sget-object p0, Lio/bidmachine/AdsFormat;->Banner_300x250:Lio/bidmachine/AdsFormat;

    return-object p0

    .line 27
    :cond_6d
    sget-object v0, Lio/bidmachine/BannerAdSize;->Banner:Lio/bidmachine/BannerAdSize;

    invoke-virtual {p0, v0}, Lio/bidmachine/BannerAdSize;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_78

    .line 28
    sget-object p0, Lio/bidmachine/AdsFormat;->Banner_320x50:Lio/bidmachine/AdsFormat;

    return-object p0

    .line 30
    :cond_78
    sget-object p0, Lio/bidmachine/AdsFormat;->Banner:Lio/bidmachine/AdsFormat;

    return-object p0

    .line 33
    :cond_7b
    sget-object p0, Lio/bidmachine/AdsFormat;->Banner:Lio/bidmachine/AdsFormat;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/AdsFormat;
    .registers 2

    .line 1
    const-class v0, Lio/bidmachine/AdsFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/AdsFormat;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/AdsFormat;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/AdsFormat;->$VALUES:[Lio/bidmachine/AdsFormat;

    invoke-virtual {v0}, [Lio/bidmachine/AdsFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/AdsFormat;

    return-object v0
.end method


# virtual methods
.method public getAdsType()Lio/bidmachine/AdsType;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdsFormat;->toAdFormat()Lio/bidmachine/AdFormat;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/AdFormat;->getAdsType()Lio/bidmachine/AdsType;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lio/bidmachine/AdsFormat;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdsFormat;->parent:Lio/bidmachine/AdsFormat;

    return-object v0
.end method

.method public getRemoteName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdsFormat;->remoteName:Ljava/lang/String;

    return-object v0
.end method

.method public toAdFormat()Lio/bidmachine/AdFormat;
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lio/bidmachine/AdsFormat;->toAdFormat(Lio/bidmachine/AdContentType;)Lio/bidmachine/AdFormat;

    move-result-object v0

    return-object v0
.end method

.method public toAdFormat(Lio/bidmachine/AdContentType;)Lio/bidmachine/AdFormat;
    .registers 4

    .line 2
    sget-object v0, Lio/bidmachine/AdsFormat$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_6a

    .line 29
    new-instance p1, Lio/bidmachine/AdFormat$Banner;

    sget-object v0, Lio/bidmachine/BannerAdSize;->Undefined:Lio/bidmachine/BannerAdSize;

    invoke-direct {p1, v0}, Lio/bidmachine/AdFormat$Banner;-><init>(Lio/bidmachine/BannerAdSize;)V

    return-object p1

    .line 30
    :pswitch_13
    new-instance p1, Lio/bidmachine/AdFormat$Banner;

    sget-object v0, Lio/bidmachine/BannerAdSize;->Banner:Lio/bidmachine/BannerAdSize;

    invoke-direct {p1, v0}, Lio/bidmachine/AdFormat$Banner;-><init>(Lio/bidmachine/BannerAdSize;)V

    return-object p1

    .line 31
    :pswitch_1b
    new-instance p1, Lio/bidmachine/AdFormat$Banner;

    sget-object v0, Lio/bidmachine/BannerAdSize;->MediumRectangle:Lio/bidmachine/BannerAdSize;

    invoke-direct {p1, v0}, Lio/bidmachine/AdFormat$Banner;-><init>(Lio/bidmachine/BannerAdSize;)V

    return-object p1

    .line 32
    :pswitch_23
    new-instance p1, Lio/bidmachine/AdFormat$Banner;

    sget-object v0, Lio/bidmachine/BannerAdSize;->Leaderboard:Lio/bidmachine/BannerAdSize;

    invoke-direct {p1, v0}, Lio/bidmachine/AdFormat$Banner;-><init>(Lio/bidmachine/BannerAdSize;)V

    return-object p1

    .line 33
    :pswitch_2b
    new-instance v0, Lio/bidmachine/AdFormat$Interstitial;

    if-eqz p1, :cond_30

    goto :goto_32

    .line 35
    :cond_30
    sget-object p1, Lio/bidmachine/AdContentType;->All:Lio/bidmachine/AdContentType;

    :goto_32
    invoke-direct {v0, p1}, Lio/bidmachine/AdFormat$Interstitial;-><init>(Lio/bidmachine/AdContentType;)V

    return-object v0

    .line 36
    :pswitch_36
    new-instance p1, Lio/bidmachine/AdFormat$Interstitial;

    sget-object v0, Lio/bidmachine/AdContentType;->Static:Lio/bidmachine/AdContentType;

    invoke-direct {p1, v0}, Lio/bidmachine/AdFormat$Interstitial;-><init>(Lio/bidmachine/AdContentType;)V

    return-object p1

    .line 37
    :pswitch_3e
    new-instance p1, Lio/bidmachine/AdFormat$Interstitial;

    sget-object v0, Lio/bidmachine/AdContentType;->Video:Lio/bidmachine/AdContentType;

    invoke-direct {p1, v0}, Lio/bidmachine/AdFormat$Interstitial;-><init>(Lio/bidmachine/AdContentType;)V

    return-object p1

    .line 38
    :pswitch_46
    new-instance v0, Lio/bidmachine/AdFormat$Rewarded;

    if-eqz p1, :cond_4b

    goto :goto_4d

    .line 40
    :cond_4b
    sget-object p1, Lio/bidmachine/AdContentType;->All:Lio/bidmachine/AdContentType;

    :goto_4d
    invoke-direct {v0, p1}, Lio/bidmachine/AdFormat$Rewarded;-><init>(Lio/bidmachine/AdContentType;)V

    return-object v0

    .line 41
    :pswitch_51
    new-instance p1, Lio/bidmachine/AdFormat$Rewarded;

    sget-object v0, Lio/bidmachine/AdContentType;->Static:Lio/bidmachine/AdContentType;

    invoke-direct {p1, v0}, Lio/bidmachine/AdFormat$Rewarded;-><init>(Lio/bidmachine/AdContentType;)V

    return-object p1

    .line 42
    :pswitch_59
    new-instance p1, Lio/bidmachine/AdFormat$Rewarded;

    sget-object v0, Lio/bidmachine/AdContentType;->Video:Lio/bidmachine/AdContentType;

    invoke-direct {p1, v0}, Lio/bidmachine/AdFormat$Rewarded;-><init>(Lio/bidmachine/AdContentType;)V

    return-object p1

    .line 43
    :pswitch_61
    new-instance p1, Lio/bidmachine/AdFormat$Native;

    sget-object v0, Lio/bidmachine/MediaAssetType;->DEFAULT:Ljava/util/List;

    invoke-direct {p1, v0}, Lio/bidmachine/AdFormat$Native;-><init>(Ljava/util/List;)V

    return-object p1

    nop

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_61
        :pswitch_59
        :pswitch_51
        :pswitch_46
        :pswitch_3e
        :pswitch_36
        :pswitch_2b
        :pswitch_23
        :pswitch_1b
        :pswitch_13
    .end packed-switch
.end method

###### Class io.bidmachine.AdsFormat.a (io.bidmachine.AdsFormat$a)
.class public abstract synthetic Lio/bidmachine/AdsFormat$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/AdsFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lio/bidmachine/AdsFormat;->values()[Lio/bidmachine/AdsFormat;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/bidmachine/AdsFormat$a;->a:[I

    :try_start_9
    sget-object v1, Lio/bidmachine/AdsFormat;->Native:Lio/bidmachine/AdsFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lio/bidmachine/AdsFormat$a;->a:[I

    sget-object v1, Lio/bidmachine/AdsFormat;->RewardedVideo:Lio/bidmachine/AdsFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lio/bidmachine/AdsFormat$a;->a:[I

    sget-object v1, Lio/bidmachine/AdsFormat;->RewardedStatic:Lio/bidmachine/AdsFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lio/bidmachine/AdsFormat$a;->a:[I

    sget-object v1, Lio/bidmachine/AdsFormat;->Rewarded:Lio/bidmachine/AdsFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lio/bidmachine/AdsFormat$a;->a:[I

    sget-object v1, Lio/bidmachine/AdsFormat;->InterstitialVideo:Lio/bidmachine/AdsFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lio/bidmachine/AdsFormat$a;->a:[I

    sget-object v1, Lio/bidmachine/AdsFormat;->InterstitialStatic:Lio/bidmachine/AdsFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lio/bidmachine/AdsFormat$a;->a:[I

    sget-object v1, Lio/bidmachine/AdsFormat;->Interstitial:Lio/bidmachine/AdsFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    :catch_54
    :try_start_54
    sget-object v0, Lio/bidmachine/AdsFormat$a;->a:[I

    sget-object v1, Lio/bidmachine/AdsFormat;->Banner_728x90:Lio/bidmachine/AdsFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_60

    :catch_60
    :try_start_60
    sget-object v0, Lio/bidmachine/AdsFormat$a;->a:[I

    sget-object v1, Lio/bidmachine/AdsFormat;->Banner_300x250:Lio/bidmachine/AdsFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_6c} :catch_6c

    :catch_6c
    :try_start_6c
    sget-object v0, Lio/bidmachine/AdsFormat$a;->a:[I

    sget-object v1, Lio/bidmachine/AdsFormat;->Banner_320x50:Lio/bidmachine/AdsFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_78} :catch_78

    :catch_78
    :try_start_78
    sget-object v0, Lio/bidmachine/AdsFormat$a;->a:[I

    sget-object v1, Lio/bidmachine/AdsFormat;->Banner:Lio/bidmachine/AdsFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_84} :catch_84

    :catch_84
    return-void
.end method
