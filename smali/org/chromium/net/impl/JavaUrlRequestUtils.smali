###### Class org.chromium.net.impl.JavaUrlRequestUtils (org.chromium.net.impl.JavaUrlRequestUtils)
.class public final Lorg/chromium/net/impl/JavaUrlRequestUtils;
.super Ljava/lang/Object;
.source "JavaUrlRequestUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/net/impl/JavaUrlRequestUtils$DirectPreventingExecutor;,
        Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;
    }
.end annotation


# direct methods
.method public static stateToString(I)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    packed-switch p0, :pswitch_data_36

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :pswitch_1a
    const-string p0, "CANCELLED"

    return-object p0

    .line 72
    :pswitch_1d
    const-string p0, "COMPLETE"

    return-object p0

    .line 70
    :pswitch_20
    const-string p0, "ERROR"

    return-object p0

    .line 68
    :pswitch_23
    const-string p0, "READING"

    return-object p0

    .line 66
    :pswitch_26
    const-string p0, "AWAITING_READ"

    return-object p0

    .line 64
    :pswitch_29
    const-string p0, "AWAITING_FOLLOW_REDIRECT"

    return-object p0

    .line 62
    :pswitch_2c
    const-string p0, "REDIRECT_RECEIVED"

    return-object p0

    .line 60
    :pswitch_2f
    const-string p0, "STARTED"

    return-object p0

    .line 58
    :pswitch_32
    const-string p0, "NOT_STARTED"

    return-object p0

    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
    .end packed-switch
.end method

###### Class org.chromium.net.impl.JavaUrlRequestUtils.CheckedRunnable (org.chromium.net.impl.JavaUrlRequestUtils$CheckedRunnable)
.class public interface abstract Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;
.super Ljava/lang/Object;
.source "JavaUrlRequestUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/impl/JavaUrlRequestUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CheckedRunnable"
.end annotation


# virtual methods
.method public abstract run()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

###### Class org.chromium.net.impl.JavaUrlRequestUtils.DirectPreventingExecutor (org.chromium.net.impl.JavaUrlRequestUtils$DirectPreventingExecutor)
.class public final Lorg/chromium/net/impl/JavaUrlRequestUtils$DirectPreventingExecutor;
.super Ljava/lang/Object;
.source "JavaUrlRequestUtils.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/impl/JavaUrlRequestUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DirectPreventingExecutor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/net/impl/JavaUrlRequestUtils$DirectPreventingExecutor$InlineCheckingRunnable;
    }
.end annotation


# instance fields
.field public final mDelegate:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delegate"
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequestUtils$DirectPreventingExecutor;->mDelegate:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "command"
        }
    .end annotation

    .line 110
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 111
    new-instance v1, Lorg/chromium/net/impl/JavaUrlRequestUtils$DirectPreventingExecutor$InlineCheckingRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lorg/chromium/net/impl/JavaUrlRequestUtils$DirectPreventingExecutor$InlineCheckingRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/Thread;Lorg/chromium/net/impl/JavaUrlRequestUtils-IA;)V

    .line 112
    iget-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequestUtils$DirectPreventingExecutor;->mDelegate:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 115
    invoke-static {v1}, Lorg/chromium/net/impl/JavaUrlRequestUtils$DirectPreventingExecutor$InlineCheckingRunnable;->-$$Nest$fgetmExecutedInline(Lorg/chromium/net/impl/JavaUrlRequestUtils$DirectPreventingExecutor$InlineCheckingRunnable;)Lorg/chromium/net/InlineExecutionProhibitedException;

    move-result-object p1

    if-nez p1, :cond_19

    .line 128
    invoke-static {v1, v2}, Lorg/chromium/net/impl/JavaUrlRequestUtils$DirectPreventingExecutor$InlineCheckingRunnable;->-$$Nest$fputmCallingThread(Lorg/chromium/net/impl/JavaUrlRequestUtils$DirectPreventingExecutor$InlineCheckingRunnable;Ljava/lang/Thread;)V

    return-void

    .line 116
    :cond_19
    invoke-static {v1}, Lorg/chromium/net/impl/JavaUrlRequestUtils$DirectPreventingExecutor$InlineCheckingRunnable;->-$$Nest$fgetmExecutedInline(Lorg/chromium/net/impl/JavaUrlRequestUtils$DirectPreventingExecutor$InlineCheckingRunnable;)Lorg/chromium/net/InlineExecutionProhibitedException;

    move-result-object p1

    throw p1
.end method

###### Class org.chromium.net.impl.JavaUrlRequestUtils.DirectPreventingExecutor.InlineCheckingRunnable (org.chromium.net.impl.JavaUrlRequestUtils$DirectPreventingExecutor$InlineCheckingRunnable)
.class public final Lorg/chromium/net/impl/JavaUrlRequestUtils$DirectPreventingExecutor$InlineCheckingRunnable;
.super Ljava/lang/Object;
.source "JavaUrlRequestUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/impl/JavaUrlRequestUtils$DirectPreventingExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InlineCheckingRunnable"
.end annotation


# instance fields
.field public mCallingThread:Ljava/lang/Thread;

.field public final mCommand:Ljava/lang/Runnable;

.field public mExecutedInline:Lorg/chromium/net/InlineExecutionProhibitedException;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmExecutedInline(Lorg/chromium/net/impl/JavaUrlRequestUtils$DirectPreventingExecutor$InlineCheckingRunnable;)Lorg/chromium/net/InlineExecutionProhibitedException;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/chromium/net/impl/JavaUrlRequestUtils$DirectPreventingExecutor$InlineCheckingRunnable;->mExecutedInline:Lorg/chromium/net/InlineExecutionProhibitedException;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmCallingThread(Lorg/chromium/net/impl/JavaUrlRequestUtils$DirectPreventingExecutor$InlineCheckingRunnable;Ljava/lang/Thread;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequestUtils$DirectPreventingExecutor$InlineCheckingRunnable;->mCallingThread:Ljava/lang/Thread;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Thread;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "command",
            "callingThread"
        }
    .end annotation

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequestUtils$DirectPreventingExecutor$InlineCheckingRunnable;->mCommand:Ljava/lang/Runnable;

    .line 139
    iput-object p2, p0, Lorg/chromium/net/impl/JavaUrlRequestUtils$DirectPreventingExecutor$InlineCheckingRunnable;->mCallingThread:Ljava/lang/Thread;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Runnable;Ljava/lang/Thread;Lorg/chromium/net/impl/JavaUrlRequestUtils-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/chromium/net/impl/JavaUrlRequestUtils$DirectPreventingExecutor$InlineCheckingRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/Thread;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 144
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/net/impl/JavaUrlRequestUtils$DirectPreventingExecutor$InlineCheckingRunnable;->mCallingThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_10

    .line 147
    new-instance v0, Lorg/chromium/net/InlineExecutionProhibitedException;

    invoke-direct {v0}, Lorg/chromium/net/InlineExecutionProhibitedException;-><init>()V

    iput-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequestUtils$DirectPreventingExecutor$InlineCheckingRunnable;->mExecutedInline:Lorg/chromium/net/InlineExecutionProhibitedException;

    return-void

    .line 150
    :cond_10
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequestUtils$DirectPreventingExecutor$InlineCheckingRunnable;->mCommand:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
