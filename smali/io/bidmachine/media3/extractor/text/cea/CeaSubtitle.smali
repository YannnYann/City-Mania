###### Class io.bidmachine.media3.extractor.text.cea.CeaSubtitle (io.bidmachine.media3.extractor.text.cea.CeaSubtitle)
.class public final Lio/bidmachine/media3/extractor/text/cea/CeaSubtitle;
.super Ljava/lang/Object;
.source "CeaSubtitle.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/text/Subtitle;


# instance fields
.field public final cues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/text/Cue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/text/Cue;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/CeaSubtitle;->cues:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCues(J)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/text/Cue;",
            ">;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-ltz p1, :cond_9

    .line 55
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/CeaSubtitle;->cues:Ljava/util/List;

    return-object p1

    :cond_9
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1
.end method

.method public getEventTime(I)J
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    .line 49
    :goto_5
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getEventTimeCount()I
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public getNextEventTimeIndex(J)I
    .registers 5

    .line 0
    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-gez p1, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    const/4 p1, -0x1

    return p1
.end method
