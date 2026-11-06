###### Class com.unity3d.ads.core.domain.CommonTokenNumberProvider (com.unity3d.ads.core.domain.CommonTokenNumberProvider)
.class public final Lcom/unity3d/ads/core/domain/CommonTokenNumberProvider;
.super Ljava/lang/Object;
.source "CommonTokenNumberProvider.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/TokenNumberProvider;


# instance fields
.field private final number$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$4yc9VXWNHliGBj2hQv5Kqbro7i0(Lcom/unity3d/ads/core/data/repository/SessionRepository;)I
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/CommonTokenNumberProvider;->number_delegate$lambda$0(Lcom/unity3d/ads/core/data/repository/SessionRepository;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/unity3d/ads/core/data/repository/SessionRepository;)V
    .registers 3

    const-string v0, "sessionRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Lcom/unity3d/ads/core/domain/CommonTokenNumberProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/unity3d/ads/core/domain/CommonTokenNumberProvider$$ExternalSyntheticLambda0;-><init>(Lcom/unity3d/ads/core/data/repository/SessionRepository;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/CommonTokenNumberProvider;->number$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getNumber()I
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/CommonTokenNumberProvider;->number$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private static final number_delegate$lambda$0(Lcom/unity3d/ads/core/data/repository/SessionRepository;)I
    .registers 1

    .line 6
    invoke-interface {p0}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->getHeaderBiddingTokenCounter()I

    move-result p0

    return p0
.end method


# virtual methods
.method public invoke()I
    .registers 2

    .line 9
    invoke-direct {p0}, Lcom/unity3d/ads/core/domain/CommonTokenNumberProvider;->getNumber()I

    move-result v0

    return v0
.end method

###### Class com.unity3d.ads.core.domain.CommonTokenNumberProvider$$ExternalSyntheticLambda0 (com.unity3d.ads.core.domain.CommonTokenNumberProvider$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/unity3d/ads/core/domain/CommonTokenNumberProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/core/data/repository/SessionRepository;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/core/data/repository/SessionRepository;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/CommonTokenNumberProvider$$ExternalSyntheticLambda0;->f$0:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/CommonTokenNumberProvider$$ExternalSyntheticLambda0;->f$0:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    invoke-static {v0}, Lcom/unity3d/ads/core/domain/CommonTokenNumberProvider;->$r8$lambda$4yc9VXWNHliGBj2hQv5Kqbro7i0(Lcom/unity3d/ads/core/data/repository/SessionRepository;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
