###### Class com.ironsource.mediationsdk.logger.IronLog (com.ironsource.mediationsdk.logger.IronLog)
.class public final enum Lcom/ironsource/mediationsdk/logger/IronLog;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/mediationsdk/logger/IronLog;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

.field public static final enum ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

.field public static final enum API:Lcom/ironsource/mediationsdk/logger/IronLog;

.field public static final enum CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

.field public static final enum EVENT:Lcom/ironsource/mediationsdk/logger/IronLog;

.field public static final enum INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

.field public static final enum NATIVE:Lcom/ironsource/mediationsdk/logger/IronLog;

.field public static final enum NETWORK:Lcom/ironsource/mediationsdk/logger/IronLog;

.field private static final synthetic b:[Lcom/ironsource/mediationsdk/logger/IronLog;


# instance fields
.field a:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronLog;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "API"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;-><init>(Ljava/lang/String;ILcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;)V

    sput-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    .line 2
    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronLog;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "CALLBACK"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;-><init>(Ljava/lang/String;ILcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;)V

    sput-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    .line 3
    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronLog;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "ADAPTER_API"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;-><init>(Ljava/lang/String;ILcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;)V

    sput-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    .line 4
    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronLog;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "ADAPTER_CALLBACK"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;-><init>(Ljava/lang/String;ILcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;)V

    sput-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    .line 5
    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronLog;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NETWORK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "NETWORK"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;-><init>(Ljava/lang/String;ILcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;)V

    sput-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->NETWORK:Lcom/ironsource/mediationsdk/logger/IronLog;

    .line 6
    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronLog;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "INTERNAL"

    const/4 v3, 0x5

    invoke-direct {v0, v2, v3, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;-><init>(Ljava/lang/String;ILcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;)V

    sput-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    .line 7
    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronLog;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "NATIVE"

    const/4 v3, 0x6

    invoke-direct {v0, v2, v3, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;-><init>(Ljava/lang/String;ILcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;)V

    sput-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronLog;

    .line 8
    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronLog;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->EVENT:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "EVENT"

    const/4 v3, 0x7

    invoke-direct {v0, v2, v3, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;-><init>(Ljava/lang/String;ILcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;)V

    sput-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->EVENT:Lcom/ironsource/mediationsdk/logger/IronLog;

    .line 9
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronLog;->a()[Lcom/ironsource/mediationsdk/logger/IronLog;

    move-result-object v0

    sput-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->b:[Lcom/ironsource/mediationsdk/logger/IronLog;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/ironsource/mediationsdk/logger/IronLog;->a:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    return-void
.end method

.method private static synthetic a()[Lcom/ironsource/mediationsdk/logger/IronLog;
    .registers 8

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronLog;->NETWORK:Lcom/ironsource/mediationsdk/logger/IronLog;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronLog;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronLog;

    sget-object v7, Lcom/ironsource/mediationsdk/logger/IronLog;->EVENT:Lcom/ironsource/mediationsdk/logger/IronLog;

    filled-new-array/range {v0 .. v7}, [Lcom/ironsource/mediationsdk/logger/IronLog;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronLog;
    .registers 2

    .line 1
    const-class v0, Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/mediationsdk/logger/IronLog;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/mediationsdk/logger/IronLog;
    .registers 1

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->b:[Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, [Lcom/ironsource/mediationsdk/logger/IronLog;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/mediationsdk/logger/IronLog;

    return-object v0
.end method


# virtual methods
.method public error()V
    .registers 6

    .line 5
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/logger/IronLog;->a:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Lcom/ironsource/ib;

    const-string v3, ""

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Lcom/ironsource/ib;-><init>(Ljava/lang/String;I)V

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->a(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Lcom/ironsource/ib;)V

    return-void
.end method

.method public error(Ljava/lang/String;)V
    .registers 6

    .line 3
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/logger/IronLog;->a:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Lcom/ironsource/ib;

    const/4 v3, 0x3

    invoke-direct {v2, p1, v3}, Lcom/ironsource/ib;-><init>(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->a(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Lcom/ironsource/ib;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 7

    .line 1
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/logger/IronLog;->a:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Lcom/ironsource/ib;

    const/4 v3, 0x3

    invoke-direct {v2, p1, v3}, Lcom/ironsource/ib;-><init>(Ljava/lang/String;I)V

    .line 2
    invoke-virtual {v0, v1, v2, p2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->a(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Lcom/ironsource/ib;Ljava/lang/Throwable;)V

    return-void
.end method

.method public general()V
    .registers 6

    .line 3
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/logger/IronLog;->a:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Lcom/ironsource/ib;

    const-string v3, ""

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4}, Lcom/ironsource/ib;-><init>(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->a(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Lcom/ironsource/ib;)V

    return-void
.end method

.method public general(Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/logger/IronLog;->a:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Lcom/ironsource/ib;

    const/4 v3, 0x4

    invoke-direct {v2, p1, v3}, Lcom/ironsource/ib;-><init>(Ljava/lang/String;I)V

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->a(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Lcom/ironsource/ib;)V

    return-void
.end method

.method public info()V
    .registers 6

    .line 3
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/logger/IronLog;->a:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Lcom/ironsource/ib;

    const-string v3, ""

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/ironsource/ib;-><init>(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->a(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Lcom/ironsource/ib;)V

    return-void
.end method

.method public info(Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/logger/IronLog;->a:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Lcom/ironsource/ib;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Lcom/ironsource/ib;-><init>(Ljava/lang/String;I)V

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->a(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Lcom/ironsource/ib;)V

    return-void
.end method

.method public verbose()V
    .registers 6

    .line 3
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/logger/IronLog;->a:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Lcom/ironsource/ib;

    const-string v3, ""

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/ironsource/ib;-><init>(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->a(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Lcom/ironsource/ib;)V

    return-void
.end method

.method public verbose(Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/logger/IronLog;->a:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Lcom/ironsource/ib;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lcom/ironsource/ib;-><init>(Ljava/lang/String;I)V

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->a(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Lcom/ironsource/ib;)V

    return-void
.end method

.method public warning()V
    .registers 6

    .line 3
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/logger/IronLog;->a:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Lcom/ironsource/ib;

    const-string v3, ""

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ironsource/ib;-><init>(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->a(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Lcom/ironsource/ib;)V

    return-void
.end method

.method public warning(Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/logger/IronLog;->a:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Lcom/ironsource/ib;

    const/4 v3, 0x2

    invoke-direct {v2, p1, v3}, Lcom/ironsource/ib;-><init>(Ljava/lang/String;I)V

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->a(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Lcom/ironsource/ib;)V

    return-void
.end method
