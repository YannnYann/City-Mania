###### Class io.bidmachine.iab.mraid.MraidNativeFeatureSchemeValidator (io.bidmachine.iab.mraid.MraidNativeFeatureSchemeValidator)
.class public final Lio/bidmachine/iab/mraid/MraidNativeFeatureSchemeValidator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/bidmachine/iab/mraid/MraidNativeFeatureManager;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/mraid/MraidNativeFeatureManager;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidNativeFeatureSchemeValidator;->a:Lio/bidmachine/iab/mraid/MraidNativeFeatureManager;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_3e

    .line 1
    const-string v0, "sms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidNativeFeatureSchemeValidator;->a:Lio/bidmachine/iab/mraid/MraidNativeFeatureManager;

    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/MraidNativeFeatureManager;->isSmsFeatureAvailable()Z

    move-result p1

    return p1

    .line 4
    :cond_11
    const-string v0, "tel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 5
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidNativeFeatureSchemeValidator;->a:Lio/bidmachine/iab/mraid/MraidNativeFeatureManager;

    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/MraidNativeFeatureManager;->isTelFeatureAvailable()Z

    move-result p1

    return p1

    .line 7
    :cond_20
    const-string v0, "calendar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 8
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidNativeFeatureSchemeValidator;->a:Lio/bidmachine/iab/mraid/MraidNativeFeatureManager;

    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/MraidNativeFeatureManager;->isCalendarFeatureAvailable()Z

    move-result p1

    return p1

    .line 10
    :cond_2f
    const-string v0, "storePicture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 11
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidNativeFeatureSchemeValidator;->a:Lio/bidmachine/iab/mraid/MraidNativeFeatureManager;

    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/MraidNativeFeatureManager;->isStorePictureFeatureAvailable()Z

    move-result p1

    return p1

    :cond_3e
    const/4 p1, 0x1

    return p1
.end method
