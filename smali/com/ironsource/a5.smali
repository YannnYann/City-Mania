###### Class com.ironsource.C3462a5 (com.ironsource.a5)
.class public final Lcom/ironsource/a5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/ironsource/a5;

.field private static b:Z

.field private static c:Z

.field private static d:Z

.field private static e:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ironsource/a5;

    invoke-direct {v0}, Lcom/ironsource/a5;-><init>()V

    sput-object v0, Lcom/ironsource/a5;->a:Lcom/ironsource/a5;

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lcom/ironsource/a5;->c:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 2

    .line 3
    sput p1, Lcom/ironsource/a5;->e:I

    return-void
.end method

.method public final a(Z)V
    .registers 2

    .line 2
    sput-boolean p1, Lcom/ironsource/a5;->d:Z

    return-void
.end method

.method public final a()Z
    .registers 2

    .line 1
    sget-boolean v0, Lcom/ironsource/a5;->d:Z

    return v0
.end method

.method public final b(Z)V
    .registers 2

    .line 2
    sput-boolean p1, Lcom/ironsource/a5;->c:Z

    return-void
.end method

.method public final b()Z
    .registers 2

    .line 1
    sget-boolean v0, Lcom/ironsource/a5;->c:Z

    return v0
.end method

.method public final c(Z)V
    .registers 2

    .line 2
    sput-boolean p1, Lcom/ironsource/a5;->b:Z

    return-void
.end method

.method public final c()Z
    .registers 2

    .line 1
    sget-boolean v0, Lcom/ironsource/a5;->b:Z

    return v0
.end method

.method public final d()I
    .registers 2

    .line 1
    sget v0, Lcom/ironsource/a5;->e:I

    return v0
.end method
