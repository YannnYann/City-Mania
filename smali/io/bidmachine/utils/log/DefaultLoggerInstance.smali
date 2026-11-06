###### Class io.bidmachine.utils.log.DefaultLoggerInstance (io.bidmachine.utils.log.DefaultLoggerInstance)
.class public Lio/bidmachine/utils/log/DefaultLoggerInstance;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/utils/log/LoggerInstance;


# instance fields
.field public final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/utils/log/DefaultLoggerInstance;->tag:Ljava/lang/String;

    return-void
.end method

.method public static buildStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/io/StringWriter;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/io/StringWriter;-><init>(I)V

    .line 2
    new-instance v1, Ljava/io/PrintWriter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 3
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 4
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 5
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public buildMessage(Ljava/lang/Object;Ljava/lang/String;Lio/bidmachine/utils/lazy/LazyValue;Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lio/bidmachine/utils/lazy/LazyValue<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_14

    .line 3
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "] "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    if-eqz p2, :cond_1a

    .line 6
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_25

    :cond_1a
    if-eqz p3, :cond_25

    .line 8
    invoke-interface {p3}, Lio/bidmachine/utils/lazy/LazyValue;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_25
    :goto_25
    if-eqz p4, :cond_39

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-eqz p1, :cond_32

    .line 12
    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    :cond_32
    invoke-static {p4}, Lio/bidmachine/utils/log/DefaultLoggerInstance;->buildStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    :cond_39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d(Lio/bidmachine/utils/lazy/LazyValue;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/utils/lazy/LazyValue<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    move-object v0, p0

    move-object v4, p1

    .line 4
    invoke-virtual/range {v0 .. v5}, Lio/bidmachine/utils/log/DefaultLoggerInstance;->prepareAndLog(ILjava/lang/Object;Ljava/lang/String;Lio/bidmachine/utils/lazy/LazyValue;Ljava/lang/Throwable;)V

    return-void
.end method

.method public d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lio/bidmachine/utils/lazy/LazyValue<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x3

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    .line 3
    invoke-virtual/range {v0 .. v5}, Lio/bidmachine/utils/log/DefaultLoggerInstance;->prepareAndLog(ILjava/lang/Object;Ljava/lang/String;Lio/bidmachine/utils/lazy/LazyValue;Ljava/lang/Throwable;)V

    return-void
.end method

.method public d(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x3

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    .line 1
    invoke-virtual/range {v0 .. v5}, Lio/bidmachine/utils/log/DefaultLoggerInstance;->prepareAndLog(ILjava/lang/Object;Ljava/lang/String;Lio/bidmachine/utils/lazy/LazyValue;Ljava/lang/Throwable;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    .line 2
    invoke-virtual/range {v0 .. v5}, Lio/bidmachine/utils/log/DefaultLoggerInstance;->prepareAndLog(ILjava/lang/Object;Ljava/lang/String;Lio/bidmachine/utils/lazy/LazyValue;Ljava/lang/Throwable;)V

    return-void
.end method

.method public e(Lio/bidmachine/utils/lazy/LazyValue;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/utils/lazy/LazyValue<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v4, p1

    .line 6
    invoke-virtual/range {v0 .. v5}, Lio/bidmachine/utils/log/DefaultLoggerInstance;->prepareAndLog(ILjava/lang/Object;Ljava/lang/String;Lio/bidmachine/utils/lazy/LazyValue;Ljava/lang/Throwable;)V

    return-void
.end method

.method public e(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lio/bidmachine/utils/lazy/LazyValue<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x6

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    .line 4
    invoke-virtual/range {v0 .. v5}, Lio/bidmachine/utils/log/DefaultLoggerInstance;->prepareAndLog(ILjava/lang/Object;Ljava/lang/String;Lio/bidmachine/utils/lazy/LazyValue;Ljava/lang/Throwable;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .registers 8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    .line 2
    invoke-virtual/range {v0 .. v5}, Lio/bidmachine/utils/log/DefaultLoggerInstance;->prepareAndLog(ILjava/lang/Object;Ljava/lang/String;Lio/bidmachine/utils/lazy/LazyValue;Ljava/lang/Throwable;)V

    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .registers 8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v5, p1

    .line 3
    invoke-virtual/range {v0 .. v5}, Lio/bidmachine/utils/log/DefaultLoggerInstance;->prepareAndLog(ILjava/lang/Object;Ljava/lang/String;Lio/bidmachine/utils/lazy/LazyValue;Ljava/lang/Throwable;)V

    return-void
.end method

.method public isLoggable(I)Z
    .registers 2

    .line 0
    const/4 p1, 0x1

    return p1
.end method

.method public log(ILjava/lang/String;)V
    .registers 9

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_2b

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit16 v0, v0, 0x3e7

    div-int/2addr v0, v1

    const/4 v1, 0x0

    move v2, v1

    :goto_11
    if-ge v1, v0, :cond_2a

    .line 4
    iget-object v3, p0, Lio/bidmachine/utils/log/DefaultLoggerInstance;->tag:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit16 v5, v2, 0x3e8

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {p2, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v3, v2}, Lio/bidmachine/utils/log/DefaultLoggerInstance;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    move v2, v5

    goto :goto_11

    :cond_2a
    return-void

    .line 7
    :cond_2b
    iget-object v0, p0, Lio/bidmachine/utils/log/DefaultLoggerInstance;->tag:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lio/bidmachine/utils/log/DefaultLoggerInstance;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public prepareAndLog(ILjava/lang/Object;Ljava/lang/String;Lio/bidmachine/utils/lazy/LazyValue;Ljava/lang/Throwable;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lio/bidmachine/utils/lazy/LazyValue<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/utils/log/DefaultLoggerInstance;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2
    invoke-virtual {p0, p2, p3, p4, p5}, Lio/bidmachine/utils/log/DefaultLoggerInstance;->buildMessage(Ljava/lang/Object;Ljava/lang/String;Lio/bidmachine/utils/lazy/LazyValue;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/utils/log/DefaultLoggerInstance;->log(ILjava/lang/String;)V

    :cond_d
    return-void
.end method

.method public printLog(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-static {p1, p2, p3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public w(Lio/bidmachine/utils/lazy/LazyValue;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/utils/lazy/LazyValue<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x5

    const/4 v2, 0x0

    move-object v0, p0

    move-object v4, p1

    .line 5
    invoke-virtual/range {v0 .. v5}, Lio/bidmachine/utils/log/DefaultLoggerInstance;->prepareAndLog(ILjava/lang/Object;Ljava/lang/String;Lio/bidmachine/utils/lazy/LazyValue;Ljava/lang/Throwable;)V

    return-void
.end method

.method public w(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lio/bidmachine/utils/lazy/LazyValue<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x5

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    .line 3
    invoke-virtual/range {v0 .. v5}, Lio/bidmachine/utils/log/DefaultLoggerInstance;->prepareAndLog(ILjava/lang/Object;Ljava/lang/String;Lio/bidmachine/utils/lazy/LazyValue;Ljava/lang/Throwable;)V

    return-void
.end method

.method public w(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x5

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    .line 1
    invoke-virtual/range {v0 .. v5}, Lio/bidmachine/utils/log/DefaultLoggerInstance;->prepareAndLog(ILjava/lang/Object;Ljava/lang/String;Lio/bidmachine/utils/lazy/LazyValue;Ljava/lang/Throwable;)V

    return-void
.end method

.method public w(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x5

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    .line 4
    invoke-virtual/range {v0 .. v5}, Lio/bidmachine/utils/log/DefaultLoggerInstance;->prepareAndLog(ILjava/lang/Object;Ljava/lang/String;Lio/bidmachine/utils/lazy/LazyValue;Ljava/lang/Throwable;)V

    return-void
.end method

.method public w(Ljava/lang/String;)V
    .registers 8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x5

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    .line 2
    invoke-virtual/range {v0 .. v5}, Lio/bidmachine/utils/log/DefaultLoggerInstance;->prepareAndLog(ILjava/lang/Object;Ljava/lang/String;Lio/bidmachine/utils/lazy/LazyValue;Ljava/lang/Throwable;)V

    return-void
.end method

.method public w(Ljava/lang/Throwable;)V
    .registers 8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x5

    const/4 v2, 0x0

    move-object v0, p0

    move-object v5, p1

    .line 6
    invoke-virtual/range {v0 .. v5}, Lio/bidmachine/utils/log/DefaultLoggerInstance;->prepareAndLog(ILjava/lang/Object;Ljava/lang/String;Lio/bidmachine/utils/lazy/LazyValue;Ljava/lang/Throwable;)V

    return-void
.end method
