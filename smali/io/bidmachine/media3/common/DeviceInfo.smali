###### Class io.bidmachine.media3.common.DeviceInfo (io.bidmachine.media3.common.DeviceInfo)
.class public final Lio/bidmachine/media3/common/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/common/DeviceInfo$Builder;
    }
.end annotation


# static fields
.field public static final FIELD_MAX_VOLUME:Ljava/lang/String;

.field public static final FIELD_MIN_VOLUME:Ljava/lang/String;

.field public static final FIELD_PLAYBACK_TYPE:Ljava/lang/String;

.field public static final FIELD_ROUTING_CONTROLLER_ID:Ljava/lang/String;

.field public static final UNKNOWN:Lio/bidmachine/media3/common/DeviceInfo;


# instance fields
.field public final maxVolume:I

.field public final minVolume:I

.field public final playbackType:I

.field public final routingControllerId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 55
    new-instance v0, Lio/bidmachine/media3/common/DeviceInfo$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/media3/common/DeviceInfo$Builder;-><init>(I)V

    invoke-virtual {v0}, Lio/bidmachine/media3/common/DeviceInfo$Builder;->build()Lio/bidmachine/media3/common/DeviceInfo;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/DeviceInfo;->UNKNOWN:Lio/bidmachine/media3/common/DeviceInfo;

    .line 195
    invoke-static {v1}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/DeviceInfo;->FIELD_PLAYBACK_TYPE:Ljava/lang/String;

    const/4 v0, 0x1

    .line 196
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/DeviceInfo;->FIELD_MIN_VOLUME:Ljava/lang/String;

    const/4 v0, 0x2

    .line 197
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/DeviceInfo;->FIELD_MAX_VOLUME:Ljava/lang/String;

    const/4 v0, 0x3

    .line 198
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/DeviceInfo;->FIELD_ROUTING_CONTROLLER_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/common/DeviceInfo$Builder;)V
    .registers 3

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    invoke-static {p1}, Lio/bidmachine/media3/common/DeviceInfo$Builder;->access$100(Lio/bidmachine/media3/common/DeviceInfo$Builder;)I

    move-result v0

    iput v0, p0, Lio/bidmachine/media3/common/DeviceInfo;->playbackType:I

    .line 165
    invoke-static {p1}, Lio/bidmachine/media3/common/DeviceInfo$Builder;->access$200(Lio/bidmachine/media3/common/DeviceInfo$Builder;)I

    move-result v0

    iput v0, p0, Lio/bidmachine/media3/common/DeviceInfo;->minVolume:I

    .line 166
    invoke-static {p1}, Lio/bidmachine/media3/common/DeviceInfo$Builder;->access$300(Lio/bidmachine/media3/common/DeviceInfo$Builder;)I

    move-result v0

    iput v0, p0, Lio/bidmachine/media3/common/DeviceInfo;->maxVolume:I

    .line 167
    invoke-static {p1}, Lio/bidmachine/media3/common/DeviceInfo$Builder;->access$400(Lio/bidmachine/media3/common/DeviceInfo$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/common/DeviceInfo;->routingControllerId:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/common/DeviceInfo$Builder;Lio/bidmachine/media3/common/DeviceInfo$1;)V
    .registers 3

    .line 36
    invoke-direct {p0, p1}, Lio/bidmachine/media3/common/DeviceInfo;-><init>(Lio/bidmachine/media3/common/DeviceInfo$Builder;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 175
    :cond_4
    instance-of v1, p1, Lio/bidmachine/media3/common/DeviceInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 178
    :cond_a
    check-cast p1, Lio/bidmachine/media3/common/DeviceInfo;

    .line 179
    iget v1, p0, Lio/bidmachine/media3/common/DeviceInfo;->playbackType:I

    iget v3, p1, Lio/bidmachine/media3/common/DeviceInfo;->playbackType:I

    if-ne v1, v3, :cond_29

    iget v1, p0, Lio/bidmachine/media3/common/DeviceInfo;->minVolume:I

    iget v3, p1, Lio/bidmachine/media3/common/DeviceInfo;->minVolume:I

    if-ne v1, v3, :cond_29

    iget v1, p0, Lio/bidmachine/media3/common/DeviceInfo;->maxVolume:I

    iget v3, p1, Lio/bidmachine/media3/common/DeviceInfo;->maxVolume:I

    if-ne v1, v3, :cond_29

    iget-object v1, p0, Lio/bidmachine/media3/common/DeviceInfo;->routingControllerId:Ljava/lang/String;

    iget-object p1, p1, Lio/bidmachine/media3/common/DeviceInfo;->routingControllerId:Ljava/lang/String;

    .line 182
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    return v0

    :cond_29
    return v2
.end method

.method public hashCode()I
    .registers 3

    const/16 v0, 0x20f

    .line 188
    iget v1, p0, Lio/bidmachine/media3/common/DeviceInfo;->playbackType:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 189
    iget v1, p0, Lio/bidmachine/media3/common/DeviceInfo;->minVolume:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 190
    iget v1, p0, Lio/bidmachine/media3/common/DeviceInfo;->maxVolume:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 191
    iget-object v1, p0, Lio/bidmachine/media3/common/DeviceInfo;->routingControllerId:Ljava/lang/String;

    if-nez v1, :cond_17

    const/4 v1, 0x0

    goto :goto_1b

    :cond_17
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1b
    add-int/2addr v0, v1

    return v0
.end method

###### Class io.bidmachine.media3.common.DeviceInfo.AnonymousClass1 (io.bidmachine.media3.common.DeviceInfo$1)
.class public synthetic Lio/bidmachine/media3/common/DeviceInfo$1;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.common.DeviceInfo.Builder (io.bidmachine.media3.common.DeviceInfo$Builder)
.class public final Lio/bidmachine/media3/common/DeviceInfo$Builder;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public maxVolume:I

.field public minVolume:I

.field public final playbackType:I

.field public routingControllerId:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, Lio/bidmachine/media3/common/DeviceInfo$Builder;->playbackType:I

    return-void
.end method

.method public static synthetic access$100(Lio/bidmachine/media3/common/DeviceInfo$Builder;)I
    .registers 1

    .line 58
    iget p0, p0, Lio/bidmachine/media3/common/DeviceInfo$Builder;->playbackType:I

    return p0
.end method

.method public static synthetic access$200(Lio/bidmachine/media3/common/DeviceInfo$Builder;)I
    .registers 1

    .line 58
    iget p0, p0, Lio/bidmachine/media3/common/DeviceInfo$Builder;->minVolume:I

    return p0
.end method

.method public static synthetic access$300(Lio/bidmachine/media3/common/DeviceInfo$Builder;)I
    .registers 1

    .line 58
    iget p0, p0, Lio/bidmachine/media3/common/DeviceInfo$Builder;->maxVolume:I

    return p0
.end method

.method public static synthetic access$400(Lio/bidmachine/media3/common/DeviceInfo$Builder;)Ljava/lang/String;
    .registers 1

    .line 58
    iget-object p0, p0, Lio/bidmachine/media3/common/DeviceInfo$Builder;->routingControllerId:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lio/bidmachine/media3/common/DeviceInfo;
    .registers 3

    .line 125
    iget v0, p0, Lio/bidmachine/media3/common/DeviceInfo$Builder;->minVolume:I

    iget v1, p0, Lio/bidmachine/media3/common/DeviceInfo$Builder;->maxVolume:I

    if-gt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 126
    new-instance v0, Lio/bidmachine/media3/common/DeviceInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/media3/common/DeviceInfo;-><init>(Lio/bidmachine/media3/common/DeviceInfo$Builder;Lio/bidmachine/media3/common/DeviceInfo$1;)V

    return-object v0
.end method

.method public setMaxVolume(I)Lio/bidmachine/media3/common/DeviceInfo$Builder;
    .registers 2

    .line 97
    iput p1, p0, Lio/bidmachine/media3/common/DeviceInfo$Builder;->maxVolume:I

    return-object p0
.end method

.method public setMinVolume(I)Lio/bidmachine/media3/common/DeviceInfo$Builder;
    .registers 2

    .line 85
    iput p1, p0, Lio/bidmachine/media3/common/DeviceInfo$Builder;->minVolume:I

    return-object p0
.end method
