###### Class io.bidmachine.media3.exoplayer.source.CompositeSequenceableLoaderFactory (io.bidmachine.media3.exoplayer.source.CompositeSequenceableLoaderFactory)
.class public interface abstract Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoaderFactory;
.super Ljava/lang/Object;
.source "CompositeSequenceableLoaderFactory.java"


# virtual methods
.method public abstract create(Ljava/util/List;Ljava/util/List;)Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;
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
.end method

.method public abstract empty()Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;
.end method
