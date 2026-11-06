###### Class io.bidmachine.PlatformData (io.bidmachine.PlatformData)
.class public final Lio/bidmachine/PlatformData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile instance:Lio/bidmachine/PlatformData;


# instance fields
.field private final context:Landroid/content/Context;

.field final kotlinVersion:Ljava/lang/String;

.field private minSdkVersion:Ljava/lang/Integer;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/PlatformData;->context:Landroid/content/Context;

    .line 3
    invoke-direct {p0}, Lio/bidmachine/PlatformData;->getKotlinVersion()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/PlatformData;->kotlinVersion:Ljava/lang/String;

    return-void
.end method

.method public static get(Landroid/content/Context;)Lio/bidmachine/PlatformData;
    .registers 3

    .line 1
    sget-object v0, Lio/bidmachine/PlatformData;->instance:Lio/bidmachine/PlatformData;

    if-nez v0, :cond_19

    .line 3
    const-class v1, Lio/bidmachine/PlatformData;

    monitor-enter v1

    .line 4
    :try_start_7
    sget-object v0, Lio/bidmachine/PlatformData;->instance:Lio/bidmachine/PlatformData;

    if-nez v0, :cond_15

    .line 6
    new-instance v0, Lio/bidmachine/PlatformData;

    invoke-direct {v0, p0}, Lio/bidmachine/PlatformData;-><init>(Landroid/content/Context;)V

    .line 7
    sput-object v0, Lio/bidmachine/PlatformData;->instance:Lio/bidmachine/PlatformData;

    goto :goto_15

    :catchall_13
    move-exception p0

    goto :goto_17

    .line 9
    :cond_15
    :goto_15
    monitor-exit v1

    return-object v0

    :goto_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_13

    throw p0

    :cond_19
    return-object v0
.end method

.method private getKotlinVersion()Ljava/lang/String;
    .registers 2

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/KotlinVersion;->CURRENT:Lkotlin/KotlinVersion;

    invoke-virtual {v0}, Lkotlin/KotlinVersion;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    const/4 v0, 0x0

    return-object v0
.end method

.method private getMinSdkVersionFromApplicationInfo(Landroid/content/Context;)Ljava/lang/Integer;
    .registers 4

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 3
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p1, :cond_18

    .line 5
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    return-object p1

    :catch_18
    :cond_18
    const/4 p1, 0x0

    return-object p1
.end method

.method private getMinSdkVersionFromManifest(Landroid/content/Context;)Ljava/lang/Integer;
    .registers 6

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v1, "AndroidManifest.xml"

    invoke-virtual {p1, v1}, Landroid/content/res/AssetManager;->openXmlResourceParser(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object p1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_5a

    .line 3
    :try_start_b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    :goto_f
    const/4 v2, 0x1

    if-eq v1, v2, :cond_4b

    const/4 v2, 0x2

    if-ne v1, v2, :cond_46

    .line 4
    const-string v1, "uses-sdk"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    const/4 v1, 0x0

    .line 5
    :goto_22
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    if-ge v1, v2, :cond_46

    .line 6
    const-string v2, "minSdkVersion"

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 7
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_46

    :catchall_41
    move-exception v1

    goto :goto_4f

    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 8
    :cond_46
    :goto_46
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1
    :try_end_4a
    .catchall {:try_start_b .. :try_end_4a} :catchall_41

    goto :goto_f

    .line 18
    :cond_4b
    :try_start_4b
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4e} :catch_5a

    return-object v0

    :goto_4f
    if-eqz p1, :cond_59

    .line 19
    :try_start_51
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_55

    goto :goto_59

    :catchall_55
    move-exception p1

    :try_start_56
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 20
    :cond_59
    :goto_59
    throw v1
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_5a} :catch_5a

    :catch_5a
    return-object v0
.end method


# virtual methods
.method public getMinSdkVersion()Ljava/lang/Integer;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/PlatformData;->minSdkVersion:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    return-object v0

    .line 6
    :cond_5
    iget-object v0, p0, Lio/bidmachine/PlatformData;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lio/bidmachine/PlatformData;->getMinSdkVersionFromApplicationInfo(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/PlatformData;->minSdkVersion:Ljava/lang/Integer;

    if-nez v0, :cond_17

    .line 9
    iget-object v0, p0, Lio/bidmachine/PlatformData;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lio/bidmachine/PlatformData;->getMinSdkVersionFromManifest(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/PlatformData;->minSdkVersion:Ljava/lang/Integer;

    .line 11
    :cond_17
    iget-object v0, p0, Lio/bidmachine/PlatformData;->minSdkVersion:Ljava/lang/Integer;

    return-object v0
.end method
