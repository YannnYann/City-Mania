###### Class io.bidmachine.core.Logger (io.bidmachine.core.Logger)
.class public Lio/bidmachine/core/Logger;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile disabledInstance:Lio/bidmachine/utils/log/LoggerInstance; = null

.field public static volatile enabledInstance:Lio/bidmachine/utils/log/LoggerInstance; = null

.field public static volatile instance:Lio/bidmachine/utils/log/LoggerInstance; = null

.field public static isLoggingEnabled:Z = false


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lio/bidmachine/utils/log/DefaultLoggerInstance;

    const-string v1, "BidMachineLog"

    invoke-direct {v0, v1}, Lio/bidmachine/utils/log/DefaultLoggerInstance;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/bidmachine/core/Logger;->enabledInstance:Lio/bidmachine/utils/log/LoggerInstance;

    .line 3
    new-instance v0, Lio/bidmachine/utils/log/EmptyLoggerInstance;

    invoke-direct {v0}, Lio/bidmachine/utils/log/EmptyLoggerInstance;-><init>()V

    sput-object v0, Lio/bidmachine/core/Logger;->disabledInstance:Lio/bidmachine/utils/log/LoggerInstance;

    .line 6
    sget-object v0, Lio/bidmachine/core/Logger;->disabledInstance:Lio/bidmachine/utils/log/LoggerInstance;

    sput-object v0, Lio/bidmachine/core/Logger;->instance:Lio/bidmachine/utils/log/LoggerInstance;

    return-void
.end method

.method public static d(Lio/bidmachine/utils/lazy/LazyValue;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/utils/lazy/LazyValue<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4
    sget-object v0, Lio/bidmachine/core/Logger;->instance:Lio/bidmachine/utils/log/LoggerInstance;

    invoke-interface {v0, p0}, Lio/bidmachine/utils/log/LoggerInstance;->d(Lio/bidmachine/utils/lazy/LazyValue;)V

    return-void
.end method

.method public static d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lio/bidmachine/utils/lazy/LazyValue<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3
    sget-object v0, Lio/bidmachine/core/Logger;->instance:Lio/bidmachine/utils/log/LoggerInstance;

    invoke-interface {v0, p0, p1}, Lio/bidmachine/utils/log/LoggerInstance;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    return-void
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    .line 1
    sget-object v0, Lio/bidmachine/core/Logger;->instance:Lio/bidmachine/utils/log/LoggerInstance;

    invoke-interface {v0, p0, p1}, Lio/bidmachine/utils/log/LoggerInstance;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .registers 2

    .line 2
    sget-object v0, Lio/bidmachine/core/Logger;->instance:Lio/bidmachine/utils/log/LoggerInstance;

    invoke-interface {v0, p0}, Lio/bidmachine/utils/log/LoggerInstance;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static e(Lio/bidmachine/utils/lazy/LazyValue;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/utils/lazy/LazyValue<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 6
    sget-object v0, Lio/bidmachine/core/Logger;->instance:Lio/bidmachine/utils/log/LoggerInstance;

    invoke-interface {v0, p0}, Lio/bidmachine/utils/log/LoggerInstance;->e(Lio/bidmachine/utils/lazy/LazyValue;)V

    return-void
.end method

.method public static e(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lio/bidmachine/utils/lazy/LazyValue<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 5
    sget-object v0, Lio/bidmachine/core/Logger;->instance:Lio/bidmachine/utils/log/LoggerInstance;

    invoke-interface {v0, p0, p1}, Lio/bidmachine/utils/log/LoggerInstance;->e(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .registers 2

    .line 3
    sget-object v0, Lio/bidmachine/core/Logger;->instance:Lio/bidmachine/utils/log/LoggerInstance;

    invoke-interface {v0, p0}, Lio/bidmachine/utils/log/LoggerInstance;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/Throwable;)V
    .registers 2

    .line 4
    sget-object v0, Lio/bidmachine/core/Logger;->instance:Lio/bidmachine/utils/log/LoggerInstance;

    invoke-interface {v0, p0}, Lio/bidmachine/utils/log/LoggerInstance;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static isLoggingEnabled()Z
    .registers 1

    .line 1
    sget-boolean v0, Lio/bidmachine/core/Logger;->isLoggingEnabled:Z

    return v0
.end method

.method public static setEnabledInstance(Lio/bidmachine/utils/log/LoggerInstance;)V
    .registers 1

    .line 1
    sput-object p0, Lio/bidmachine/core/Logger;->enabledInstance:Lio/bidmachine/utils/log/LoggerInstance;

    .line 2
    sget-boolean p0, Lio/bidmachine/core/Logger;->isLoggingEnabled:Z

    invoke-static {p0}, Lio/bidmachine/core/Logger;->setLoggingEnabled(Z)V

    return-void
.end method

.method public static setLoggingEnabled(Z)V
    .registers 2

    .line 1
    sput-boolean p0, Lio/bidmachine/core/Logger;->isLoggingEnabled:Z

    if-eqz p0, :cond_7

    .line 3
    sget-object v0, Lio/bidmachine/core/Logger;->enabledInstance:Lio/bidmachine/utils/log/LoggerInstance;

    goto :goto_9

    .line 4
    :cond_7
    sget-object v0, Lio/bidmachine/core/Logger;->disabledInstance:Lio/bidmachine/utils/log/LoggerInstance;

    :goto_9
    sput-object v0, Lio/bidmachine/core/Logger;->instance:Lio/bidmachine/utils/log/LoggerInstance;

    .line 5
    invoke-static {p0}, Lio/bidmachine/util/log/LoggerSettings;->setEnable(Z)V

    return-void
.end method

.method public static w(Lio/bidmachine/utils/lazy/LazyValue;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/utils/lazy/LazyValue<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 6
    sget-object v0, Lio/bidmachine/core/Logger;->instance:Lio/bidmachine/utils/log/LoggerInstance;

    invoke-interface {v0, p0}, Lio/bidmachine/utils/log/LoggerInstance;->w(Lio/bidmachine/utils/lazy/LazyValue;)V

    return-void
.end method

.method public static w(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lio/bidmachine/utils/lazy/LazyValue<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4
    sget-object v0, Lio/bidmachine/core/Logger;->instance:Lio/bidmachine/utils/log/LoggerInstance;

    invoke-interface {v0, p0, p1}, Lio/bidmachine/utils/log/LoggerInstance;->w(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    return-void
.end method

.method public static w(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    .line 1
    sget-object v0, Lio/bidmachine/core/Logger;->instance:Lio/bidmachine/utils/log/LoggerInstance;

    invoke-interface {v0, p0, p1}, Lio/bidmachine/utils/log/LoggerInstance;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 3

    .line 5
    sget-object v0, Lio/bidmachine/core/Logger;->instance:Lio/bidmachine/utils/log/LoggerInstance;

    invoke-interface {v0, p0, p1}, Lio/bidmachine/utils/log/LoggerInstance;->w(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .registers 2

    .line 2
    sget-object v0, Lio/bidmachine/core/Logger;->instance:Lio/bidmachine/utils/log/LoggerInstance;

    invoke-interface {v0, p0}, Lio/bidmachine/utils/log/LoggerInstance;->w(Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/Throwable;)V
    .registers 2

    .line 3
    sget-object v0, Lio/bidmachine/core/Logger;->instance:Lio/bidmachine/utils/log/LoggerInstance;

    invoke-interface {v0, p0}, Lio/bidmachine/utils/log/LoggerInstance;->w(Ljava/lang/Throwable;)V

    return-void
.end method
