###### Class io.bidmachine.rendering.measurer.Measurer (io.bidmachine.rendering.measurer.Measurer)
.class public interface abstract Lio/bidmachine/rendering/measurer/Measurer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ViewType:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# virtual methods
.method public abstract destroy(Ljava/lang/Runnable;)V
.end method

.method public abstract onClicked()V
.end method

.method public abstract onError(Lio/bidmachine/util/Error;)V
.end method

.method public abstract onShown()V
.end method

.method public abstract onViewAddedToContainer(Landroid/view/View;Landroid/view/ViewGroup;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TViewType;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onViewCreated(Landroid/view/View;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TViewType;)V"
        }
    .end annotation
.end method

.method public abstract onViewReady(Landroid/view/View;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TViewType;)V"
        }
    .end annotation
.end method
