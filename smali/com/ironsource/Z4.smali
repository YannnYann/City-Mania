###### Class com.ironsource.Z4 (com.ironsource.Z4)
.class public abstract Lcom/ironsource/Z4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/Z4$a;,
        Lcom/ironsource/Z4$b;,
        Lcom/ironsource/Z4$c;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/Z4;->a:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/ironsource/Z4;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Z4;->a:Ljava/lang/String;

    return-object v0
.end method

###### Class com.ironsource.Z4.a (com.ironsource.Z4$a)
.class public final Lcom/ironsource/Z4$a;
.super Lcom/ironsource/Z4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/Z4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final b:J


# direct methods
.method public constructor <init>(J)V
    .registers 5

    .line 1
    const-string v0, "scheduler_expired"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ironsource/Z4;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-wide p1, p0, Lcom/ironsource/Z4$a;->b:J

    return-void
.end method

.method public static synthetic a(Lcom/ironsource/Z4$a;JILjava/lang/Object;)Lcom/ironsource/Z4$a;
    .registers 5

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_6

    .line 2
    iget-wide p1, p0, Lcom/ironsource/Z4$a;->b:J

    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/ironsource/Z4$a;->a(J)Lcom/ironsource/Z4$a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(J)Lcom/ironsource/Z4$a;
    .registers 4

    .line 1
    new-instance v0, Lcom/ironsource/Z4$a;

    invoke-direct {v0, p1, p2}, Lcom/ironsource/Z4$a;-><init>(J)V

    return-object v0
.end method

.method public final b()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/ironsource/Z4$a;->b:J

    return-wide v0
.end method

.method public final c()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/ironsource/Z4$a;->b:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/ironsource/Z4$a;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/ironsource/Z4$a;

    iget-wide v3, p0, Lcom/ironsource/Z4$a;->b:J

    iget-wide v5, p1, Lcom/ironsource/Z4$a;->b:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_15

    return v2

    :cond_15
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/ironsource/Z4$a;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    iget-wide v0, p0, Lcom/ironsource/Z4$a;->b:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SchedulerExpired(durationMs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.ironsource.Z4.b (com.ironsource.Z4$b)
.class public final Lcom/ironsource/Z4$b;
.super Lcom/ironsource/Z4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/Z4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final b:Lcom/ironsource/Z4$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/ironsource/Z4$b;

    invoke-direct {v0}, Lcom/ironsource/Z4$b;-><init>()V

    sput-object v0, Lcom/ironsource/Z4$b;->b:Lcom/ironsource/Z4$b;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 1
    const-string v0, "show_flow"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ironsource/Z4;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

###### Class com.ironsource.Z4.c (com.ironsource.Z4$c)
.class public final Lcom/ironsource/Z4$c;
.super Lcom/ironsource/Z4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/Z4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final b:Lcom/ironsource/Z4$c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/ironsource/Z4$c;

    invoke-direct {v0}, Lcom/ironsource/Z4$c;-><init>()V

    sput-object v0, Lcom/ironsource/Z4$c;->b:Lcom/ironsource/Z4$c;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 1
    const-string v0, "show_recovery"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ironsource/Z4;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
