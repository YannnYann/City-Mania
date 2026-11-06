###### Class com.ironsource.P3 (com.ironsource.P3)
.class public final Lcom/ironsource/P3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/Y5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/P3$a;
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
    iput-object p1, p0, Lcom/ironsource/P3;->a:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public b()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/P3;->a:Lorg/json/JSONObject;

    const-string v1, "clickCheck"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

###### Class com.ironsource.P3.a (com.ironsource.P3$a)
.class public final Lcom/ironsource/P3$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/P3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/ironsource/P3$a;

.field public static final b:Z = false


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/ironsource/P3$a;

    invoke-direct {v0}, Lcom/ironsource/P3$a;-><init>()V

    sput-object v0, Lcom/ironsource/P3$a;->a:Lcom/ironsource/P3$a;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
