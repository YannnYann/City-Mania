###### Class io.bidmachine.media3.common.text.CueGroup (io.bidmachine.media3.common.text.CueGroup)
.class public final Lio/bidmachine/media3/common/text/CueGroup;
.super Ljava/lang/Object;
.source "CueGroup.java"


# static fields
.field public static final EMPTY_TIME_ZERO:Lio/bidmachine/media3/common/text/CueGroup;

.field public static final FIELD_CUES:Ljava/lang/String;

.field public static final FIELD_PRESENTATION_TIME_US:Ljava/lang/String;


# instance fields
.field public final cues:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lio/bidmachine/media3/common/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field public final presentationTimeUs:J


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 34
    new-instance v0, Lio/bidmachine/media3/common/text/CueGroup;

    .line 35
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/bidmachine/media3/common/text/CueGroup;-><init>(Ljava/util/List;J)V

    sput-object v0, Lio/bidmachine/media3/common/text/CueGroup;->EMPTY_TIME_ZERO:Lio/bidmachine/media3/common/text/CueGroup;

    const/4 v0, 0x0

    .line 61
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/text/CueGroup;->FIELD_CUES:Ljava/lang/String;

    const/4 v0, 0x1

    .line 62
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/text/CueGroup;->FIELD_PRESENTATION_TIME_US:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;J)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/text/Cue;",
            ">;J)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/common/text/CueGroup;->cues:Lcom/google/common/collect/ImmutableList;

    .line 58
    iput-wide p2, p0, Lio/bidmachine/media3/common/text/CueGroup;->presentationTimeUs:J

    return-void
.end method
