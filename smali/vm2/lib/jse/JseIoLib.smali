###### Class vm2.lib.jse.JseIoLib (vm2.lib.jse.JseIoLib)
.class public Lvm2/lib/jse/JseIoLib;
.super Lvm2/lib/IoLib;
.source "JseIoLib.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvm2/lib/jse/JseIoLib$StdinFile;,
        Lvm2/lib/jse/JseIoLib$StdoutFile;,
        Lvm2/lib/jse/JseIoLib$FileImpl;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 72
    invoke-direct {p0}, Lvm2/lib/IoLib;-><init>()V

    return-void
.end method

.method public static synthetic access$1000(Lvm2/lib/jse/JseIoLib;)Lvm2/Globals;
    .registers 1

    .line 72
    iget-object p0, p0, Lvm2/lib/IoLib;->globals:Lvm2/Globals;

    return-object p0
.end method

.method public static synthetic access$1100(Lvm2/lib/jse/JseIoLib;)Lvm2/Globals;
    .registers 1

    .line 72
    iget-object p0, p0, Lvm2/lib/IoLib;->globals:Lvm2/Globals;

    return-object p0
.end method

.method public static synthetic access$1200(Lvm2/lib/jse/JseIoLib;)Lvm2/Globals;
    .registers 1

    .line 72
    iget-object p0, p0, Lvm2/lib/IoLib;->globals:Lvm2/Globals;

    return-object p0
.end method

.method public static synthetic access$500()V
    .registers 0

    .line 72
    invoke-static {}, Lvm2/lib/jse/JseIoLib;->notimplemented()V

    return-void
.end method

.method public static synthetic access$600(Lvm2/lib/jse/JseIoLib;)Lvm2/Globals;
    .registers 1

    .line 72
    iget-object p0, p0, Lvm2/lib/IoLib;->globals:Lvm2/Globals;

    return-object p0
.end method

.method public static synthetic access$700(Lvm2/lib/jse/JseIoLib;)Lvm2/Globals;
    .registers 1

    .line 72
    iget-object p0, p0, Lvm2/lib/IoLib;->globals:Lvm2/Globals;

    return-object p0
.end method

.method public static synthetic access$800(Lvm2/lib/jse/JseIoLib;)Lvm2/Globals;
    .registers 1

    .line 72
    iget-object p0, p0, Lvm2/lib/IoLib;->globals:Lvm2/Globals;

    return-object p0
.end method

.method public static synthetic access$900(Lvm2/lib/jse/JseIoLib;)Lvm2/Globals;
    .registers 1

    .line 72
    iget-object p0, p0, Lvm2/lib/IoLib;->globals:Lvm2/Globals;

    return-object p0
.end method

