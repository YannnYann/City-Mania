###### Class io.bidmachine.iab.vast.processor.VastAd (io.bidmachine.iab.vast.processor.VastAd)
.class public Lio/bidmachine/iab/vast/processor/VastAd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lio/bidmachine/iab/vast/processor/VastAd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lio/bidmachine/iab/vast/tags/LinearCreativeTag;

.field public final b:Lio/bidmachine/iab/vast/tags/MediaFileTag;

.field public c:Lio/bidmachine/iab/vast/VastRequest;

.field public d:Ljava/util/ArrayList;

.field public e:Ljava/util/ArrayList;

.field public f:Ljava/util/ArrayList;

.field public g:Ljava/util/ArrayList;

.field public h:Ljava/util/ArrayList;

.field public i:Ljava/util/EnumMap;

.field public j:Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;

.field public k:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lio/bidmachine/iab/vast/processor/VastAd$a;

    invoke-direct {v0}, Lio/bidmachine/iab/vast/processor/VastAd$a;-><init>()V

    sput-object v0, Lio/bidmachine/iab/vast/processor/VastAd;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/bidmachine/iab/vast/processor/VastAd;->k:Ljava/util/List;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lio/bidmachine/iab/vast/tags/LinearCreativeTag;

    iput-object v0, p0, Lio/bidmachine/iab/vast/processor/VastAd;->a:Lio/bidmachine/iab/vast/tags/LinearCreativeTag;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lio/bidmachine/iab/vast/tags/MediaFileTag;

    iput-object v0, p0, Lio/bidmachine/iab/vast/processor/VastAd;->b:Lio/bidmachine/iab/vast/tags/MediaFileTag;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lio/bidmachine/iab/vast/processor/VastAd;->d:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/iab/vast/processor/VastAd;->e:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/iab/vast/processor/VastAd;->f:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/iab/vast/processor/VastAd;->g:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/iab/vast/processor/VastAd;->h:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/EnumMap;

    iput-object v0, p0, Lio/bidmachine/iab/vast/processor/VastAd;->i:Ljava/util/EnumMap;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;

    iput-object v0, p0, Lio/bidmachine/iab/vast/processor/VastAd;->j:Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;

    .line 28
    iget-object v0, p0, Lio/bidmachine/iab/vast/processor/VastAd;->k:Ljava/util/List;

    const-class v1, Lio/bidmachine/iab/vast/tags/AdVerificationsExtensionTag;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/iab/vast/tags/LinearCreativeTag;Lio/bidmachine/iab/vast/tags/MediaFileTag;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/bidmachine/iab/vast/processor/VastAd;->k:Ljava/util/List;

    .line 6
    iput-object p1, p0, Lio/bidmachine/iab/vast/processor/VastAd;->a:Lio/bidmachine/iab/vast/tags/LinearCreativeTag;

    .line 7
    iput-object p2, p0, Lio/bidmachine/iab/vast/processor/VastAd;->b:Lio/bidmachine/iab/vast/tags/MediaFileTag;

    return-void
.end method


# virtual methods
.method public a(Lio/bidmachine/iab/vast/VastSpecError;)V
    .registers 3

    .line 4
    iget-object v0, p0, Lio/bidmachine/iab/vast/processor/VastAd;->c:Lio/bidmachine/iab/vast/VastRequest;

    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lio/bidmachine/iab/vast/VastRequest;->sendVastSpecError(Lio/bidmachine/iab/vast/VastSpecError;)V

    :cond_7
    return-void
.end method

.method public a(Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;)V
    .registers 2

    .line 3
    iput-object p1, p0, Lio/bidmachine/iab/vast/processor/VastAd;->j:Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/processor/VastAd;->g:Ljava/util/ArrayList;

    return-void
.end method

