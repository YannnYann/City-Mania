###### Class info.flowersoft.theotown.android.AndroidGameSetup (info.flowersoft.theotown.android.AndroidGameSetup)
.class public Linfo/flowersoft/theotown/android/AndroidGameSetup;
.super Ljava/lang/Object;
.source "AndroidGameSetup.java"

# interfaces
.implements Linfo/flowersoft/theotown/crossplatform/GameSetup;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyDefaultSettings()V
    .registers 5

    .line 15
    invoke-virtual {p0}, Linfo/flowersoft/theotown/android/AndroidGameSetup;->isTablet()Z

    move-result v0

    .line 16
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stats: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/android/AndroidGameSetup;->getMaxTextureSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "mts, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/android/AndroidGameSetup;->getCpuCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "cores, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/android/AndroidGameSetup;->getHeapSizeMB()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "mb, tablet: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Linfo/flowersoft/theotown/android/AndroidGameSetup;->getMaxTextureSize()I

    move-result v1

    const/16 v2, 0x2000

    if-lt v1, v2, :cond_5b

    .line 19
    invoke-virtual {p0}, Linfo/flowersoft/theotown/android/AndroidGameSetup;->getCpuCount()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_5b

    .line 20
    invoke-virtual {p0}, Linfo/flowersoft/theotown/android/AndroidGameSetup;->getHeapSizeMB()I

    move-result v1

    const/16 v2, 0x200

    if-lt v1, v2, :cond_5b

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_63

    :cond_5b
    const/4 v1, 0x0

    .line 24
    sput-boolean v1, Linfo/flowersoft/theotown/resources/Settings;->useBlur:Z

    const/4 v2, 0x3

    .line 25
    sput v2, Linfo/flowersoft/theotown/resources/Settings;->smoothZoom:I

    .line 26
    sput-boolean v1, Linfo/flowersoft/theotown/resources/Settings;->groundBlending:Z

    :cond_63
    if-eqz v0, :cond_68

    const/4 v0, 0x2

    .line 31
    sput v0, Linfo/flowersoft/theotown/resources/Settings;->screenOrientation:I

    :cond_68
    return-void
.end method

.method public final getCpuCount()I
    .registers 2

    .line 42
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    return v0
.end method

.method public final getHeapSizeMB()I
    .registers 5

    .line 46
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public final getMaxTextureSize()I
    .registers 4

    const/4 v0, 0x1

    .line 36
    new-array v0, v0, [I

    const/16 v1, 0xd33

    const/4 v2, 0x0

    .line 37
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 38
    aget v0, v0, v2

    return v0
.end method

.method public final isTablet()Z
    .registers 3

    .line 51
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v1, 0x258

    if-lt v0, v1, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method
