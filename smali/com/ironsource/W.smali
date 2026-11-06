###### Class com.ironsource.W (com.ironsource.W)
.class public interface abstract Lcom/ironsource/W;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/W$a;,
        Lcom/ironsource/W$b;
    }
.end annotation


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b()Lorg/json/JSONObject;
.end method

.method public abstract c()I
.end method

###### Class com.ironsource.W.a (com.ironsource.W$a)
.class public final Lcom/ironsource/W$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/W;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/W;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAdNetworkAppConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdNetworkAppConfig.kt\ncom/ironsource/mediationsdk/AdNetworkAppConfig$Base\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,47:1\n1#2:48\n*E\n"
.end annotation


# instance fields
.field private final a:Lorg/json/JSONObject;

.field private final b:Lcom/ironsource/D7;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/ironsource/D7;)V
    .registers 4

    const-string v0, "applicationConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "epService"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/W$a;->a:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/ironsource/W$a;->b:Lcom/ironsource/D7;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/W$a;->b:Lcom/ironsource/D7;

    invoke-interface {v0}, Lcom/ironsource/u5;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    goto :goto_f

    :cond_e
    move-object v0, v2

    :goto_f
    if-nez v0, :cond_29

    .line 2
    iget-object v0, p0, Lcom/ironsource/W$a;->a:Lorg/json/JSONObject;

    const-string v1, "controllerUrl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    move-object v2, v0

    :cond_23
    if-nez v2, :cond_28

    .line 3
    const-string v0, ""

    return-object v0

    :cond_28
    return-object v2

    :cond_29
    return-object v0
.end method

.method public b()Lorg/json/JSONObject;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/W$a;->a:Lorg/json/JSONObject;

    const-string v1, "controllerConfig"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_f

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_f
    return-object v0
.end method

.method public c()I
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/ironsource/W$a;->a:Lorg/json/JSONObject;

    const-string v1, "debugMode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/ironsource/W$a;->a:Lorg/json/JSONObject;

    const-string v3, "adptDebugMode"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v0, 0x3

    :cond_14
    return v0
.end method

###### Class com.ironsource.W.b (com.ironsource.W$b)
.class public final Lcom/ironsource/W$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/W;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/ironsource/W$b;

.field public static final b:Ljava/lang/String; = "controllerUrl"

.field public static final c:Ljava/lang/String; = "controllerConfig"

.field public static final d:Ljava/lang/String; = "debugMode"

.field public static final e:Ljava/lang/String; = "adptDebugMode"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/ironsource/W$b;

    invoke-direct {v0}, Lcom/ironsource/W$b;-><init>()V

    sput-object v0, Lcom/ironsource/W$b;->a:Lcom/ironsource/W$b;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
