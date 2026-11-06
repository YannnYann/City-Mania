###### Class io.bidmachine.media3.common.MediaItem (io.bidmachine.media3.common.MediaItem)
.class public final Lio/bidmachine/media3/common/MediaItem;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/common/MediaItem$ClippingProperties;,
        Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;,
        Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;,
        Lio/bidmachine/media3/common/MediaItem$RequestMetadata;,
        Lio/bidmachine/media3/common/MediaItem$Builder;,
        Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;,
        Lio/bidmachine/media3/common/MediaItem$Subtitle;,
        Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;,
        Lio/bidmachine/media3/common/MediaItem$AdsConfiguration;,
        Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;
    }
.end annotation


# static fields
.field public static final EMPTY:Lio/bidmachine/media3/common/MediaItem;

.field public static final FIELD_CLIPPING_PROPERTIES:Ljava/lang/String;

.field public static final FIELD_LIVE_CONFIGURATION:Ljava/lang/String;

.field public static final FIELD_LOCAL_CONFIGURATION:Ljava/lang/String;

.field public static final FIELD_MEDIA_ID:Ljava/lang/String;

.field public static final FIELD_MEDIA_METADATA:Ljava/lang/String;

.field public static final FIELD_REQUEST_METADATA:Ljava/lang/String;


# instance fields
.field public final clippingConfiguration:Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;

.field public final clippingProperties:Lio/bidmachine/media3/common/MediaItem$ClippingProperties;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final liveConfiguration:Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;

.field public final localConfiguration:Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;

.field public final mediaId:Ljava/lang/String;

.field public final mediaMetadata:Lio/bidmachine/media3/common/MediaMetadata;

.field public final playbackProperties:Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final requestMetadata:Lio/bidmachine/media3/common/MediaItem$RequestMetadata;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 2270
    new-instance v0, Lio/bidmachine/media3/common/MediaItem$Builder;

    invoke-direct {v0}, Lio/bidmachine/media3/common/MediaItem$Builder;-><init>()V

    invoke-virtual {v0}, Lio/bidmachine/media3/common/MediaItem$Builder;->build()Lio/bidmachine/media3/common/MediaItem;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaItem;->EMPTY:Lio/bidmachine/media3/common/MediaItem;

    const/4 v0, 0x0

    .line 2360
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaItem;->FIELD_MEDIA_ID:Ljava/lang/String;

    const/4 v0, 0x1

    .line 2361
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaItem;->FIELD_LIVE_CONFIGURATION:Ljava/lang/String;

    const/4 v0, 0x2

    .line 2362
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaItem;->FIELD_MEDIA_METADATA:Ljava/lang/String;

    const/4 v0, 0x3

    .line 2363
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaItem;->FIELD_CLIPPING_PROPERTIES:Ljava/lang/String;

    const/4 v0, 0x4

    .line 2364
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaItem;->FIELD_REQUEST_METADATA:Ljava/lang/String;

    const/4 v0, 0x5

    .line 2365
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaItem;->FIELD_LOCAL_CONFIGURATION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/bidmachine/media3/common/MediaItem$ClippingProperties;Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;Lio/bidmachine/media3/common/MediaMetadata;Lio/bidmachine/media3/common/MediaItem$RequestMetadata;)V
    .registers 7

    .line 2314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2315
    iput-object p1, p0, Lio/bidmachine/media3/common/MediaItem;->mediaId:Ljava/lang/String;

    .line 2316
    iput-object p3, p0, Lio/bidmachine/media3/common/MediaItem;->localConfiguration:Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;

    .line 2317
    iput-object p3, p0, Lio/bidmachine/media3/common/MediaItem;->playbackProperties:Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;

    .line 2318
    iput-object p4, p0, Lio/bidmachine/media3/common/MediaItem;->liveConfiguration:Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;

    .line 2319
    iput-object p5, p0, Lio/bidmachine/media3/common/MediaItem;->mediaMetadata:Lio/bidmachine/media3/common/MediaMetadata;

    .line 2320
    iput-object p2, p0, Lio/bidmachine/media3/common/MediaItem;->clippingConfiguration:Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;

    .line 2321
    iput-object p2, p0, Lio/bidmachine/media3/common/MediaItem;->clippingProperties:Lio/bidmachine/media3/common/MediaItem$ClippingProperties;

    .line 2322
    iput-object p6, p0, Lio/bidmachine/media3/common/MediaItem;->requestMetadata:Lio/bidmachine/media3/common/MediaItem$RequestMetadata;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lio/bidmachine/media3/common/MediaItem$ClippingProperties;Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;Lio/bidmachine/media3/common/MediaMetadata;Lio/bidmachine/media3/common/MediaItem$RequestMetadata;Lio/bidmachine/media3/common/MediaItem$1;)V
    .registers 8

    .line 46
    invoke-direct/range {p0 .. p6}, Lio/bidmachine/media3/common/MediaItem;-><init>(Ljava/lang/String;Lio/bidmachine/media3/common/MediaItem$ClippingProperties;Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;Lio/bidmachine/media3/common/MediaMetadata;Lio/bidmachine/media3/common/MediaItem$RequestMetadata;)V

    return-void
.end method

.method public static fromUri(Ljava/lang/String;)Lio/bidmachine/media3/common/MediaItem;
    .registers 2

    .line 55
    new-instance v0, Lio/bidmachine/media3/common/MediaItem$Builder;

    invoke-direct {v0}, Lio/bidmachine/media3/common/MediaItem$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lio/bidmachine/media3/common/MediaItem$Builder;->setUri(Ljava/lang/String;)Lio/bidmachine/media3/common/MediaItem$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lio/bidmachine/media3/common/MediaItem$Builder;->build()Lio/bidmachine/media3/common/MediaItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public buildUpon()Lio/bidmachine/media3/common/MediaItem$Builder;
    .registers 3

    .line 2327
    new-instance v0, Lio/bidmachine/media3/common/MediaItem$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/media3/common/MediaItem$Builder;-><init>(Lio/bidmachine/media3/common/MediaItem;Lio/bidmachine/media3/common/MediaItem$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 2335
    :cond_4
    instance-of v1, p1, Lio/bidmachine/media3/common/MediaItem;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 2339
    :cond_a
    check-cast p1, Lio/bidmachine/media3/common/MediaItem;

    .line 2341
    iget-object v1, p0, Lio/bidmachine/media3/common/MediaItem;->mediaId:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/media3/common/MediaItem;->mediaId:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    iget-object v1, p0, Lio/bidmachine/media3/common/MediaItem;->clippingConfiguration:Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;

    iget-object v3, p1, Lio/bidmachine/media3/common/MediaItem;->clippingConfiguration:Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;

    .line 2342
    invoke-virtual {v1, v3}, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    iget-object v1, p0, Lio/bidmachine/media3/common/MediaItem;->localConfiguration:Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;

    iget-object v3, p1, Lio/bidmachine/media3/common/MediaItem;->localConfiguration:Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;

    .line 2343
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    iget-object v1, p0, Lio/bidmachine/media3/common/MediaItem;->liveConfiguration:Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;

    iget-object v3, p1, Lio/bidmachine/media3/common/MediaItem;->liveConfiguration:Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;

    .line 2344
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    iget-object v1, p0, Lio/bidmachine/media3/common/MediaItem;->mediaMetadata:Lio/bidmachine/media3/common/MediaMetadata;

    iget-object v3, p1, Lio/bidmachine/media3/common/MediaItem;->mediaMetadata:Lio/bidmachine/media3/common/MediaMetadata;

    .line 2345
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    iget-object v1, p0, Lio/bidmachine/media3/common/MediaItem;->requestMetadata:Lio/bidmachine/media3/common/MediaItem$RequestMetadata;

    iget-object p1, p1, Lio/bidmachine/media3/common/MediaItem;->requestMetadata:Lio/bidmachine/media3/common/MediaItem$RequestMetadata;

    .line 2346
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_49

    return v0

    :cond_49
    return v2
.end method

.method public hashCode()I
    .registers 3

    .line 2351
    iget-object v0, p0, Lio/bidmachine/media3/common/MediaItem;->mediaId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2352
    iget-object v1, p0, Lio/bidmachine/media3/common/MediaItem;->localConfiguration:Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->hashCode()I

    move-result v1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 2353
    iget-object v1, p0, Lio/bidmachine/media3/common/MediaItem;->liveConfiguration:Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;

    invoke-virtual {v1}, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 2354
    iget-object v1, p0, Lio/bidmachine/media3/common/MediaItem;->clippingConfiguration:Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;

    invoke-virtual {v1}, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 2355
    iget-object v1, p0, Lio/bidmachine/media3/common/MediaItem;->mediaMetadata:Lio/bidmachine/media3/common/MediaMetadata;

    invoke-virtual {v1}, Lio/bidmachine/media3/common/MediaMetadata;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 2356
    iget-object v1, p0, Lio/bidmachine/media3/common/MediaItem;->requestMetadata:Lio/bidmachine/media3/common/MediaItem$RequestMetadata;

    invoke-virtual {v1}, Lio/bidmachine/media3/common/MediaItem$RequestMetadata;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

###### Class io.bidmachine.media3.common.MediaItem.AnonymousClass1 (io.bidmachine.media3.common.MediaItem$1)
.class public synthetic Lio/bidmachine/media3/common/MediaItem$1;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.common.MediaItem.AdsConfiguration (io.bidmachine.media3.common.MediaItem$AdsConfiguration)
.class public final Lio/bidmachine/media3/common/MediaItem$AdsConfiguration;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdsConfiguration"
.end annotation

###### Class io.bidmachine.media3.common.MediaItem.Builder (io.bidmachine.media3.common.MediaItem$Builder)
.class public final Lio/bidmachine/media3/common/MediaItem$Builder;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public clippingConfiguration:Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration$Builder;

.field public customCacheKey:Ljava/lang/String;

.field public drmConfiguration:Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;

.field public imageDurationMs:J

.field public liveConfiguration:Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;

.field public mediaId:Ljava/lang/String;

.field public mediaMetadata:Lio/bidmachine/media3/common/MediaMetadata;

.field public mimeType:Ljava/lang/String;

.field public requestMetadata:Lio/bidmachine/media3/common/MediaItem$RequestMetadata;

.field public streamKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/StreamKey;",
            ">;"
        }
    .end annotation
