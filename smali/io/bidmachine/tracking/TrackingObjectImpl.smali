###### Class io.bidmachine.tracking.TrackingObjectImpl (io.bidmachine.tracking.TrackingObjectImpl)
.class public abstract Lio/bidmachine/tracking/TrackingObjectImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/tracking/TrackingObject;


# instance fields
.field private final trackingKey:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/bidmachine/tracking/TrackingObjectImpl;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/bidmachine/tracking/TrackingObjectImpl;->trackingKey:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getEventConfiguration()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTrackingKey()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/tracking/TrackingObjectImpl;->trackingKey:Ljava/lang/Object;

    return-object v0
.end method

.method public getTrackingUrls(Lio/bidmachine/TrackEventType;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/TrackEventType;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 0
    const/4 p1, 0x0

    return-object p1
.end method
