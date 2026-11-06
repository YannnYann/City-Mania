###### Class com.google.common.io.Closer (com.google.common.io.Closer)
.class public final Lcom/google/common/io/Closer;
.super Ljava/lang/Object;
.source "Closer.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/io/Closer$Suppressor;
    }
.end annotation


# static fields
.field public static final SUPPRESSING_SUPPRESSOR:Lcom/google/common/io/Closer$Suppressor;


# instance fields
.field public final stack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/io/Closeable;",
            ">;"
        }
    .end annotation
.end field

.field public final suppressor:Lcom/google/common/io/Closer$Suppressor;

.field public thrown:Ljava/lang/Throwable;


# direct methods
.method public static synthetic $r8$lambda$MTDIWeSId9CNMGBPrEaFO8aaB-o(Ljava/io/Closeable;Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .registers 6

    if-ne p1, p2, :cond_3

    goto :goto_1f

    .line 244
    :cond_3
    :try_start_3
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    return-void

    .line 252
    :catchall_7
    sget-object p1, Lcom/google/common/io/Closeables;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Suppressing exception thrown when closing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1f
    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 237
    new-instance v0, Lcom/google/common/io/Closer$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/common/io/Closer$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/common/io/Closer;->SUPPRESSING_SUPPRESSOR:Lcom/google/common/io/Closer$Suppressor;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/io/Closer$Suppressor;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "suppressor"
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/io/Closer;->stack:Ljava/util/Deque;

    .line 99
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/io/Closer$Suppressor;

    iput-object p1, p0, Lcom/google/common/io/Closer;->suppressor:Lcom/google/common/io/Closer$Suppressor;

    return-void
.end method

.method public static create()Lcom/google/common/io/Closer;
    .registers 2

    .line 88
    new-instance v0, Lcom/google/common/io/Closer;

    sget-object v1, Lcom/google/common/io/Closer;->SUPPRESSING_SUPPRESSOR:Lcom/google/common/io/Closer$Suppressor;

    invoke-direct {v0, v1}, Lcom/google/common/io/Closer;-><init>(Lcom/google/common/io/Closer$Suppressor;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/google/common/io/Closer;->thrown:Ljava/lang/Throwable;

    .line 202
    :goto_2
    iget-object v1, p0, Lcom/google/common/io/Closer;->stack:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_21

    .line 203
    iget-object v1, p0, Lcom/google/common/io/Closer;->stack:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Closeable;

    .line 205
    :try_start_12
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    goto :goto_2

    :catchall_16
    move-exception v2

    if-nez v0, :cond_1b

    move-object v0, v2

    goto :goto_2

    .line 210
    :cond_1b
    iget-object v3, p0, Lcom/google/common/io/Closer;->suppressor:Lcom/google/common/io/Closer$Suppressor;

    invoke-interface {v3, v1, v0, v2}, Lcom/google/common/io/Closer$Suppressor;->suppress(Ljava/io/Closeable;Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 215
    :cond_21
    iget-object v1, p0, Lcom/google/common/io/Closer;->thrown:Ljava/lang/Throwable;

    if-nez v1, :cond_36

    if-nez v0, :cond_28

    goto :goto_36

    .line 216
    :cond_28
    const-class v1, Ljava/io/IOException;

    invoke-static {v0, v1}, Lcom/google/common/base/Throwables;->throwIfInstanceOf(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 217
    invoke-static {v0}, Lcom/google/common/base/Throwables;->throwIfUnchecked(Ljava/lang/Throwable;)V

    .line 218
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_36
    :goto_36
    return-void
.end method

.method public register(Ljava/io/Closeable;)Ljava/io/Closeable;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "closeable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/io/Closeable;",
            ">(TC;)TC;"
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 113
    iget-object v0, p0, Lcom/google/common/io/Closer;->stack:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    :cond_7
    return-object p1
.end method

.method public rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iput-object p1, p0, Lcom/google/common/io/Closer;->thrown:Ljava/lang/Throwable;

    .line 135
    const-class v0, Ljava/io/IOException;

    invoke-static {p1, v0}, Lcom/google/common/base/Throwables;->throwIfInstanceOf(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 136
    invoke-static {p1}, Lcom/google/common/base/Throwables;->throwIfUnchecked(Ljava/lang/Throwable;)V

    .line 137
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

###### Class com.google.common.io.Closer.Suppressor (com.google.common.io.Closer$Suppressor)
.class public interface abstract Lcom/google/common/io/Closer$Suppressor;
.super Ljava/lang/Object;
.source "Closer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/Closer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Suppressor"
.end annotation


# virtual methods
.method public abstract suppress(Ljava/io/Closeable;Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "closeable",
            "thrown",
            "suppressed"
        }
    .end annotation
.end method

###### Class com.google.common.io.Closer$$ExternalSyntheticLambda0 (com.google.common.io.Closer$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/google/common/io/Closer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/io/Closer$Suppressor;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final suppress(Ljava/io/Closeable;Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .registers 4

    .line 0
    invoke-static {p1, p2, p3}, Lcom/google/common/io/Closer;->$r8$lambda$MTDIWeSId9CNMGBPrEaFO8aaB-o(Ljava/io/Closeable;Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    return-void
.end method
