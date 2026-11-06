###### Class com.unity3d.ironsourceads.AdSize (com.unity3d.ironsourceads.AdSize)
.class public final Lcom/unity3d/ironsourceads/AdSize;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ironsourceads/AdSize$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/unity3d/ironsourceads/AdSize$Companion;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/unity3d/ironsourceads/AdSize$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unity3d/ironsourceads/AdSize$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/unity3d/ironsourceads/AdSize;->Companion:Lcom/unity3d/ironsourceads/AdSize$Companion;

    return-void
.end method

.method private constructor <init>(IILjava/lang/String;)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/unity3d/ironsourceads/AdSize;->a:I

    iput p2, p0, Lcom/unity3d/ironsourceads/AdSize;->b:I

    iput-object p3, p0, Lcom/unity3d/ironsourceads/AdSize;->c:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/unity3d/ironsourceads/AdSize;-><init>(IILjava/lang/String;)V

    return-void
.end method

.method public static final banner()Lcom/unity3d/ironsourceads/AdSize;
    .registers 1

    .line 0
    sget-object v0, Lcom/unity3d/ironsourceads/AdSize;->Companion:Lcom/unity3d/ironsourceads/AdSize$Companion;

    invoke-virtual {v0}, Lcom/unity3d/ironsourceads/AdSize$Companion;->banner()Lcom/unity3d/ironsourceads/AdSize;

    move-result-object v0

    return-object v0
.end method

.method public static final large()Lcom/unity3d/ironsourceads/AdSize;
    .registers 1

    .line 0
    sget-object v0, Lcom/unity3d/ironsourceads/AdSize;->Companion:Lcom/unity3d/ironsourceads/AdSize$Companion;

    invoke-virtual {v0}, Lcom/unity3d/ironsourceads/AdSize$Companion;->large()Lcom/unity3d/ironsourceads/AdSize;

    move-result-object v0

    return-object v0
.end method

.method public static final leaderboard()Lcom/unity3d/ironsourceads/AdSize;
    .registers 1

    .line 0
    sget-object v0, Lcom/unity3d/ironsourceads/AdSize;->Companion:Lcom/unity3d/ironsourceads/AdSize$Companion;

    invoke-virtual {v0}, Lcom/unity3d/ironsourceads/AdSize$Companion;->leaderboard()Lcom/unity3d/ironsourceads/AdSize;

    move-result-object v0

    return-object v0
.end method

.method public static final mediumRectangle()Lcom/unity3d/ironsourceads/AdSize;
    .registers 1

    .line 0
    sget-object v0, Lcom/unity3d/ironsourceads/AdSize;->Companion:Lcom/unity3d/ironsourceads/AdSize$Companion;

    invoke-virtual {v0}, Lcom/unity3d/ironsourceads/AdSize$Companion;->mediumRectangle()Lcom/unity3d/ironsourceads/AdSize;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getHeight()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/unity3d/ironsourceads/AdSize;->b:I

    return v0
.end method

.method public final getSizeDescription()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/unity3d/ironsourceads/AdSize;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getWidth()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/unity3d/ironsourceads/AdSize;->a:I

    return v0
.end method

###### Class com.unity3d.ironsourceads.AdSize.Companion (com.unity3d.ironsourceads.AdSize$Companion)
.class public final Lcom/unity3d/ironsourceads/AdSize$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ironsourceads/AdSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/unity3d/ironsourceads/AdSize$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final banner()Lcom/unity3d/ironsourceads/AdSize;
    .registers 6

    .line 1
    new-instance v0, Lcom/unity3d/ironsourceads/AdSize;

    const-string v1, "BANNER"

    const/4 v2, 0x0

    const/16 v3, 0x140

    const/16 v4, 0x32

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/unity3d/ironsourceads/AdSize;-><init>(IILjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final large()Lcom/unity3d/ironsourceads/AdSize;
    .registers 6

    .line 1
    new-instance v0, Lcom/unity3d/ironsourceads/AdSize;

    const-string v1, "LARGE"

    const/4 v2, 0x0

    const/16 v3, 0x140

    const/16 v4, 0x5a

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/unity3d/ironsourceads/AdSize;-><init>(IILjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final leaderboard()Lcom/unity3d/ironsourceads/AdSize;
    .registers 6

    .line 1
    new-instance v0, Lcom/unity3d/ironsourceads/AdSize;

    const-string v1, "LEADERBOARD"

    const/4 v2, 0x0

    const/16 v3, 0x2d8

    const/16 v4, 0x5a

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/unity3d/ironsourceads/AdSize;-><init>(IILjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final mediumRectangle()Lcom/unity3d/ironsourceads/AdSize;
    .registers 6

    .line 1
    new-instance v0, Lcom/unity3d/ironsourceads/AdSize;

    const-string v1, "MEDIUM_RECTANGLE"

    const/4 v2, 0x0

    const/16 v3, 0x12c

    const/16 v4, 0xfa

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/unity3d/ironsourceads/AdSize;-><init>(IILjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
