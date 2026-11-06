###### Class com.ironsource.C3640hd (com.ironsource.hd)
.class public final Lcom/ironsource/hd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPacingFeature.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PacingFeature.kt\ncom/unity3d/sdk/internal/init/response/configurations/features/PacingFeature\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,16:1\n1#2:17\n*E\n"
.end annotation


# instance fields
.field private final a:Ljava/lang/Boolean;

.field private final b:Ljava/lang/Integer;

.field private final c:Lcom/ironsource/M3;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 5

    const-string v0, "features"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "enabled"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1b

    :cond_1a
    move-object v0, v2

    :goto_1b
    iput-object v0, p0, Lcom/ironsource/hd;->a:Ljava/lang/Boolean;

    .line 7
    const-string v0, "numOfSeconds"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_2d
    iput-object v2, p0, Lcom/ironsource/hd;->b:Ljava/lang/Integer;

    .line 9
    sget-object p1, Lcom/ironsource/M3;->f:Lcom/ironsource/M3;

    iput-object p1, p0, Lcom/ironsource/hd;->c:Lcom/ironsource/M3;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/hd;->a:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final b()Ljava/lang/Integer;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/hd;->b:Ljava/lang/Integer;

    return-object v0
.end method

.method public final c()Lcom/ironsource/M3;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/hd;->c:Lcom/ironsource/M3;

    return-object v0
.end method
