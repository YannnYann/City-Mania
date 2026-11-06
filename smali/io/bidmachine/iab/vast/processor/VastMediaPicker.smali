###### Class io.bidmachine.iab.vast.processor.VastMediaPicker (io.bidmachine.iab.vast.processor.VastMediaPicker)
.class public abstract Lio/bidmachine/iab/vast/processor/VastMediaPicker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lio/bidmachine/iab/vast/tags/MediaFileTag;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract pickVideo(Ljava/util/List;)Landroid/util/Pair;
.end method
