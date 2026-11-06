###### Class com.ironsource.C3596f5 (com.ironsource.f5)
.class public final Lcom/ironsource/f5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/ironsource/f5;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/ironsource/f5;

    invoke-direct {v0}, Lcom/ironsource/f5;-><init>()V

    sput-object v0, Lcom/ironsource/f5;->a:Lcom/ironsource/f5;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ironsource/mediationsdk/logger/IronSourceError;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1
    :cond_4
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result p1

    const/16 v1, 0x20c

    if-eq p1, v1, :cond_11

    const/16 v1, 0x212

    if-eq p1, v1, :cond_11

    return v0

    :cond_11
    const/4 p1, 0x1

    return p1
.end method
