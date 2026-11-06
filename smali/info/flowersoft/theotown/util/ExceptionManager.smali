###### Class info.flowersoft.theotown.util.ExceptionManager (info.flowersoft.theotown.util.ExceptionManager)
.class public Linfo/flowersoft/theotown/util/ExceptionManager;
.super Ljava/lang/Object;
.source "ExceptionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/util/ExceptionManager$ExceptionHandler;
    }
.end annotation


# instance fields
.field public final exceptionHandler:Linfo/flowersoft/theotown/util/ExceptionManager$ExceptionHandler;

.field public ignoredExceptionCountInTimeWindow:J

.field public final ignoredExceptions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public lastExceptionMs:J

.field public reachedEndOfFrame:Z


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/util/ExceptionManager$ExceptionHandler;)V
    .registers 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/util/ExceptionManager;->ignoredExceptions:Ljava/util/HashSet;

    .line 13
    iput-object p1, p0, Linfo/flowersoft/theotown/util/ExceptionManager;->exceptionHandler:Linfo/flowersoft/theotown/util/ExceptionManager$ExceptionHandler;

    .line 14
    invoke-interface {p1, p0}, Linfo/flowersoft/theotown/util/ExceptionManager$ExceptionHandler;->bind(Linfo/flowersoft/theotown/util/ExceptionManager;)V

    return-void
.end method


# virtual methods
.method public final getExceptionKey(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 2

    .line 53
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_9

    .line 54
    const-string p1, ""

    return-object p1

    .line 55
    :cond_9
    invoke-static {p1}, Linfo/flowersoft/theotown/util/Hashing;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public handleException(Ljava/lang/Throwable;)V
    .registers 3

    .line 37
    iget-object v0, p0, Linfo/flowersoft/theotown/util/ExceptionManager;->exceptionHandler:Linfo/flowersoft/theotown/util/ExceptionManager$ExceptionHandler;

    invoke-interface {v0, p1}, Linfo/flowersoft/theotown/util/ExceptionManager$ExceptionHandler;->handle(Ljava/lang/Throwable;)V

    return-void
.end method

.method public ignoreException(Ljava/lang/Throwable;)V
    .registers 3

    .line 45
    iget-object v0, p0, Linfo/flowersoft/theotown/util/ExceptionManager;->ignoredExceptions:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/ExceptionManager;->getExceptionKey(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public indicateReachedEndOfFrame()V
    .registers 2

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Linfo/flowersoft/theotown/util/ExceptionManager;->reachedEndOfFrame:Z

    return-void
.end method

.method public isPaused()Z
    .registers 2

    .line 41
    iget-object v0, p0, Linfo/flowersoft/theotown/util/ExceptionManager;->exceptionHandler:Linfo/flowersoft/theotown/util/ExceptionManager$ExceptionHandler;

    invoke-interface {v0}, Linfo/flowersoft/theotown/util/ExceptionManager$ExceptionHandler;->isPaused()Z

    move-result v0

    return v0
.end method

.method public shallIgnoreException(Ljava/lang/Throwable;)Z
    .registers 8

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Linfo/flowersoft/theotown/util/ExceptionManager;->lastExceptionMs:J

    sub-long/2addr v0, v2

    add-long/2addr v2, v0

    .line 19
    iput-wide v2, p0, Linfo/flowersoft/theotown/util/ExceptionManager;->lastExceptionMs:J

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    const-wide/16 v0, 0x0

    .line 20
    iput-wide v0, p0, Linfo/flowersoft/theotown/util/ExceptionManager;->ignoredExceptionCountInTimeWindow:J

    .line 22
    :cond_14
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/ExceptionManager;->getExceptionKey(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    .line 23
    iget-object v0, p0, Linfo/flowersoft/theotown/util/ExceptionManager;->ignoredExceptions:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_43

    .line 24
    iget-wide v2, p0, Linfo/flowersoft/theotown/util/ExceptionManager;->ignoredExceptionCountInTimeWindow:J

    const-wide/32 v4, 0xea60

    cmp-long v0, v2, v4

    if-gtz v0, :cond_3e

    iget-boolean v0, p0, Linfo/flowersoft/theotown/util/ExceptionManager;->reachedEndOfFrame:Z

    if-nez v0, :cond_35

    const-wide/16 v4, 0x3c

    cmp-long v0, v2, v4

    if-lez v0, :cond_35

    goto :goto_3e

    :cond_35
    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    .line 28
    iput-wide v2, p0, Linfo/flowersoft/theotown/util/ExceptionManager;->ignoredExceptionCountInTimeWindow:J

    .line 29
    iput-boolean v1, p0, Linfo/flowersoft/theotown/util/ExceptionManager;->reachedEndOfFrame:Z

    const/4 p1, 0x1

    return p1

    .line 26
    :cond_3e
    :goto_3e
    iget-object v0, p0, Linfo/flowersoft/theotown/util/ExceptionManager;->ignoredExceptions:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_43
    return v1
.end method

###### Class info.flowersoft.theotown.util.ExceptionManager.ExceptionHandler (info.flowersoft.theotown.util.ExceptionManager$ExceptionHandler)
.class public interface abstract Linfo/flowersoft/theotown/util/ExceptionManager$ExceptionHandler;
.super Ljava/lang/Object;
.source "ExceptionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/util/ExceptionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ExceptionHandler"
.end annotation


# virtual methods
.method public abstract bind(Linfo/flowersoft/theotown/util/ExceptionManager;)V
.end method

.method public abstract handle(Ljava/lang/Throwable;)V
.end method

.method public abstract isPaused()Z
.end method
