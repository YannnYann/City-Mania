###### Class io.bidmachine.util.network.NetworkError (io.bidmachine.util.network.NetworkError)
.class public final Lio/bidmachine/util/network/NetworkError;
.super Ljava/lang/Object;
.source "NetworkError.kt"


# instance fields
.field public final throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 3

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/util/network/NetworkError;->throwable:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final getThrowable()Ljava/lang/Throwable;
    .registers 2

    .line 3
    iget-object v0, p0, Lio/bidmachine/util/network/NetworkError;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 5
    iget-object v0, p0, Lio/bidmachine/util/network/NetworkError;->throwable:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
