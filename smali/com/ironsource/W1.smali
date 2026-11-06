###### Class com.ironsource.W1 (com.ironsource.W1)
.class public Lcom/ironsource/W1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/o7;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/W1$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/ironsource/I7;

.field private b:Lcom/ironsource/X1;


# direct methods
.method public constructor <init>(Lcom/ironsource/I7;)V
    .registers 3

    const-string v0, "featureAvailabilityService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/W1;->a:Lcom/ironsource/I7;

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/U1;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/W1;->b:Lcom/ironsource/X1;

    if-nez v0, :cond_11

    .line 2
    new-instance v0, Lcom/ironsource/W1$a;

    invoke-direct {v0}, Lcom/ironsource/W1$a;-><init>()V

    iget-object v1, p0, Lcom/ironsource/W1;->a:Lcom/ironsource/I7;

    invoke-virtual {v0, p1, v1}, Lcom/ironsource/W1$a;->a(Lcom/ironsource/U1;Lcom/ironsource/I7;)Lcom/ironsource/X1;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/W1;->b:Lcom/ironsource/X1;

    :cond_11
    return-void
.end method

.method public a(Lcom/ironsource/qa;)V
    .registers 3

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/W1;->b:Lcom/ironsource/X1;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1}, Lcom/ironsource/X1;->a(Lcom/ironsource/qa;)V

    :cond_c
    return-void
.end method

.method public b(Lcom/ironsource/qa;)V
    .registers 3

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/W1;->b:Lcom/ironsource/X1;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1}, Lcom/ironsource/X1;->b(Lcom/ironsource/qa;)V

    :cond_c
    return-void
.end method

###### Class com.ironsource.W1.a (com.ironsource.W1$a)
.class public final Lcom/ironsource/W1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/W1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ironsource/U1;Lcom/ironsource/I7;)Lcom/ironsource/X1;
    .registers 9

    const-string v0, "featureAvailabilityService"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    .line 3
    invoke-interface {p2}, Lcom/ironsource/I7;->a()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAndroidxApplicationLifecycleAvailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    if-eqz p1, :cond_2a

    .line 9
    invoke-virtual {p1}, Lcom/ironsource/U1;->l()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_2b

    :cond_2a
    const/4 v1, 0x0

    :goto_2b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAndroidxApplicationLifecycleEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 14
    invoke-interface {p2}, Lcom/ironsource/I7;->a()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_58

    .line 16
    invoke-static {}, Lcom/ironsource/ke;->i()Lcom/ironsource/ke;

    move-result-object v1

    .line 18
    new-instance v3, Lcom/ironsource/C5;

    .line 19
    sget-object v4, Lcom/ironsource/D5;->J3:Lcom/ironsource/D5;

    .line 20
    invoke-static {v2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->b(Z)Lorg/json/JSONObject;

    move-result-object v5

    .line 21
    invoke-direct {v3, v4, v5}, Lcom/ironsource/C5;-><init>(Lcom/ironsource/D5;Lorg/json/JSONObject;)V

    .line 22
    invoke-virtual {v1, v3}, Lcom/ironsource/r3;->a(Lcom/ironsource/C5;)V

    :cond_58
    if-eqz p1, :cond_5f

    .line 29
    invoke-virtual {p1}, Lcom/ironsource/U1;->l()Z

    move-result p1

    goto :goto_60

    :cond_5f
    move p1, v2

    :goto_60
    if-eqz p1, :cond_69

    .line 30
    invoke-interface {p2}, Lcom/ironsource/I7;->a()Z

    move-result p1

    if-eqz p1, :cond_69

    const/4 v2, 0x1

    .line 32
    :cond_69
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isAndroidxEnabled: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    if-eqz v2, :cond_85

    .line 34
    new-instance p1, Lcom/ironsource/w1;

    invoke-direct {p1}, Lcom/ironsource/w1;-><init>()V

    return-object p1

    .line 35
    :cond_85
    new-instance p1, Lcom/ironsource/X7;

    invoke-direct {p1}, Lcom/ironsource/X7;-><init>()V

    return-object p1
.end method