.end field

.field public subtitleConfigurations:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public tag:Ljava/lang/Object;

.field public uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration$Builder;

    invoke-direct {v0}, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration$Builder;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaItem$Builder;->clippingConfiguration:Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration$Builder;

    .line 96
    new-instance v0, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;-><init>(Lio/bidmachine/media3/common/MediaItem$1;)V

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaItem$Builder;->drmConfiguration:Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;

    .line 97
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaItem$Builder;->streamKeys:Ljava/util/List;

    .line 98
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaItem$Builder;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    .line 99
    new-instance v0, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;

    invoke-direct {v0}, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaItem$Builder;->liveConfiguration:Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;

    .line 100
    sget-object v0, Lio/bidmachine/media3/common/MediaItem$RequestMetadata;->EMPTY:Lio/bidmachine/media3/common/MediaItem$RequestMetadata;

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaItem$Builder;->requestMetadata:Lio/bidmachine/media3/common/MediaItem$RequestMetadata;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 101
    iput-wide v0, p0, Lio/bidmachine/media3/common/MediaItem$Builder;->imageDurationMs:J

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/common/MediaItem;)V
    .registers 4

    .line 107
    invoke-direct {p0}, Lio/bidmachine/media3/common/MediaItem$Builder;-><init>()V

    .line 108
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaItem;->clippingConfiguration:Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;->buildUpon()Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration$Builder;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaItem$Builder;->clippingConfiguration:Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration$Builder;

    .line 109
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaItem;->mediaId:Ljava/lang/String;

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaItem$Builder;->mediaId:Ljava/lang/String;

    .line 110
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaItem;->mediaMetadata:Lio/bidmachine/media3/common/MediaMetadata;

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaItem$Builder;->mediaMetadata:Lio/bidmachine/media3/common/MediaMetadata;

    .line 111
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaItem;->liveConfiguration:Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;->buildUpon()Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaItem$Builder;->liveConfiguration:Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;

    .line 112
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaItem;->requestMetadata:Lio/bidmachine/media3/common/MediaItem$RequestMetadata;

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaItem$Builder;->requestMetadata:Lio/bidmachine/media3/common/MediaItem$RequestMetadata;

    .line 113
    iget-object p1, p1, Lio/bidmachine/media3/common/MediaItem;->localConfiguration:Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;

    if-eqz p1, :cond_50

    .line 115
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->customCacheKey:Ljava/lang/String;

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaItem$Builder;->customCacheKey:Ljava/lang/String;

    .line 116
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->mimeType:Ljava/lang/String;

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaItem$Builder;->mimeType:Ljava/lang/String;

    .line 117
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaItem$Builder;->uri:Landroid/net/Uri;

    .line 118
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->streamKeys:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaItem$Builder;->streamKeys:Ljava/util/List;

    .line 119
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaItem$Builder;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    .line 120
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->tag:Ljava/lang/Object;

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaItem$Builder;->tag:Ljava/lang/Object;

    .line 122
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->drmConfiguration:Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;

    if-eqz v0, :cond_44

    .line 123
    invoke-virtual {v0}, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;->buildUpon()Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;

    move-result-object v0

    goto :goto_4a

    .line 124
    :cond_44
    new-instance v0, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;-><init>(Lio/bidmachine/media3/common/MediaItem$1;)V

    :goto_4a
    iput-object v0, p0, Lio/bidmachine/media3/common/MediaItem$Builder;->drmConfiguration:Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;

    .line 126
    iget-wide v0, p1, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->imageDurationMs:J

    iput-wide v0, p0, Lio/bidmachine/media3/common/MediaItem$Builder;->imageDurationMs:J

    :cond_50
    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/common/MediaItem;Lio/bidmachine/media3/common/MediaItem$1;)V
    .registers 3

    .line 69
    invoke-direct {p0, p1}, Lio/bidmachine/media3/common/MediaItem$Builder;-><init>(Lio/bidmachine/media3/common/MediaItem;)V

    return-void
.end method


# virtual methods
.method public build()Lio/bidmachine/media3/common/MediaItem;
    .registers 14

    .line 611
    iget-object v0, p0, Lio/bidmachine/media3/common/MediaItem$Builder;->drmConfiguration:Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;

    invoke-static {v0}, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;->access$200(Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lio/bidmachine/media3/common/MediaItem$Builder;->drmConfiguration:Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;

    invoke-static {v0}, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;->access$300(Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;)Ljava/util/UUID;

    move-result-object v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 613
    iget-object v2, p0, Lio/bidmachine/media3/common/MediaItem$Builder;->uri:Landroid/net/Uri;

    const/4 v0, 0x0

    if-eqz v2, :cond_40

    .line 615
    new-instance v1, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;

    iget-object v3, p0, Lio/bidmachine/media3/common/MediaItem$Builder;->mimeType:Ljava/lang/String;

    .line 619
    iget-object v4, p0, Lio/bidmachine/media3/common/MediaItem$Builder;->drmConfiguration:Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;

    invoke-static {v4}, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;->access$300(Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;)Ljava/util/UUID;

    move-result-object v4

    if-eqz v4, :cond_2e

    iget-object v0, p0, Lio/bidmachine/media3/common/MediaItem$Builder;->drmConfiguration:Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;->build()Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;

    move-result-object v0

    :cond_2e
    move-object v4, v0

    iget-object v6, p0, Lio/bidmachine/media3/common/MediaItem$Builder;->streamKeys:Ljava/util/List;

    iget-object v7, p0, Lio/bidmachine/media3/common/MediaItem$Builder;->customCacheKey:Ljava/lang/String;

    iget-object v8, p0, Lio/bidmachine/media3/common/MediaItem$Builder;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    iget-object v9, p0, Lio/bidmachine/media3/common/MediaItem$Builder;->tag:Ljava/lang/Object;

    iget-wide v10, p0, Lio/bidmachine/media3/common/MediaItem$Builder;->imageDurationMs:J

    const/4 v12, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v12}, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;-><init>(Landroid/net/Uri;Ljava/lang/String;Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;Lio/bidmachine/media3/common/MediaItem$AdsConfiguration;Ljava/util/List;Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Ljava/lang/Object;JLio/bidmachine/media3/common/MediaItem$1;)V

    move-object v5, v1

    goto :goto_41

    :cond_40
    move-object v5, v0

    .line 627
    :goto_41
    new-instance v2, Lio/bidmachine/media3/common/MediaItem;

    .line 628
    iget-object v0, p0, Lio/bidmachine/media3/common/MediaItem$Builder;->mediaId:Ljava/lang/String;

    if-eqz v0, :cond_49

    :goto_47
    move-object v3, v0

    goto :goto_4c

    :cond_49
    const-string v0, ""

    goto :goto_47

    :goto_4c
    iget-object v0, p0, Lio/bidmachine/media3/common/MediaItem$Builder;->clippingConfiguration:Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration$Builder;

    .line 629
    invoke-virtual {v0}, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration$Builder;->buildClippingProperties()Lio/bidmachine/media3/common/MediaItem$ClippingProperties;

    move-result-object v4

    iget-object v0, p0, Lio/bidmachine/media3/common/MediaItem$Builder;->liveConfiguration:Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;

    .line 631
    invoke-virtual {v0}, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;->build()Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;

    move-result-object v6

    .line 632
    iget-object v0, p0, Lio/bidmachine/media3/common/MediaItem$Builder;->mediaMetadata:Lio/bidmachine/media3/common/MediaMetadata;

    if-eqz v0, :cond_5e

    :goto_5c
    move-object v7, v0

    goto :goto_61

    :cond_5e
    sget-object v0, Lio/bidmachine/media3/common/MediaMetadata;->EMPTY:Lio/bidmachine/media3/common/MediaMetadata;

    goto :goto_5c

    :goto_61
    iget-object v8, p0, Lio/bidmachine/media3/common/MediaItem$Builder;->requestMetadata:Lio/bidmachine/media3/common/MediaItem$RequestMetadata;

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lio/bidmachine/media3/common/MediaItem;-><init>(Ljava/lang/String;Lio/bidmachine/media3/common/MediaItem$ClippingProperties;Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;Lio/bidmachine/media3/common/MediaMetadata;Lio/bidmachine/media3/common/MediaItem$RequestMetadata;Lio/bidmachine/media3/common/MediaItem$1;)V

    return-object v2
