###### Class com.unity3d.ads.core.configuration.AndroidManifestIntPropertyReader (com.unity3d.ads.core.configuration.AndroidManifestIntPropertyReader)
.class public final Lcom/unity3d/ads/core/configuration/AndroidManifestIntPropertyReader;
.super Ljava/lang/Object;
.source "AndroidManifestIntPropertyReader.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidManifestIntPropertyReader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidManifestIntPropertyReader.kt\ncom/unity3d/ads/core/configuration/AndroidManifestIntPropertyReader\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,16:1\n1#2:17\n*E\n"
.end annotation


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
    iput-object p1, p0, Lcom/unity3d/ads/core/configuration/AndroidManifestIntPropertyReader;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getPropertyByName(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 6

    const-string v0, "propertyName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 10
    :try_start_6
    iget-object v1, p0, Lcom/unity3d/ads/core/configuration/AndroidManifestIntPropertyReader;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/unity3d/ads/core/configuration/AndroidManifestIntPropertyReader;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 11
    invoke-virtual {v1, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p1
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_26} :catch_29

    if-eqz p1, :cond_29

    return-object v2

    :catch_29
    :cond_29
    return-object v0
.end method
