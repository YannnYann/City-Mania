###### Class io.bidmachine.util.ResultCallback (io.bidmachine.util.ResultCallback)
.class public interface abstract Lio/bidmachine/util/ResultCallback;
.super Ljava/lang/Object;
.source "ResultCallback.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SuccessType:",
        "Ljava/lang/Object;",
        "ErrorType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onError(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TErrorType;)V"
        }
    .end annotation
.end method

.method public abstract onSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSuccessType;)V"
        }
    .end annotation
.end method
