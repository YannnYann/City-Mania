###### Class io.bidmachine.rendering.utils.UiUtils (io.bidmachine.rendering.utils.UiUtils)
.class public Lio/bidmachine/rendering/utils/UiUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lio/bidmachine/rendering/utils/taskmanager/TaskManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lio/bidmachine/rendering/utils/taskmanager/UITaskManager;

    invoke-direct {v0}, Lio/bidmachine/rendering/utils/taskmanager/UITaskManager;-><init>()V

    sput-object v0, Lio/bidmachine/rendering/utils/UiUtils;->a:Lio/bidmachine/rendering/utils/taskmanager/TaskManager;

    return-void
.end method

.method public static cancelOnUiThread(Ljava/lang/Runnable;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/rendering/utils/UiUtils;->a:Lio/bidmachine/rendering/utils/taskmanager/TaskManager;

    invoke-interface {v0, p0}, Lio/bidmachine/rendering/utils/taskmanager/TaskManager;->cancel(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static onUiThread(Ljava/lang/Runnable;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/rendering/utils/UiUtils;->a:Lio/bidmachine/rendering/utils/taskmanager/TaskManager;

    invoke-interface {v0, p0}, Lio/bidmachine/rendering/utils/taskmanager/TaskManager;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static onUiThread(Ljava/lang/Runnable;J)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "runnable",
            "delayMs"
        }
    .end annotation

    .line 2
    sget-object v0, Lio/bidmachine/rendering/utils/UiUtils;->a:Lio/bidmachine/rendering/utils/taskmanager/TaskManager;

    invoke-interface {v0, p0, p1, p2}, Lio/bidmachine/rendering/utils/taskmanager/TaskManager;->schedule(Ljava/lang/Runnable;J)V

    return-void
.end method
