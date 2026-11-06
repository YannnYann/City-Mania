###### Class com.ironsource.E3 (com.ironsource.E3)
.class public final Lcom/ironsource/E3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/r7;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCappingConfigProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CappingConfigProvider.kt\ncom/ironsource/services/capping/config/CappingConfigProvider\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,50:1\n1#2:51\n*E\n"
.end annotation


# instance fields
.field private final a:Ljava/lang/Boolean;

.field private final b:Ljava/lang/Integer;

.field private final c:Lcom/ironsource/M3;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Integer;Lcom/ironsource/M3;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/E3;->a:Ljava/lang/Boolean;

    .line 3
    iput-object p2, p0, Lcom/ironsource/E3;->b:Ljava/lang/Integer;

    .line 4
    iput-object p3, p0, Lcom/ironsource/E3;->c:Lcom/ironsource/M3;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Boolean;Ljava/lang/Integer;Lcom/ironsource/M3;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_6

    move-object p2, v0

    :cond_6
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_b

    move-object p3, v0

    .line 5
    :cond_b
    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/E3;-><init>(Ljava/lang/Boolean;Ljava/lang/Integer;Lcom/ironsource/M3;)V

    return-void
.end method

.method private final a(Lcom/ironsource/M3;)Ljava/lang/Object;
    .registers 5

    .line 1
    new-instance v0, Lcom/ironsource/F3;

    iget-object v1, p0, Lcom/ironsource/E3;->a:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/ironsource/E3;->b:Ljava/lang/Integer;

    invoke-direct {v0, v1, v2, p1}, Lcom/ironsource/F3;-><init>(Ljava/lang/Boolean;Ljava/lang/Integer;Lcom/ironsource/M3;)V

    invoke-virtual {v0}, Lcom/ironsource/F3;->a()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 3

    .line 2
    new-instance v0, Lcom/ironsource/P4;

    iget-object v1, p0, Lcom/ironsource/E3;->a:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lcom/ironsource/P4;-><init>(Ljava/lang/Boolean;)V

    invoke-virtual {v0}, Lcom/ironsource/P4;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 3
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 6
    :cond_1a
    iget-object v0, p0, Lcom/ironsource/E3;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_28

    new-instance v1, Lcom/ironsource/O4;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {v1, v0}, Lcom/ironsource/O4;-><init>(Z)V

    goto :goto_29

    :cond_28
    const/4 v1, 0x0

    :goto_29
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/Object;
    .registers 9

    .line 1
    sget-object v0, Lcom/ironsource/M3;->f:Lcom/ironsource/M3;

    invoke-direct {p0, v0}, Lcom/ironsource/E3;->a(Lcom/ironsource/M3;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 2
    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 5
    :cond_15
    iget-object v1, p0, Lcom/ironsource/E3;->a:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 6
    iget-object v1, p0, Lcom/ironsource/E3;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_30

    new-instance v2, Lcom/ironsource/dd;

    invoke-virtual {v0, v1}, Lcom/ironsource/M3;->a(Ljava/lang/Integer;)J

    move-result-wide v3

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/ironsource/dd;-><init>(JLcom/ironsource/M3;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_31

    :cond_30
    const/4 v2, 0x0

    .line 8
    :goto_31
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/Object;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/E3;->c:Lcom/ironsource/M3;

    invoke-direct {p0, v0}, Lcom/ironsource/E3;->a(Lcom/ironsource/M3;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 2
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 5
    :cond_15
    iget-object v0, p0, Lcom/ironsource/E3;->a:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 6
    iget-object v0, p0, Lcom/ironsource/E3;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 7
    iget-object v1, p0, Lcom/ironsource/E3;->c:Lcom/ironsource/M3;

    if-eqz v1, :cond_31

    new-instance v2, Lcom/ironsource/tf;

    invoke-direct {v2, v0, v1}, Lcom/ironsource/tf;-><init>(ILcom/ironsource/M3;)V

    goto :goto_32

    :cond_31
    const/4 v2, 0x0

    .line 10
    :goto_32
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/Boolean;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/E3;->a:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final e()Ljava/lang/Integer;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/E3;->b:Ljava/lang/Integer;

    return-object v0
.end method

.method public final f()Lcom/ironsource/M3;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/E3;->c:Lcom/ironsource/M3;

    return-object v0
.end method
