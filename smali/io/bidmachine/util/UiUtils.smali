###### Class io.bidmachine.util.UiUtils (io.bidmachine.util.UiUtils)
.class public final Lio/bidmachine/util/UiUtils;
.super Ljava/lang/Object;
.source "UiUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUiUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UiUtils.kt\nio/bidmachine/util/UiUtils\n+ 2 Utils.kt\nio/bidmachine/util/UtilsKt\n*L\n1#1,219:1\n846#2,4:220\n*S KotlinDebug\n*F\n+ 1 UiUtils.kt\nio/bidmachine/util/UiUtils\n*L\n45#1:220,4\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lio/bidmachine/util/UiUtils;

.field public static final TASK_MANAGER:Lio/bidmachine/util/taskmanager/TaskManager;


# direct methods
.method public static synthetic $r8$lambda$V5bI0jM7aNfrKTyI1KPwJbGCl9I(Lio/bidmachine/util/Executable;Ljava/lang/Object;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lio/bidmachine/util/UiUtils;->onUiThreadWithArgSafely$lambda$1(Lio/bidmachine/util/Executable;Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/bidmachine/util/UiUtils;

    invoke-direct {v0}, Lio/bidmachine/util/UiUtils;-><init>()V

    sput-object v0, Lio/bidmachine/util/UiUtils;->INSTANCE:Lio/bidmachine/util/UiUtils;

    .line 25
    new-instance v0, Lio/bidmachine/util/taskmanager/handler/UIHandlerTaskManager;

    invoke-direct {v0}, Lio/bidmachine/util/taskmanager/handler/UIHandlerTaskManager;-><init>()V

    sput-object v0, Lio/bidmachine/util/UiUtils;->TASK_MANAGER:Lio/bidmachine/util/taskmanager/TaskManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final applyFullscreen(Landroid/app/Activity;)V
    .registers 2

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-static {p0}, Lio/bidmachine/util/UiUtilsKt;->applyFullscreen(Landroid/app/Activity;)V

    return-void
.end method

.method public static final cancelOnUiThread(Ljava/lang/Runnable;)V
    .registers 2

    if-nez p0, :cond_3

    return-void

    .line 54
    :cond_3
    sget-object v0, Lio/bidmachine/util/UiUtils;->TASK_MANAGER:Lio/bidmachine/util/taskmanager/TaskManager;

    invoke-interface {v0, p0}, Lio/bidmachine/util/taskmanager/TaskManager;->cancel(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final finishActivityWithoutAnimation(Landroid/app/Activity;)V
    .registers 2

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-static {p0}, Lio/bidmachine/util/UiUtilsKt;->finishActivityWithoutAnimation(Landroid/app/Activity;)V

    return-void
.end method

.method public static final onUiThread(Ljava/lang/Runnable;)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 33
    :cond_4
    sget-object v0, Lio/bidmachine/util/UiUtils;->TASK_MANAGER:Lio/bidmachine/util/taskmanager/TaskManager;

    invoke-interface {v0, p0}, Lio/bidmachine/util/taskmanager/TaskManager;->executeSafely(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public static final onUiThread(Ljava/lang/Runnable;J)Z
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 39
    :cond_4
    sget-object v0, Lio/bidmachine/util/UiUtils;->TASK_MANAGER:Lio/bidmachine/util/taskmanager/TaskManager;

    invoke-interface {v0, p0, p1, p2}, Lio/bidmachine/util/taskmanager/TaskManager;->scheduleSafely(Ljava/lang/Runnable;J)Z

    move-result p0

    return p0
.end method

.method public static final onUiThreadWithArgSafely$lambda$1(Lio/bidmachine/util/Executable;Ljava/lang/Object;)V
    .registers 2

    .line 46
    :try_start_0
    invoke-interface {p0, p1}, Lio/bidmachine/util/Executable;->execute(Ljava/lang/Object;)V

    .line 47
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_5

    :catchall_5
    return-void
.end method

.method public static final prepareFullscreen(Landroid/app/Activity;)V
    .registers 2

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-static {p0}, Lio/bidmachine/util/UiUtilsKt;->prepareFullscreen(Landroid/app/Activity;)V

    return-void
.end method

.method public static final setWindowBackgroundColor(Landroid/view/Window;I)Lkotlin/Unit;
    .registers 2

    .line 58
    invoke-static {p0, p1}, Lio/bidmachine/util/UiUtilsKt;->setWindowBackgroundColor(Landroid/view/Window;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final onUiThreadWithArgSafely(Ljava/lang/Object;Lio/bidmachine/util/Executable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            ">(TI;",
            "Lio/bidmachine/util/Executable<",
            "TI;>;)V"
        }
    .end annotation

    if-nez p2, :cond_3

    return-void

    .line 44
    :cond_3
    new-instance v0, Lio/bidmachine/util/UiUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p1}, Lio/bidmachine/util/UiUtils$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/util/Executable;Ljava/lang/Object;)V

    invoke-static {v0}, Lio/bidmachine/util/UiUtils;->onUiThread(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class io.bidmachine.util.UiUtils$$ExternalSyntheticLambda0 (io.bidmachine.util.UiUtils$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/util/UiUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/util/Executable;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/util/Executable;Ljava/lang/Object;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/util/UiUtils$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/util/Executable;

    iput-object p2, p0, Lio/bidmachine/util/UiUtils$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/util/UiUtils$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/util/Executable;

    iget-object v1, p0, Lio/bidmachine/util/UiUtils$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/util/UiUtils;->$r8$lambda$V5bI0jM7aNfrKTyI1KPwJbGCl9I(Lio/bidmachine/util/Executable;Ljava/lang/Object;)V

    return-void
.end method
