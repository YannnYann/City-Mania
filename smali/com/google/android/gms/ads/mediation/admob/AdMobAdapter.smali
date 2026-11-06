###### Class com.google.android.gms.ads.mediation.admob.AdMobAdapter (com.google.android.gms.ads.mediation.admob.AdMobAdapter)
.class public final Lcom/google/android/gms/ads/mediation/admob/AdMobAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationExtrasReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/mediation/admob/AdMobAdapter$Companion;
    }
.end annotation


# static fields
.field public static final AD_JSON_PARAMETER:Ljava/lang/String; = "adJson"

.field public static final AD_PARAMETER:Ljava/lang/String; = "_ad"

.field public static final Companion:Lcom/google/android/gms/ads/mediation/admob/AdMobAdapter$Companion;

.field public static final EXTRA_PARAMETER_DISABLE_REFRESH:Ljava/lang/String; = "_noRefresh"

.field public static final GWHIRL_REQUEST_PARAMETER:Ljava/lang/String; = "gw"

.field public static final GWHIRL_REQUEST_PARAMETER_VALUE:I = 0x1

.field public static final HOUSE_ADS_PARAMETER:Ljava/lang/String; = "mad_hac"

.field public static final NEW_BUNDLE:Ljava/lang/String; = "_newBundle"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/google/android/gms/ads/mediation/admob/AdMobAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/mediation/admob/AdMobAdapter$Companion;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/ads/mediation/admob/AdMobAdapter;->Companion:Lcom/google/android/gms/ads/mediation/admob/AdMobAdapter$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final buildExtrasBundle(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 6

    const-string v0, "serverParameters"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1b

    if-eqz p1, :cond_12

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/ads/mediation/admob/AdMobAdapter$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    if-nez p1, :cond_21

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    goto :goto_21

    .line 4
    :cond_1b
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p1, v0

    .line 7
    :cond_21
    :goto_21
    const-string v0, "_newBundle"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 8
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p1, v0

    .line 12
    :cond_2f
    const-string v0, "gw"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 15
    const-string v0, "mad_hac"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    const-string v0, "adJson"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_53

    .line 19
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "_ad"

    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :cond_53
    const-string p2, "_noRefresh"

    invoke-virtual {p1, p2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p1
.end method

###### Class com.google.android.gms.ads.mediation.admob.AdMobAdapter.Companion (com.google.android.gms.ads.mediation.admob.AdMobAdapter$Companion)
.class public final Lcom/google/android/gms/ads/mediation/admob/AdMobAdapter$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/mediation/admob/AdMobAdapter;
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

.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/mediation/admob/AdMobAdapter$Companion;-><init>()V

    return-void
.end method
