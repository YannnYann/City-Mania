###### Class io.bidmachine.media3.extractor.text.SubtitleParser (io.bidmachine.media3.extractor.text.SubtitleParser)
.class public interface abstract Lio/bidmachine/media3/extractor/text/SubtitleParser;
.super Ljava/lang/Object;
.source "SubtitleParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/extractor/text/SubtitleParser$OutputOptions;,
        Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;
    }
.end annotation


# virtual methods
.method public abstract getCueReplacementBehavior()I
.end method

.method public abstract parse([BIILio/bidmachine/media3/extractor/text/SubtitleParser$OutputOptions;Lio/bidmachine/media3/common/util/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lio/bidmachine/media3/extractor/text/SubtitleParser$OutputOptions;",
            "Lio/bidmachine/media3/common/util/Consumer<",
            "Lio/bidmachine/media3/extractor/text/CuesWithTiming;",
            ">;)V"
        }
    .end annotation
.end method

.method public parseToLegacySubtitle([BII)Lio/bidmachine/media3/extractor/text/Subtitle;
    .registers 11

    .line 203
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 204
    invoke-static {}, Lio/bidmachine/media3/extractor/text/SubtitleParser$OutputOptions;->access$000()Lio/bidmachine/media3/extractor/text/SubtitleParser$OutputOptions;

    move-result-object v5

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lio/bidmachine/media3/extractor/text/SubtitleParser$$ExternalSyntheticLambda0;

    invoke-direct {v6, v0}, Lio/bidmachine/media3/extractor/text/SubtitleParser$$ExternalSyntheticLambda0;-><init>(Lcom/google/common/collect/ImmutableList$Builder;)V

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-interface/range {v1 .. v6}, Lio/bidmachine/media3/extractor/text/SubtitleParser;->parse([BIILio/bidmachine/media3/extractor/text/SubtitleParser$OutputOptions;Lio/bidmachine/media3/common/util/Consumer;)V

    .line 205
    new-instance p1, Lio/bidmachine/media3/extractor/text/CuesWithTimingSubtitle;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p2

    invoke-direct {p1, p2}, Lio/bidmachine/media3/extractor/text/CuesWithTimingSubtitle;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method public reset()V
    .registers 1

    .line 0
    return-void
.end method

###### Class io.bidmachine.media3.extractor.text.SubtitleParser.Factory (io.bidmachine.media3.extractor.text.SubtitleParser$Factory)
.class public interface abstract Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;
.super Ljava/lang/Object;
.source "SubtitleParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/text/SubtitleParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# static fields
.field public static final UNSUPPORTED:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    new-instance v0, Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory$1;

    invoke-direct {v0}, Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory$1;-><init>()V

    sput-object v0, Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;->UNSUPPORTED:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

    return-void
.end method


# virtual methods
.method public abstract create(Lio/bidmachine/media3/common/Format;)Lio/bidmachine/media3/extractor/text/SubtitleParser;
.end method

.method public abstract getCueReplacementBehavior(Lio/bidmachine/media3/common/Format;)I
.end method

.method public abstract supportsFormat(Lio/bidmachine/media3/common/Format;)Z
.end method

###### Class io.bidmachine.media3.extractor.text.SubtitleParser.Factory.AnonymousClass1 (io.bidmachine.media3.extractor.text.SubtitleParser$Factory$1)
.class public Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory$1;
.super Ljava/lang/Object;
.source "SubtitleParser.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lio/bidmachine/media3/common/Format;)Lio/bidmachine/media3/extractor/text/SubtitleParser;
    .registers 3

    .line 55
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This SubtitleParser.Factory doesn\'t support any formats."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCueReplacementBehavior(Lio/bidmachine/media3/common/Format;)I
    .registers 2

    .line 0
    const/4 p1, 0x1

    return p1
.end method

.method public supportsFormat(Lio/bidmachine/media3/common/Format;)Z
    .registers 2

    .line 0
    const/4 p1, 0x0

    return p1
.end method

###### Class io.bidmachine.media3.extractor.text.SubtitleParser.OutputOptions (io.bidmachine.media3.extractor.text.SubtitleParser$OutputOptions)
.class public Lio/bidmachine/media3/extractor/text/SubtitleParser$OutputOptions;
.super Ljava/lang/Object;
.source "SubtitleParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/text/SubtitleParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutputOptions"
.end annotation


# static fields
.field public static final ALL:Lio/bidmachine/media3/extractor/text/SubtitleParser$OutputOptions;


# instance fields
.field public final outputAllCues:Z

.field public final startTimeUs:J


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 96
    new-instance v0, Lio/bidmachine/media3/extractor/text/SubtitleParser$OutputOptions;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/bidmachine/media3/extractor/text/SubtitleParser$OutputOptions;-><init>(JZ)V

    sput-object v0, Lio/bidmachine/media3/extractor/text/SubtitleParser$OutputOptions;->ALL:Lio/bidmachine/media3/extractor/text/SubtitleParser$OutputOptions;

    return-void
.end method

.method public constructor <init>(JZ)V
    .registers 4

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-wide p1, p0, Lio/bidmachine/media3/extractor/text/SubtitleParser$OutputOptions;->startTimeUs:J

    .line 114
    iput-boolean p3, p0, Lio/bidmachine/media3/extractor/text/SubtitleParser$OutputOptions;->outputAllCues:Z

    return-void
.end method

.method public static synthetic access$000()Lio/bidmachine/media3/extractor/text/SubtitleParser$OutputOptions;
    .registers 1

    .line 94
    sget-object v0, Lio/bidmachine/media3/extractor/text/SubtitleParser$OutputOptions;->ALL:Lio/bidmachine/media3/extractor/text/SubtitleParser$OutputOptions;

    return-object v0
.end method

.method public static allCues()Lio/bidmachine/media3/extractor/text/SubtitleParser$OutputOptions;
    .registers 1

    .line 119
    sget-object v0, Lio/bidmachine/media3/extractor/text/SubtitleParser$OutputOptions;->ALL:Lio/bidmachine/media3/extractor/text/SubtitleParser$OutputOptions;

    return-object v0
.end method

.method public static cuesAfterThenRemainingCuesBefore(J)Lio/bidmachine/media3/extractor/text/SubtitleParser$OutputOptions;
    .registers 4

    .line 140
    new-instance v0, Lio/bidmachine/media3/extractor/text/SubtitleParser$OutputOptions;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lio/bidmachine/media3/extractor/text/SubtitleParser$OutputOptions;-><init>(JZ)V

    return-object v0
.end method

###### Class io.bidmachine.media3.extractor.text.SubtitleParser$$ExternalSyntheticLambda0 (io.bidmachine.media3.extractor.text.SubtitleParser$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/extractor/text/SubtitleParser$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/google/common/collect/ImmutableList$Builder;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/collect/ImmutableList$Builder;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/text/SubtitleParser$$ExternalSyntheticLambda0;->f$0:Lcom/google/common/collect/ImmutableList$Builder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/SubtitleParser$$ExternalSyntheticLambda0;->f$0:Lcom/google/common/collect/ImmutableList$Builder;

    check-cast p1, Lio/bidmachine/media3/extractor/text/CuesWithTiming;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    return-void
.end method
