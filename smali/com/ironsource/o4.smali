###### Class com.ironsource.C3756o4 (com.ironsource.o4)
.class public final Lcom/ironsource/o4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoroutineVersionProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineVersionProvider.kt\ncom/ironsource/environment/coroutine/CoroutineVersionProvider\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,43:1\n12637#2,2:44\n*S KotlinDebug\n*F\n+ 1 CoroutineVersionProvider.kt\ncom/ironsource/environment/coroutine/CoroutineVersionProvider\n*L\n17#1:44,2\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final b()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method private final c()Z
    .registers 2

    .line 1
    :try_start_0
    const-string v0, "kotlinx.coroutines.test.TestScope"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_7

    const/4 v0, 0x1

    return v0

    :catchall_7
    const/4 v0, 0x0

    return v0
.end method

.method private final d()Z
    .registers 8

    const/4 v0, 0x0

    .line 1
    :try_start_1
    const-class v1, Lkotlinx/coroutines/flow/FlowKt;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v2, "getDeclaredMethods(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    array-length v2, v1

    move v3, v0

    :goto_e
    if-ge v3, v2, :cond_2a

    aget-object v4, v1, v3

    .line 30
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "chunked"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-static {v4}, Lcom/ironsource/o4$$ExternalSyntheticBackport0;->m(Ljava/lang/reflect/Method;)I

    move-result v4
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_2a

    const/4 v5, 0x2

    if-ne v4, v5, :cond_27

    const/4 v0, 0x1

    return v0

    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :catchall_2a
    :cond_2a
    return v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/ironsource/o4;->d()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "1.9.0+"

    return-object v0

    .line 2
    :cond_9
    invoke-direct {p0}, Lcom/ironsource/o4;->c()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "1.6.0-1.8.x"

    return-object v0

    .line 3
    :cond_12
    invoke-direct {p0}, Lcom/ironsource/o4;->b()Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "1.3.0-1.5.x"

    return-object v0

    .line 4
    :cond_1b
    const-string v0, "<1.3.0"

    return-object v0
.end method
