###### Class io.bidmachine.iab.mraid.MraidNativeFeatureManager (io.bidmachine.iab.mraid.MraidNativeFeatureManager)
.class public final Lio/bidmachine/iab/mraid/MraidNativeFeatureManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "nativeFeatures"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lio/bidmachine/iab/utils/SystemFeatureAvailability;

    invoke-direct {v0, p1}, Lio/bidmachine/iab/utils/SystemFeatureAvailability;-><init>(Landroid/content/Context;)V

    .line 5
    const-string p1, "sms"

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/iab/mraid/MraidNativeFeatureManager;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1a

    .line 6
    invoke-virtual {v0}, Lio/bidmachine/iab/utils/SystemFeatureAvailability;->hasTelephony()Z

    move-result p1

    if-eqz p1, :cond_1a

    move p1, v2

    goto :goto_1b

    :cond_1a
    move p1, v1

    .line 7
    :goto_1b
    iput-boolean p1, p0, Lio/bidmachine/iab/mraid/MraidNativeFeatureManager;->a:Z

    .line 8
    const-string p1, "tel"

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/iab/mraid/MraidNativeFeatureManager;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 9
    invoke-virtual {v0}, Lio/bidmachine/iab/utils/SystemFeatureAvailability;->hasTelephony()Z

    move-result p1

    if-eqz p1, :cond_2c

    move v1, v2

    .line 10
    :cond_2c
    iput-boolean v1, p0, Lio/bidmachine/iab/mraid/MraidNativeFeatureManager;->b:Z

    .line 11
    const-string p1, "inlineVideo"

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/iab/mraid/MraidNativeFeatureManager;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result p1

    iput-boolean p1, p0, Lio/bidmachine/iab/mraid/MraidNativeFeatureManager;->c:Z

    .line 13
    const-string p1, "calendar"

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/iab/mraid/MraidNativeFeatureManager;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result p1

    iput-boolean p1, p0, Lio/bidmachine/iab/mraid/MraidNativeFeatureManager;->d:Z

    .line 14
    const-string p1, "storePicture"

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/iab/mraid/MraidNativeFeatureManager;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result p1

    iput-boolean p1, p0, Lio/bidmachine/iab/mraid/MraidNativeFeatureManager;->e:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "nativeFeatures"
        }
    .end annotation

    if-eqz p2, :cond_7

    .line 1
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    goto :goto_8

    :cond_7
    const/4 p2, 0x0

    .line 2
    :goto_8
    invoke-direct {p0, p1, p2}, Lio/bidmachine/iab/mraid/MraidNativeFeatureManager;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/List;)Z
    .registers 3

    if-eqz p2, :cond_a

    .line 1
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method public isCalendarFeatureAvailable()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/iab/mraid/MraidNativeFeatureManager;->d:Z

    return v0
.end method

.method public isInlineVideoFeatureAvailable()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/iab/mraid/MraidNativeFeatureManager;->c:Z

    return v0
.end method

.method public isSmsFeatureAvailable()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/iab/mraid/MraidNativeFeatureManager;->a:Z

    return v0
.end method

.method public isStorePictureFeatureAvailable()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/iab/mraid/MraidNativeFeatureManager;->e:Z

    return v0
.end method

.method public isTelFeatureAvailable()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/iab/mraid/MraidNativeFeatureManager;->b:Z

    return v0
.end method
