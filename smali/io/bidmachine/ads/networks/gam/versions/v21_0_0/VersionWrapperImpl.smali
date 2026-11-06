###### Class io.bidmachine.ads.networks.gam.versions.v21_0_0.VersionWrapperImpl (io.bidmachine.ads.networks.gam.versions.v21_0_0.VersionWrapperImpl)
.class public Lio/bidmachine/ads/networks/gam/versions/v21_0_0/VersionWrapperImpl;
.super Lio/bidmachine/ads/networks/gam/versions/BaseVersionWrapper;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 1
    new-instance v0, Lio/bidmachine/utils/version/Version;

    const/16 v1, 0x15

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/bidmachine/utils/version/Version;-><init>(III)V

    const/16 v1, 0x13

    invoke-direct {p0, v1, v0}, Lio/bidmachine/ads/networks/gam/versions/BaseVersionWrapper;-><init>(ILio/bidmachine/utils/version/Version;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    .line 9
    :try_start_0
    sget-object v0, Lcom/google/android/gms/ads/MobileAds;->INSTANCE:Lcom/google/android/gms/ads/MobileAds;

    .line 10
    const-string v0, "com.google.android.gms.ads.admanager.AdManagerAdRequest$Builder"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 11
    const-string v0, "com.google.android.gms.ads.admanager.AdManagerAdView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 12
    const-string v0, "com.google.android.gms.ads.admanager.AdManagerInterstitialAd"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 13
    const-string v0, "com.google.android.gms.ads.rewarded.RewardedAd"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_18

    const/4 v0, 0x1

    return v0

    :catch_18
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Landroid/content/Context;)Z
    .registers 5

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 3
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez p1, :cond_14

    return v0

    .line 7
    :cond_14
    const-string v1, "com.google.android.gms.ads.APPLICATION_ID"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_21

    xor-int/lit8 p1, p1, 0x1

    return p1

    :catch_21
    return v0
.end method

.method public createAd(Lio/bidmachine/ads/networks/gam/GAMLoader;Lio/bidmachine/AdsFormat;Lio/bidmachine/ads/networks/gam/GAMUnitData;)Lio/bidmachine/ads/networks/gam/InternalGAMAd;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "gamLoader",
            "adsFormat",
            "gamUnitData"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/ads/networks/gam/versions/v21_0_0/VersionWrapperImpl$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_32

    const/4 p1, 0x0

    return-object p1

    .line 16
    :pswitch_d
    new-instance v0, Lio/bidmachine/ads/networks/gam/versions/v21_0_0/e;

    invoke-direct {v0, p1, p2, p3}, Lio/bidmachine/ads/networks/gam/versions/v21_0_0/e;-><init>(Lio/bidmachine/ads/networks/gam/GAMLoader;Lio/bidmachine/AdsFormat;Lio/bidmachine/ads/networks/gam/GAMUnitData;)V

    return-object v0

    .line 17
    :pswitch_13
    new-instance v0, Lio/bidmachine/ads/networks/gam/versions/v21_0_0/d;

    invoke-direct {v0, p1, p2, p3}, Lio/bidmachine/ads/networks/gam/versions/v21_0_0/d;-><init>(Lio/bidmachine/ads/networks/gam/GAMLoader;Lio/bidmachine/AdsFormat;Lio/bidmachine/ads/networks/gam/GAMUnitData;)V

    return-object v0

    .line 18
    :pswitch_19
    new-instance v0, Lio/bidmachine/ads/networks/gam/versions/v21_0_0/c;

    sget-object v1, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v0, p1, p2, p3, v1}, Lio/bidmachine/ads/networks/gam/versions/v21_0_0/c;-><init>(Lio/bidmachine/ads/networks/gam/GAMLoader;Lio/bidmachine/AdsFormat;Lio/bidmachine/ads/networks/gam/GAMUnitData;Lcom/google/android/gms/ads/AdSize;)V

    return-object v0

    .line 19
    :pswitch_21
    new-instance v0, Lio/bidmachine/ads/networks/gam/versions/v21_0_0/c;

    sget-object v1, Lcom/google/android/gms/ads/AdSize;->LEADERBOARD:Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v0, p1, p2, p3, v1}, Lio/bidmachine/ads/networks/gam/versions/v21_0_0/c;-><init>(Lio/bidmachine/ads/networks/gam/GAMLoader;Lio/bidmachine/AdsFormat;Lio/bidmachine/ads/networks/gam/GAMUnitData;Lcom/google/android/gms/ads/AdSize;)V

    return-object v0

    .line 20
    :pswitch_29
    new-instance v0, Lio/bidmachine/ads/networks/gam/versions/v21_0_0/c;

    sget-object v1, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v0, p1, p2, p3, v1}, Lio/bidmachine/ads/networks/gam/versions/v21_0_0/c;-><init>(Lio/bidmachine/ads/networks/gam/GAMLoader;Lio/bidmachine/AdsFormat;Lio/bidmachine/ads/networks/gam/GAMUnitData;Lcom/google/android/gms/ads/AdSize;)V

    return-object v0

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_29
        :pswitch_29
        :pswitch_21
        :pswitch_19
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method public getVersion()Lio/bidmachine/utils/version/Version;
    .registers 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/MobileAds;->getVersion()Lcom/google/android/gms/ads/VersionInfo;

    move-result-object v0

    .line 2
    new-instance v1, Lio/bidmachine/utils/version/Version;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/VersionInfo;->getMajorVersion()I

    move-result v2

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/ads/VersionInfo;->getMinorVersion()I

    move-result v3

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/ads/VersionInfo;->getMicroVersion()I

    move-result v0

    invoke-direct {v1, v2, v3, v0}, Lio/bidmachine/utils/version/Version;-><init>(III)V

    return-object v1
