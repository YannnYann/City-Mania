###### Class ads_mobile_sdk.xm0 (ads_mobile_sdk.xm0)
.class public final Lads_mobile_sdk/xm0;
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
    iput-object p1, p0, Lads_mobile_sdk/xm0;->a:Lads_mobile_sdk/an0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/xm0;->a:Lads_mobile_sdk/an0;

    .line 3
    iget-object v0, v0, Lads_mobile_sdk/an0;->e:Landroid/content/pm/PackageManager;

    .line 4
    const-string v1, "com.google.android.feature.services_updater"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lads_mobile_sdk/xm0;->a:Lads_mobile_sdk/an0;

    .line 5
    iget-object v0, v0, Lads_mobile_sdk/an0;->e:Landroid/content/pm/PackageManager;

    .line 6
    const-string v1, "cn.google.services"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
