###### Class com.ironsource.C3684k4 (com.ironsource.k4)
.class public final Lcom/ironsource/k4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/y7;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Z

.field private final d:Lcom/ironsource/id;


# direct methods
.method public constructor <init>()V
    .registers 8

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/ironsource/k4;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/ironsource/id;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/ironsource/id;)V
    .registers 6

    const-string v0, "controllerUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cacheFolder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootFolder"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/ironsource/k4;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/ironsource/k4;->b:Ljava/lang/String;

    .line 5
    iput-boolean p3, p0, Lcom/ironsource/k4;->c:Z

    .line 6
    iput-object p4, p0, Lcom/ironsource/k4;->d:Lcom/ironsource/id;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/ironsource/id;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 8

    and-int/lit8 p6, p5, 0x1

    const-string v0, ""

    if-eqz p6, :cond_7

    move-object p1, v0

    :cond_7
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    move-object p2, v0

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_11

    const/4 p3, 0x0

    :cond_11
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1a

    .line 10
    new-instance p4, Lcom/ironsource/id;

    invoke-direct {p4, p1}, Lcom/ironsource/id;-><init>(Ljava/lang/String;)V

    .line 11
    :cond_1a
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ironsource/k4;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/ironsource/id;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/k4;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/k4;->c:Z

    return v0
.end method

.method public c()Lcom/ironsource/id;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/k4;->d:Lcom/ironsource/id;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/k4;->b:Ljava/lang/String;

    return-object v0
.end method
