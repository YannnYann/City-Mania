###### Class ads_mobile_sdk.v1 (ads_mobile_sdk.v1)
.class public final Lads_mobile_sdk/v1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/datastore/core/Serializer;


# static fields
.field public static final a:Lads_mobile_sdk/v1;

.field public static final b:Lads_mobile_sdk/o1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lads_mobile_sdk/v1;

    invoke-direct {v0}, Lads_mobile_sdk/v1;-><init>()V

    sput-object v0, Lads_mobile_sdk/v1;->a:Lads_mobile_sdk/v1;

    .line 42
    invoke-static {}, Lads_mobile_sdk/o1;->x()Lads_mobile_sdk/o1;

    move-result-object v0

    sput-object v0, Lads_mobile_sdk/v1;->b:Lads_mobile_sdk/o1;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDefaultValue()Ljava/lang/Object;
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/v1;->b:Lads_mobile_sdk/o1;

    return-object v0
.end method

.method public final readFrom(Ljava/io/InputStream;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    .line 45
    const-string p2, "Stored data has been corrupted: "

    sget-object v0, Lads_mobile_sdk/s11;->I1:Lads_mobile_sdk/s11;

    .line 60
    sget-object v1, Lads_mobile_sdk/hs3;->a:Ljava/util/WeakHashMap;

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v0

    const/4 v1, 0x0

    .line 61
    :try_start_10
    invoke-static {p1}, Lads_mobile_sdk/o1;->a(Ljava/io/InputStream;)Lads_mobile_sdk/o1;

    move-result-object p1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_14} :catch_17
    .catchall {:try_start_10 .. :try_end_14} :catchall_15

    goto :goto_41

    :catchall_15
    move-exception p1

    goto :goto_48

    :catch_17
    move-exception p1

    .line 63
    :try_start_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-static {v2, v1, v3}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 64
    sget-object v2, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;)V

    .line 65
    sget-object p1, Lads_mobile_sdk/v1;->b:Lads_mobile_sdk/o1;
    :try_end_41
    .catchall {:try_start_18 .. :try_end_41} :catchall_15

    .line 68
    :goto_41
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 69
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1

    .line 95
    :goto_48
    :try_start_48
    invoke-virtual {v0, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 99
    instance-of p2, p1, Lads_mobile_sdk/v24;

    if-nez p2, :cond_80

    .line 101
    instance-of p2, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez p2, :cond_5d

    instance-of p2, p1, Ljava/util/concurrent/CancellationException;

    if-nez p2, :cond_5d

    .line 107
    invoke-virtual {v0, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_5d

    :catchall_5b
    move-exception p1

    goto :goto_81

    .line 113
    :cond_5d
    :goto_5d
    instance-of p2, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez p2, :cond_78

    .line 114
    instance-of p2, p1, Ljava/util/concurrent/CancellationException;

    if-nez p2, :cond_70

    .line 115
    instance-of p2, p1, Lads_mobile_sdk/w01;

    if-eqz p2, :cond_6a

    throw p1

    .line 116
    :cond_6a
    new-instance p2, Lads_mobile_sdk/b01;

    invoke-direct {p2, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 117
    :cond_70
    new-instance p2, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {p2, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw p2

    .line 118
    :cond_78
    new-instance p2, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {p2, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw p2

    .line 119
    :cond_80
    throw p1
    :try_end_81
    .catchall {:try_start_48 .. :try_end_81} :catchall_5b

    .line 120
    :goto_81
    :try_start_81
    throw p1
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_82

    :catchall_82
    move-exception p2

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final writeTo(Ljava/lang/Object;Ljava/io/OutputStream;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4

    .line 41
    check-cast p1, Lads_mobile_sdk/o1;

    .line 42
    invoke-virtual {p1, p2}, Lads_mobile_sdk/f;->writeTo(Ljava/io/OutputStream;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
