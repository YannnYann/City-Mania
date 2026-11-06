###### Class com.ironsource.Le (com.ironsource.Le)
.class public final Lcom/ironsource/Le;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/N8;
.implements Lcom/ironsource/N8$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/Le$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/ironsource/Me;

.field private final b:Lcom/ironsource/Ce;

.field private final c:Lcom/ironsource/t4;

.field private d:I

.field private e:J


# direct methods
.method public constructor <init>(Lcom/ironsource/Me;Lcom/ironsource/Ce;Lcom/ironsource/t4;)V
    .registers 5

    const-string v0, "storage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initResponseStorage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentTimeProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/Le;->a:Lcom/ironsource/Me;

    .line 3
    iput-object p2, p0, Lcom/ironsource/Le;->b:Lcom/ironsource/Ce;

    .line 4
    iput-object p3, p0, Lcom/ironsource/Le;->c:Lcom/ironsource/t4;

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Lcom/ironsource/Le;->d:I

    const-wide/16 p1, -0x1

    .line 7
    iput-wide p1, p0, Lcom/ironsource/Le;->e:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ironsource/Me;Lcom/ironsource/Ce;Lcom/ironsource/t4;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_9

    .line 8
    new-instance p2, Lcom/ironsource/De;

    invoke-direct {p2}, Lcom/ironsource/De;-><init>()V

    :cond_9
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    .line 9
    new-instance p3, Lcom/ironsource/t4$a;

    invoke-direct {p3}, Lcom/ironsource/t4$a;-><init>()V

    .line 10
    :cond_12
    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/Le;-><init>(Lcom/ironsource/Me;Lcom/ironsource/Ce;Lcom/ironsource/t4;)V

    return-void
.end method

.method private final a(Landroid/content/Context;Lcom/ironsource/Me;)J
    .registers 8

    const-wide/16 v0, -0x1

    .line 3
    invoke-interface {p2, p1, v0, v1}, Lcom/ironsource/te;->a(Landroid/content/Context;J)J

    move-result-wide v2

    .line 10
    iget-object v4, p0, Lcom/ironsource/Le;->b:Lcom/ironsource/Ce;

    invoke-interface {v4, p1}, Lcom/ironsource/Ce;->a(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_32

    cmp-long v0, v2, v0

    if-nez v0, :cond_32

    .line 12
    iget-object v0, p0, Lcom/ironsource/Le;->c:Lcom/ironsource/t4;

    invoke-interface {v0}, Lcom/ironsource/t4;->a()J

    move-result-wide v0

    .line 13
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set first session timestamp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 14
    invoke-interface {p2, p1, v0, v1}, Lcom/ironsource/te;->b(Landroid/content/Context;J)V

    return-wide v0

    :cond_32
    return-wide v2
.end method

.method private final b(Landroid/content/Context;Lcom/ironsource/Me;)I
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-interface {p2, p1, v0}, Lcom/ironsource/Oe;->b(Landroid/content/Context;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 3
    invoke-interface {p2, p1, v0}, Lcom/ironsource/Oe;->a(Landroid/content/Context;I)V

    return v0
.end method


# virtual methods
.method public a()J
    .registers 3

    .line 15
    iget-wide v0, p0, Lcom/ironsource/Le;->e:J

    return-wide v0
.end method

.method public a(Landroid/content/Context;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/Le;->a:Lcom/ironsource/Me;

    invoke-direct {p0, p1, v0}, Lcom/ironsource/Le;->b(Landroid/content/Context;Lcom/ironsource/Me;)I

    move-result v0

    iput v0, p0, Lcom/ironsource/Le;->d:I

    .line 2
    iget-object v0, p0, Lcom/ironsource/Le;->a:Lcom/ironsource/Me;

    invoke-direct {p0, p1, v0}, Lcom/ironsource/Le;->a(Landroid/content/Context;Lcom/ironsource/Me;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ironsource/Le;->e:J

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 3

    .line 4
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSessionId(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public c()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/Le;->d:I

    return v0
.end method

###### Class com.ironsource.Le.a (com.ironsource.Le$a)
.class public final Lcom/ironsource/Le$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/Le;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/ironsource/Le$a;

.field public static final b:I = -0x1

.field public static final c:I = 0x0

.field public static final d:J = -0x1L


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/ironsource/Le$a;

    invoke-direct {v0}, Lcom/ironsource/Le$a;-><init>()V

    sput-object v0, Lcom/ironsource/Le$a;->a:Lcom/ironsource/Le$a;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
