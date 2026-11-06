###### Class com.ironsource.C3525b7 (com.ironsource.b7)
.class public final Lcom/ironsource/b7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/X6;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/b7$a;
    }
.end annotation


# instance fields
.field private final a:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_a

    .line 2
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :cond_a
    iput-object p1, p0, Lcom/ironsource/b7;->a:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public a()J
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/ironsource/b7;->a:Lorg/json/JSONObject;

    const-string v1, "timeout"

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public b()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/b7;->a:Lorg/json/JSONObject;

    const-string v1, "enable"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public c()Lcom/ironsource/c7;
    .registers 5

    .line 1
    sget-object v0, Lcom/ironsource/c7;->b:Lcom/ironsource/c7$a;

    iget-object v1, p0, Lcom/ironsource/b7;->a:Lorg/json/JSONObject;

    sget-object v2, Lcom/ironsource/b7$a;->a:Lcom/ironsource/b7$a;

    invoke-virtual {v2}, Lcom/ironsource/b7$a;->a()I

    move-result v2

    const-string v3, "strategy"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ironsource/c7$a;->a(I)Lcom/ironsource/c7;

    move-result-object v0

    return-object v0
.end method

###### Class com.ironsource.C3525b7.a (com.ironsource.b7$a)
.class public final Lcom/ironsource/b7$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/b7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/ironsource/b7$a;

.field public static final b:Z = false

.field private static final c:I

.field public static final d:I = 0x18


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ironsource/b7$a;

    invoke-direct {v0}, Lcom/ironsource/b7$a;-><init>()V

    sput-object v0, Lcom/ironsource/b7$a;->a:Lcom/ironsource/b7$a;

    .line 1
    sget-object v0, Lcom/ironsource/c7;->c:Lcom/ironsource/c7;

    invoke-virtual {v0}, Lcom/ironsource/c7;->c()I

    move-result v0

    sput v0, Lcom/ironsource/b7$a;->c:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    .line 1
    sget v0, Lcom/ironsource/b7$a;->c:I

    return v0
.end method
