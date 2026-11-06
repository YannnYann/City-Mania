###### Class io.bidmachine.media3.exoplayer.source.DefaultCompositeSequenceableLoaderFactory (io.bidmachine.media3.exoplayer.source.DefaultCompositeSequenceableLoaderFactory)
.class public final Lio/bidmachine/media3/exoplayer/source/DefaultCompositeSequenceableLoaderFactory;
.super Ljava/lang/Object;
.source "DefaultCompositeSequenceableLoaderFactory.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoaderFactory;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Ljava/util/List;Ljava/util/List;)Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;"
        }
    .end annotation

    .line 44
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoader;

    invoke-direct {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoader;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public empty()Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;
    .registers 4

    .line 30
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoader;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoader;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method