.end method

.method public initialize(Landroid/content/Context;)V
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public isGAMPresent(Landroid/content/Context;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/gam/versions/v21_0_0/VersionWrapperImpl;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam/versions/v21_0_0/VersionWrapperImpl;->a()Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

###### Class io.bidmachine.ads.networks.gam.versions.v21_0_0.VersionWrapperImpl.a (io.bidmachine.ads.networks.gam.versions.v21_0_0.VersionWrapperImpl$a)
.class public abstract synthetic Lio/bidmachine/ads/networks/gam/versions/v21_0_0/VersionWrapperImpl$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/gam/versions/v21_0_0/VersionWrapperImpl;
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

    sput-object v0, Lio/bidmachine/ads/networks/gam/versions/v21_0_0/VersionWrapperImpl$a;->a:[I

    :try_start_9
    sget-object v1, Lio/bidmachine/AdsFormat;->Banner:Lio/bidmachine/AdsFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lio/bidmachine/ads/networks/gam/versions/v21_0_0/VersionWrapperImpl$a;->a:[I

    sget-object v1, Lio/bidmachine/AdsFormat;->Banner_320x50:Lio/bidmachine/AdsFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lio/bidmachine/ads/networks/gam/versions/v21_0_0/VersionWrapperImpl$a;->a:[I

    sget-object v1, Lio/bidmachine/AdsFormat;->Banner_728x90:Lio/bidmachine/AdsFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lio/bidmachine/ads/networks/gam/versions/v21_0_0/VersionWrapperImpl$a;->a:[I

    sget-object v1, Lio/bidmachine/AdsFormat;->Banner_300x250:Lio/bidmachine/AdsFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lio/bidmachine/ads/networks/gam/versions/v21_0_0/VersionWrapperImpl$a;->a:[I

    sget-object v1, Lio/bidmachine/AdsFormat;->Interstitial:Lio/bidmachine/AdsFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lio/bidmachine/ads/networks/gam/versions/v21_0_0/VersionWrapperImpl$a;->a:[I

    sget-object v1, Lio/bidmachine/AdsFormat;->InterstitialStatic:Lio/bidmachine/AdsFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lio/bidmachine/ads/networks/gam/versions/v21_0_0/VersionWrapperImpl$a;->a:[I

    sget-object v1, Lio/bidmachine/AdsFormat;->InterstitialVideo:Lio/bidmachine/AdsFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    :catch_54
    :try_start_54
    sget-object v0, Lio/bidmachine/ads/networks/gam/versions/v21_0_0/VersionWrapperImpl$a;->a:[I

    sget-object v1, Lio/bidmachine/AdsFormat;->Rewarded:Lio/bidmachine/AdsFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_60

    :catch_60
    :try_start_60
    sget-object v0, Lio/bidmachine/ads/networks/gam/versions/v21_0_0/VersionWrapperImpl$a;->a:[I

    sget-object v1, Lio/bidmachine/AdsFormat;->RewardedStatic:Lio/bidmachine/AdsFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_6c} :catch_6c

    :catch_6c
    :try_start_6c
    sget-object v0, Lio/bidmachine/ads/networks/gam/versions/v21_0_0/VersionWrapperImpl$a;->a:[I

    sget-object v1, Lio/bidmachine/AdsFormat;->RewardedVideo:Lio/bidmachine/AdsFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_78} :catch_78

    :catch_78
    return-void
.end method