.end method

.method public setLiveConfiguration(Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;)Lio/bidmachine/media3/common/MediaItem$Builder;
    .registers 2

    .line 497
    invoke-virtual {p1}, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;->buildUpon()Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/common/MediaItem$Builder;->liveConfiguration:Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;

    return-object p0
.end method

.method public setMediaId(Ljava/lang/String;)Lio/bidmachine/media3/common/MediaItem$Builder;
    .registers 2

    .line 137
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/bidmachine/media3/common/MediaItem$Builder;->mediaId:Ljava/lang/String;

    return-object p0
.end method

.method public setSubtitleConfigurations(Ljava/util/List;)Lio/bidmachine/media3/common/MediaItem$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;",
            ">;)",
            "Lio/bidmachine/media3/common/MediaItem$Builder;"
        }
    .end annotation

    .line 440
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/common/MediaItem$Builder;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Lio/bidmachine/media3/common/MediaItem$Builder;
    .registers 2

    .line 570
    iput-object p1, p0, Lio/bidmachine/media3/common/MediaItem$Builder;->tag:Ljava/lang/Object;

    return-object p0
.end method

.method public setUri(Landroid/net/Uri;)Lio/bidmachine/media3/common/MediaItem$Builder;
    .registers 2

    .line 162
    iput-object p1, p0, Lio/bidmachine/media3/common/MediaItem$Builder;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method public setUri(Ljava/lang/String;)Lio/bidmachine/media3/common/MediaItem$Builder;
    .registers 2

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_8

    .line 150
    :cond_4
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_8
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lio/bidmachine/media3/common/MediaItem$Builder;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.media3.common.MediaItem.ClippingConfiguration (io.bidmachine.media3.common.MediaItem$ClippingConfiguration)
.class public Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClippingConfiguration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration$Builder;
    }
.end annotation


# static fields
.field public static final FIELD_END_POSITION_MS:Ljava/lang/String;

.field public static final FIELD_END_POSITION_US:Ljava/lang/String;

.field public static final FIELD_RELATIVE_TO_DEFAULT_POSITION:Ljava/lang/String;

.field public static final FIELD_RELATIVE_TO_LIVE_WINDOW:Ljava/lang/String;

.field public static final FIELD_STARTS_AT_KEY_FRAME:Ljava/lang/String;

.field public static final FIELD_START_POSITION_MS:Ljava/lang/String;

.field public static final FIELD_START_POSITION_US:Ljava/lang/String;

.field public static final UNSET:Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;


# instance fields
.field public final endPositionMs:J

.field public final endPositionUs:J

.field public final relativeToDefaultPosition:Z

.field public final relativeToLiveWindow:Z

.field public final startPositionMs:J

.field public final startPositionUs:J

