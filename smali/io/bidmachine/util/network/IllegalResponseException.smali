###### Class io.bidmachine.util.network.IllegalResponseException (io.bidmachine.util.network.IllegalResponseException)
.class public final Lio/bidmachine/util/network/IllegalResponseException;
.super Ljava/io/IOException;
.source "IllegalResponseException.kt"


# instance fields
.field public final responseCode:I


# direct methods
.method public constructor <init>(I)V
    .registers 4

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Server returned "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " code"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lio/bidmachine/util/network/IllegalResponseException;->responseCode:I

    return-void
.end method
