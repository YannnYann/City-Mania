###### Class io.bidmachine.media3.extractor.text.ttml.TtmlSubtitle (io.bidmachine.media3.extractor.text.ttml.TtmlSubtitle)
.class public final Lio/bidmachine/media3/extractor/text/ttml/TtmlSubtitle;
.super Ljava/lang/Object;
.source "TtmlSubtitle.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/text/Subtitle;


# instance fields
.field public final eventTimesUs:[J

.field public final globalStyles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;",
            ">;"
        }
    .end annotation
.end field

.field public final imageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final regionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/media3/extractor/text/ttml/TtmlRegion;",
            ">;"
        }
    .end annotation
.end field

.field public final root:Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/media3/extractor/text/ttml/TtmlRegion;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlSubtitle;->root:Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;

    .line 42
    iput-object p3, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlSubtitle;->regionMap:Ljava/util/Map;

    .line 43
    iput-object p4, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlSubtitle;->imageMap:Ljava/util/Map;

    if-eqz p2, :cond_10

    .line 45
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    goto :goto_12

    :cond_10
    sget-object p2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    :goto_12
    iput-object p2, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlSubtitle;->globalStyles:Ljava/util/Map;

    .line 46
    invoke-virtual {p1}, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->getEventTimesUs()[J

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlSubtitle;->eventTimesUs:[J

    return-void
.end method


# virtual methods
.method public getCues(J)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/text/Cue;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlSubtitle;->root:Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;

    iget-object v3, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlSubtitle;->globalStyles:Ljava/util/Map;

    iget-object v4, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlSubtitle;->regionMap:Ljava/util/Map;

    iget-object v5, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlSubtitle;->imageMap:Ljava/util/Map;

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->getCues(JLjava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getEventTime(I)J
    .registers 5

    .line 62
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlSubtitle;->eventTimesUs:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public getEventTimeCount()I
    .registers 2

    .line 57
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlSubtitle;->eventTimesUs:[J

    array-length v0, v0

    return v0
.end method

.method public getNextEventTimeIndex(J)I
    .registers 5

    .line 51
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlSubtitle;->eventTimesUs:[J

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1, v1}, Lio/bidmachine/media3/common/util/Util;->binarySearchCeil([JJZZ)I

    move-result p1

    .line 52
    iget-object p2, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlSubtitle;->eventTimesUs:[J

    array-length p2, p2

    if-ge p1, p2, :cond_d

    return p1

    :cond_d
    const/4 p1, -0x1

    return p1
.end method
