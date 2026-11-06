###### Class ads_mobile_sdk.ym0 (ads_mobile_sdk.ym0)
.class public final Lads_mobile_sdk/ym0;
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
    iput-object p1, p0, Lads_mobile_sdk/ym0;->a:Lads_mobile_sdk/an0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 6

    .line 89
    iget-object v0, p0, Lads_mobile_sdk/ym0;->a:Lads_mobile_sdk/an0;

    invoke-static {v0}, Lads_mobile_sdk/an0;->a(Lads_mobile_sdk/an0;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lads_mobile_sdk/ym0;->a:Lads_mobile_sdk/an0;

    invoke-static {v0}, Lads_mobile_sdk/an0;->a(Lads_mobile_sdk/an0;)Landroid/content/Context;

    move-result-object v0

    .line 90
    :cond_12
    iget-object v1, p0, Lads_mobile_sdk/ym0;->a:Lads_mobile_sdk/an0;

    invoke-static {v1}, Lads_mobile_sdk/an0;->a(Lads_mobile_sdk/an0;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "getPackageManager(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lads_mobile_sdk/an0;->a(Lads_mobile_sdk/an0;Landroid/content/pm/PackageManager;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_29

    return-object v2

    .line 91
    :cond_29
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v1, :cond_2e

    return-object v2

    .line 93
    :cond_2e
    :try_start_2e
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_54

    .line 95
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_53
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2e .. :try_end_53} :catch_54

    return-object v0

    :catch_54
    :cond_54
    return-object v2
.end method

.method public final bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 88
    invoke-virtual {p0}, Lads_mobile_sdk/ym0;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
