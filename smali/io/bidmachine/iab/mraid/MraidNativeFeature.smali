###### Class io.bidmachine.iab.mraid.MraidNativeFeature (io.bidmachine.iab.mraid.MraidNativeFeature)
.class public final Lio/bidmachine/iab/mraid/MraidNativeFeature;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    const-string v0, "calendar"

    const-string v1, "storePicture"

    const-string v2, "sms"

    const-string v3, "tel"

    const-string v4, "inlineVideo"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/iab/mraid/MraidNativeFeature;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a(Lio/bidmachine/iab/mraid/MraidNativeFeatureManager;)Ljava/util/ArrayList;
    .registers 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidNativeFeatureManager;->isTelFeatureAvailable()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 3
    const-string v1, "tel"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_10
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidNativeFeatureManager;->isSmsFeatureAvailable()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 6
    const-string v1, "sms"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_1b
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidNativeFeatureManager;->isInlineVideoFeatureAvailable()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 9
    const-string v1, "inlineVideo"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_26
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidNativeFeatureManager;->isCalendarFeatureAvailable()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 12
    const-string v1, "calendar"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_31
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidNativeFeatureManager;->isStorePictureFeatureAvailable()Z

    move-result p0

    if-eqz p0, :cond_3c

    .line 15
    const-string p0, "storePicture"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3c
    return-object v0
.end method

.method public static getSupportedFeatures(Landroid/content/Context;)[Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/bidmachine/iab/mraid/MraidNativeFeatureManager;

    sget-object v1, Lio/bidmachine/iab/mraid/MraidNativeFeature;->a:[Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lio/bidmachine/iab/mraid/MraidNativeFeatureManager;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 2
    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidNativeFeature;->a(Lio/bidmachine/iab/mraid/MraidNativeFeatureManager;)Ljava/util/ArrayList;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 3
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method
