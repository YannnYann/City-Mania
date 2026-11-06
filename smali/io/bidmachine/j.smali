###### Class io.bidmachine.j (io.bidmachine.j)
.class public Lio/bidmachine/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/tracking/EventTracker;


# direct methods
.method public static synthetic $r8$lambda$O4gKtFRkD2Jqea2LQwJGa69A5KE(Lio/bidmachine/utils/BMError;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/j;->a(Lio/bidmachine/utils/BMError;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_mv680A24BpXYpPV4Spe29MY5is(ILio/bidmachine/utils/BMError;)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lio/bidmachine/j;->a(ILio/bidmachine/utils/BMError;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ht_N4H5msks0L2Kf2IdFxvcxPRE(Lio/bidmachine/TrackEventType;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/j;->a(Lio/bidmachine/TrackEventType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(ILio/bidmachine/utils/BMError;)Ljava/lang/String;
    .registers 3

    .line 27
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 28
    invoke-virtual {p1}, Lio/bidmachine/utils/BMError;->getCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 29
    invoke-virtual {p1}, Lio/bidmachine/utils/BMError;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, v0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 30
    const-string p1, "Dispatching error event to server - (%s-%s) - %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lio/bidmachine/TrackEventType;)Ljava/lang/String;
    .registers 2

    .line 12
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Dispatching event to server - %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lio/bidmachine/utils/BMError;)Ljava/lang/String;
    .registers 2

    .line 31
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Dispatching tracking fail to server - %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Lio/bidmachine/tracking/TrackEventInfo;IILio/bidmachine/tracking/EventData;)Ljava/lang/String;
    .registers 7

    .line 32
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 37
    :cond_8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "BM_EVENT_CODE"

    invoke-static {p0, v1, v0}, Lio/bidmachine/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 38
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "BM_ACTION_CODE"

    invoke-static {p0, v0, p2}, Lio/bidmachine/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 39
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "BM_ERROR_REASON"

    invoke-static {p0, p3, p2}, Lio/bidmachine/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-eqz p4, :cond_40

    .line 41
    invoke-virtual {p4}, Lio/bidmachine/tracking/EventData;->getNetworkName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_34

    .line 43
    const-string p3, "AUCTION_SEAT_ID"

    invoke-static {p0, p3, p2}, Lio/bidmachine/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 45
    :cond_34
    invoke-virtual {p4}, Lio/bidmachine/tracking/EventData;->getPrice()Ljava/lang/Double;

    move-result-object p2

    if-eqz p2, :cond_40

    .line 47
    const-string p3, "AUCTION_PRICE"

    invoke-static {p0, p3, p2}, Lio/bidmachine/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :cond_40
    if-eqz p1, :cond_66

    .line 51
    invoke-virtual {p1}, Lio/bidmachine/tracking/TrackEventInfo;->getStartTimeMs()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "BM_ACTION_START"

    invoke-static {p0, p3, p2}, Lio/bidmachine/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 52
    invoke-virtual {p1}, Lio/bidmachine/tracking/TrackEventInfo;->getFinishTimeMs()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "BM_ACTION_FINISH"

    invoke-static {p0, p3, p2}, Lio/bidmachine/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 53
    invoke-virtual {p1}, Lio/bidmachine/tracking/TrackEventInfo;->getEventParameters()Ljava/util/Map;

    move-result-object p1

    invoke-static {p0, p1}, Lio/bidmachine/j;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    :cond_66
    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "${"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%24%7B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%7D"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 63
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 5

    if-eqz p1, :cond_2e

    .line 54
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 55
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 56
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 57
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    if-nez v0, :cond_29

    goto :goto_a

    .line 60
    :cond_29
    invoke-static {p0, v1, v0}, Lio/bidmachine/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_a

    :cond_2e
    return-object p0
.end method

.method public static a(Lio/bidmachine/tracking/TrackingObject;Lio/bidmachine/TrackEventType;)Ljava/util/List;
    .registers 4

    .line 2
    invoke-static {}, Lio/bidmachine/k;->b()Lio/bidmachine/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/k;->a(Lio/bidmachine/TrackEventType;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    .line 6
    :goto_11
    invoke-interface {p0, p1}, Lio/bidmachine/tracking/TrackingObject;->getTrackingUrls(Lio/bidmachine/TrackEventType;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_22

    if-nez v1, :cond_1f

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1

    .line 11
    :cond_1f
    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_22
    return-object v1
.end method

.method public static a(Ljava/lang/String;Lio/bidmachine/core/NetworkRequest$Callback;)V
    .registers 3

    .line 64
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 68
    :cond_7
    new-instance v0, Lio/bidmachine/ApiRequest$Builder;

    invoke-direct {v0}, Lio/bidmachine/ApiRequest$Builder;-><init>()V

    .line 69
    invoke-virtual {v0, p0}, Lio/bidmachine/ApiRequest$Builder;->url(Ljava/lang/String;)Lio/bidmachine/ApiRequest$Builder;

    move-result-object p0

    sget-object v0, Lio/bidmachine/core/NetworkRequest$Method;->Get:Lio/bidmachine/core/NetworkRequest$Method;

    .line 70
    invoke-virtual {p0, v0}, Lio/bidmachine/ApiRequest$Builder;->setMethod(Lio/bidmachine/core/NetworkRequest$Method;)Lio/bidmachine/ApiRequest$Builder;

    move-result-object p0

    new-instance v0, Lio/bidmachine/ApiRequest$ApiTrackerDataBinder;

    invoke-direct {v0}, Lio/bidmachine/ApiRequest$ApiTrackerDataBinder;-><init>()V

    .line 71
    invoke-virtual {p0, v0}, Lio/bidmachine/ApiRequest$Builder;->setDataBinder(Lio/bidmachine/ApiRequest$ApiDataBinder;)Lio/bidmachine/ApiRequest$Builder;

    move-result-object p0

    .line 72
    invoke-virtual {p0, p1}, Lio/bidmachine/ApiRequest$Builder;->setCallback(Lio/bidmachine/core/NetworkRequest$Callback;)Lio/bidmachine/ApiRequest$Builder;

    move-result-object p0

    .line 73
    invoke-virtual {p0}, Lio/bidmachine/ApiRequest$Builder;->request()Lio/bidmachine/ApiRequest;

    return-void
.end method

.method public static synthetic a(Ljava/util/List;Lio/bidmachine/tracking/TrackEventInfo;ILio/bidmachine/utils/BMError;)V
    .registers 4

    .line 1
    invoke-static {p0, p1, p2, p3}, Lio/bidmachine/j;->b(Ljava/util/List;Lio/bidmachine/tracking/TrackEventInfo;ILio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public static a(Ljava/util/List;Ljava/util/List;Lio/bidmachine/tracking/TrackEventInfo;ILio/bidmachine/utils/BMError;)V
    .registers 8

    if-nez p0, :cond_3

    goto :goto_34

    .line 17
    :cond_3
    invoke-virtual {p4}, Lio/bidmachine/utils/BMError;->isTrackError()Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_34

    .line 20
    :cond_a
    new-instance v0, Lio/bidmachine/j$$ExternalSyntheticLambda0;

    invoke-direct {v0, p3, p4}, Lio/bidmachine/j$$ExternalSyntheticLambda0;-><init>(ILio/bidmachine/utils/BMError;)V

    invoke-static {v0}, Lio/bidmachine/core/Logger;->d(Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 25
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 26
    invoke-virtual {p4}, Lio/bidmachine/utils/BMError;->getCode()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, p2, p3, v1, v2}, Lio/bidmachine/j;->a(Ljava/lang/String;Lio/bidmachine/tracking/TrackEventInfo;IILio/bidmachine/tracking/EventData;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lio/bidmachine/j$b;

    invoke-direct {v1, p1, p2}, Lio/bidmachine/j$b;-><init>(Ljava/util/List;Lio/bidmachine/tracking/TrackEventInfo;)V

    invoke-static {v0, v1}, Lio/bidmachine/j;->a(Ljava/lang/String;Lio/bidmachine/core/NetworkRequest$Callback;)V

    goto :goto_16

    :cond_34
    :goto_34
    return-void
.end method

.method public static a(Ljava/util/List;Ljava/util/List;Lio/bidmachine/tracking/TrackEventInfo;Lio/bidmachine/TrackEventType;Lio/bidmachine/tracking/EventData;)V
    .registers 8

    if-nez p0, :cond_3

    goto :goto_2d

    .line 13
    :cond_3
    new-instance v0, Lio/bidmachine/j$$ExternalSyntheticLambda1;

    invoke-direct {v0, p3}, Lio/bidmachine/j$$ExternalSyntheticLambda1;-><init>(Lio/bidmachine/TrackEventType;)V

    invoke-static {v0}, Lio/bidmachine/core/Logger;->d(Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 15
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 16
    invoke-virtual {p3}, Lio/bidmachine/TrackEventType;->getActionValue()I

    move-result v1

    const/4 v2, -0x1

    invoke-static {v0, p2, v1, v2, p4}, Lio/bidmachine/j;->a(Ljava/lang/String;Lio/bidmachine/tracking/TrackEventInfo;IILio/bidmachine/tracking/EventData;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lio/bidmachine/j$a;

    invoke-direct {v1, p1, p2, p3}, Lio/bidmachine/j$a;-><init>(Ljava/util/List;Lio/bidmachine/tracking/TrackEventInfo;Lio/bidmachine/TrackEventType;)V

    invoke-static {v0, v1}, Lio/bidmachine/j;->a(Ljava/lang/String;Lio/bidmachine/core/NetworkRequest$Callback;)V

    goto :goto_f

    :cond_2d
    :goto_2d
    return-void
.end method

.method public static b(Ljava/util/List;Lio/bidmachine/tracking/TrackEventInfo;ILio/bidmachine/utils/BMError;)V
    .registers 7

    if-nez p0, :cond_3

    goto :goto_2f

    .line 1
    :cond_3
    invoke-virtual {p3}, Lio/bidmachine/utils/BMError;->isTrackError()Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_2f

    .line 4
    :cond_a
    new-instance v0, Lio/bidmachine/j$$ExternalSyntheticLambda2;

    invoke-direct {v0, p3}, Lio/bidmachine/j$$ExternalSyntheticLambda2;-><init>(Lio/bidmachine/utils/BMError;)V

    invoke-static {v0}, Lio/bidmachine/core/Logger;->d(Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7
    invoke-virtual {p3}, Lio/bidmachine/utils/BMError;->getCode()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v1, v2}, Lio/bidmachine/j;->a(Ljava/lang/String;Lio/bidmachine/tracking/TrackEventInfo;IILio/bidmachine/tracking/EventData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lio/bidmachine/j;->a(Ljava/lang/String;Lio/bidmachine/core/NetworkRequest$Callback;)V

    goto :goto_16

    :cond_2f
    :goto_2f
    return-void
.end method


# virtual methods
.method public trackEvent(Lio/bidmachine/tracking/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/tracking/TrackEventInfo;Lio/bidmachine/AdsType;Lio/bidmachine/utils/BMError;Lio/bidmachine/tracking/EventData;)V
    .registers 7

    if-eqz p5, :cond_16

    .line 1
    sget-object p4, Lio/bidmachine/TrackEventType;->Error:Lio/bidmachine/TrackEventType;

    invoke-static {p1, p4}, Lio/bidmachine/j;->a(Lio/bidmachine/tracking/TrackingObject;Lio/bidmachine/TrackEventType;)Ljava/util/List;

    move-result-object p4

    sget-object p6, Lio/bidmachine/TrackEventType;->TrackingError:Lio/bidmachine/TrackEventType;

    .line 2
    invoke-static {p1, p6}, Lio/bidmachine/j;->a(Lio/bidmachine/tracking/TrackingObject;Lio/bidmachine/TrackEventType;)Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-virtual {p2}, Lio/bidmachine/TrackEventType;->getActionValue()I

    move-result p2

    .line 5
    invoke-static {p4, p1, p3, p2, p5}, Lio/bidmachine/j;->a(Ljava/util/List;Ljava/util/List;Lio/bidmachine/tracking/TrackEventInfo;ILio/bidmachine/utils/BMError;)V

    return-void

    .line 11
    :cond_16
    invoke-static {p1, p2}, Lio/bidmachine/j;->a(Lio/bidmachine/tracking/TrackingObject;Lio/bidmachine/TrackEventType;)Ljava/util/List;

    move-result-object p4

    sget-object p5, Lio/bidmachine/TrackEventType;->TrackingError:Lio/bidmachine/TrackEventType;

    .line 12
    invoke-static {p1, p5}, Lio/bidmachine/j;->a(Lio/bidmachine/tracking/TrackingObject;Lio/bidmachine/TrackEventType;)Ljava/util/List;

    move-result-object p1

    .line 13
    invoke-static {p4, p1, p3, p2, p6}, Lio/bidmachine/j;->a(Ljava/util/List;Ljava/util/List;Lio/bidmachine/tracking/TrackEventInfo;Lio/bidmachine/TrackEventType;Lio/bidmachine/tracking/EventData;)V

    return-void
.end method

###### Class io.bidmachine.j.a (io.bidmachine.j$a)
.class public Lio/bidmachine/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/core/NetworkRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/j;->a(Ljava/util/List;Ljava/util/List;Lio/bidmachine/tracking/TrackEventInfo;Lio/bidmachine/TrackEventType;Lio/bidmachine/tracking/EventData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lio/bidmachine/tracking/TrackEventInfo;

.field public final synthetic c:Lio/bidmachine/TrackEventType;


# direct methods
.method public constructor <init>(Ljava/util/List;Lio/bidmachine/tracking/TrackEventInfo;Lio/bidmachine/TrackEventType;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/bidmachine/j$a;->a:Ljava/util/List;

    iput-object p2, p0, Lio/bidmachine/j$a;->b:Lio/bidmachine/tracking/TrackEventInfo;

    iput-object p3, p0, Lio/bidmachine/j$a;->c:Lio/bidmachine/TrackEventType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Lio/bidmachine/utils/BMError;)V
    .registers 5

    if-nez p1, :cond_8

    .line 2
    const-string p1, "Failed to track URL"

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    .line 4
    :cond_8
    iget-object v0, p0, Lio/bidmachine/j$a;->a:Ljava/util/List;

    iget-object v1, p0, Lio/bidmachine/j$a;->b:Lio/bidmachine/tracking/TrackEventInfo;

    iget-object v2, p0, Lio/bidmachine/j$a;->c:Lio/bidmachine/TrackEventType;

    .line 6
    invoke-virtual {v2}, Lio/bidmachine/TrackEventType;->getActionValue()I

    move-result v2

    .line 7
    invoke-static {v0, v1, v2, p1}, Lio/bidmachine/j;->a(Ljava/util/List;Lio/bidmachine/tracking/TrackEventInfo;ILio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public bridge synthetic onFail(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lio/bidmachine/utils/BMError;

    invoke-virtual {p0, p1}, Lio/bidmachine/j$a;->onFail(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 2
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/bidmachine/j$a;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 2

    .line 0
    return-void
.end method

###### Class io.bidmachine.j.b (io.bidmachine.j$b)
.class public Lio/bidmachine/j$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/core/NetworkRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/j;->a(Ljava/util/List;Ljava/util/List;Lio/bidmachine/tracking/TrackEventInfo;ILio/bidmachine/utils/BMError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lio/bidmachine/tracking/TrackEventInfo;


# direct methods
.method public constructor <init>(Ljava/util/List;Lio/bidmachine/tracking/TrackEventInfo;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/bidmachine/j$b;->a:Ljava/util/List;

    iput-object p2, p0, Lio/bidmachine/j$b;->b:Lio/bidmachine/tracking/TrackEventInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Lio/bidmachine/utils/BMError;)V
    .registers 5

    if-nez p1, :cond_8

    .line 2
    const-string p1, "Failed to track URL"

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    .line 4
    :cond_8
    iget-object v0, p0, Lio/bidmachine/j$b;->a:Ljava/util/List;

    iget-object v1, p0, Lio/bidmachine/j$b;->b:Lio/bidmachine/tracking/TrackEventInfo;

    sget-object v2, Lio/bidmachine/TrackEventType;->Error:Lio/bidmachine/TrackEventType;

    .line 6
    invoke-virtual {v2}, Lio/bidmachine/TrackEventType;->getActionValue()I

    move-result v2

    .line 7
    invoke-static {v0, v1, v2, p1}, Lio/bidmachine/j;->a(Ljava/util/List;Lio/bidmachine/tracking/TrackEventInfo;ILio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public bridge synthetic onFail(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lio/bidmachine/utils/BMError;

    invoke-virtual {p0, p1}, Lio/bidmachine/j$b;->onFail(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 2
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/bidmachine/j$b;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 2

    .line 0
    return-void
.end method

###### Class io.bidmachine.j$$ExternalSyntheticLambda0 (io.bidmachine.j$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/j$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lio/bidmachine/utils/BMError;


# direct methods
.method public synthetic constructor <init>(ILio/bidmachine/utils/BMError;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/bidmachine/j$$ExternalSyntheticLambda0;->f$0:I

    iput-object p2, p0, Lio/bidmachine/j$$ExternalSyntheticLambda0;->f$1:Lio/bidmachine/utils/BMError;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget v0, p0, Lio/bidmachine/j$$ExternalSyntheticLambda0;->f$0:I

    iget-object v1, p0, Lio/bidmachine/j$$ExternalSyntheticLambda0;->f$1:Lio/bidmachine/utils/BMError;

    invoke-static {v0, v1}, Lio/bidmachine/j;->$r8$lambda$_mv680A24BpXYpPV4Spe29MY5is(ILio/bidmachine/utils/BMError;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.j$$ExternalSyntheticLambda1 (io.bidmachine.j$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/j$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/TrackEventType;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/TrackEventType;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/j$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/TrackEventType;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/j$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/TrackEventType;

    invoke-static {v0}, Lio/bidmachine/j;->$r8$lambda$ht_N4H5msks0L2Kf2IdFxvcxPRE(Lio/bidmachine/TrackEventType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.j$$ExternalSyntheticLambda2 (io.bidmachine.j$$ExternalSyntheticLambda2)
.class public final synthetic Lio/bidmachine/j$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/utils/BMError;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/utils/BMError;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/j$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/utils/BMError;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/j$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/utils/BMError;

    invoke-static {v0}, Lio/bidmachine/j;->$r8$lambda$O4gKtFRkD2Jqea2LQwJGa69A5KE(Lio/bidmachine/utils/BMError;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
