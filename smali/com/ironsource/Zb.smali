###### Class com.ironsource.Zb (com.ironsource.Zb)
.class public final Lcom/ironsource/Zb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/ac;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/Zb$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/ironsource/sdk/controller/e;

.field private final c:Lcom/ironsource/a9;

.field private final d:Lcom/ironsource/b1;

.field private final e:Ljava/lang/String;

.field private f:Lcom/ironsource/ac$a;


# direct methods
.method public static synthetic $r8$lambda$4SZGPOIkOs03zATvyRCCI8KBSg0(Lcom/ironsource/Zb;Lcom/ironsource/sdk/controller/f$a;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/ironsource/Zb;->b(Lcom/ironsource/Zb;Lcom/ironsource/sdk/controller/f$a;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Jl0jfLkJEHH1VbhmuyKI1hslbJI(Lcom/ironsource/Zb;Lcom/ironsource/H8;Lcom/ironsource/sdk/controller/f$a;)V
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/ironsource/Zb;->a(Lcom/ironsource/Zb;Lcom/ironsource/H8;Lcom/ironsource/sdk/controller/f$a;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ViwhwpYfCxCeLkwpHJX8yvywv7I(Lcom/ironsource/Zb;Lcom/ironsource/sdk/controller/f$a;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/ironsource/Zb;->a(Lcom/ironsource/Zb;Lcom/ironsource/sdk/controller/f$a;)V

    return-void
.end method

.method public static synthetic $r8$lambda$r5bGfhEED0e9QDDWFYelZaiE7KE(Lcom/ironsource/Zb;Lcom/ironsource/Sb;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/ironsource/Zb;->a(Lcom/ironsource/Zb;Lcom/ironsource/Sb;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sWLH1IYK0_XhALw24GD3J0pZaUw(Lcom/ironsource/Zb;Landroid/app/Activity;Lcom/ironsource/sdk/controller/f$a;)V
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/ironsource/Zb;->a(Lcom/ironsource/Zb;Landroid/app/Activity;Lcom/ironsource/sdk/controller/f$a;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ironsource/sdk/controller/e;Lcom/ironsource/a9;Lcom/ironsource/b1;)V
    .registers 6

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controllerManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageLoader"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adViewManagement"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/Zb;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/ironsource/Zb;->b:Lcom/ironsource/sdk/controller/e;

    .line 4
    iput-object p3, p0, Lcom/ironsource/Zb;->c:Lcom/ironsource/a9;

    .line 5
    iput-object p4, p0, Lcom/ironsource/Zb;->d:Lcom/ironsource/b1;

    .line 7
    const-class p3, Lcom/ironsource/Zb;

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/ironsource/Zb;->e:Ljava/lang/String;

    .line 11
    invoke-direct {p0}, Lcom/ironsource/Zb;->d()Lcom/ironsource/sdk/controller/l$b;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/ironsource/sdk/controller/e;->a(Ljava/lang/String;Lcom/ironsource/sdk/controller/l$b;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/ironsource/sdk/controller/e;Lcom/ironsource/a9;Lcom/ironsource/b1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 8

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_b

    .line 12
    new-instance p3, Lcom/ironsource/Z8;

    const/4 p6, 0x1

    const/4 v0, 0x0

    invoke-direct {p3, v0, p6, v0}, Lcom/ironsource/Z8;-><init>(Lcom/ironsource/U3;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_b
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_13

    .line 13
    invoke-static {}, Lcom/ironsource/q8;->a()Lcom/ironsource/q8;

    move-result-object p4

    .line 14
    :cond_13
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ironsource/Zb;-><init>(Ljava/lang/String;Lcom/ironsource/sdk/controller/e;Lcom/ironsource/a9;Lcom/ironsource/b1;)V

    return-void
.end method

.method private final a(Landroid/app/Activity;Lcom/ironsource/sdk/controller/f$a;)V
    .registers 6

    .line 7
    invoke-virtual {p2}, Lcom/ironsource/sdk/controller/f$a;->d()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_12

    .line 8
    invoke-virtual {p0}, Lcom/ironsource/Zb;->b()Lcom/ironsource/ac$a;

    move-result-object p1

    if-eqz p1, :cond_37

    const-string p2, "failed to load native ad: missing params"

    invoke-interface {p1, p2}, Lcom/ironsource/ac$a;->a(Ljava/lang/String;)V

    return-void

    .line 12
    :cond_12
    invoke-virtual {p2}, Lcom/ironsource/sdk/controller/f$a;->d()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "success"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_38

    .line 13
    invoke-virtual {p2}, Lcom/ironsource/sdk/controller/f$a;->d()Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "reason"

    const-string v0, "failed to load native ad: unexpected error"

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-virtual {p0}, Lcom/ironsource/Zb;->b()Lcom/ironsource/ac$a;

    move-result-object p2

    if-eqz p2, :cond_37

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p2, p1}, Lcom/ironsource/ac$a;->a(Ljava/lang/String;)V

    :cond_37
    return-void

    .line 18
    :cond_38
    new-instance v0, Lcom/ironsource/H8$a;

    iget-object v1, p0, Lcom/ironsource/Zb;->c:Lcom/ironsource/a9;

    iget-object v2, p0, Lcom/ironsource/Zb;->d:Lcom/ironsource/b1;

    invoke-direct {v0, v1, v2}, Lcom/ironsource/H8$a;-><init>(Lcom/ironsource/a9;Lcom/ironsource/b1;)V

    .line 19
    invoke-virtual {p2}, Lcom/ironsource/sdk/controller/f$a;->d()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/H8$a;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/ironsource/H8$b;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lcom/ironsource/H8$b;->a()Lcom/ironsource/H8$b$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ironsource/H8$b$a;->h()Lcom/ironsource/H8;

    move-result-object p2

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/ironsource/Zb;->a(Lcom/ironsource/H8$b;Lcom/ironsource/H8;)V

    return-void
.end method

.method private final a(Lcom/ironsource/H8$b;Lcom/ironsource/H8;)V
    .registers 6

    .line 22
    iget-object v0, p0, Lcom/ironsource/Zb;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nativeAd.loadReport."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 23
    new-instance v1, Lcom/ironsource/sdk/controller/f$c;

    iget-object v2, p0, Lcom/ironsource/Zb;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ironsource/H8$b;->b()Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v1, v2, v0, p1}, Lcom/ironsource/sdk/controller/f$c;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 24
    iget-object p1, p0, Lcom/ironsource/Zb;->b:Lcom/ironsource/sdk/controller/e;

    new-instance v0, Lcom/ironsource/Zb$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2}, Lcom/ironsource/Zb$$ExternalSyntheticLambda2;-><init>(Lcom/ironsource/Zb;Lcom/ironsource/H8;)V

    invoke-virtual {p1, v1, v0}, Lcom/ironsource/sdk/controller/e;->a(Lcom/ironsource/sdk/controller/f$c;Lcom/ironsource/sdk/controller/l$a;)V

    return-void
.end method

.method private final a(Lcom/ironsource/H8;Lcom/ironsource/sdk/controller/f$a;)V
    .registers 6

    .line 26
    invoke-virtual {p2}, Lcom/ironsource/sdk/controller/f$a;->d()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_12

    .line 27
    invoke-virtual {p0}, Lcom/ironsource/Zb;->b()Lcom/ironsource/ac$a;

    move-result-object p1

    if-eqz p1, :cond_41

    const-string p2, "failed to load native ad: missing report params"

    invoke-interface {p1, p2}, Lcom/ironsource/ac$a;->a(Ljava/lang/String;)V

    return-void

    .line 30
    :cond_12
    invoke-virtual {p2}, Lcom/ironsource/sdk/controller/f$a;->d()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "success"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_38

    .line 31
    invoke-virtual {p2}, Lcom/ironsource/sdk/controller/f$a;->d()Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "reason"

    const-string v0, "failed to load native ad: unexpected error"

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 32
    invoke-virtual {p0}, Lcom/ironsource/Zb;->b()Lcom/ironsource/ac$a;

    move-result-object p2

    if-eqz p2, :cond_41

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p2, p1}, Lcom/ironsource/ac$a;->a(Ljava/lang/String;)V

    return-void

    .line 35
    :cond_38
    invoke-virtual {p0}, Lcom/ironsource/Zb;->b()Lcom/ironsource/ac$a;

    move-result-object p2

    if-eqz p2, :cond_41

    invoke-interface {p2, p1}, Lcom/ironsource/ac$a;->a(Lcom/ironsource/H8;)V

    :cond_41
    return-void
.end method

.method private final a(Lcom/ironsource/Sb;)V
    .registers 5

    .line 62
    invoke-virtual {p1}, Lcom/ironsource/Sb;->f()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_e

    .line 63
    iget-object p1, p0, Lcom/ironsource/Zb;->e:Ljava/lang/String;

    const-string v0, "failed to handle click on native ad: missing params"

    invoke-static {p1, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 67
    :cond_e
    invoke-virtual {p1}, Lcom/ironsource/Sb;->f()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "success"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 68
    invoke-virtual {p1}, Lcom/ironsource/Sb;->f()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "reason"

    const-string v1, "unexpected error"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 69
    iget-object v0, p0, Lcom/ironsource/Zb;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to handle click on native ad: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 73
    :cond_3e
    invoke-virtual {p0}, Lcom/ironsource/Zb;->b()Lcom/ironsource/ac$a;

    move-result-object p1

    if-eqz p1, :cond_47

    invoke-interface {p1}, Lcom/ironsource/ac$a;->e()V

    :cond_47
    return-void
.end method

.method private static final a(Lcom/ironsource/Zb;Landroid/app/Activity;Lcom/ironsource/sdk/controller/f$a;)V
    .registers 4

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/ironsource/Zb;->a(Landroid/app/Activity;Lcom/ironsource/sdk/controller/f$a;)V

    return-void
.end method

.method private static final a(Lcom/ironsource/Zb;Lcom/ironsource/H8;Lcom/ironsource/sdk/controller/f$a;)V
    .registers 4

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/ironsource/Zb;->a(Lcom/ironsource/H8;Lcom/ironsource/sdk/controller/f$a;)V

    return-void
.end method

.method private static final a(Lcom/ironsource/Zb;Lcom/ironsource/Sb;)V
    .registers 4

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Lcom/ironsource/Sb;->e()Ljava/lang/String;

    move-result-object v0

    .line 61
    const-string v1, "nativeAd.click"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0, p1}, Lcom/ironsource/Zb;->a(Lcom/ironsource/Sb;)V

    :cond_14
    return-void
.end method

.method private static final a(Lcom/ironsource/Zb;Lcom/ironsource/sdk/controller/f$a;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0, p1}, Lcom/ironsource/Zb;->a(Lcom/ironsource/sdk/controller/f$a;)V

    return-void
.end method

.method private final a(Lcom/ironsource/sdk/controller/f$a;)V
    .registers 5

    .line 48
    invoke-virtual {p1}, Lcom/ironsource/sdk/controller/f$a;->d()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_e

    .line 49
    iget-object p1, p0, Lcom/ironsource/Zb;->e:Ljava/lang/String;

    const-string v0, "failed to handle click on native ad: missing params"

    invoke-static {p1, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 53
    :cond_e
    invoke-virtual {p1}, Lcom/ironsource/sdk/controller/f$a;->d()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "success"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 54
    invoke-virtual {p1}, Lcom/ironsource/sdk/controller/f$a;->d()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "reason"

    const-string v1, "unexpected error"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 55
    iget-object v0, p0, Lcom/ironsource/Zb;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to handle click on native ad: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 59
    :cond_3e
    invoke-virtual {p0}, Lcom/ironsource/Zb;->b()Lcom/ironsource/ac$a;

    move-result-object p1

    if-eqz p1, :cond_47

    invoke-interface {p1}, Lcom/ironsource/ac$a;->e()V

    :cond_47
    return-void
.end method

.method private static final b(Lcom/ironsource/Zb;Lcom/ironsource/sdk/controller/f$a;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/ironsource/Zb;->b(Lcom/ironsource/sdk/controller/f$a;)V

    return-void
.end method

.method private final b(Lcom/ironsource/sdk/controller/f$a;)V
    .registers 5

    .line 3
    invoke-virtual {p1}, Lcom/ironsource/sdk/controller/f$a;->d()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_e

    .line 4
    iget-object p1, p0, Lcom/ironsource/Zb;->e:Ljava/lang/String;

    const-string v0, "failed to handle show on native ad: missing params"

    invoke-static {p1, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_e
    invoke-virtual {p1}, Lcom/ironsource/sdk/controller/f$a;->d()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "success"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 9
    invoke-virtual {p1}, Lcom/ironsource/sdk/controller/f$a;->d()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "reason"

    const-string v1, "unexpected error"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/ironsource/Zb;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to handle show on native ad: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 14
    :cond_3e
    invoke-virtual {p0}, Lcom/ironsource/Zb;->b()Lcom/ironsource/ac$a;

    move-result-object p1

    if-eqz p1, :cond_47

    invoke-interface {p1}, Lcom/ironsource/ac$a;->a()V

    :cond_47
    return-void
.end method

.method private final d()Lcom/ironsource/sdk/controller/l$b;
    .registers 2

    .line 1
    new-instance v0, Lcom/ironsource/Zb$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/ironsource/Zb$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/Zb;)V

    return-object v0
.end method

.method private final e()Lorg/json/JSONObject;
    .registers 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    const-string v1, "command"

    const-string v2, "nativeAd.click"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 3
    const-string v1, "sdkCallback"

    const-string v2, "onReceivedMessage"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "put(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 5

    .line 36
    new-instance v0, Lcom/ironsource/sdk/controller/f$c;

    iget-object v1, p0, Lcom/ironsource/Zb;->a:Ljava/lang/String;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "nativeAd.destroy"

    invoke-direct {v0, v1, v3, v2}, Lcom/ironsource/sdk/controller/f$c;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 37
    iget-object v1, p0, Lcom/ironsource/Zb;->b:Lcom/ironsource/sdk/controller/e;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/ironsource/sdk/controller/e;->a(Lcom/ironsource/sdk/controller/f$c;Lcom/ironsource/sdk/controller/l$a;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Lorg/json/JSONObject;)V
    .registers 6

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/ironsource/Zb;->b:Lcom/ironsource/sdk/controller/e;

    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/controller/e;->a(Landroid/app/Activity;)V

    .line 4
    new-instance v0, Lcom/ironsource/sdk/controller/f$c;

    iget-object v1, p0, Lcom/ironsource/Zb;->a:Ljava/lang/String;

    const-string v2, "nativeAd.load"

    invoke-direct {v0, v1, v2, p2}, Lcom/ironsource/sdk/controller/f$c;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 5
    iget-object p2, p0, Lcom/ironsource/Zb;->b:Lcom/ironsource/sdk/controller/e;

    new-instance v1, Lcom/ironsource/Zb$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/Zb$$ExternalSyntheticLambda3;-><init>(Lcom/ironsource/Zb;Landroid/app/Activity;)V

    invoke-virtual {p2, v0, v1}, Lcom/ironsource/sdk/controller/e;->a(Lcom/ironsource/sdk/controller/f$c;Lcom/ironsource/sdk/controller/l$a;)V

    return-void
.end method

.method public a(Lcom/ironsource/Dg;)V
    .registers 5

    const-string v0, "viewVisibilityParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    new-instance v0, Lcom/ironsource/sdk/controller/f$c;

    iget-object v1, p0, Lcom/ironsource/Zb;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ironsource/Dg;->g()Lorg/json/JSONObject;

    move-result-object p1

    const-string v2, "nativeAd.visibilityChanged"

    invoke-direct {v0, v1, v2, p1}, Lcom/ironsource/sdk/controller/f$c;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 44
    iget-object p1, p0, Lcom/ironsource/Zb;->b:Lcom/ironsource/sdk/controller/e;

    new-instance v1, Lcom/ironsource/Zb$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/ironsource/Zb$$ExternalSyntheticLambda4;-><init>(Lcom/ironsource/Zb;)V

    invoke-virtual {p1, v0, v1}, Lcom/ironsource/sdk/controller/e;->a(Lcom/ironsource/sdk/controller/f$c;Lcom/ironsource/sdk/controller/l$a;)V

    return-void
.end method

.method public a(Lcom/ironsource/K8;)V
    .registers 5

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 39
    invoke-virtual {p1}, Lcom/ironsource/K8;->t()Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "assetViews"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 40
    invoke-direct {p0}, Lcom/ironsource/Zb;->e()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "adViewClickCommand"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 41
    new-instance v0, Lcom/ironsource/sdk/controller/f$c;

    iget-object v1, p0, Lcom/ironsource/Zb;->a:Ljava/lang/String;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v2, "nativeAd.register"

    invoke-direct {v0, v1, v2, p1}, Lcom/ironsource/sdk/controller/f$c;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 42
    iget-object p1, p0, Lcom/ironsource/Zb;->b:Lcom/ironsource/sdk/controller/e;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/ironsource/sdk/controller/e;->a(Lcom/ironsource/sdk/controller/f$c;Lcom/ironsource/sdk/controller/l$a;)V

    return-void
.end method

.method public a(Lcom/ironsource/ac$a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/Zb;->f:Lcom/ironsource/ac$a;

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 5

    const-string v0, "clickParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v0, Lcom/ironsource/sdk/controller/f$c;

    iget-object v1, p0, Lcom/ironsource/Zb;->a:Ljava/lang/String;

    const-string v2, "nativeAd.click"

    invoke-direct {v0, v1, v2, p1}, Lcom/ironsource/sdk/controller/f$c;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 46
    iget-object p1, p0, Lcom/ironsource/Zb;->b:Lcom/ironsource/sdk/controller/e;

    new-instance v1, Lcom/ironsource/Zb$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/ironsource/Zb$$ExternalSyntheticLambda1;-><init>(Lcom/ironsource/Zb;)V

    invoke-virtual {p1, v0, v1}, Lcom/ironsource/sdk/controller/e;->a(Lcom/ironsource/sdk/controller/f$c;Lcom/ironsource/sdk/controller/l$a;)V

    return-void
.end method

.method public b()Lcom/ironsource/ac$a;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Zb;->f:Lcom/ironsource/ac$a;

    return-object v0
.end method

.method public c()V
    .registers 5

    .line 1
    new-instance v0, Lcom/ironsource/sdk/controller/f$c;

    iget-object v1, p0, Lcom/ironsource/Zb;->a:Ljava/lang/String;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "nativeAd.privacyClick"

    invoke-direct {v0, v1, v3, v2}, Lcom/ironsource/sdk/controller/f$c;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 2
    iget-object v1, p0, Lcom/ironsource/Zb;->b:Lcom/ironsource/sdk/controller/e;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/ironsource/sdk/controller/e;->a(Lcom/ironsource/sdk/controller/f$c;Lcom/ironsource/sdk/controller/l$a;)V

    return-void
.end method

###### Class com.ironsource.Zb.a (com.ironsource.Zb$a)
.class public final Lcom/ironsource/Zb$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/Zb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/ironsource/Zb$a;

.field public static final b:Ljava/lang/String; = "nativeAd.load"

.field public static final c:Ljava/lang/String; = "nativeAd.loadReport"

.field public static final d:Ljava/lang/String; = "nativeAd.register"

.field public static final e:Ljava/lang/String; = "nativeAd.click"

.field public static final f:Ljava/lang/String; = "nativeAd.privacyClick"

.field public static final g:Ljava/lang/String; = "nativeAd.visibilityChanged"

.field public static final h:Ljava/lang/String; = "nativeAd.destroy"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/ironsource/Zb$a;

    invoke-direct {v0}, Lcom/ironsource/Zb$a;-><init>()V

    sput-object v0, Lcom/ironsource/Zb$a;->a:Lcom/ironsource/Zb$a;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.ironsource.Zb$$ExternalSyntheticLambda0 (com.ironsource.Zb$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/ironsource/Zb$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/ironsource/sdk/controller/l$b;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/Zb;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/Zb;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/Zb$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/Zb;

    return-void
.end method


# virtual methods
.method public final a(Lcom/ironsource/Sb;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/ironsource/Zb$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/Zb;

    invoke-static {v0, p1}, Lcom/ironsource/Zb;->$r8$lambda$r5bGfhEED0e9QDDWFYelZaiE7KE(Lcom/ironsource/Zb;Lcom/ironsource/Sb;)V

    return-void
.end method

###### Class com.ironsource.Zb$$ExternalSyntheticLambda1 (com.ironsource.Zb$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/ironsource/Zb$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/ironsource/sdk/controller/l$a;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/Zb;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/Zb;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/Zb$$ExternalSyntheticLambda1;->f$0:Lcom/ironsource/Zb;

    return-void
.end method


# virtual methods
.method public final a(Lcom/ironsource/sdk/controller/f$a;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/ironsource/Zb$$ExternalSyntheticLambda1;->f$0:Lcom/ironsource/Zb;

    invoke-static {v0, p1}, Lcom/ironsource/Zb;->$r8$lambda$ViwhwpYfCxCeLkwpHJX8yvywv7I(Lcom/ironsource/Zb;Lcom/ironsource/sdk/controller/f$a;)V

    return-void
.end method

###### Class com.ironsource.Zb$$ExternalSyntheticLambda2 (com.ironsource.Zb$$ExternalSyntheticLambda2)
.class public final synthetic Lcom/ironsource/Zb$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/ironsource/sdk/controller/l$a;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/Zb;

.field public final synthetic f$1:Lcom/ironsource/H8;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/Zb;Lcom/ironsource/H8;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/Zb$$ExternalSyntheticLambda2;->f$0:Lcom/ironsource/Zb;

    iput-object p2, p0, Lcom/ironsource/Zb$$ExternalSyntheticLambda2;->f$1:Lcom/ironsource/H8;

    return-void
.end method


# virtual methods
.method public final a(Lcom/ironsource/sdk/controller/f$a;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/ironsource/Zb$$ExternalSyntheticLambda2;->f$0:Lcom/ironsource/Zb;

    iget-object v1, p0, Lcom/ironsource/Zb$$ExternalSyntheticLambda2;->f$1:Lcom/ironsource/H8;

    invoke-static {v0, v1, p1}, Lcom/ironsource/Zb;->$r8$lambda$Jl0jfLkJEHH1VbhmuyKI1hslbJI(Lcom/ironsource/Zb;Lcom/ironsource/H8;Lcom/ironsource/sdk/controller/f$a;)V

    return-void
.end method

###### Class com.ironsource.Zb$$ExternalSyntheticLambda3 (com.ironsource.Zb$$ExternalSyntheticLambda3)
.class public final synthetic Lcom/ironsource/Zb$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/ironsource/sdk/controller/l$a;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/Zb;

.field public final synthetic f$1:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/Zb;Landroid/app/Activity;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/Zb$$ExternalSyntheticLambda3;->f$0:Lcom/ironsource/Zb;

    iput-object p2, p0, Lcom/ironsource/Zb$$ExternalSyntheticLambda3;->f$1:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final a(Lcom/ironsource/sdk/controller/f$a;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/ironsource/Zb$$ExternalSyntheticLambda3;->f$0:Lcom/ironsource/Zb;

    iget-object v1, p0, Lcom/ironsource/Zb$$ExternalSyntheticLambda3;->f$1:Landroid/app/Activity;

    invoke-static {v0, v1, p1}, Lcom/ironsource/Zb;->$r8$lambda$sWLH1IYK0_XhALw24GD3J0pZaUw(Lcom/ironsource/Zb;Landroid/app/Activity;Lcom/ironsource/sdk/controller/f$a;)V

    return-void
.end method

###### Class com.ironsource.Zb$$ExternalSyntheticLambda4 (com.ironsource.Zb$$ExternalSyntheticLambda4)
.class public final synthetic Lcom/ironsource/Zb$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/ironsource/sdk/controller/l$a;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/Zb;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/Zb;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/Zb$$ExternalSyntheticLambda4;->f$0:Lcom/ironsource/Zb;

    return-void
.end method


# virtual methods
.method public final a(Lcom/ironsource/sdk/controller/f$a;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/ironsource/Zb$$ExternalSyntheticLambda4;->f$0:Lcom/ironsource/Zb;

    invoke-static {v0, p1}, Lcom/ironsource/Zb;->$r8$lambda$4SZGPOIkOs03zATvyRCCI8KBSg0(Lcom/ironsource/Zb;Lcom/ironsource/sdk/controller/f$a;)V

    return-void
.end method
