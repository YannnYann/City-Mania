###### Class com.ironsource.mediationsdk.logger.IronSourceLogger (com.ironsource.mediationsdk.logger.IronSourceLogger)
.class public abstract Lcom/ironsource/mediationsdk/logger/IronSourceLogger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceLogLevel;,
        Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;
    }
.end annotation


# instance fields
.field a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;->b:Ljava/lang/String;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;->b:Ljava/lang/String;

    .line 6
    iput p2, p0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;->a:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;->b:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_17

    .line 1
    instance-of v1, p1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;

    if-eqz v1, :cond_17

    .line 2
    check-cast p1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;

    .line 5
    iget-object v1, p0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;->b:Ljava/lang/String;

    if-eqz v1, :cond_17

    iget-object p1, p1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    const/4 p1, 0x1

    return p1

    :cond_17
    return v0
.end method

.method public abstract log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
.end method

.method public abstract logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public setDebugLevel(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;->a:I

    return-void
.end method

###### Class com.ironsource.mediationsdk.logger.IronSourceLogger.IronSourceLogLevel (com.ironsource.mediationsdk.logger.IronSourceLogger$IronSourceLogLevel)
.class public Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceLogLevel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/logger/IronSourceLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IronSourceLogLevel"
.end annotation


# static fields
.field public static final ERROR:I = 0x3

.field public static final GENERAL:I = 0x4

.field public static final INFO:I = 0x1

.field public static final VERBOSE:I = 0x0

.field public static final WARNING:I = 0x2


# instance fields
.field final synthetic a:Lcom/ironsource/mediationsdk/logger/IronSourceLogger;


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/logger/IronSourceLogger;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceLogLevel;->a:Lcom/ironsource/mediationsdk/logger/IronSourceLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.ironsource.mediationsdk.logger.IronSourceLogger.IronSourceTag (com.ironsource.mediationsdk.logger.IronSourceLogger$IronSourceTag)
.class public final enum Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/logger/IronSourceLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IronSourceTag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

.field public static final enum ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

.field public static final enum API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

.field public static final enum CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

.field public static final enum EVENT:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

.field public static final enum INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

.field public static final enum NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

.field public static final enum NETWORK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

.field private static final synthetic a:[Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v1, "API"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    .line 2
    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v1, "ADAPTER_API"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    .line 3
    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v1, "CALLBACK"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    .line 4
    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v1, "ADAPTER_CALLBACK"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    .line 5
    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v1, "NETWORK"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NETWORK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    .line 6
    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v1, "INTERNAL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    .line 8
    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v1, "NATIVE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    .line 9
    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v1, "EVENT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->EVENT:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    .line 10
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->a()[Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    move-result-object v0

    sput-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->a:[Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic a()[Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;
    .registers 8

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NETWORK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    sget-object v7, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->EVENT:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    filled-new-array/range {v0 .. v7}, [Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;
    .registers 2

    .line 1
    const-class v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;
    .registers 1

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->a:[Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v0}, [Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    return-object v0
.end method
