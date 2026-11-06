###### Class io.bidmachine.media3.exoplayer.source.UnrecognizedInputFormatException (io.bidmachine.media3.exoplayer.source.UnrecognizedInputFormatException)
.class public Lio/bidmachine/media3/exoplayer/source/UnrecognizedInputFormatException;
.super Lio/bidmachine/media3/common/ParserException;
.source "UnrecognizedInputFormatException.java"


# instance fields
.field public final sniffFailures:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lio/bidmachine/media3/extractor/SniffFailure;",
            ">;"
        }
    .end annotation
.end field

.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/media3/extractor/SniffFailure;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 64
    invoke-direct {p0, p1, v2, v0, v1}, Lio/bidmachine/media3/common/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZI)V

    .line 65
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/source/UnrecognizedInputFormatException;->uri:Landroid/net/Uri;

    .line 66
    invoke-static {p3}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/UnrecognizedInputFormatException;->sniffFailures:Lcom/google/common/collect/ImmutableList;

    return-void
.end method
