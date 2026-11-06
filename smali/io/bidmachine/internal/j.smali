###### Class io.bidmachine.internal.C4226j (io.bidmachine.internal.j)
.class public final Lio/bidmachine/internal/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/ExpirationHandler$Listener;


# instance fields
.field public final a:Lio/bidmachine/AdProcessCallback;


# direct methods
.method public constructor <init>(Lio/bidmachine/AdProcessCallback;)V
    .registers 3

    const-string v0, "adProcessCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/internal/j;->a:Lio/bidmachine/AdProcessCallback;

    return-void
.end method


# virtual methods
.method public onExpired()V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/bidmachine/internal/j;->a:Lio/bidmachine/AdProcessCallback;

    .line 2
    new-instance v1, Lio/bidmachine/utils/BMError;

    .line 3
    sget-object v2, Lio/bidmachine/utils/BMError;->TimeoutError:Lio/bidmachine/utils/BMError;

    const/4 v3, -0x1

    .line 4
    const-string v4, "Creative loading timeout reached"

    invoke-direct {v1, v2, v3, v4}, Lio/bidmachine/utils/BMError;-><init>(Lio/bidmachine/utils/BMError;ILjava/lang/String;)V

    .line 5
    invoke-interface {v0, v1}, Lio/bidmachine/AdProcessCallback;->processLoadFail(Lio/bidmachine/utils/BMError;)V

    return-void
.end method
