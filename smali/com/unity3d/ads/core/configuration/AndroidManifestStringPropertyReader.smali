###### Class com.unity3d.ads.core.configuration.AndroidManifestStringPropertyReader (com.unity3d.ads.core.configuration.AndroidManifestStringPropertyReader)
.class public final Lcom/unity3d/ads/core/configuration/AndroidManifestStringPropertyReader;
.super Ljava/lang/Object;
.source "AndroidManifestStringPropertyReader.kt"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/unity3d/ads/core/configuration/AndroidManifestStringPropertyReader;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getPropertyByName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "propertyName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    :try_start_5
    iget-object v0, p0, Lcom/unity3d/ads/core/configuration/AndroidManifestStringPropertyReader;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/ads/core/configuration/AndroidManifestStringPropertyReader;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 11
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1d} :catch_1e

    return-object p1

    :catch_1e
    const/4 p1, 0x0

    return-object p1
.end method
