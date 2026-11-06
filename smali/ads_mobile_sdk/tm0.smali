###### Class ads_mobile_sdk.tm0 (ads_mobile_sdk.tm0)
.class public final Lads_mobile_sdk/tm0;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/an0;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/an0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/tm0;->a:Lads_mobile_sdk/an0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_18

    iget-object v0, p0, Lads_mobile_sdk/tm0;->a:Lads_mobile_sdk/an0;

    .line 2
    iget-object v0, v0, Lads_mobile_sdk/an0;->c:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.google.android.play.feature.HPE_EXPERIENCE"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0
    :try_end_14
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_14} :catch_18

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :catch_18
    :cond_18
    const/4 v0, 0x0

    .line 6
    :goto_19
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
