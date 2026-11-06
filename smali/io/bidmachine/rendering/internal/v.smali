###### Class io.bidmachine.rendering.internal.v (io.bidmachine.rendering.internal.v)
.class public final Lio/bidmachine/rendering/internal/v;
.super Lio/bidmachine/rendering/internal/G;
.source "SourceFile"


# instance fields
.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/model/MethodParams;Lio/bidmachine/rendering/internal/event/a;)V
    .registers 4

    const-string v0, "methodParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2}, Lio/bidmachine/rendering/internal/G;-><init>(Lio/bidmachine/rendering/internal/event/a;)V

    .line 3
    invoke-virtual {p1}, Lio/bidmachine/rendering/model/MethodParams;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/rendering/internal/v;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public r()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/v;->d:Ljava/lang/String;

    return-object v0
.end method