.method private static notimplemented()V
    .registers 2

    .line 111
    new-instance v0, Lvm2/LuaError;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Lvm2/LuaError;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public openFile(Ljava/lang/String;ZZZZ)Lvm2/lib/IoLib$File;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    new-instance p4, Ljava/io/RandomAccessFile;

    if-eqz p2, :cond_7

    const-string p5, "r"

    goto :goto_9

    :cond_7
    const-string p5, "rw"

    :goto_9
    invoke-direct {p4, p1, p5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_16

    .line 89
    invoke-virtual {p4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide p1

    invoke-virtual {p4, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_1d

    :cond_16
    if-nez p2, :cond_1d

    const-wide/16 p1, 0x0

    .line 92
    invoke-virtual {p4, p1, p2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 94
    :cond_1d
    :goto_1d
    new-instance p1, Lvm2/lib/jse/JseIoLib$FileImpl;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p4, p2}, Lvm2/lib/jse/JseIoLib$FileImpl;-><init>(Lvm2/lib/jse/JseIoLib;Ljava/io/RandomAccessFile;Lvm2/lib/jse/JseIoLib$1;)V

    return-object p1
.end method

.method public openProgram(Ljava/lang/String;Ljava/lang/String;)Lvm2/lib/IoLib$File;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1

    .line 99
    const-string v0, "w"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1b

    .line 100
    new-instance p2, Lvm2/lib/jse/JseIoLib$FileImpl;

    invoke-virtual {p1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-direct {p2, p0, p1, v0}, Lvm2/lib/jse/JseIoLib$FileImpl;-><init>(Lvm2/lib/jse/JseIoLib;Ljava/io/OutputStream;Lvm2/lib/jse/JseIoLib$1;)V

    return-object p2

    .line 101
    :cond_1b
    new-instance p2, Lvm2/lib/jse/JseIoLib$FileImpl;

    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p2, p0, p1, v0}, Lvm2/lib/jse/JseIoLib$FileImpl;-><init>(Lvm2/lib/jse/JseIoLib;Ljava/io/InputStream;Lvm2/lib/jse/JseIoLib$1;)V

    return-object p2
.end method

.method public tmpFile()Lvm2/lib/IoLib$File;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    const-string v0, ".luaj"

    const-string v1, "bin"

    invoke-static {v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 107
    new-instance v1, Lvm2/lib/jse/JseIoLib$FileImpl;

    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, v0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {v1, p0, v2, v0}, Lvm2/lib/jse/JseIoLib$FileImpl;-><init>(Lvm2/lib/jse/JseIoLib;Ljava/io/RandomAccessFile;Lvm2/lib/jse/JseIoLib$1;)V

    return-object v1
.end method

.method public wrapStderr()Lvm2/lib/IoLib$File;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    new-instance v0, Lvm2/lib/jse/JseIoLib$StdoutFile;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lvm2/lib/jse/JseIoLib$StdoutFile;-><init>(Lvm2/lib/jse/JseIoLib;ILvm2/lib/jse/JseIoLib$1;)V

    return-object v0
.end method

.method public wrapStdin()Lvm2/lib/IoLib$File;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    new-instance v0, Lvm2/lib/jse/JseIoLib$StdinFile;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lvm2/lib/jse/JseIoLib$StdinFile;-><init>(Lvm2/lib/jse/JseIoLib;Lvm2/lib/jse/JseIoLib$1;)V

    return-object v0
.end method

.method public wrapStdout()Lvm2/lib/IoLib$File;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    new-instance v0, Lvm2/lib/jse/JseIoLib$StdoutFile;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lvm2/lib/jse/JseIoLib$StdoutFile;-><init>(Lvm2/lib/jse/JseIoLib;ILvm2/lib/jse/JseIoLib$1;)V

    return-object v0
.end method

###### Class vm2.lib.jse.JseIoLib.AnonymousClass1 (vm2.lib.jse.JseIoLib$1)
.class synthetic Lvm2/lib/jse/JseIoLib$1;
.super Ljava/lang/Object;
.source "JseIoLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/jse/JseIoLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class vm2.lib.jse.JseIoLib.FileImpl (vm2.lib.jse.JseIoLib$FileImpl)
.class final Lvm2/lib/jse/JseIoLib$FileImpl;
.super Lvm2/lib/IoLib$File;
.source "JseIoLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/jse/JseIoLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FileImpl"
.end annotation


# instance fields
.field private closed:Z

.field private final file:Ljava/io/RandomAccessFile;

.field private final is:Ljava/io/InputStream;

.field private nobuffer:Z

.field private final os:Ljava/io/OutputStream;

.field final synthetic this$0:Lvm2/lib/jse/JseIoLib;


# direct methods
.method private constructor <init>(Lvm2/lib/jse/JseIoLib;Ljava/io/InputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    const/4 v0, 0x0

    .line 130
    invoke-direct {p0, p1, v0, p2, v0}, Lvm2/lib/jse/JseIoLib$FileImpl;-><init>(Lvm2/lib/jse/JseIoLib;Ljava/io/RandomAccessFile;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method public synthetic constructor <init>(Lvm2/lib/jse/JseIoLib;Ljava/io/InputStream;Lvm2/lib/jse/JseIoLib$1;)V
    .registers 4

    .line 115
    invoke-direct {p0, p1, p2}, Lvm2/lib/jse/JseIoLib$FileImpl;-><init>(Lvm2/lib/jse/JseIoLib;Ljava/io/InputStream;)V

    return-void
.end method

.method private constructor <init>(Lvm2/lib/jse/JseIoLib;Ljava/io/OutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    const/4 v0, 0x0

    .line 133
    invoke-direct {p0, p1, v0, v0, p2}, Lvm2/lib/jse/JseIoLib$FileImpl;-><init>(Lvm2/lib/jse/JseIoLib;Ljava/io/RandomAccessFile;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method public synthetic constructor <init>(Lvm2/lib/jse/JseIoLib;Ljava/io/OutputStream;Lvm2/lib/jse/JseIoLib$1;)V
    .registers 4

    .line 115
    invoke-direct {p0, p1, p2}, Lvm2/lib/jse/JseIoLib$FileImpl;-><init>(Lvm2/lib/jse/JseIoLib;Ljava/io/OutputStream;)V

    return-void
.end method

.method private constructor <init>(Lvm2/lib/jse/JseIoLib;Ljava/io/RandomAccessFile;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    const/4 v0, 0x0

    .line 127
    invoke-direct {p0, p1, p2, v0, v0}, Lvm2/lib/jse/JseIoLib$FileImpl;-><init>(Lvm2/lib/jse/JseIoLib;Ljava/io/RandomAccessFile;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method private constructor <init>(Lvm2/lib/jse/JseIoLib;Ljava/io/RandomAccessFile;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 121
    iput-object p1, p0, Lvm2/lib/jse/JseIoLib$FileImpl;->this$0:Lvm2/lib/jse/JseIoLib;

    invoke-direct {p0, p1}, Lvm2/lib/IoLib$File;-><init>(Lvm2/lib/IoLib;)V

    const/4 p1, 0x0

    .line 119
    iput-boolean p1, p0, Lvm2/lib/jse/JseIoLib$FileImpl;->closed:Z

    .line 120
    iput-boolean p1, p0, Lvm2/lib/jse/JseIoLib$FileImpl;->nobuffer:Z

    .line 122
    iput-object p2, p0, Lvm2/lib/jse/JseIoLib$FileImpl;->file:Ljava/io/RandomAccessFile;

    if-eqz p3, :cond_1c

    .line 123
    invoke-virtual {p3}, Ljava/io/InputStream;->markSupported()Z

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_1d

    :cond_15
    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-direct {p1, p3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p3, p1

    goto :goto_1d

    :cond_1c
    const/4 p3, 0x0

    :goto_1d
    iput-object p3, p0, Lvm2/lib/jse/JseIoLib$FileImpl;->is:Ljava/io/InputStream;

    .line 124
    iput-object p4, p0, Lvm2/lib/jse/JseIoLib$FileImpl;->os:Ljava/io/OutputStream;

    return-void
.end method

.method public synthetic constructor <init>(Lvm2/lib/jse/JseIoLib;Ljava/io/RandomAccessFile;Lvm2/lib/jse/JseIoLib$1;)V
    .registers 4

    .line 115
    invoke-direct {p0, p1, p2}, Lvm2/lib/jse/JseIoLib$FileImpl;-><init>(Lvm2/lib/jse/JseIoLib;Ljava/io/RandomAccessFile;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 142
    iput-boolean v0, p0, Lvm2/lib/jse/JseIoLib$FileImpl;->closed:Z

    .line 143
    iget-object v0, p0, Lvm2/lib/jse/JseIoLib$FileImpl;->file:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_a

    .line 144
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :cond_a
    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lvm2/lib/jse/JseIoLib$FileImpl;->os:Ljava/io/OutputStream;

    if-eqz v0, :cond_7

    .line 149
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    :cond_7
    return-void
.end method

.method public isclosed()Z
    .registers 2

    .line 162
    iget-boolean v0, p0, Lvm2/lib/jse/JseIoLib$FileImpl;->closed:Z

    return v0
.end method

.method public isstdfile()Z
    .registers 2

    .line 139
    iget-object v0, p0, Lvm2/lib/jse/JseIoLib$FileImpl;->file:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public peek()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lvm2/lib/jse/JseIoLib$FileImpl;->is:Ljava/io/InputStream;

    if-eqz v0, :cond_14

    const/4 v1, 0x1

    .line 190
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 191
    iget-object v0, p0, Lvm2/lib/jse/JseIoLib$FileImpl;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 192
    iget-object v1, p0, Lvm2/lib/jse/JseIoLib$FileImpl;->is:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    return v0

    .line 194
    :cond_14
    iget-object v0, p0, Lvm2/lib/jse/JseIoLib$FileImpl;->file:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_28

    .line 195
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    .line 196
    iget-object v2, p0, Lvm2/lib/jse/JseIoLib$FileImpl;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->read()I

    move-result v2

    .line 197
    iget-object v3, p0, Lvm2/lib/jse/JseIoLib$FileImpl;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v3, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    return v2

    .line 200
    :cond_28
    invoke-static {}, Lvm2/lib/jse/JseIoLib;->access$500()V

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lvm2/lib/jse/JseIoLib$FileImpl;->is:Ljava/io/InputStream;

    if-eqz v0, :cond_9

    .line 207
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0

    .line 208
    :cond_9
    iget-object v0, p0, Lvm2/lib/jse/JseIoLib$FileImpl;->file:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_12

    .line 209
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    return v0

    .line 211
    :cond_12
    invoke-static {}, Lvm2/lib/jse/JseIoLib;->access$500()V

    const/4 v0, 0x0

    return v0
.end method

.method public read([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lvm2/lib/jse/JseIoLib$FileImpl;->file:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_9

    .line 218
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1

    return p1

    .line 219
    :cond_9
    iget-object v0, p0, Lvm2/lib/jse/JseIoLib$FileImpl;->is:Ljava/io/InputStream;

    if-eqz v0, :cond_12

    .line 220
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1

    .line 222
    :cond_12
    invoke-static {}, Lvm2/lib/jse/JseIoLib;->access$500()V

    return p3
.end method

.method public remaining()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lvm2/lib/jse/JseIoLib$FileImpl;->file:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iget-object v2, p0, Lvm2/lib/jse/JseIoLib$FileImpl;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0

    :cond_11
    const/4 v0, -0x1

    return v0
.end method

.method public seek(Ljava/lang/String;I)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lvm2/lib/jse/JseIoLib$FileImpl;->file:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_3a

    .line 166
    const-string v0, "set"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 167
    iget-object p1, p0, Lvm2/lib/jse/JseIoLib$FileImpl;->file:Ljava/io/RandomAccessFile;

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_32

    .line 168
    :cond_13
    const-string v0, "end"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 169
    iget-object p1, p0, Lvm2/lib/jse/JseIoLib$FileImpl;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    int-to-long v2, p2

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_32

    .line 171
    :cond_27
    iget-object p1, p0, Lvm2/lib/jse/JseIoLib$FileImpl;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    int-to-long v2, p2

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 173
    :goto_32
    iget-object p1, p0, Lvm2/lib/jse/JseIoLib$FileImpl;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide p1

    long-to-int p1, p1

    return p1

    .line 175
    :cond_3a
    invoke-static {}, Lvm2/lib/jse/JseIoLib;->access$500()V

    const/4 p1, 0x0

    return p1
.end method

.method public setvbuf(Ljava/lang/String;I)V
    .registers 3

    .line 179
    const-string p2, "no"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lvm2/lib/jse/JseIoLib$FileImpl;->nobuffer:Z

    return-void
.end method

.method public tojstring()Ljava/lang/String;
    .registers 3

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lvm2/lib/jse/JseIoLib$FileImpl;->closed:Z

    if-eqz v1, :cond_11

    const-string v1, "closed"

    goto :goto_19

    :cond_11
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lvm2/LuaString;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lvm2/lib/jse/JseIoLib$FileImpl;->os:Ljava/io/OutputStream;

    if-eqz v0, :cond_e

    .line 153
    iget-object v1, p1, Lvm2/LuaString;->m_bytes:[B

    iget v2, p1, Lvm2/LuaString;->m_offset:I

    iget p1, p1, Lvm2/LuaString;->m_length:I

    invoke-virtual {v0, v1, v2, p1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1f

    .line 154
    :cond_e
    iget-object v0, p0, Lvm2/lib/jse/JseIoLib$FileImpl;->file:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_1c

    .line 155
    iget-object v1, p1, Lvm2/LuaString;->m_bytes:[B

    iget v2, p1, Lvm2/LuaString;->m_offset:I

    iget p1, p1, Lvm2/LuaString;->m_length:I

    invoke-virtual {v0, v1, v2, p1}, Ljava/io/RandomAccessFile;->write([BII)V

    goto :goto_1f

    .line 157
    :cond_1c
    invoke-static {}, Lvm2/lib/jse/JseIoLib;->access$500()V

    .line 158
    :goto_1f
    iget-boolean p1, p0, Lvm2/lib/jse/JseIoLib$FileImpl;->nobuffer:Z

    if-eqz p1, :cond_26

    .line 159
    invoke-virtual {p0}, Lvm2/lib/jse/JseIoLib$FileImpl;->flush()V

    :cond_26
    return-void
.end method

###### Class vm2.lib.jse.JseIoLib.StdinFile (vm2.lib.jse.JseIoLib$StdinFile)
.class final Lvm2/lib/jse/JseIoLib$StdinFile;
.super Lvm2/lib/IoLib$File;
.source "JseIoLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/jse/JseIoLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StdinFile"
.end annotation


# instance fields
.field final synthetic this$0:Lvm2/lib/jse/JseIoLib;


# direct methods
.method private constructor <init>(Lvm2/lib/jse/JseIoLib;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 291
    iput-object p1, p0, Lvm2/lib/jse/JseIoLib$StdinFile;->this$0:Lvm2/lib/jse/JseIoLib;

    invoke-direct {p0, p1}, Lvm2/lib/IoLib$File;-><init>(Lvm2/lib/IoLib;)V

    return-void
.end method

.method public synthetic constructor <init>(Lvm2/lib/jse/JseIoLib;Lvm2/lib/jse/JseIoLib$1;)V
    .registers 3

    .line 290
    invoke-direct {p0, p1}, Lvm2/lib/jse/JseIoLib$StdinFile;-><init>(Lvm2/lib/jse/JseIoLib;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public flush()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public isclosed()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public isstdfile()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public peek()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/EOFException;
        }
    .end annotation

    .line 328
    iget-object v0, p0, Lvm2/lib/jse/JseIoLib$StdinFile;->this$0:Lvm2/lib/jse/JseIoLib;

    invoke-static {v0}, Lvm2/lib/jse/JseIoLib;->access$800(Lvm2/lib/jse/JseIoLib;)Lvm2/Globals;

    move-result-object v0

    iget-object v0, v0, Lvm2/Globals;->STDIN:Ljava/io/InputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 329
    iget-object v0, p0, Lvm2/lib/jse/JseIoLib$StdinFile;->this$0:Lvm2/lib/jse/JseIoLib;

    invoke-static {v0}, Lvm2/lib/jse/JseIoLib;->access$900(Lvm2/lib/jse/JseIoLib;)Lvm2/Globals;

    move-result-object v0

    iget-object v0, v0, Lvm2/Globals;->STDIN:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 330
    iget-object v1, p0, Lvm2/lib/jse/JseIoLib$StdinFile;->this$0:Lvm2/lib/jse/JseIoLib;

    invoke-static {v1}, Lvm2/lib/jse/JseIoLib;->access$1000(Lvm2/lib/jse/JseIoLib;)Lvm2/Globals;

    move-result-object v1

    iget-object v1, v1, Lvm2/Globals;->STDIN:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    return v0
.end method

.method public read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/EOFException;
        }
    .end annotation

    .line 335
    iget-object v0, p0, Lvm2/lib/jse/JseIoLib$StdinFile;->this$0:Lvm2/lib/jse/JseIoLib;

    invoke-static {v0}, Lvm2/lib/jse/JseIoLib;->access$1100(Lvm2/lib/jse/JseIoLib;)Lvm2/Globals;

    move-result-object v0

    iget-object v0, v0, Lvm2/Globals;->STDIN:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 340
    iget-object v0, p0, Lvm2/lib/jse/JseIoLib$StdinFile;->this$0:Lvm2/lib/jse/JseIoLib;

    invoke-static {v0}, Lvm2/lib/jse/JseIoLib;->access$1200(Lvm2/lib/jse/JseIoLib;)Lvm2/Globals;

    move-result-object v0

    iget-object v0, v0, Lvm2/Globals;->STDIN:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public remaining()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    const/4 v0, -0x1

    return v0
.end method

.method public seek(Ljava/lang/String;I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public setvbuf(Ljava/lang/String;I)V
    .registers 3

    .line 0
    return-void
.end method

.method public tojstring()Ljava/lang/String;
    .registers 3

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lvm2/LuaString;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    return-void
.end method

###### Class vm2.lib.jse.JseIoLib.StdoutFile (vm2.lib.jse.JseIoLib$StdoutFile)
.class final Lvm2/lib/jse/JseIoLib$StdoutFile;
.super Lvm2/lib/IoLib$File;
.source "JseIoLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/jse/JseIoLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StdoutFile"
.end annotation


# instance fields
.field private final file_type:I

.field final synthetic this$0:Lvm2/lib/jse/JseIoLib;


# direct methods
.method private constructor <init>(Lvm2/lib/jse/JseIoLib;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 231
    iput-object p1, p0, Lvm2/lib/jse/JseIoLib$StdoutFile;->this$0:Lvm2/lib/jse/JseIoLib;

    invoke-direct {p0, p1}, Lvm2/lib/IoLib$File;-><init>(Lvm2/lib/IoLib;)V

    .line 232
    iput p2, p0, Lvm2/lib/jse/JseIoLib$StdoutFile;->file_type:I

    return-void
.end method

.method public synthetic constructor <init>(Lvm2/lib/jse/JseIoLib;ILvm2/lib/jse/JseIoLib$1;)V
    .registers 4

    .line 228
    invoke-direct {p0, p1, p2}, Lvm2/lib/jse/JseIoLib$StdoutFile;-><init>(Lvm2/lib/jse/JseIoLib;I)V

    return-void
.end method

.method private final getPrintStream()Ljava/io/PrintStream;
    .registers 3

    .line 240
    iget v0, p0, Lvm2/lib/jse/JseIoLib$StdoutFile;->file_type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    .line 241
    iget-object v0, p0, Lvm2/lib/jse/JseIoLib$StdoutFile;->this$0:Lvm2/lib/jse/JseIoLib;

    invoke-static {v0}, Lvm2/lib/jse/JseIoLib;->access$600(Lvm2/lib/jse/JseIoLib;)Lvm2/Globals;

    move-result-object v0

    iget-object v0, v0, Lvm2/Globals;->STDERR:Ljava/io/PrintStream;

    return-object v0

    .line 242
    :cond_e
    iget-object v0, p0, Lvm2/lib/jse/JseIoLib$StdoutFile;->this$0:Lvm2/lib/jse/JseIoLib;

    invoke-static {v0}, Lvm2/lib/jse/JseIoLib;->access$700(Lvm2/lib/jse/JseIoLib;)Lvm2/Globals;

    move-result-object v0

    iget-object v0, v0, Lvm2/Globals;->STDOUT:Ljava/io/PrintStream;

    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    invoke-direct {p0}, Lvm2/lib/jse/JseIoLib$StdoutFile;->getPrintStream()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    return-void
.end method

.method public isclosed()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public isstdfile()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public peek()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/EOFException;
        }
    .end annotation

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/EOFException;
        }
    .end annotation

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public read([BII)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public remaining()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public seek(Ljava/lang/String;I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public setvbuf(Ljava/lang/String;I)V
    .registers 3

    .line 0
    return-void
.end method

.method public tojstring()Ljava/lang/String;
    .registers 3

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lvm2/LuaString;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 246
    invoke-direct {p0}, Lvm2/lib/jse/JseIoLib$StdoutFile;->getPrintStream()Ljava/io/PrintStream;

    move-result-object v0

    iget-object v1, p1, Lvm2/LuaString;->m_bytes:[B

    iget v2, p1, Lvm2/LuaString;->m_offset:I

    iget p1, p1, Lvm2/LuaString;->m_length:I

    invoke-virtual {v0, v1, v2, p1}, Ljava/io/PrintStream;->write([BII)V

    return-void
.end method
