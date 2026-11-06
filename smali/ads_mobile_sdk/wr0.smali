###### Class ads_mobile_sdk.wr0 (ads_mobile_sdk.wr0)
.class public final Lads_mobile_sdk/wr0;
.super Lads_mobile_sdk/xl3;
.source "SourceFile"


# instance fields
.field public final b:Ljava/util/concurrent/ExecutorService;

.field public final c:Lads_mobile_sdk/vr0;

.field public final d:Lcom/google/common/base/Function;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/util/concurrent/ExecutorService;Lads_mobile_sdk/vr0;Lcom/google/common/base/Function;)V
    .registers 5

    .line 113
    invoke-direct {p0, p1}, Lads_mobile_sdk/xl3;-><init>(Ljava/io/File;)V

    .line 114
    iput-object p2, p0, Lads_mobile_sdk/wr0;->b:Ljava/util/concurrent/ExecutorService;

    .line 115
    iput-object p3, p0, Lads_mobile_sdk/wr0;->c:Lads_mobile_sdk/vr0;

    .line 116
    iput-object p4, p0, Lads_mobile_sdk/wr0;->d:Lcom/google/common/base/Function;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 3

    .line 122
    new-instance v0, Lads_mobile_sdk/wr0$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lads_mobile_sdk/wr0$$ExternalSyntheticLambda1;-><init>(Lads_mobile_sdk/wr0;)V

    iget-object v1, p0, Lads_mobile_sdk/wr0;->b:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->submit(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 3

    .line 266
    new-instance v0, Lads_mobile_sdk/wr0$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/wr0$$ExternalSyntheticLambda0;-><init>(Lads_mobile_sdk/wr0;Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/wr0;->b:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, p1}, Lcom/google/common/util/concurrent/Futures;->submit(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic b()Ljava/lang/Object;
    .registers 4

    .line 124
    monitor-enter p0

    .line 125
    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lads_mobile_sdk/xl3;->a:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_8} :catch_38
    .catch Lads_mobile_sdk/tr0; {:try_start_1 .. :try_end_8} :catch_17
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_15
    .catchall {:try_start_1 .. :try_end_8} :catchall_13

    .line 126
    :try_start_8
    iget-object v1, p0, Lads_mobile_sdk/wr0;->c:Lads_mobile_sdk/vr0;

    invoke-interface {v1, v0}, Lads_mobile_sdk/vr0;->a(Ljava/io/FileInputStream;)Ljava/lang/Object;

    move-result-object v1
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_19

    .line 127
    :try_start_e
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_11} :catch_38
    .catch Lads_mobile_sdk/tr0; {:try_start_e .. :try_end_11} :catch_17
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_15
    .catchall {:try_start_e .. :try_end_11} :catchall_13

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_13

    return-object v1

    :catchall_13
    move-exception v0

    goto :goto_40

    :catch_15
    move-exception v0

    goto :goto_23

    :catch_17
    move-exception v0

    goto :goto_30

    :catchall_19
    move-exception v1

    .line 128
    :try_start_1a
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_1e

    goto :goto_22

    :catchall_1e
    move-exception v0

    :try_start_1f
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_22
    throw v1
    :try_end_23
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_23} :catch_38
    .catch Lads_mobile_sdk/tr0; {:try_start_1f .. :try_end_23} :catch_17
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_23} :catch_15
    .catchall {:try_start_1f .. :try_end_23} :catchall_13

    .line 137
    :goto_23
    :try_start_23
    iget-object v1, p0, Lads_mobile_sdk/wr0;->d:Lcom/google/common/base/Function;

    new-instance v2, Lads_mobile_sdk/tr0;

    invoke-direct {v2, v0}, Lads_mobile_sdk/tr0;-><init>(Ljava/io/IOException;)V

    invoke-interface {v1, v2}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 138
    :goto_30
    iget-object v1, p0, Lads_mobile_sdk/wr0;->d:Lcom/google/common/base/Function;

    invoke-interface {v1, v0}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 139
    :catch_38
    iget-object v0, p0, Lads_mobile_sdk/wr0;->c:Lads_mobile_sdk/vr0;

    invoke-interface {v0}, Lads_mobile_sdk/vr0;->a()Ljava/lang/Object;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 147
    :goto_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_23 .. :try_end_41} :catchall_13

    throw v0
