###### Class io.bidmachine.rendering.Repository (io.bidmachine.rendering.Repository)
.class public interface abstract Lio/bidmachine/rendering/Repository;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/Repository$ResultCallback;
    }
.end annotation


# virtual methods
.method public abstract getImage(Lio/bidmachine/rendering/model/MediaSource;Ljava/lang/Object;Lio/bidmachine/rendering/Repository$ResultCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/rendering/model/MediaSource;",
            "Ljava/lang/Object;",
            "Lio/bidmachine/rendering/Repository$ResultCallback<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getImageUri-0E7RQCE(Lio/bidmachine/rendering/model/UrlMediaSource;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/rendering/model/UrlMediaSource;",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Landroid/net/Uri;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract getString(Lio/bidmachine/rendering/model/MediaSource;Ljava/lang/Object;Lio/bidmachine/rendering/Repository$ResultCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/rendering/model/MediaSource;",
            "Ljava/lang/Object;",
            "Lio/bidmachine/rendering/Repository$ResultCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getVideo(Lio/bidmachine/rendering/model/MediaSource;Ljava/lang/Object;Lio/bidmachine/rendering/Repository$ResultCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/rendering/model/MediaSource;",
            "Ljava/lang/Object;",
            "Lio/bidmachine/rendering/Repository$ResultCallback<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getVideo-0E7RQCE(Lio/bidmachine/rendering/model/MediaSource;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/rendering/model/MediaSource;",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Landroid/net/Uri;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract unholdMediaFiles(Ljava/lang/Object;)V
.end method

###### Class io.bidmachine.rendering.Repository.ResultCallback (io.bidmachine.rendering.Repository$ResultCallback)
.class public interface abstract Lio/bidmachine/rendering/Repository$ResultCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/util/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/Repository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ResultCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SuccessType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/bidmachine/util/ResultCallback<",
        "TSuccessType;",
        "Lio/bidmachine/util/Error;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract onError(Lio/bidmachine/util/Error;)V
.end method

.method public abstract onSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSuccessType;)V"
        }
    .end annotation
.end method
