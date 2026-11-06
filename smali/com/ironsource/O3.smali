###### Class com.ironsource.O3 (com.ironsource.O3)
.class public final Lcom/ironsource/O3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/Y5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/O3$a;
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
    iput-object p1, p0, Lcom/ironsource/O3;->a:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public b()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/O3;->a:Lorg/json/JSONObject;

    const-string v1, "enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final d()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/O3;->a:Lorg/json/JSONObject;

    const-string v1, "closeActivity"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final e()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/O3;->a:Lorg/json/JSONObject;

    const-string v1, "reportController"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

###### Class com.ironsource.O3.a (com.ironsource.O3$a)
.class public final Lcom/ironsource/O3$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/O3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/ironsource/O3$a;

.field public static final b:Z = false

.field public static final c:Ljava/lang/String; = "curlError"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/ironsource/O3$a;

    invoke-direct {v0}, Lcom/ironsource/O3$a;-><init>()V

    sput-object v0, Lcom/ironsource/O3$a;->a:Lcom/ironsource/O3$a;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
