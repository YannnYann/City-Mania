###### Class io.bidmachine.rendering.utils.taskmanager.UITaskManager (io.bidmachine.rendering.utils.taskmanager.UITaskManager)
.class public Lio/bidmachine/rendering/utils/taskmanager/UITaskManager;
.super Lio/bidmachine/rendering/utils/taskmanager/SingleThreadTaskManager;
.source "SourceFile"


# static fields
.field public static final a:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lio/bidmachine/rendering/utils/taskmanager/UITaskManager;->a:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/utils/taskmanager/SingleThreadTaskManager;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Handler;
    .registers 2

    .line 1
    sget-object v0, Lio/bidmachine/rendering/utils/taskmanager/UITaskManager;->a:Landroid/os/Handler;

    return-object v0
.end method
