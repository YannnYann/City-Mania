###### Class io.bidmachine.models.RequestParams (io.bidmachine.models.RequestParams)
.class public abstract Lio/bidmachine/models/RequestParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SelfType:",
        "Lio/bidmachine/models/RequestParams<",
        "TSelfType;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static resolveParams(Lio/bidmachine/models/RequestParams;Lio/bidmachine/models/RequestParams;)Lio/bidmachine/models/RequestParams;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/bidmachine/models/RequestParams<",
            "TT;>;>(TT;TT;)TT;"
        }
    .end annotation

    if-nez p0, :cond_3

    return-object p1

    :cond_3
    if-eqz p1, :cond_8

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/models/RequestParams;->merge(Lio/bidmachine/models/RequestParams;)V

    :cond_8
    return-object p0
.end method


# virtual methods
.method public abstract merge(Lio/bidmachine/models/RequestParams;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSelfType;)V"
        }
    .end annotation
.end method