.end method

.method public final synthetic b(Ljava/lang/Object;)Ljava/lang/Void;
    .registers 6

    .line 293
    monitor-enter p0

    .line 294
    :try_start_1
    iget-object v0, p0, Lads_mobile_sdk/xl3;->a:Ljava/io/File;

    invoke-static {v0}, Lcom/google/common/io/Files;->createParentDirs(Ljava/io/File;)V

    .line 295
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lads_mobile_sdk/xl3;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lads_mobile_sdk/xl3;->a:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".temp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_40

    .line 299
    :try_start_28
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2d} :catch_4a
    .catchall {:try_start_28 .. :try_end_2d} :catchall_40

    .line 300
    :try_start_2d
    iget-object v2, p0, Lads_mobile_sdk/wr0;->c:Lads_mobile_sdk/vr0;

    invoke-interface {v2, p1, v1}, Lads_mobile_sdk/vr0;->a(Ljava/lang/Object;Ljava/io/FileOutputStream;)V
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_4c

    .line 301
    :try_start_32
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 307
    iget-object p1, p0, Lads_mobile_sdk/xl3;->a:Ljava/io/File;

    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_3b} :catch_4a
    .catchall {:try_start_32 .. :try_end_3b} :catchall_40

    if-eqz p1, :cond_42

    const/4 p1, 0x0

    .line 316
    :try_start_3e
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_40

    return-object p1

    :catchall_40
    move-exception p1

    goto :goto_5a

    .line 317
    :cond_42
    :try_start_42
    new-instance p1, Ljava/io/IOException;

    const-string v1, "Failed to rename file."

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_4a} :catch_4a
    .catchall {:try_start_42 .. :try_end_4a} :catchall_40

    :catch_4a
    move-exception p1

    goto :goto_56

    :catchall_4c
    move-exception p1

    .line 318
    :try_start_4d
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_51

    goto :goto_55

    :catchall_51
    move-exception v1

    :try_start_52
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_55
    throw p1
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_56} :catch_4a
    .catchall {:try_start_52 .. :try_end_56} :catchall_40

    .line 331
    :goto_56
    :try_start_56
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 332
    throw p1

    .line 336
    :goto_5a
    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_56 .. :try_end_5b} :catchall_40

    throw p1
.end method

###### Class ads_mobile_sdk.wr0$$ExternalSyntheticLambda0 (ads_mobile_sdk.wr0$$ExternalSyntheticLambda0)
.class public final synthetic Lads_mobile_sdk/wr0$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/wr0;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/wr0;Ljava/lang/Object;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/wr0$$ExternalSyntheticLambda0;->f$0:Lads_mobile_sdk/wr0;

    iput-object p2, p0, Lads_mobile_sdk/wr0$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/wr0$$ExternalSyntheticLambda0;->f$0:Lads_mobile_sdk/wr0;

    iget-object v1, p0, Lads_mobile_sdk/wr0$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lads_mobile_sdk/wr0;->b(Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

###### Class ads_mobile_sdk.wr0$$ExternalSyntheticLambda1 (ads_mobile_sdk.wr0$$ExternalSyntheticLambda1)
.class public final synthetic Lads_mobile_sdk/wr0$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/wr0;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/wr0;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/wr0$$ExternalSyntheticLambda1;->f$0:Lads_mobile_sdk/wr0;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/wr0$$ExternalSyntheticLambda1;->f$0:Lads_mobile_sdk/wr0;

    invoke-virtual {v0}, Lads_mobile_sdk/wr0;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
