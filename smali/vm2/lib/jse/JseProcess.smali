###### Class vm2.lib.jse.JseProcess (vm2.lib.jse.JseProcess)
.class public Lvm2/lib/jse/JseProcess;
.super Ljava/lang/Object;
.source "JseProcess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvm2/lib/jse/JseProcess$CopyThread;
    }
.end annotation


# instance fields
.field final error:Ljava/lang/Thread;

.field final input:Ljava/lang/Thread;

.field final output:Ljava/lang/Thread;

.field final process:Ljava/lang/Process;


# direct methods
.method private constructor <init>(Ljava/lang/Process;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/io/OutputStream;)V
    .registers 8

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lvm2/lib/jse/JseProcess;->process:Ljava/lang/Process;

    const/4 v0, 0x0

    if-nez p2, :cond_a

    move-object p2, v0

    goto :goto_16

    .line 63
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {p0, p2, v1, v0, v2}, Lvm2/lib/jse/JseProcess;->copyBytes(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/io/OutputStream;)Ljava/lang/Thread;

    move-result-object p2

    :goto_16
    iput-object p2, p0, Lvm2/lib/jse/JseProcess;->input:Ljava/lang/Thread;

    if-nez p3, :cond_1c

    move-object p2, v0

    goto :goto_28

    .line 64
    :cond_1c
    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, p2, p3, v1, v0}, Lvm2/lib/jse/JseProcess;->copyBytes(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/io/OutputStream;)Ljava/lang/Thread;

    move-result-object p2

    :goto_28
    iput-object p2, p0, Lvm2/lib/jse/JseProcess;->output:Ljava/lang/Thread;

    if-nez p4, :cond_2d

    goto :goto_39

    .line 65
    :cond_2d
    invoke-virtual {p1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, p2, p4, p1, v0}, Lvm2/lib/jse/JseProcess;->copyBytes(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/io/OutputStream;)Ljava/lang/Thread;

    move-result-object v0

    :goto_39
    iput-object v0, p0, Lvm2/lib/jse/JseProcess;->error:Ljava/lang/Thread;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/io/OutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lvm2/lib/jse/JseProcess;-><init>(Ljava/lang/Process;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/io/OutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lvm2/lib/jse/JseProcess;-><init>(Ljava/lang/Process;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method private copyBytes(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/io/OutputStream;)Ljava/lang/Thread;
    .registers 11

    .line 93
    new-instance v0, Lvm2/lib/jse/JseProcess$CopyThread;

    const/4 v5, 0x0

    move-object v4, p1

    move-object v1, p2

    move-object v3, p3

    move-object v2, p4

    invoke-direct/range {v0 .. v5}, Lvm2/lib/jse/JseProcess$CopyThread;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/io/InputStream;Lvm2/lib/jse/JseProcess$1;)V

    .line 94
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-object v0
.end method


# virtual methods
.method public exitValue()I
    .registers 2

    .line 70
    iget-object v0, p0, Lvm2/lib/jse/JseProcess;->process:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->exitValue()I

    move-result v0

    return v0
.end method

.method public waitFor()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lvm2/lib/jse/JseProcess;->process:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v0

    .line 79
    iget-object v1, p0, Lvm2/lib/jse/JseProcess;->input:Ljava/lang/Thread;

    if-eqz v1, :cond_d

    .line 80
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 81
    :cond_d
    iget-object v1, p0, Lvm2/lib/jse/JseProcess;->output:Ljava/lang/Thread;

    if-eqz v1, :cond_14

    .line 82
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 83
    :cond_14
    iget-object v1, p0, Lvm2/lib/jse/JseProcess;->error:Ljava/lang/Thread;

    if-eqz v1, :cond_1b

    .line 84
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 85
    :cond_1b
    iget-object v1, p0, Lvm2/lib/jse/JseProcess;->process:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    return v0
.end method

###### Class vm2.lib.jse.JseProcess.AnonymousClass1 (vm2.lib.jse.JseProcess$1)
.class synthetic Lvm2/lib/jse/JseProcess$1;
.super Ljava/lang/Object;
.source "JseProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/jse/JseProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class vm2.lib.jse.JseProcess.CopyThread (vm2.lib.jse.JseProcess$CopyThread)
.class final Lvm2/lib/jse/JseProcess$CopyThread;
.super Ljava/lang/Thread;
.source "JseProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/jse/JseProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CopyThread"
.end annotation


# instance fields
.field private final input:Ljava/io/InputStream;

.field private final output:Ljava/io/OutputStream;

.field private final ownedInput:Ljava/io/InputStream;

.field private final ownedOutput:Ljava/io/OutputStream;


# direct methods
.method private constructor <init>(Ljava/io/OutputStream;Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/io/InputStream;)V
    .registers 5

    .line 105
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 106
    iput-object p1, p0, Lvm2/lib/jse/JseProcess$CopyThread;->output:Ljava/io/OutputStream;

    .line 107
    iput-object p2, p0, Lvm2/lib/jse/JseProcess$CopyThread;->ownedOutput:Ljava/io/OutputStream;

    .line 108
    iput-object p3, p0, Lvm2/lib/jse/JseProcess$CopyThread;->ownedInput:Ljava/io/InputStream;

    .line 109
    iput-object p4, p0, Lvm2/lib/jse/JseProcess$CopyThread;->input:Ljava/io/InputStream;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/OutputStream;Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/io/InputStream;Lvm2/lib/jse/JseProcess$1;)V
    .registers 6

    .line 98
    invoke-direct {p0, p1, p2, p3, p4}, Lvm2/lib/jse/JseProcess$CopyThread;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const/16 v0, 0x400

    .line 114
    :try_start_2
    new-array v0, v0, [B
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_4} :catch_1d

    .line 117
    :goto_4
    :try_start_4
    iget-object v1, p0, Lvm2/lib/jse/JseProcess$CopyThread;->input:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-ltz v1, :cond_15

    .line 118
    iget-object v2, p0, Lvm2/lib/jse/JseProcess$CopyThread;->output:Ljava/io/OutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_13

    goto :goto_4

    :catchall_13
    move-exception v0

    goto :goto_27

    .line 121
    :cond_15
    :try_start_15
    iget-object v0, p0, Lvm2/lib/jse/JseProcess$CopyThread;->ownedInput:Ljava/io/InputStream;

    if-eqz v0, :cond_1f

    .line 122
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_1f

    :catch_1d
    move-exception v0

    goto :goto_36

    .line 123
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lvm2/lib/jse/JseProcess$CopyThread;->ownedOutput:Ljava/io/OutputStream;

    if-eqz v0, :cond_39

    .line 124
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    .line 121
    :goto_27
    iget-object v1, p0, Lvm2/lib/jse/JseProcess$CopyThread;->ownedInput:Ljava/io/InputStream;

    if-eqz v1, :cond_2e

    .line 122
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 123
    :cond_2e
    iget-object v1, p0, Lvm2/lib/jse/JseProcess$CopyThread;->ownedOutput:Ljava/io/OutputStream;

    if-eqz v1, :cond_35

    .line 124
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 125
    :cond_35
    throw v0
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_36} :catch_1d

    .line 127
    :goto_36
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_39
    return-void
.end method
