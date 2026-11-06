###### Class com.ironsource.C3664j2 (com.ironsource.j2)
.class public Lcom/ironsource/j2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/j2$a;
    }
.end annotation


# static fields
.field public static final c:I = -0x1

.field public static final d:I


# instance fields
.field private a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/j2$a;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcom/ironsource/j2;->b:I

    .line 3
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lcom/ironsource/j2;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ironsource/mediationsdk/model/NetworkSettings;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget-object v1, p0, Lcom/ironsource/j2;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_2b
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 30
    iget-object v0, p0, Lcom/ironsource/j2;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    const-string v0, ""

    if-eqz p1, :cond_60

    .line 32
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_60

    .line 36
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/j2$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    :goto_2f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_60

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/j2$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2f

    :cond_60
    return-object v0
.end method

.method public a(Ljava/util/concurrent/ConcurrentHashMap;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/j2$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/ironsource/j2;->b:I

    if-nez v0, :cond_5

    goto :goto_46

    .line 8
    :cond_5
    iget-object v0, p0, Lcom/ironsource/j2;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 13
    sget-object v2, Lcom/ironsource/j2$a;->f:Lcom/ironsource/j2$a;

    .line 16
    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 17
    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/j2$a;

    .line 20
    :cond_29
    iget-object v3, p0, Lcom/ironsource/j2;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 21
    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 25
    iget v3, p0, Lcom/ironsource/j2;->b:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_42

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lcom/ironsource/j2;->b:I

    if-ne v3, v4, :cond_42

    const/4 v3, 0x0

    .line 26
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 29
    :cond_42
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_46
    :goto_46
    return-void
.end method

###### Class com.ironsource.C3664j2.a (com.ironsource.j2$a)
.class public final enum Lcom/ironsource/j2$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/j2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/j2$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ironsource/j2$a;

.field public static final enum b:Lcom/ironsource/j2$a;

.field public static final enum c:Lcom/ironsource/j2$a;

.field public static final enum d:Lcom/ironsource/j2$a;

.field public static final enum e:Lcom/ironsource/j2$a;

.field public static final enum f:Lcom/ironsource/j2$a;

.field private static final synthetic g:[Lcom/ironsource/j2$a;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/ironsource/j2$a;

    const-string v1, "ISAuctionPerformanceDidntAttemptToLoad"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ironsource/j2$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/j2$a;->a:Lcom/ironsource/j2$a;

    .line 2
    new-instance v0, Lcom/ironsource/j2$a;

    const-string v1, "ISAuctionPerformanceFailedToLoad"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ironsource/j2$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/j2$a;->b:Lcom/ironsource/j2$a;

    .line 3
    new-instance v0, Lcom/ironsource/j2$a;

    const-string v1, "ISAuctionPerformanceLoadedSuccessfully"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/ironsource/j2$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/j2$a;->c:Lcom/ironsource/j2$a;

    .line 4
    new-instance v0, Lcom/ironsource/j2$a;

    const-string v1, "ISAuctionPerformanceFailedToShow"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/ironsource/j2$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/j2$a;->d:Lcom/ironsource/j2$a;

    .line 5
    new-instance v0, Lcom/ironsource/j2$a;

    const-string v1, "ISAuctionPerformanceShowedSuccessfully"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/ironsource/j2$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/j2$a;->e:Lcom/ironsource/j2$a;

    .line 6
    new-instance v0, Lcom/ironsource/j2$a;

    const-string v1, "ISAuctionPerformanceNotPartOfWaterfall"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/ironsource/j2$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/j2$a;->f:Lcom/ironsource/j2$a;

    .line 7
    invoke-static {}, Lcom/ironsource/j2$a;->a()[Lcom/ironsource/j2$a;

    move-result-object v0

    sput-object v0, Lcom/ironsource/j2$a;->g:[Lcom/ironsource/j2$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic a()[Lcom/ironsource/j2$a;
    .registers 6

    .line 1
    sget-object v0, Lcom/ironsource/j2$a;->a:Lcom/ironsource/j2$a;

    sget-object v1, Lcom/ironsource/j2$a;->b:Lcom/ironsource/j2$a;

    sget-object v2, Lcom/ironsource/j2$a;->c:Lcom/ironsource/j2$a;

    sget-object v3, Lcom/ironsource/j2$a;->d:Lcom/ironsource/j2$a;

    sget-object v4, Lcom/ironsource/j2$a;->e:Lcom/ironsource/j2$a;

    sget-object v5, Lcom/ironsource/j2$a;->f:Lcom/ironsource/j2$a;

    filled-new-array/range {v0 .. v5}, [Lcom/ironsource/j2$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/j2$a;
    .registers 2

    .line 1
    const-class v0, Lcom/ironsource/j2$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/j2$a;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/j2$a;
    .registers 1

    .line 1
    sget-object v0, Lcom/ironsource/j2$a;->g:[Lcom/ironsource/j2$a;

    invoke-virtual {v0}, [Lcom/ironsource/j2$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/j2$a;

    return-object v0
.end method
