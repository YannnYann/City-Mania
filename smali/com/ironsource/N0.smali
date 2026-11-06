###### Class com.ironsource.N0 (com.ironsource.N0)
.class public Lcom/ironsource/N0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/N0$a;
    }
.end annotation


# static fields
.field public static final e:I = -0x1


# instance fields
.field private final a:Lcom/ironsource/N0$a;

.field private final b:J

.field private final c:J

.field private final d:J


# direct methods
.method public constructor <init>(Lcom/ironsource/N0$a;JJJ)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/N0;->a:Lcom/ironsource/N0$a;

    .line 3
    iput-wide p2, p0, Lcom/ironsource/N0;->b:J

    .line 4
    iput-wide p4, p0, Lcom/ironsource/N0;->c:J

    .line 5
    iput-wide p6, p0, Lcom/ironsource/N0;->d:J

    return-void
.end method


# virtual methods
.method public a()Lcom/ironsource/N0$a;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/N0;->a:Lcom/ironsource/N0$a;

    return-object v0
.end method

.method public b()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/ironsource/N0;->d:J

    return-wide v0
.end method

.method public c()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/ironsource/N0;->c:J

    return-wide v0
.end method

.method public d()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/ironsource/N0;->b:J

    return-wide v0
.end method

.method public e()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/N0;->a:Lcom/ironsource/N0$a;

    sget-object v1, Lcom/ironsource/N0$a;->c:Lcom/ironsource/N0$a;

    if-eq v0, v1, :cond_d

    sget-object v1, Lcom/ironsource/N0$a;->d:Lcom/ironsource/N0$a;

    if-ne v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    return v0

    :cond_d
    :goto_d
    const/4 v0, 0x1

    return v0
.end method

.method public f()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/N0;->a:Lcom/ironsource/N0$a;

    sget-object v1, Lcom/ironsource/N0$a;->a:Lcom/ironsource/N0$a;

    if-eq v0, v1, :cond_d

    sget-object v1, Lcom/ironsource/N0$a;->b:Lcom/ironsource/N0$a;

    if-ne v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    return v0

    :cond_d
    :goto_d
    const/4 v0, 0x1

    return v0
.end method

###### Class com.ironsource.N0.a (com.ironsource.N0$a)
.class public final enum Lcom/ironsource/N0$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/N0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/N0$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ironsource/N0$a;

.field public static final enum b:Lcom/ironsource/N0$a;

.field public static final enum c:Lcom/ironsource/N0$a;

.field public static final enum d:Lcom/ironsource/N0$a;

.field private static final synthetic e:[Lcom/ironsource/N0$a;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/ironsource/N0$a;

    const-string v1, "MANUAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ironsource/N0$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/N0$a;->a:Lcom/ironsource/N0$a;

    .line 2
    new-instance v0, Lcom/ironsource/N0$a;

    const-string v1, "MANUAL_WITH_AUTOMATIC_RELOAD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ironsource/N0$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/N0$a;->b:Lcom/ironsource/N0$a;

    .line 4
    new-instance v0, Lcom/ironsource/N0$a;

    const-string v1, "AUTOMATIC_LOAD_AFTER_CLOSE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/ironsource/N0$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/N0$a;->c:Lcom/ironsource/N0$a;

    .line 5
    new-instance v0, Lcom/ironsource/N0$a;

    const-string v1, "AUTOMATIC_LOAD_WHILE_SHOW"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/ironsource/N0$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/N0$a;->d:Lcom/ironsource/N0$a;

    .line 6
    invoke-static {}, Lcom/ironsource/N0$a;->a()[Lcom/ironsource/N0$a;

    move-result-object v0

    sput-object v0, Lcom/ironsource/N0$a;->e:[Lcom/ironsource/N0$a;

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

.method private static synthetic a()[Lcom/ironsource/N0$a;
    .registers 4

    .line 1
    sget-object v0, Lcom/ironsource/N0$a;->a:Lcom/ironsource/N0$a;

    sget-object v1, Lcom/ironsource/N0$a;->b:Lcom/ironsource/N0$a;

    sget-object v2, Lcom/ironsource/N0$a;->c:Lcom/ironsource/N0$a;

    sget-object v3, Lcom/ironsource/N0$a;->d:Lcom/ironsource/N0$a;

    filled-new-array {v0, v1, v2, v3}, [Lcom/ironsource/N0$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/N0$a;
    .registers 2

    .line 1
    const-class v0, Lcom/ironsource/N0$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/N0$a;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/N0$a;
    .registers 1

    .line 1
    sget-object v0, Lcom/ironsource/N0$a;->e:[Lcom/ironsource/N0$a;

    invoke-virtual {v0}, [Lcom/ironsource/N0$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/N0$a;

    return-object v0
.end method