.field public final startsAtKeyFrame:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1847
    new-instance v0, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration$Builder;

    invoke-direct {v0}, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration$Builder;-><init>()V

    invoke-virtual {v0}, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration$Builder;->build()Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;->UNSET:Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;

    const/4 v0, 0x0

    .line 2043
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;->FIELD_START_POSITION_MS:Ljava/lang/String;

    const/4 v0, 0x1

    .line 2044
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;->FIELD_END_POSITION_MS:Ljava/lang/String;

    const/4 v0, 0x2

    .line 2045
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;->FIELD_RELATIVE_TO_LIVE_WINDOW:Ljava/lang/String;

    const/4 v0, 0x3

    .line 2046
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;->FIELD_RELATIVE_TO_DEFAULT_POSITION:Ljava/lang/String;

    const/4 v0, 0x4

    .line 2047
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;->FIELD_STARTS_AT_KEY_FRAME:Ljava/lang/String;

    const/4 v0, 0x5

    .line 2048
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;->FIELD_START_POSITION_US:Ljava/lang/String;

    const/4 v0, 0x6

    .line 2049
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;->FIELD_END_POSITION_US:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration$Builder;)V
    .registers 4

    .line 2000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2001
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration$Builder;->access$3900(Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration$Builder;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/Util;->usToMs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;->startPositionMs:J

    .line 2002
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration$Builder;->access$4000(Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration$Builder;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/Util;->usToMs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;->endPositionMs:J

    .line 2003
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration$Builder;->access$3900(Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;->startPositionUs:J

    .line 2004
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration$Builder;->access$4000(Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;->endPositionUs:J

    .line 2005
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration$Builder;->access$4100(Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;->relativeToLiveWindow:Z

    .line 2006
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration$Builder;->access$4200(Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;->relativeToDefaultPosition:Z

    .line 2007
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration$Builder;->access$4300(Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;->startsAtKeyFrame:Z

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration$Builder;Lio/bidmachine/media3/common/MediaItem$1;)V
    .registers 3

    .line 1844
    invoke-direct {p0, p1}, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;-><init>(Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration$Builder;)V

    return-void
.end method


# virtual methods
.method public buildUpon()Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration$Builder;
    .registers 3

    .line 2012
    new-instance v0, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration$Builder;-><init>(Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;Lio/bidmachine/media3/common/MediaItem$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 2020
    :cond_4
    instance-of v1, p1, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 2024
    :cond_a
    check-cast p1, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;

    .line 2026
    iget-wide v3, p0, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;->startPositionUs:J

    iget-wide v5, p1, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;->startPositionUs:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2f

    iget-wide v3, p0, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;->endPositionUs:J

    iget-wide v5, p1, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;->endPositionUs:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2f

    iget-boolean v1, p0, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;->relativeToLiveWindow:Z

    iget-boolean v3, p1, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;->relativeToLiveWindow:Z

    if-ne v1, v3, :cond_2f

    iget-boolean v1, p0, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;->relativeToDefaultPosition:Z

    iget-boolean v3, p1, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;->relativeToDefaultPosition:Z

    if-ne v1, v3, :cond_2f

    iget-boolean v1, p0, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;->startsAtKeyFrame:Z

    iget-boolean p1, p1, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;->startsAtKeyFrame:Z

    if-ne v1, p1, :cond_2f

    return v0

    :cond_2f
    return v2
.end method

.method public hashCode()I
    .registers 6

    .line 2035
    iget-wide v0, p0, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;->startPositionUs:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2036
    iget-wide v3, p0, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;->endPositionUs:J

    ushr-long v1, v3, v2

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 2037
    iget-boolean v1, p0, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;->relativeToLiveWindow:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 2038
    iget-boolean v1, p0, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;->relativeToDefaultPosition:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 2039
    iget-boolean v1, p0, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;->startsAtKeyFrame:Z

    add-int/2addr v0, v1

    return v0
.end method

###### Class io.bidmachine.media3.common.MediaItem.ClippingConfiguration.Builder (io.bidmachine.media3.common.MediaItem$ClippingConfiguration$Builder)
.class public final Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration$Builder;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public endPositionUs:J

.field public relativeToDefaultPosition:Z

.field public relativeToLiveWindow:Z

.field public startPositionUs:J

.field public startsAtKeyFrame:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1858
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 1859
    iput-wide v0, p0, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration$Builder;->endPositionUs:J

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;)V
    .registers 4

    .line 1862
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1863
    iget-wide v0, p1, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;->startPositionUs:J

    iput-wide v0, p0, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration$Builder;->startPositionUs:J

    .line 1864
    iget-wide v0, p1, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;->endPositionUs:J

    iput-wide v0, p0, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration$Builder;->endPositionUs:J

    .line 1865
    iget-boolean v0, p1, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;->relativeToLiveWindow:Z

    iput-boolean v0, p0, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration$Builder;->relativeToLiveWindow:Z

    .line 1866
    iget-boolean v0, p1, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;->relativeToDefaultPosition:Z

    iput-boolean v0, p0, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration$Builder;->relativeToDefaultPosition:Z

    .line 1867
    iget-boolean p1, p1, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;->startsAtKeyFrame:Z

    iput-boolean p1, p0, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration$Builder;->startsAtKeyFrame:Z

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;Lio/bidmachine/media3/common/MediaItem$1;)V
    .registers 3

    .line 1850
    invoke-direct {p0, p1}, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration$Builder;-><init>(Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;)V

    return-void
.end method

.method public static synthetic access$3900(Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration$Builder;)J
    .registers 3

    .line 1850
    iget-wide v0, p0, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration$Builder;->startPositionUs:J

    return-wide v0
.end method

.method public static synthetic access$4000(Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration$Builder;)J
    .registers 3

    .line 1850
    iget-wide v0, p0, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration$Builder;->endPositionUs:J

    return-wide v0
.end method

.method public static synthetic access$4100(Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration$Builder;)Z
    .registers 1

    .line 1850
    iget-boolean p0, p0, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration$Builder;->relativeToLiveWindow:Z

    return p0
.end method

.method public static synthetic access$4200(Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration$Builder;)Z
    .registers 1

    .line 1850
    iget-boolean p0, p0, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration$Builder;->relativeToDefaultPosition:Z

    return p0
.end method

.method public static synthetic access$4300(Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration$Builder;)Z
    .registers 1

    .line 1850
    iget-boolean p0, p0, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration$Builder;->startsAtKeyFrame:Z

    return p0
.end method


# virtual methods
.method public build()Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;
    .registers 3

    .line 1950
    new-instance v0, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;-><init>(Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration$Builder;Lio/bidmachine/media3/common/MediaItem$1;)V

    return-object v0
.end method

.method public buildClippingProperties()Lio/bidmachine/media3/common/MediaItem$ClippingProperties;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1960
    new-instance v0, Lio/bidmachine/media3/common/MediaItem$ClippingProperties;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/media3/common/MediaItem$ClippingProperties;-><init>(Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration$Builder;Lio/bidmachine/media3/common/MediaItem$1;)V

    return-object v0
.end method

###### Class io.bidmachine.media3.common.MediaItem.ClippingProperties (io.bidmachine.media3.common.MediaItem$ClippingProperties)
.class public final Lio/bidmachine/media3/common/MediaItem$ClippingProperties;
.super Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClippingProperties"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final UNSET:Lio/bidmachine/media3/common/MediaItem$ClippingProperties;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 2121
    new-instance v0, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration$Builder;

    invoke-direct {v0}, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration$Builder;-><init>()V

    .line 2122
    invoke-virtual {v0}, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration$Builder;->buildClippingProperties()Lio/bidmachine/media3/common/MediaItem$ClippingProperties;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaItem$ClippingProperties;->UNSET:Lio/bidmachine/media3/common/MediaItem$ClippingProperties;

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration$Builder;)V
    .registers 3

    const/4 v0, 0x0

    .line 2125
    invoke-direct {p0, p1, v0}, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;-><init>(Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration$Builder;Lio/bidmachine/media3/common/MediaItem$1;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration$Builder;Lio/bidmachine/media3/common/MediaItem$1;)V
    .registers 3

    .line 2119
    invoke-direct {p0, p1}, Lio/bidmachine/media3/common/MediaItem$ClippingProperties;-><init>(Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration$Builder;)V

    return-void
.end method

###### Class io.bidmachine.media3.common.MediaItem.DrmConfiguration (io.bidmachine.media3.common.MediaItem$DrmConfiguration)
.class public final Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DrmConfiguration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;
    }
.end annotation


# static fields
.field public static final FIELD_FORCED_SESSION_TRACK_TYPES:Ljava/lang/String;

.field public static final FIELD_FORCE_DEFAULT_LICENSE_URI:Ljava/lang/String;

.field public static final FIELD_KEY_SET_ID:Ljava/lang/String;

.field public static final FIELD_LICENSE_REQUEST_HEADERS:Ljava/lang/String;

.field public static final FIELD_LICENSE_URI:Ljava/lang/String;

.field public static final FIELD_MULTI_SESSION:Ljava/lang/String;

.field public static final FIELD_PLAY_CLEAR_CONTENT_WITHOUT_KEY:Ljava/lang/String;

.field public static final FIELD_SCHEME:Ljava/lang/String;


# instance fields
.field public final forceDefaultLicenseUri:Z

.field public final forcedSessionTrackTypes:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final keySetId:[B

.field public final licenseRequestHeaders:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final licenseUri:Landroid/net/Uri;

.field public final multiSession:Z

.field public final playClearContentWithoutKey:Z

.field public final requestHeaders:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final scheme:Ljava/util/UUID;

.field public final sessionForClearTypes:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final uuid:Ljava/util/UUID;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 941
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;->FIELD_SCHEME:Ljava/lang/String;

    const/4 v0, 0x1

    .line 942
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;->FIELD_LICENSE_URI:Ljava/lang/String;

    const/4 v0, 0x2

    .line 943
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;->FIELD_LICENSE_REQUEST_HEADERS:Ljava/lang/String;

    const/4 v0, 0x3

    .line 944
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;->FIELD_MULTI_SESSION:Ljava/lang/String;

    const/4 v0, 0x4

    .line 947
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;->FIELD_PLAY_CLEAR_CONTENT_WITHOUT_KEY:Ljava/lang/String;

    const/4 v0, 0x5

    .line 949
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;->FIELD_FORCE_DEFAULT_LICENSE_URI:Ljava/lang/String;

    const/4 v0, 0x6

    .line 950
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;->FIELD_FORCED_SESSION_TRACK_TYPES:Ljava/lang/String;

    const/4 v0, 0x7

    .line 951
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;->FIELD_KEY_SET_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;)V
    .registers 3

    .line 879
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 880
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;->access$800(Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {p1}, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;->access$200(Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_10

    goto :goto_12

    :cond_10
    const/4 v0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v0, 0x1

    :goto_13
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 881
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;->access$300(Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;)Ljava/util/UUID;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;->scheme:Ljava/util/UUID;

    .line 882
    iput-object v0, p0, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;->uuid:Ljava/util/UUID;

    .line 883
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;->access$200(Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;->licenseUri:Landroid/net/Uri;

    .line 884
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;->access$900(Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;->requestHeaders:Lcom/google/common/collect/ImmutableMap;

    .line 885
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;->access$900(Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;->licenseRequestHeaders:Lcom/google/common/collect/ImmutableMap;

    .line 886
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;->access$1000(Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;->multiSession:Z

    .line 887
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;->access$800(Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;->forceDefaultLicenseUri:Z

    .line 888
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;->access$1100(Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;->playClearContentWithoutKey:Z

    .line 889
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;->access$1200(Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;->sessionForClearTypes:Lcom/google/common/collect/ImmutableList;

    .line 890
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;->access$1200(Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;->forcedSessionTrackTypes:Lcom/google/common/collect/ImmutableList;

    .line 892
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;->access$1300(Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;)[B

    move-result-object v0

    if-eqz v0, :cond_68

    .line 893
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;->access$1300(Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;)[B

    move-result-object v0

    invoke-static {p1}, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;->access$1300(Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;)[B

    move-result-object p1

    array-length p1, p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    goto :goto_69

    :cond_68
    const/4 p1, 0x0

    .line 894
    :goto_69
    iput-object p1, p0, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;->keySetId:[B

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;Lio/bidmachine/media3/common/MediaItem$1;)V
    .registers 3

    .line 638
    invoke-direct {p0, p1}, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;-><init>(Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;)V

    return-void
.end method

.method public static synthetic access$600(Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;)[B
    .registers 1

    .line 638
    iget-object p0, p0, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;->keySetId:[B

    return-object p0
.end method


# virtual methods
.method public buildUpon()Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;
    .registers 3

    .line 905
    new-instance v0, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;-><init>(Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;Lio/bidmachine/media3/common/MediaItem$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 913
    :cond_4
    instance-of v1, p1, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 917
    :cond_a
    check-cast p1, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;

    .line 918
    iget-object v1, p0, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;->scheme:Ljava/util/UUID;

    iget-object v3, p1, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;->scheme:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    iget-object v1, p0, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;->licenseUri:Landroid/net/Uri;

    iget-object v3, p1, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;->licenseUri:Landroid/net/Uri;

    .line 919
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    iget-object v1, p0, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;->licenseRequestHeaders:Lcom/google/common/collect/ImmutableMap;

    iget-object v3, p1, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;->licenseRequestHeaders:Lcom/google/common/collect/ImmutableMap;

    .line 920
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    iget-boolean v1, p0, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;->multiSession:Z

    iget-boolean v3, p1, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;->multiSession:Z

    if-ne v1, v3, :cond_51

    iget-boolean v1, p0, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;->forceDefaultLicenseUri:Z

    iget-boolean v3, p1, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;->forceDefaultLicenseUri:Z

    if-ne v1, v3, :cond_51

    iget-boolean v1, p0, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;->playClearContentWithoutKey:Z

    iget-boolean v3, p1, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;->playClearContentWithoutKey:Z

    if-ne v1, v3, :cond_51

    iget-object v1, p0, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;->forcedSessionTrackTypes:Lcom/google/common/collect/ImmutableList;

    iget-object v3, p1, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;->forcedSessionTrackTypes:Lcom/google/common/collect/ImmutableList;

    .line 924
    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    iget-object v1, p0, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;->keySetId:[B

    iget-object p1, p1, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;->keySetId:[B

    .line 925
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_51

    return v0

    :cond_51
    return v2
.end method

.method public getKeySetId()[B
    .registers 3

    .line 900
    iget-object v0, p0, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;->keySetId:[B

    if-eqz v0, :cond_a

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0

    :cond_a
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 930
    iget-object v0, p0, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;->scheme:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 931
    iget-object v1, p0, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;->licenseUri:Landroid/net/Uri;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 932
    iget-object v1, p0, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;->licenseRequestHeaders:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 933
    iget-boolean v1, p0, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;->multiSession:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 934
    iget-boolean v1, p0, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;->forceDefaultLicenseUri:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 935
    iget-boolean v1, p0, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;->playClearContentWithoutKey:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 936
    iget-object v1, p0, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;->forcedSessionTrackTypes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 937
    iget-object v1, p0, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;->keySetId:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

###### Class io.bidmachine.media3.common.MediaItem.DrmConfiguration.Builder (io.bidmachine.media3.common.MediaItem$DrmConfiguration$Builder)
.class public final Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public forceDefaultLicenseUri:Z

.field public forcedSessionTrackTypes:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public keySetId:[B

.field public licenseRequestHeaders:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public licenseUri:Landroid/net/Uri;

.field public multiSession:Z

.field public playClearContentWithoutKey:Z

.field public scheme:Ljava/util/UUID;


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 668
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 669
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;->licenseRequestHeaders:Lcom/google/common/collect/ImmutableMap;

    const/4 v0, 0x1

    .line 670
    iput-boolean v0, p0, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;->playClearContentWithoutKey:Z

    .line 671
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;->forcedSessionTrackTypes:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/common/MediaItem$1;)V
    .registers 2

    .line 640
    invoke-direct {p0}, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;-><init>()V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;)V
    .registers 3

    .line 674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 675
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;->scheme:Ljava/util/UUID;

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;->scheme:Ljava/util/UUID;

    .line 676
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;->licenseUri:Landroid/net/Uri;

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;->licenseUri:Landroid/net/Uri;

    .line 677
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;->licenseRequestHeaders:Lcom/google/common/collect/ImmutableMap;

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;->licenseRequestHeaders:Lcom/google/common/collect/ImmutableMap;

    .line 678
    iget-boolean v0, p1, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;->multiSession:Z

    iput-boolean v0, p0, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;->multiSession:Z

    .line 679
    iget-boolean v0, p1, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;->playClearContentWithoutKey:Z

    iput-boolean v0, p0, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;->playClearContentWithoutKey:Z

    .line 680
    iget-boolean v0, p1, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;->forceDefaultLicenseUri:Z

    iput-boolean v0, p0, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;->forceDefaultLicenseUri:Z

    .line 681
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;->forcedSessionTrackTypes:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;->forcedSessionTrackTypes:Lcom/google/common/collect/ImmutableList;

    .line 682
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;->access$600(Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;)[B

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;->keySetId:[B

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;Lio/bidmachine/media3/common/MediaItem$1;)V
    .registers 3

    .line 640
    invoke-direct {p0, p1}, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;-><init>(Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;)V

    return-void
.end method

.method public static synthetic access$1000(Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;)Z
    .registers 1

    .line 640
    iget-boolean p0, p0, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;->multiSession:Z

    return p0
.end method

.method public static synthetic access$1100(Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;)Z
    .registers 1

    .line 640
    iget-boolean p0, p0, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;->playClearContentWithoutKey:Z

    return p0
.end method

.method public static synthetic access$1200(Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;)Lcom/google/common/collect/ImmutableList;
    .registers 1

    .line 640
    iget-object p0, p0, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;->forcedSessionTrackTypes:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method public static synthetic access$1300(Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;)[B
    .registers 1

    .line 640
    iget-object p0, p0, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;->keySetId:[B

    return-object p0
.end method

.method public static synthetic access$200(Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;)Landroid/net/Uri;
    .registers 1

    .line 640
    iget-object p0, p0, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;->licenseUri:Landroid/net/Uri;

    return-object p0
.end method

.method public static synthetic access$300(Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;)Ljava/util/UUID;
    .registers 1

    .line 640
    iget-object p0, p0, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;->scheme:Ljava/util/UUID;

    return-object p0
.end method

.method public static synthetic access$800(Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;)Z
    .registers 1

    .line 640
    iget-boolean p0, p0, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;->forceDefaultLicenseUri:Z

    return p0
.end method

.method public static synthetic access$900(Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;)Lcom/google/common/collect/ImmutableMap;
    .registers 1

    .line 640
    iget-object p0, p0, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;->licenseRequestHeaders:Lcom/google/common/collect/ImmutableMap;

    return-object p0
.end method


# virtual methods
.method public build()Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;
    .registers 3

    .line 825
    new-instance v0, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;-><init>(Lio/bidmachine/media3/common/MediaItem$DrmConfiguration$Builder;Lio/bidmachine/media3/common/MediaItem$1;)V

    return-object v0
.end method

###### Class io.bidmachine.media3.common.MediaItem.LiveConfiguration (io.bidmachine.media3.common.MediaItem$LiveConfiguration)
.class public final Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LiveConfiguration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;
    }
.end annotation


# static fields
.field public static final FIELD_MAX_OFFSET_MS:Ljava/lang/String;

.field public static final FIELD_MAX_PLAYBACK_SPEED:Ljava/lang/String;

.field public static final FIELD_MIN_OFFSET_MS:Ljava/lang/String;

.field public static final FIELD_MIN_PLAYBACK_SPEED:Ljava/lang/String;

.field public static final FIELD_TARGET_OFFSET_MS:Ljava/lang/String;

.field public static final UNSET:Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;


# instance fields
.field public final maxOffsetMs:J

.field public final maxPlaybackSpeed:F

.field public final minOffsetMs:J

.field public final minPlaybackSpeed:F

.field public final targetOffsetMs:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1420
    new-instance v0, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;

    invoke-direct {v0}, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;-><init>()V

    invoke-virtual {v0}, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;->build()Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;->UNSET:Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;

    const/4 v0, 0x0

    .line 1512
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;->FIELD_TARGET_OFFSET_MS:Ljava/lang/String;

    const/4 v0, 0x1

    .line 1513
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;->FIELD_MIN_OFFSET_MS:Ljava/lang/String;

    const/4 v0, 0x2

    .line 1514
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;->FIELD_MAX_OFFSET_MS:Ljava/lang/String;

    const/4 v0, 0x3

    .line 1515
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;->FIELD_MIN_PLAYBACK_SPEED:Ljava/lang/String;

    const/4 v0, 0x4

    .line 1516
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;->FIELD_MAX_PLAYBACK_SPEED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JJJFF)V
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1473
    iput-wide p1, p0, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;->targetOffsetMs:J

    .line 1474
    iput-wide p3, p0, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;->minOffsetMs:J

    .line 1475
    iput-wide p5, p0, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;->maxOffsetMs:J

    .line 1476
    iput p7, p0, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    .line 1477
    iput p8, p0, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;)V
    .registers 11

    .line 1455
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;->access$2000(Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;)J

    move-result-wide v1

    .line 1456
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;->access$2100(Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;)J

    move-result-wide v3

    .line 1457
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;->access$2200(Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;)J

    move-result-wide v5

    .line 1458
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;->access$2300(Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;)F

    move-result v7

    .line 1459
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;->access$2400(Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;)F

    move-result v8

    move-object v0, p0

    .line 1454
    invoke-direct/range {v0 .. v8}, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;-><init>(JJJFF)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;Lio/bidmachine/media3/common/MediaItem$1;)V
    .registers 3

    .line 1322
    invoke-direct {p0, p1}, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;-><init>(Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;)V

    return-void
.end method


# virtual methods
.method public buildUpon()Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;
    .registers 3

    .line 1482
    new-instance v0, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;-><init>(Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;Lio/bidmachine/media3/common/MediaItem$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1490
    :cond_4
    instance-of v1, p1, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 1493
    :cond_a
    check-cast p1, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;

    .line 1495
    iget-wide v3, p0, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;->targetOffsetMs:J

    iget-wide v5, p1, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;->targetOffsetMs:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_35

    iget-wide v3, p0, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;->minOffsetMs:J

    iget-wide v5, p1, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;->minOffsetMs:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_35

    iget-wide v3, p0, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;->maxOffsetMs:J

    iget-wide v5, p1, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;->maxOffsetMs:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_35

    iget v1, p0, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    iget v3, p1, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_35

    iget v1, p0, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    iget p1, p1, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    cmpl-float p1, v1, p1

    if-nez p1, :cond_35

    return v0

    :cond_35
    return v2
.end method

.method public hashCode()I
    .registers 8

    .line 1504
    iget-wide v0, p0, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;->targetOffsetMs:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    .line 1505
    iget-wide v3, p0, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;->minOffsetMs:J

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v1, v3

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1506
    iget-wide v3, p0, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;->maxOffsetMs:J

    ushr-long v1, v3, v2

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1507
    iget v1, p0, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    const/4 v4, 0x0

    if-eqz v3, :cond_29

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    goto :goto_2a

    :cond_29
    move v1, v4

    :goto_2a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1508
    iget v1, p0, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_37

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    :cond_37
    add-int/2addr v0, v4

    return v0
.end method

###### Class io.bidmachine.media3.common.MediaItem.LiveConfiguration.Builder (io.bidmachine.media3.common.MediaItem$LiveConfiguration$Builder)
.class public final Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public maxOffsetMs:J

.field public maxPlaybackSpeed:F

.field public minOffsetMs:J

.field public minPlaybackSpeed:F

.field public targetOffsetMs:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 1334
    iput-wide v0, p0, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;->targetOffsetMs:J

    .line 1335
    iput-wide v0, p0, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;->minOffsetMs:J

    .line 1336
    iput-wide v0, p0, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;->maxOffsetMs:J

    const v0, -0x800001

    .line 1337
    iput v0, p0, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;->minPlaybackSpeed:F

    .line 1338
    iput v0, p0, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;->maxPlaybackSpeed:F

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;)V
    .registers 4

    .line 1341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1342
    iget-wide v0, p1, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;->targetOffsetMs:J

    iput-wide v0, p0, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;->targetOffsetMs:J

    .line 1343
    iget-wide v0, p1, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;->minOffsetMs:J

    iput-wide v0, p0, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;->minOffsetMs:J

    .line 1344
    iget-wide v0, p1, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;->maxOffsetMs:J

    iput-wide v0, p0, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;->maxOffsetMs:J

    .line 1345
    iget v0, p1, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    iput v0, p0, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;->minPlaybackSpeed:F

    .line 1346
    iget p1, p1, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    iput p1, p0, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;->maxPlaybackSpeed:F

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;Lio/bidmachine/media3/common/MediaItem$1;)V
    .registers 3

    .line 1325
    invoke-direct {p0, p1}, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;-><init>(Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;)V

    return-void
.end method

.method public static synthetic access$2000(Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;)J
    .registers 3

    .line 1325
    iget-wide v0, p0, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;->targetOffsetMs:J

    return-wide v0
.end method

.method public static synthetic access$2100(Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;)J
    .registers 3

    .line 1325
    iget-wide v0, p0, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;->minOffsetMs:J

    return-wide v0
.end method

.method public static synthetic access$2200(Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;)J
    .registers 3

    .line 1325
    iget-wide v0, p0, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;->maxOffsetMs:J

    return-wide v0
.end method

.method public static synthetic access$2300(Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;)F
    .registers 1

    .line 1325
    iget p0, p0, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;->minPlaybackSpeed:F

    return p0
.end method

.method public static synthetic access$2400(Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;)F
    .registers 1

    .line 1325
    iget p0, p0, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;->maxPlaybackSpeed:F

    return p0
.end method


# virtual methods
.method public build()Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;
    .registers 3

    .line 1412
    new-instance v0, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;-><init>(Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;Lio/bidmachine/media3/common/MediaItem$1;)V

    return-object v0
.end method

.method public setMaxOffsetMs(J)Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;
    .registers 3

    .line 1384
    iput-wide p1, p0, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;->maxOffsetMs:J

    return-object p0
.end method

.method public setMaxPlaybackSpeed(F)Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;
    .registers 2

    .line 1406
    iput p1, p0, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;->maxPlaybackSpeed:F

    return-object p0
.end method

.method public setMinOffsetMs(J)Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;
    .registers 3

    .line 1371
    iput-wide p1, p0, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;->minOffsetMs:J

    return-object p0
.end method

.method public setMinPlaybackSpeed(F)Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;
    .registers 2

    .line 1395
    iput p1, p0, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;->minPlaybackSpeed:F

    return-object p0
.end method

.method public setTargetOffsetMs(J)Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;
    .registers 3

    .line 1358
    iput-wide p1, p0, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;->targetOffsetMs:J

    return-object p0
.end method

###### Class io.bidmachine.media3.common.MediaItem.LocalConfiguration (io.bidmachine.media3.common.MediaItem$LocalConfiguration)
.class public final Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocalConfiguration"
.end annotation


# static fields
.field public static final FIELD_ADS_CONFIGURATION:Ljava/lang/String;

.field public static final FIELD_CUSTOM_CACHE_KEY:Ljava/lang/String;

.field public static final FIELD_DRM_CONFIGURATION:Ljava/lang/String;

.field public static final FIELD_IMAGE_DURATION_MS:Ljava/lang/String;

.field public static final FIELD_MIME_TYPE:Ljava/lang/String;

.field public static final FIELD_STREAM_KEYS:Ljava/lang/String;

.field public static final FIELD_SUBTITLE_CONFIGURATION:Ljava/lang/String;

.field public static final FIELD_URI:Ljava/lang/String;


# instance fields
.field public final customCacheKey:Ljava/lang/String;

.field public final drmConfiguration:Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;

.field public final imageDurationMs:J

.field public final mimeType:Ljava/lang/String;

.field public final streamKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/StreamKey;",
            ">;"
        }
    .end annotation
.end field

.field public final subtitleConfigurations:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public final subtitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/MediaItem$Subtitle;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final tag:Ljava/lang/Object;

.field public final uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 1237
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->FIELD_URI:Ljava/lang/String;

    const/4 v0, 0x1

    .line 1238
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->FIELD_MIME_TYPE:Ljava/lang/String;

    const/4 v0, 0x2

    .line 1239
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->FIELD_DRM_CONFIGURATION:Ljava/lang/String;

    const/4 v0, 0x3

    .line 1240
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->FIELD_ADS_CONFIGURATION:Ljava/lang/String;

    const/4 v0, 0x4

    .line 1241
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->FIELD_STREAM_KEYS:Ljava/lang/String;

    const/4 v0, 0x5

    .line 1242
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->FIELD_CUSTOM_CACHE_KEY:Ljava/lang/String;

    const/4 v0, 0x6

    .line 1243
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->FIELD_SUBTITLE_CONFIGURATION:Ljava/lang/String;

    const/4 v0, 0x7

    .line 1244
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->FIELD_IMAGE_DURATION_MS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;Lio/bidmachine/media3/common/MediaItem$AdsConfiguration;Ljava/util/List;Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Ljava/lang/Object;J)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;",
            "Lio/bidmachine/media3/common/MediaItem$AdsConfiguration;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/StreamKey;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/common/collect/ImmutableList<",
            "Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;",
            ">;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation

    .line 1185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1186
    iput-object p1, p0, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    .line 1187
    invoke-static {p2}, Lio/bidmachine/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->mimeType:Ljava/lang/String;

    .line 1188
    iput-object p3, p0, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->drmConfiguration:Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;

    .line 1190
    iput-object p5, p0, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->streamKeys:Ljava/util/List;

    .line 1191
    iput-object p6, p0, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->customCacheKey:Ljava/lang/String;

    .line 1192
    iput-object p7, p0, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    .line 1193
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 1194
    :goto_18
    invoke-virtual {p7}, Ljava/util/AbstractCollection;->size()I

    move-result p3

    if-ge p2, p3, :cond_32

    .line 1195
    invoke-interface {p7, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;

    invoke-virtual {p3}, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;->buildUpon()Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration$Builder;

    move-result-object p3

    invoke-static {p3}, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration$Builder;->access$1800(Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration$Builder;)Lio/bidmachine/media3/common/MediaItem$Subtitle;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    add-int/lit8 p2, p2, 0x1

    goto :goto_18

    .line 1197
    :cond_32
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->subtitles:Ljava/util/List;

    .line 1198
    iput-object p8, p0, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->tag:Ljava/lang/Object;

    .line 1199
    iput-wide p9, p0, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->imageDurationMs:J

    return-void
.end method

.method public synthetic constructor <init>(Landroid/net/Uri;Ljava/lang/String;Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;Lio/bidmachine/media3/common/MediaItem$AdsConfiguration;Ljava/util/List;Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Ljava/lang/Object;JLio/bidmachine/media3/common/MediaItem$1;)V
    .registers 12

    .line 1129
    invoke-direct/range {p0 .. p10}, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;-><init>(Landroid/net/Uri;Ljava/lang/String;Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;Lio/bidmachine/media3/common/MediaItem$AdsConfiguration;Ljava/util/List;Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Ljava/lang/Object;J)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1207
    :cond_4
    instance-of v1, p1, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 1210
    :cond_a
    check-cast p1, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;

    .line 1212
    iget-object v1, p0, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    iget-object v3, p1, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    iget-object v1, p0, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->mimeType:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->mimeType:Ljava/lang/String;

    .line 1213
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    iget-object v1, p0, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->drmConfiguration:Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;

    iget-object v3, p1, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->drmConfiguration:Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;

    .line 1214
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 1215
    iget-object v1, p0, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->streamKeys:Ljava/util/List;

    iget-object v3, p1, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->streamKeys:Ljava/util/List;

    .line 1216
    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    iget-object v1, p0, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->customCacheKey:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->customCacheKey:Ljava/lang/String;

    .line 1217
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    iget-object v1, p0, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    iget-object v3, p1, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    .line 1218
    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    iget-object v1, p0, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->tag:Ljava/lang/Object;

    iget-object v3, p1, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->tag:Ljava/lang/Object;

    .line 1219
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    iget-wide v3, p0, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->imageDurationMs:J

    iget-wide v5, p1, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->imageDurationMs:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_5b

    return v0

    :cond_5b
    return v2
.end method

.method public hashCode()I
    .registers 6

    .line 1225
    iget-object v0, p0, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 1226
    iget-object v1, p0, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->mimeType:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_f

    move v1, v2

    goto :goto_13

    :cond_f
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_13
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1227
    iget-object v1, p0, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->drmConfiguration:Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;

    if-nez v1, :cond_1c

    move v1, v2

    goto :goto_20

    :cond_1c
    invoke-virtual {v1}, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;->hashCode()I

    move-result v1

    :goto_20
    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x3c1

    .line 1229
    iget-object v1, p0, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->streamKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1230
    iget-object v1, p0, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->customCacheKey:Ljava/lang/String;

    if-nez v1, :cond_32

    move v1, v2

    goto :goto_36

    :cond_32
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_36
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1231
    iget-object v1, p0, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1232
    iget-object v1, p0, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->tag:Ljava/lang/Object;

    if-nez v1, :cond_47

    goto :goto_4b

    :cond_47
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4b
    add-int/2addr v0, v2

    const-wide/16 v1, 0x1f

    int-to-long v3, v0

    mul-long/2addr v3, v1

    .line 1233
    iget-wide v0, p0, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->imageDurationMs:J

    add-long/2addr v3, v0

    long-to-int v0, v3

    return v0
.end method

###### Class io.bidmachine.media3.common.MediaItem.RequestMetadata (io.bidmachine.media3.common.MediaItem$RequestMetadata)
.class public final Lio/bidmachine/media3/common/MediaItem$RequestMetadata;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestMetadata"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/common/MediaItem$RequestMetadata$Builder;
    }
.end annotation


# static fields
.field public static final EMPTY:Lio/bidmachine/media3/common/MediaItem$RequestMetadata;

.field public static final FIELD_EXTRAS:Ljava/lang/String;

.field public static final FIELD_MEDIA_URI:Ljava/lang/String;

.field public static final FIELD_SEARCH_QUERY:Ljava/lang/String;


# instance fields
.field public final extras:Landroid/os/Bundle;

.field public final mediaUri:Landroid/net/Uri;

.field public final searchQuery:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 2140
    new-instance v0, Lio/bidmachine/media3/common/MediaItem$RequestMetadata$Builder;

    invoke-direct {v0}, Lio/bidmachine/media3/common/MediaItem$RequestMetadata$Builder;-><init>()V

    invoke-virtual {v0}, Lio/bidmachine/media3/common/MediaItem$RequestMetadata$Builder;->build()Lio/bidmachine/media3/common/MediaItem$RequestMetadata;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaItem$RequestMetadata;->EMPTY:Lio/bidmachine/media3/common/MediaItem$RequestMetadata;

    const/4 v0, 0x0

    .line 2233
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaItem$RequestMetadata;->FIELD_MEDIA_URI:Ljava/lang/String;

    const/4 v0, 0x1

    .line 2234
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaItem$RequestMetadata;->FIELD_SEARCH_QUERY:Ljava/lang/String;

    const/4 v0, 0x2

    .line 2235
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaItem$RequestMetadata;->FIELD_EXTRAS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/common/MediaItem$RequestMetadata$Builder;)V
    .registers 3

    .line 2200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2201
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaItem$RequestMetadata$Builder;->access$4600(Lio/bidmachine/media3/common/MediaItem$RequestMetadata$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaItem$RequestMetadata;->mediaUri:Landroid/net/Uri;

    .line 2202
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaItem$RequestMetadata$Builder;->access$4700(Lio/bidmachine/media3/common/MediaItem$RequestMetadata$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaItem$RequestMetadata;->searchQuery:Ljava/lang/String;

    .line 2203
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaItem$RequestMetadata$Builder;->access$4800(Lio/bidmachine/media3/common/MediaItem$RequestMetadata$Builder;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/common/MediaItem$RequestMetadata;->extras:Landroid/os/Bundle;

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/common/MediaItem$RequestMetadata$Builder;Lio/bidmachine/media3/common/MediaItem$1;)V
    .registers 3

    .line 2137
    invoke-direct {p0, p1}, Lio/bidmachine/media3/common/MediaItem$RequestMetadata;-><init>(Lio/bidmachine/media3/common/MediaItem$RequestMetadata$Builder;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 2216
    :cond_4
    instance-of v1, p1, Lio/bidmachine/media3/common/MediaItem$RequestMetadata;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 2219
    :cond_a
    check-cast p1, Lio/bidmachine/media3/common/MediaItem$RequestMetadata;

    .line 2220
    iget-object v1, p0, Lio/bidmachine/media3/common/MediaItem$RequestMetadata;->mediaUri:Landroid/net/Uri;

    iget-object v3, p1, Lio/bidmachine/media3/common/MediaItem$RequestMetadata;->mediaUri:Landroid/net/Uri;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v1, p0, Lio/bidmachine/media3/common/MediaItem$RequestMetadata;->searchQuery:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/media3/common/MediaItem$RequestMetadata;->searchQuery:Ljava/lang/String;

    .line 2221
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v1, p0, Lio/bidmachine/media3/common/MediaItem$RequestMetadata;->extras:Landroid/os/Bundle;

    if-nez v1, :cond_26

    move v1, v0

    goto :goto_27

    :cond_26
    move v1, v2

    :goto_27
    iget-object p1, p1, Lio/bidmachine/media3/common/MediaItem$RequestMetadata;->extras:Landroid/os/Bundle;

    if-nez p1, :cond_2d

    move p1, v0

    goto :goto_2e

    :cond_2d
    move p1, v2

    :goto_2e
    if-ne v1, p1, :cond_31

    return v0

    :cond_31
    return v2
.end method

.method public hashCode()I
    .registers 4

    .line 2227
    iget-object v0, p0, Lio/bidmachine/media3/common/MediaItem$RequestMetadata;->mediaUri:Landroid/net/Uri;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    .line 2228
    iget-object v2, p0, Lio/bidmachine/media3/common/MediaItem$RequestMetadata;->searchQuery:Ljava/lang/String;

    if-nez v2, :cond_13

    move v2, v1

    goto :goto_17

    :cond_13
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 2229
    iget-object v2, p0, Lio/bidmachine/media3/common/MediaItem$RequestMetadata;->extras:Landroid/os/Bundle;

    if-nez v2, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v1, 0x1

    :goto_20
    add-int/2addr v0, v1

    return v0
.end method

###### Class io.bidmachine.media3.common.MediaItem.RequestMetadata.Builder (io.bidmachine.media3.common.MediaItem$RequestMetadata$Builder)
.class public final Lio/bidmachine/media3/common/MediaItem$RequestMetadata$Builder;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/MediaItem$RequestMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public extras:Landroid/os/Bundle;

.field public mediaUri:Landroid/net/Uri;

.field public searchQuery:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$4600(Lio/bidmachine/media3/common/MediaItem$RequestMetadata$Builder;)Landroid/net/Uri;
    .registers 1

    .line 2143
    iget-object p0, p0, Lio/bidmachine/media3/common/MediaItem$RequestMetadata$Builder;->mediaUri:Landroid/net/Uri;

    return-object p0
.end method

.method public static synthetic access$4700(Lio/bidmachine/media3/common/MediaItem$RequestMetadata$Builder;)Ljava/lang/String;
    .registers 1

    .line 2143
    iget-object p0, p0, Lio/bidmachine/media3/common/MediaItem$RequestMetadata$Builder;->searchQuery:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$4800(Lio/bidmachine/media3/common/MediaItem$RequestMetadata$Builder;)Landroid/os/Bundle;
    .registers 1

    .line 2143
    iget-object p0, p0, Lio/bidmachine/media3/common/MediaItem$RequestMetadata$Builder;->extras:Landroid/os/Bundle;

    return-object p0
.end method


# virtual methods
.method public build()Lio/bidmachine/media3/common/MediaItem$RequestMetadata;
    .registers 3

    .line 2181
    new-instance v0, Lio/bidmachine/media3/common/MediaItem$RequestMetadata;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/media3/common/MediaItem$RequestMetadata;-><init>(Lio/bidmachine/media3/common/MediaItem$RequestMetadata$Builder;Lio/bidmachine/media3/common/MediaItem$1;)V

    return-object v0
.end method

###### Class io.bidmachine.media3.common.MediaItem.Subtitle (io.bidmachine.media3.common.MediaItem$Subtitle)
.class public final Lio/bidmachine/media3/common/MediaItem$Subtitle;
.super Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Subtitle"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration$Builder;)V
    .registers 3

    const/4 v0, 0x0

    .line 1838
    invoke-direct {p0, p1, v0}, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;-><init>(Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration$Builder;Lio/bidmachine/media3/common/MediaItem$1;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration$Builder;Lio/bidmachine/media3/common/MediaItem$1;)V
    .registers 3

    .line 1799
    invoke-direct {p0, p1}, Lio/bidmachine/media3/common/MediaItem$Subtitle;-><init>(Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration$Builder;)V

    return-void
.end method

###### Class io.bidmachine.media3.common.MediaItem.SubtitleConfiguration (io.bidmachine.media3.common.MediaItem$SubtitleConfiguration)
.class public Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubtitleConfiguration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration$Builder;
    }
.end annotation


# static fields
.field public static final FIELD_ID:Ljava/lang/String;

.field public static final FIELD_LABEL:Ljava/lang/String;

.field public static final FIELD_LANGUAGE:Ljava/lang/String;

.field public static final FIELD_MIME_TYPE:Ljava/lang/String;

.field public static final FIELD_ROLE_FLAGS:Ljava/lang/String;

.field public static final FIELD_SELECTION_FLAGS:Ljava/lang/String;

.field public static final FIELD_URI:Ljava/lang/String;


# instance fields
.field public final id:Ljava/lang/String;

.field public final label:Ljava/lang/String;

.field public final language:Ljava/lang/String;

.field public final mimeType:Ljava/lang/String;

.field public final roleFlags:I

.field public final selectionFlags:I

.field public final uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 1738
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;->FIELD_URI:Ljava/lang/String;

    const/4 v0, 0x1

    .line 1739
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;->FIELD_MIME_TYPE:Ljava/lang/String;

    const/4 v0, 0x2

    .line 1740
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;->FIELD_LANGUAGE:Ljava/lang/String;

    const/4 v0, 0x3

    .line 1741
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;->FIELD_SELECTION_FLAGS:Ljava/lang/String;

    const/4 v0, 0x4

    .line 1742
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;->FIELD_ROLE_FLAGS:Ljava/lang/String;

    const/4 v0, 0x5

    .line 1743
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;->FIELD_LABEL:Ljava/lang/String;

    const/4 v0, 0x6

    .line 1744
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;->FIELD_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration$Builder;)V
    .registers 3

    .line 1691
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1692
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration$Builder;->access$2800(Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;->uri:Landroid/net/Uri;

    .line 1693
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration$Builder;->access$2900(Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;->mimeType:Ljava/lang/String;

    .line 1694
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration$Builder;->access$3000(Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;->language:Ljava/lang/String;

    .line 1695
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration$Builder;->access$3100(Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;->selectionFlags:I

    .line 1696
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration$Builder;->access$3200(Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;->roleFlags:I

    .line 1697
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration$Builder;->access$3300(Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;->label:Ljava/lang/String;

    .line 1698
    invoke-static {p1}, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration$Builder;->access$3400(Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;->id:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration$Builder;Lio/bidmachine/media3/common/MediaItem$1;)V
    .registers 3

    .line 1559
    invoke-direct {p0, p1}, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;-><init>(Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration$Builder;)V

    return-void
.end method


# virtual methods
.method public buildUpon()Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration$Builder;
    .registers 3

    .line 1703
    new-instance v0, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration$Builder;-><init>(Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;Lio/bidmachine/media3/common/MediaItem$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1711
    :cond_4
    instance-of v1, p1, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 1715
    :cond_a
    check-cast p1, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;

    .line 1717
    iget-object v1, p0, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;->uri:Landroid/net/Uri;

    iget-object v3, p1, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;->mimeType:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;->mimeType:Ljava/lang/String;

    .line 1718
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;->language:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;->language:Ljava/lang/String;

    .line 1719
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    iget v1, p0, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;->selectionFlags:I

    iget v3, p1, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;->selectionFlags:I

    if-ne v1, v3, :cond_4b

    iget v1, p0, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;->roleFlags:I

    iget v3, p1, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;->roleFlags:I

    if-ne v1, v3, :cond_4b

    iget-object v1, p0, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;->label:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;->label:Ljava/lang/String;

    .line 1722
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;->id:Ljava/lang/String;

    iget-object p1, p1, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;->id:Ljava/lang/String;

    .line 1723
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4b

    return v0

    :cond_4b
    return v2
.end method

.method public hashCode()I
    .registers 4

    .line 1728
    iget-object v0, p0, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 1729
    iget-object v1, p0, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;->mimeType:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_f

    move v1, v2

    goto :goto_13

    :cond_f
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_13
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1730
    iget-object v1, p0, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;->language:Ljava/lang/String;

    if-nez v1, :cond_1c

    move v1, v2

    goto :goto_20

    :cond_1c
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_20
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1731
    iget v1, p0, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;->selectionFlags:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1732
    iget v1, p0, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;->roleFlags:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1733
    iget-object v1, p0, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;->label:Ljava/lang/String;

    if-nez v1, :cond_33

    move v1, v2

    goto :goto_37

    :cond_33
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_37
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1734
    iget-object v1, p0, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;->id:Ljava/lang/String;

    if-nez v1, :cond_3f

    goto :goto_43

    :cond_3f
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_43
    add-int/2addr v0, v2

    return v0
.end method

###### Class io.bidmachine.media3.common.MediaItem.SubtitleConfiguration.Builder (io.bidmachine.media3.common.MediaItem$SubtitleConfiguration$Builder)
.class public final Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration$Builder;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public id:Ljava/lang/String;

.field public label:Ljava/lang/String;

.field public language:Ljava/lang/String;

.field public mimeType:Ljava/lang/String;

.field public roleFlags:I

.field public selectionFlags:I

.field public uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;)V
    .registers 3

    .line 1580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1581
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration$Builder;->uri:Landroid/net/Uri;

    .line 1582
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;->mimeType:Ljava/lang/String;

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration$Builder;->mimeType:Ljava/lang/String;

    .line 1583
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;->language:Ljava/lang/String;

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration$Builder;->language:Ljava/lang/String;

    .line 1584
    iget v0, p1, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;->selectionFlags:I

    iput v0, p0, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration$Builder;->selectionFlags:I

    .line 1585
    iget v0, p1, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;->roleFlags:I

    iput v0, p0, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration$Builder;->roleFlags:I

    .line 1586
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;->label:Ljava/lang/String;

    iput-object v0, p0, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration$Builder;->label:Ljava/lang/String;

    .line 1587
    iget-object p1, p1, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;->id:Ljava/lang/String;

    iput-object p1, p0, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration$Builder;->id:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;Lio/bidmachine/media3/common/MediaItem$1;)V
    .registers 3

    .line 1562
    invoke-direct {p0, p1}, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration$Builder;-><init>(Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;)V

    return-void
.end method

.method public static synthetic access$1800(Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration$Builder;)Lio/bidmachine/media3/common/MediaItem$Subtitle;
    .registers 1

    .line 1562
    invoke-virtual {p0}, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration$Builder;->buildSubtitle()Lio/bidmachine/media3/common/MediaItem$Subtitle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$2800(Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration$Builder;)Landroid/net/Uri;
    .registers 1

    .line 1562
    iget-object p0, p0, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration$Builder;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method public static synthetic access$2900(Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration$Builder;)Ljava/lang/String;
    .registers 1

    .line 1562
    iget-object p0, p0, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration$Builder;->mimeType:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$3000(Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration$Builder;)Ljava/lang/String;
    .registers 1

    .line 1562
    iget-object p0, p0, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration$Builder;->language:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$3100(Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration$Builder;)I
    .registers 1

    .line 1562
    iget p0, p0, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration$Builder;->selectionFlags:I

    return p0
.end method

.method public static synthetic access$3200(Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration$Builder;)I
    .registers 1

    .line 1562
    iget p0, p0, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration$Builder;->roleFlags:I

    return p0
.end method

.method public static synthetic access$3300(Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration$Builder;)Ljava/lang/String;
    .registers 1

    .line 1562
    iget-object p0, p0, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration$Builder;->label:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$3400(Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration$Builder;)Ljava/lang/String;
    .registers 1

    .line 1562
    iget-object p0, p0, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration$Builder;->id:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final buildSubtitle()Lio/bidmachine/media3/common/MediaItem$Subtitle;
    .registers 3

    .line 1646
    new-instance v0, Lio/bidmachine/media3/common/MediaItem$Subtitle;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/media3/common/MediaItem$Subtitle;-><init>(Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration$Builder;Lio/bidmachine/media3/common/MediaItem$1;)V

    return-object v0
.end method
