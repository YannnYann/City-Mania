###### Class io.bidmachine.rendering.internal.controller.d (io.bidmachine.rendering.internal.controller.d)
.class public final Lio/bidmachine/rendering/internal/controller/d;
.super Lio/bidmachine/rendering/utils/taskmanager/CancelableTask;
.source "SourceFile"


# instance fields
.field public final b:Lio/bidmachine/rendering/internal/b;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/b;)V
    .registers 3

    const-string v0, "adElement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/utils/taskmanager/CancelableTask;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/controller/d;->b:Lio/bidmachine/rendering/internal/b;

    return-void
.end method


# virtual methods
.method public runTask()V
    .registers 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/d;->b:Lio/bidmachine/rendering/internal/b;

    invoke-interface {v0}, Lio/bidmachine/rendering/internal/b;->a()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    return-void

    :catchall_6
    move-exception v0

    .line 3
    invoke-static {v0}, Lio/bidmachine/rendering/internal/t;->b(Ljava/lang/Throwable;)V

    return-void
.end method
