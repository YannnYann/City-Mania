###### Class ads_mobile_sdk.zm0 (ads_mobile_sdk.zm0)
.class public final Lads_mobile_sdk/zm0;
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
    iput-object p1, p0, Lads_mobile_sdk/zm0;->a:Lads_mobile_sdk/an0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 4

    .line 72
    :try_start_0
    iget-object v0, p0, Lads_mobile_sdk/zm0;->a:Lads_mobile_sdk/an0;

    invoke-static {v0}, Lads_mobile_sdk/an0;->a(Lads_mobile_sdk/an0;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lads_mobile_sdk/zm0;->a:Lads_mobile_sdk/an0;

    invoke-static {v0}, Lads_mobile_sdk/an0;->a(Lads_mobile_sdk/an0;)Landroid/content/Context;

    move-result-object v0

    .line 74
    :cond_12
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 75
    const-string v1, "com.android.vending"

    const/16 v2, 0x80

    .line 76
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 81
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_38} :catch_39

    return-object v0

    :catch_39
    :cond_39
    const/4 v0, 0x0

    return-object v0
.end method

.method public final bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 70
    invoke-virtual {p0}, Lads_mobile_sdk/zm0;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