.method public a(Ljava/util/EnumMap;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lio/bidmachine/iab/vast/processor/VastAd;->i:Ljava/util/EnumMap;

    return-void
.end method

.method public b(Ljava/util/ArrayList;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/processor/VastAd;->d:Ljava/util/ArrayList;

    return-void
.end method

.method public c(Ljava/util/ArrayList;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/processor/VastAd;->f:Ljava/util/ArrayList;

    return-void
.end method

.method public d(Ljava/util/ArrayList;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/processor/VastAd;->e:Ljava/util/ArrayList;

    return-void
.end method

.method public describeContents()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public getAdVerificationsExtensionList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/iab/vast/tags/AdVerificationsExtensionTag;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/processor/VastAd;->k:Ljava/util/List;

    return-object v0
.end method

.method public getAppodealExtension()Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/processor/VastAd;->j:Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;

    return-object v0
.end method

.method public getBanner(Landroid/content/Context;)Lio/bidmachine/iab/vast/tags/CompanionTag;
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/processor/VastAd;->d:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_49

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_49

    .line 4
    :cond_c
    iget-object v0, p0, Lio/bidmachine/iab/vast/processor/VastAd;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/iab/vast/tags/CompanionTag;

    .line 5
    invoke-virtual {v2}, Lio/bidmachine/iab/vast/tags/CompanionTag;->getWidth()I

    move-result v3

    .line 6
    invoke-virtual {v2}, Lio/bidmachine/iab/vast/tags/CompanionTag;->getHeight()I

    move-result v4

    const/4 v5, -0x1

    if-le v3, v5, :cond_12

    if-le v4, v5, :cond_12

    .line 8
    invoke-static {p1}, Lio/bidmachine/iab/utils/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3a

    const/16 v5, 0x2d8

    if-ne v3, v5, :cond_3a

    const/16 v5, 0x5a

    if-ne v4, v5, :cond_3a

    goto :goto_48

    .line 10
    :cond_3a
    invoke-static {p1}, Lio/bidmachine/iab/utils/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_12

    const/16 v5, 0x140

    if-ne v3, v5, :cond_12

    const/16 v3, 0x32

    if-ne v4, v3, :cond_12

    :goto_48
    return-object v2

    :cond_49
    :goto_49
    return-object v1
.end method

.method public getClickThroughUrl()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/processor/VastAd;->a:Lio/bidmachine/iab/vast/tags/LinearCreativeTag;

    invoke-virtual {v0}, Lio/bidmachine/iab/vast/tags/LinearCreativeTag;->getVideoClicksTag()Lio/bidmachine/iab/vast/tags/VideoClicksTag;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 3
    invoke-virtual {v0}, Lio/bidmachine/iab/vast/tags/VideoClicksTag;->getClickThroughUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public getClickTrackingUrlList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/processor/VastAd;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCompanion(II)Lio/bidmachine/iab/vast/tags/CompanionTag;
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "targetWidth",
            "targetHeight"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/processor/VastAd;->d:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_ad

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto/16 :goto_ad

    .line 5
    :cond_d
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    iget-object v2, p0, Lio/bidmachine/iab/vast/processor/VastAd;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_18
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/iab/vast/tags/CompanionTag;

    .line 7
    invoke-virtual {v3}, Lio/bidmachine/iab/vast/tags/CompanionTag;->getWidth()I

    move-result v4

    .line 8
    invoke-virtual {v3}, Lio/bidmachine/iab/vast/tags/CompanionTag;->getHeight()I

    move-result v5

    const/4 v6, -0x1

    if-le v4, v6, :cond_18

    if-le v5, v6, :cond_18

    .line 10
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 11
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/16 v8, 0xfa

    if-lt v7, v8, :cond_18

    float-to-double v6, v6

    const-wide/high16 v8, 0x4004000000000000L    # 2.5

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_18

    .line 12
    invoke-virtual {v3}, Lio/bidmachine/iab/vast/tags/CompanionTag;->hasCreative()Z

    move-result v6

    if-eqz v6, :cond_18

    int-to-float v4, v4

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 13
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    .line 18
    :cond_5c
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a8

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 20
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    .line 21
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 22
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_7b
    :goto_7b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float v3, v1, p1

    .line 23
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float v4, v2, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_7b

    move v1, v2

    goto :goto_7b

    .line 27
    :cond_9d
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/iab/vast/tags/CompanionTag;

    return-object p1

    .line 30
    :cond_a8
    sget-object p1, Lio/bidmachine/iab/vast/VastSpecError;->GENERAL_COMPANION:Lio/bidmachine/iab/vast/VastSpecError;

    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/processor/VastAd;->a(Lio/bidmachine/iab/vast/VastSpecError;)V

    :cond_ad
    :goto_ad
    return-object v1
.end method

.method public getDurationSec()Ljava/lang/Float;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/processor/VastAd;->a:Lio/bidmachine/iab/vast/tags/LinearCreativeTag;

    invoke-virtual {v0}, Lio/bidmachine/iab/vast/tags/LinearCreativeTag;->getDurationSec()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getErrorUrlList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/processor/VastAd;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getImpressionUrlList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/processor/VastAd;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPickedMediaFileTag()Lio/bidmachine/iab/vast/tags/MediaFileTag;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/processor/VastAd;->b:Lio/bidmachine/iab/vast/tags/MediaFileTag;

    return-object v0
.end method

.method public getTrackingEventListMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lio/bidmachine/iab/vast/TrackingEvent;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/processor/VastAd;->i:Ljava/util/EnumMap;

    return-object v0
.end method

.method public getWrapperCompanionClickTrackingUrlList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/processor/VastAd;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setAdVerificationsExtensionList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adVerificationsExtensionTagList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/iab/vast/tags/AdVerificationsExtensionTag;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/processor/VastAd;->k:Ljava/util/List;

    return-void
.end method

.method public setVastRequest(Lio/bidmachine/iab/vast/VastRequest;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vastRequest"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/processor/VastAd;->c:Lio/bidmachine/iab/vast/VastRequest;

    return-void
.end method

.method public setWrapperCompanionClickTrackingUrlList(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wrapperCompanionClickTrackingUrlList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/processor/VastAd;->h:Ljava/util/ArrayList;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dest",
            "flags"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lio/bidmachine/iab/vast/processor/VastAd;->a:Lio/bidmachine/iab/vast/tags/LinearCreativeTag;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 2
    iget-object p2, p0, Lio/bidmachine/iab/vast/processor/VastAd;->b:Lio/bidmachine/iab/vast/tags/MediaFileTag;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 3
    iget-object p2, p0, Lio/bidmachine/iab/vast/processor/VastAd;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 4
    iget-object p2, p0, Lio/bidmachine/iab/vast/processor/VastAd;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5
    iget-object p2, p0, Lio/bidmachine/iab/vast/processor/VastAd;->f:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 6
    iget-object p2, p0, Lio/bidmachine/iab/vast/processor/VastAd;->g:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 7
    iget-object p2, p0, Lio/bidmachine/iab/vast/processor/VastAd;->h:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 8
    iget-object p2, p0, Lio/bidmachine/iab/vast/processor/VastAd;->i:Ljava/util/EnumMap;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 9
    iget-object p2, p0, Lio/bidmachine/iab/vast/processor/VastAd;->j:Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 10
    iget-object p2, p0, Lio/bidmachine/iab/vast/processor/VastAd;->k:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method

###### Class io.bidmachine.iab.vast.processor.VastAd.a (io.bidmachine.iab.vast.processor.VastAd$a)
.class public Lio/bidmachine/iab/vast/processor/VastAd$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/vast/processor/VastAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lio/bidmachine/iab/vast/processor/VastAd;
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/iab/vast/processor/VastAd;

    invoke-direct {v0, p1}, Lio/bidmachine/iab/vast/processor/VastAd;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lio/bidmachine/iab/vast/processor/VastAd;
    .registers 2

    .line 2
    new-array p1, p1, [Lio/bidmachine/iab/vast/processor/VastAd;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/processor/VastAd$a;->a(Landroid/os/Parcel;)Lio/bidmachine/iab/vast/processor/VastAd;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/processor/VastAd$a;->a(I)[Lio/bidmachine/iab/vast/processor/VastAd;

    move-result-object p1

    return-object p1
.end method
