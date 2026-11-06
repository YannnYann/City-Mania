###### Class io.blueflower.stapel2d.util.StreamCopyUtil (io.blueflower.stapel2d.util.StreamCopyUtil)
.class public final Lio/blueflower/stapel2d/util/StreamCopyUtil;
.super Ljava/lang/Object;
.source "StreamCopyUtil.kt"


# static fields
.field public static final INSTANCE:Lio/blueflower/stapel2d/util/StreamCopyUtil;

.field public static final copyBuffer:Lio/blueflower/stapel2d/util/StreamCopyUtil$copyBuffer$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/blueflower/stapel2d/util/StreamCopyUtil;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/StreamCopyUtil;-><init>()V

    sput-object v0, Lio/blueflower/stapel2d/util/StreamCopyUtil;->INSTANCE:Lio/blueflower/stapel2d/util/StreamCopyUtil;

    .line 14
    new-instance v0, Lio/blueflower/stapel2d/util/StreamCopyUtil$copyBuffer$1;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/StreamCopyUtil$copyBuffer$1;-><init>()V

    sput-object v0, Lio/blueflower/stapel2d/util/StreamCopyUtil;->copyBuffer:Lio/blueflower/stapel2d/util/StreamCopyUtil$copyBuffer$1;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final copyTo(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "inputStream"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outputStream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    sget-object v0, Lio/blueflower/stapel2d/util/StreamCopyUtil;->copyBuffer:Lio/blueflower/stapel2d/util/StreamCopyUtil$copyBuffer$1;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 41
    :goto_12
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-ltz v1, :cond_1d

    const/4 v2, 0x0

    .line 43
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_12

    :cond_1d
    return-void
.end method

.method public static final getBuffer()[B
    .registers 2

    .line 26
    sget-object v0, Lio/blueflower/stapel2d/util/StreamCopyUtil;->copyBuffer:Lio/blueflower/stapel2d/util/StreamCopyUtil$copyBuffer$1;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [B

    return-object v0
.end method

###### Class io.blueflower.stapel2d.util.StreamCopyUtil$copyBuffer$1 (io.blueflower.stapel2d.util.StreamCopyUtil$copyBuffer$1)
.class public final Lio/blueflower/stapel2d/util/StreamCopyUtil$copyBuffer$1;
.super Ljava/lang/ThreadLocal;
.source "StreamCopyUtil.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/blueflower/stapel2d/util/StreamCopyUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic initialValue()Ljava/lang/Object;
    .registers 2

    .line 14
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/StreamCopyUtil$copyBuffer$1;->initialValue()[B

    move-result-object v0

    return-object v0
.end method

.method public initialValue()[B
    .registers 2

    const/16 v0, 0x2000

    .line 15
    new-array v0, v0, [B

    return-object v0
.end method
