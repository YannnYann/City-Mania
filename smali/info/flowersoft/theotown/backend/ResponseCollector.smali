###### Class info.flowersoft.theotown.backend.ResponseCollector (info.flowersoft.theotown.backend.ResponseCollector)
.class public interface abstract Linfo/flowersoft/theotown/backend/ResponseCollector;
.super Ljava/lang/Object;
.source "ResponseCollector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract collect(Ljava/io/InputStream;Linfo/flowersoft/theotown/backend/ResponseHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Linfo/flowersoft/theotown/backend/ResponseHandler<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
