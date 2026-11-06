###### Class io.bidmachine.util.taskmanager.handler.UIHandlerTaskManager (io.bidmachine.util.taskmanager.handler.UIHandlerTaskManager)
.class public final Lio/bidmachine/util/taskmanager/handler/UIHandlerTaskManager;
.super Lio/bidmachine/util/taskmanager/handler/HandlerTaskManager;
.source "UIHandlerTaskManager.kt"


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const-string v1, "getMainLooper()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lio/bidmachine/util/taskmanager/handler/HandlerTaskManager;-><init>(Landroid/os/Looper;)V

    return-void
.end method
