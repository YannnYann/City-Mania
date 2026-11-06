###### Class io.bidmachine.BidMachineFetcher (io.bidmachine.BidMachineFetcher)
.class public Lio/bidmachine/BidMachineFetcher;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AD_TYPE_DISPLAY:Ljava/lang/String; = "display"

.field public static final AD_TYPE_NATIVE:Ljava/lang/String; = "native"

.field public static final AD_TYPE_VIDEO:Ljava/lang/String; = "video"

.field public static final KEY_AD_TYPE:Ljava/lang/String; = "bm_ad_type"

.field public static final KEY_ID:Ljava/lang/String; = "bm_id"

.field public static final KEY_NETWORK_KEY:Ljava/lang/String; = "bm_network_key"

.field public static final KEY_PRICE:Ljava/lang/String; = "bm_pf"

.field private static final PRICE_ROUNDING:Ljava/math/BigDecimal;

.field private static final PRICE_ROUNDING_MODE:Ljava/math/RoundingMode;

.field private static final TAG:Ljava/lang/String; = "BidMachineFetcher"

.field static cachedRequests:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lio/bidmachine/AdsType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/AdRequest;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$CRXa53DXpxdprOqWXRgBTganKZg(Lio/bidmachine/AdRequest;)Ljava/lang/String;
    .registers 2

    .line 1
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "toMap - %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$K-cyx1MzYL6uJ_Zp-_lnGfE1-wY(Lio/bidmachine/AdRequest;)Ljava/lang/String;
    .registers 2

    .line 1
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "fetch - %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$uMNc1GmJuVkG4yccIe5vy25hrtg(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "release - %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/math/BigDecimal;

    const-string v1, "0.01"

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/bidmachine/BidMachineFetcher;->PRICE_ROUNDING:Ljava/math/BigDecimal;

    .line 2
    sget-object v0, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    sput-object v0, Lio/bidmachine/BidMachineFetcher;->PRICE_ROUNDING_MODE:Ljava/math/RoundingMode;

    .line 5
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lio/bidmachine/AdsType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lio/bidmachine/BidMachineFetcher;->cachedRequests:Ljava/util/EnumMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fetch(Lio/bidmachine/AdRequest;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdRequest;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/bidmachine/BidMachineFetcher$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lio/bidmachine/BidMachineFetcher$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/AdRequest;)V

    const-string v1, "BidMachineFetcher"

    invoke-static {v1, v0}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 3
    invoke-static {p0}, Lio/bidmachine/BidMachineFetcher;->toMap(Lio/bidmachine/AdRequest;)Ljava/util/Map;

    move-result-object v0

    .line 4
    const-string v1, "bm_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const/4 p0, 0x0

    return-object p0

    .line 8
    :cond_1e
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->getAdsType()Lio/bidmachine/AdsType;

    move-result-object v2

    .line 9
    new-instance v3, Lio/bidmachine/BidMachineFetcher$a;

    invoke-direct {v3}, Lio/bidmachine/BidMachineFetcher$a;-><init>()V

    invoke-virtual {p0, v3}, Lio/bidmachine/AdRequest;->addListener(Lio/bidmachine/AdRequest$AdRequestListener;)V

    .line 26
    const-class v3, Lio/bidmachine/BidMachineFetcher;

    monitor-enter v3

    .line 27
    :try_start_2d
    sget-object v4, Lio/bidmachine/BidMachineFetcher;->cachedRequests:Ljava/util/EnumMap;

    invoke-virtual {v4, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-nez v4, :cond_44

    .line 29
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 30
    sget-object v5, Lio/bidmachine/BidMachineFetcher;->cachedRequests:Ljava/util/EnumMap;

    invoke-virtual {v5, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_44

    :catchall_42
    move-exception p0

    goto :goto_49

    .line 32
    :cond_44
    :goto_44
    invoke-interface {v4, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    monitor-exit v3

    return-object v0

    .line 34
    :goto_49
    monitor-exit v3
    :try_end_4a
    .catchall {:try_start_2d .. :try_end_4a} :catchall_42

    throw p0
.end method

.method public static identifyAdType(Lio/bidmachine/CreativeFormat;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 1
    :cond_4
    sget-object v1, Lio/bidmachine/BidMachineFetcher$b;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1c

    const/4 v1, 0x2

    if-eq p0, v1, :cond_19

    const/4 v1, 0x3

    if-eq p0, v1, :cond_16

    return-object v0

    .line 7
    :cond_16
    const-string p0, "native"

    return-object p0

    .line 8
    :cond_19
    const-string p0, "video"

    return-object p0

    .line 9
    :cond_1c
    const-string p0, "display"

    return-object p0
.end method

.method public static release(Lio/bidmachine/AdRequest;)Lio/bidmachine/AdRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/bidmachine/AdRequest;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->getAuctionResult()Lio/bidmachine/models/AuctionResult;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->getAdsType()Lio/bidmachine/AdsType;

    move-result-object p0

    invoke-interface {v0}, Lio/bidmachine/models/AuctionResult;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lio/bidmachine/BidMachineFetcher;->release(Lio/bidmachine/AdsType;Ljava/lang/String;)Lio/bidmachine/AdRequest;

    move-result-object p0

    return-object p0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public static release(Lio/bidmachine/AdsType;Ljava/lang/String;)Lio/bidmachine/AdRequest;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/bidmachine/AdRequest;",
            ">(",
            "Lio/bidmachine/AdsType;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 9
    :cond_8
    new-instance v0, Lio/bidmachine/BidMachineFetcher$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lio/bidmachine/BidMachineFetcher$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    const-string v2, "BidMachineFetcher"

    invoke-static {v2, v0}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 11
    const-class v0, Lio/bidmachine/BidMachineFetcher;

    monitor-enter v0

    .line 12
    :try_start_15
    sget-object v2, Lio/bidmachine/BidMachineFetcher;->cachedRequests:Ljava/util/EnumMap;

    invoke-virtual {v2, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_27

    if-eqz p0, :cond_2b

    .line 15
    :try_start_1f
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/AdRequest;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_25} :catch_29
    .catchall {:try_start_1f .. :try_end_25} :catchall_27

    :try_start_25
    monitor-exit v0

    return-object p0

    :catchall_27
    move-exception p0

    goto :goto_2d

    .line 17
    :catch_29
    monitor-exit v0

    return-object v1

    .line 20
    :cond_2b
    monitor-exit v0

    return-object v1

    .line 21
    :goto_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_27

    throw p0
.end method

.method public static release(Lio/bidmachine/AdsType;Ljava/util/Map;)Lio/bidmachine/AdRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/bidmachine/AdRequest;",
            ">(",
            "Lio/bidmachine/AdsType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    .line 4
    const-string v0, "bm_id"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 5
    invoke-static {p0, p1}, Lio/bidmachine/BidMachineFetcher;->release(Lio/bidmachine/AdsType;Ljava/lang/String;)Lio/bidmachine/AdRequest;

    move-result-object p0

    return-object p0
.end method

.method private static roundPrice(D)Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 2
    sget-object p0, Lio/bidmachine/BidMachineFetcher;->PRICE_ROUNDING:Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result p1

    if-nez p1, :cond_12

    goto :goto_1d

    .line 4
    :cond_12
    sget-object p1, Lio/bidmachine/BidMachineFetcher;->PRICE_ROUNDING_MODE:Ljava/math/RoundingMode;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 5
    :goto_1d
    invoke-virtual {p0}, Ljava/math/BigDecimal;->scale()I

    move-result p0

    sget-object p1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v0, p0, p1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toMap(Lio/bidmachine/AdRequest;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdRequest;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/bidmachine/BidMachineFetcher$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lio/bidmachine/BidMachineFetcher$$ExternalSyntheticLambda2;-><init>(Lio/bidmachine/AdRequest;)V

    const-string v1, "BidMachineFetcher"

    invoke-static {v1, v0}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->getAuctionResult()Lio/bidmachine/models/AuctionResult;

    move-result-object p0

    if-nez p0, :cond_16

    return-object v0

    .line 8
    :cond_16
    invoke-interface {p0}, Lio/bidmachine/models/AuctionResult;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bm_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-interface {p0}, Lio/bidmachine/models/AuctionResult;->getPrice()D

    move-result-wide v1

    invoke-static {v1, v2}, Lio/bidmachine/BidMachineFetcher;->roundPrice(D)Ljava/lang/String;

    move-result-object v1

    .line 11
    const-string v2, "bm_pf"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-interface {p0}, Lio/bidmachine/models/AuctionResult;->getNetworkKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bm_network_key"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-interface {p0}, Lio/bidmachine/models/AuctionResult;->getCreativeFormat()Lio/bidmachine/CreativeFormat;

    move-result-object v1

    invoke-static {v1}, Lio/bidmachine/BidMachineFetcher;->identifyAdType(Lio/bidmachine/CreativeFormat;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_44

    .line 16
    const-string v2, "bm_ad_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_44
    invoke-interface {p0}, Lio/bidmachine/models/AuctionResult;->getCustomParams()Ljava/util/Map;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

###### Class io.bidmachine.BidMachineFetcher.a (io.bidmachine.BidMachineFetcher$a)
.class public Lio/bidmachine/BidMachineFetcher$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/AdRequest$AdRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/BidMachineFetcher;->fetch(Lio/bidmachine/AdRequest;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestExpired(Lio/bidmachine/AdRequest;)V
    .registers 2

    .line 1
    invoke-static {p1}, Lio/bidmachine/BidMachineFetcher;->release(Lio/bidmachine/AdRequest;)Lio/bidmachine/AdRequest;

    return-void
.end method

.method public onRequestFailed(Lio/bidmachine/AdRequest;Lio/bidmachine/utils/BMError;)V
    .registers 3

    .line 0
    return-void
.end method

.method public onRequestSuccess(Lio/bidmachine/AdRequest;Lio/bidmachine/models/AuctionResult;)V
    .registers 3

    .line 0
    return-void
.end method

###### Class io.bidmachine.BidMachineFetcher.b (io.bidmachine.BidMachineFetcher$b)
.class public abstract synthetic Lio/bidmachine/BidMachineFetcher$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/BidMachineFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lio/bidmachine/CreativeFormat;->values()[Lio/bidmachine/CreativeFormat;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/bidmachine/BidMachineFetcher$b;->a:[I

    :try_start_9
    sget-object v1, Lio/bidmachine/CreativeFormat;->Banner:Lio/bidmachine/CreativeFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lio/bidmachine/BidMachineFetcher$b;->a:[I

    sget-object v1, Lio/bidmachine/CreativeFormat;->Video:Lio/bidmachine/CreativeFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lio/bidmachine/BidMachineFetcher$b;->a:[I

    sget-object v1, Lio/bidmachine/CreativeFormat;->Native:Lio/bidmachine/CreativeFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    return-void
.end method

###### Class io.bidmachine.BidMachineFetcher$$ExternalSyntheticLambda0 (io.bidmachine.BidMachineFetcher$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/BidMachineFetcher$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/AdRequest;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/AdRequest;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/BidMachineFetcher$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/AdRequest;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/BidMachineFetcher$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/AdRequest;

    invoke-static {v0}, Lio/bidmachine/BidMachineFetcher;->$r8$lambda$K-cyx1MzYL6uJ_Zp-_lnGfE1-wY(Lio/bidmachine/AdRequest;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.BidMachineFetcher$$ExternalSyntheticLambda1 (io.bidmachine.BidMachineFetcher$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/BidMachineFetcher$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/BidMachineFetcher$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/BidMachineFetcher$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    invoke-static {v0}, Lio/bidmachine/BidMachineFetcher;->$r8$lambda$uMNc1GmJuVkG4yccIe5vy25hrtg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.BidMachineFetcher$$ExternalSyntheticLambda2 (io.bidmachine.BidMachineFetcher$$ExternalSyntheticLambda2)
.class public final synthetic Lio/bidmachine/BidMachineFetcher$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/AdRequest;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/AdRequest;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/BidMachineFetcher$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/AdRequest;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/BidMachineFetcher$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/AdRequest;

    invoke-static {v0}, Lio/bidmachine/BidMachineFetcher;->$r8$lambda$CRXa53DXpxdprOqWXRgBTganKZg(Lio/bidmachine/AdRequest;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
