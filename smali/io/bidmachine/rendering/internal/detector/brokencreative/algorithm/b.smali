###### Class io.bidmachine.rendering.internal.detector.brokencreative.algorithm.b (io.bidmachine.rendering.internal.detector.brokencreative.algorithm.b)
.class public final Lio/bidmachine/rendering/internal/detector/brokencreative/algorithm/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/internal/detector/brokencreative/algorithm/b$a;
    }
.end annotation


# static fields
.field public static final a:Lio/bidmachine/rendering/internal/detector/brokencreative/algorithm/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/rendering/internal/detector/brokencreative/algorithm/b;

    invoke-direct {v0}, Lio/bidmachine/rendering/internal/detector/brokencreative/algorithm/b;-><init>()V

    sput-object v0, Lio/bidmachine/rendering/internal/detector/brokencreative/algorithm/b;->a:Lio/bidmachine/rendering/internal/detector/brokencreative/algorithm/b;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmParams;)Lio/bidmachine/rendering/internal/detector/brokencreative/algorithm/a;
    .registers 4

    const-string v0, "algorithmParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmParams;->getType()Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;

    move-result-object v0

    sget-object v1, Lio/bidmachine/rendering/internal/detector/brokencreative/algorithm/b$a;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_26

    const/4 v1, 0x3

    if-ne v0, v1, :cond_20

    .line 11
    new-instance v0, Lio/bidmachine/rendering/internal/detector/brokencreative/algorithm/e;

    invoke-direct {v0, p1}, Lio/bidmachine/rendering/internal/detector/brokencreative/algorithm/e;-><init>(Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmParams;)V

    return-object v0

    :cond_20
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 12
    :cond_26
    new-instance v0, Lio/bidmachine/rendering/internal/detector/brokencreative/algorithm/c;

    invoke-direct {v0, p1}, Lio/bidmachine/rendering/internal/detector/brokencreative/algorithm/c;-><init>(Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmParams;)V

    return-object v0

    .line 13
    :cond_2c
    new-instance v0, Lio/bidmachine/rendering/internal/detector/brokencreative/algorithm/d;

    invoke-direct {v0, p1}, Lio/bidmachine/rendering/internal/detector/brokencreative/algorithm/d;-><init>(Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmParams;)V

    return-object v0
.end method

###### Class io.bidmachine.rendering.internal.detector.brokencreative.algorithm.b.a (io.bidmachine.rendering.internal.detector.brokencreative.algorithm.b$a)
.class public abstract synthetic Lio/bidmachine/rendering/internal/detector/brokencreative/algorithm/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/detector/brokencreative/algorithm/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "a"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 0
    invoke-static {}, Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;->values()[Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;->ColorHistogram:Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;->BrightnessVariance:Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;->EdgeDetection:Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    sput-object v0, Lio/bidmachine/rendering/internal/detector/brokencreative/algorithm/b$a;->$EnumSwitchMapping$0:[I

    return-void
.end method
