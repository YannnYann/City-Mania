###### Class com.ironsource.C3533bf (com.ironsource.bf)
.class Lcom/ironsource/bf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/Q8;
.implements Lcom/ironsource/Q8$a;


# static fields
.field private static final c:I = 0x1


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/ironsource/mediationsdk/IronSource$a;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/ironsource/ja;


# direct methods
.method public constructor <init>()V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/bf;->a:Ljava/util/Map;

    .line 6
    new-instance v0, Lcom/ironsource/ja;

    invoke-direct {v0}, Lcom/ironsource/ja;-><init>()V

    iput-object v0, p0, Lcom/ironsource/bf;->b:Lcom/ironsource/ja;

    .line 7
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource$a;->values()[Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v1, :cond_22

    aget-object v3, v0, v2

    const/4 v4, 0x1

    .line 8
    invoke-direct {p0, v3, v4}, Lcom/ironsource/bf;->a(Lcom/ironsource/mediationsdk/IronSource$a;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_22
    return-void
.end method

.method private a(Lcom/ironsource/mediationsdk/IronSource$a;I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/ironsource/bf;->a:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/ironsource/bf$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_30

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2a

    const/4 v0, 0x3

    if-eq p1, v0, :cond_24

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1e

    return-void

    .line 14
    :cond_1e
    iget-object p1, p0, Lcom/ironsource/bf;->b:Lcom/ironsource/ja;

    invoke-virtual {p1, p2}, Lcom/ironsource/ja;->c(I)V

    return-void

    .line 15
    :cond_24
    iget-object p1, p0, Lcom/ironsource/bf;->b:Lcom/ironsource/ja;

    invoke-virtual {p1, p2}, Lcom/ironsource/ja;->a(I)V

    return-void

    .line 16
    :cond_2a
    iget-object p1, p0, Lcom/ironsource/bf;->b:Lcom/ironsource/ja;

    invoke-virtual {p1, p2}, Lcom/ironsource/ja;->b(I)V

    return-void

    .line 17
    :cond_30
    iget-object p1, p0, Lcom/ironsource/bf;->b:Lcom/ironsource/ja;

    invoke-virtual {p1, p2}, Lcom/ironsource/ja;->d(I)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/ironsource/mediationsdk/IronSource$a;)I
    .registers 4

    monitor-enter p0

    const/4 v0, -0x1

    if-nez p1, :cond_6

    monitor-exit p0

    return v0

    .line 18
    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/ironsource/bf;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_11

    goto :goto_15

    .line 19
    :cond_11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_17

    :goto_15
    monitor-exit p0

    return v0

    :catchall_17
    move-exception p1

    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public a(Lcom/unity3d/mediation/LevelPlay$AdFormat;)I
    .registers 2

    if-nez p1, :cond_4

    const/4 p1, -0x1

    return p1

    .line 20
    :cond_4
    invoke-static {p1}, Lcom/unity3d/mediation/a;->a(Lcom/unity3d/mediation/LevelPlay$AdFormat;)Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object p1

    .line 21
    invoke-virtual {p0, p1}, Lcom/ironsource/bf;->a(Lcom/ironsource/mediationsdk/IronSource$a;)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public declared-synchronized b(Lcom/ironsource/mediationsdk/IronSource$a;)V
    .registers 3

    monitor-enter p0

    if-nez p1, :cond_5

    monitor-exit p0

    return-void

    .line 1
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/ironsource/bf;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/ironsource/bf;->a(Lcom/ironsource/mediationsdk/IronSource$a;I)V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_18

    monitor-exit p0

    return-void

    :catchall_18
    move-exception p1

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p1
.end method

###### Class com.ironsource.C3533bf.a (com.ironsource.bf$a)
.class synthetic Lcom/ironsource/bf$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/bf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource$a;->values()[Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ironsource/bf$a;->a:[I

    :try_start_9
    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$a;->b:Lcom/ironsource/mediationsdk/IronSource$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/ironsource/bf$a;->a:[I

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$a;->c:Lcom/ironsource/mediationsdk/IronSource$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/ironsource/bf$a;->a:[I

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$a;->d:Lcom/ironsource/mediationsdk/IronSource$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/ironsource/bf$a;->a:[I

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$a;->e:Lcom/ironsource/mediationsdk/IronSource$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    return-void
.end method
