###### Class kotlin.math.Constants (kotlin.math.Constants)
.class public final Lkotlin/math/Constants;
.super Ljava/lang/Object;
.source "MathJVM.kt"


# static fields
.field public static final INSTANCE:Lkotlin/math/Constants;

.field public static final LN2:D

.field public static final epsilon:D

.field public static final taylor_2_bound:D

.field public static final taylor_n_bound:D

.field public static final upper_taylor_2_bound:D

.field public static final upper_taylor_n_bound:D


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Lkotlin/math/Constants;

    invoke-direct {v0}, Lkotlin/math/Constants;-><init>()V

    sput-object v0, Lkotlin/math/Constants;->INSTANCE:Lkotlin/math/Constants;

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 24
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lkotlin/math/Constants;->LN2:D

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 27
    invoke-static {v0, v1}, Ljava/lang/Math;->ulp(D)D

    move-result-wide v0

    sput-wide v0, Lkotlin/math/Constants;->epsilon:D

    .line 29
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sput-wide v0, Lkotlin/math/Constants;->taylor_2_bound:D

    .line 31
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    sput-wide v2, Lkotlin/math/Constants;->taylor_n_bound:D

    const/4 v4, 0x1

    int-to-double v4, v4

    div-double v0, v4, v0

    .line 33
    sput-wide v0, Lkotlin/math/Constants;->upper_taylor_2_bound:D

    div-double/2addr v4, v2

    .line 35
    sput-wide v4, Lkotlin/math/Constants;->upper_taylor_n_bound:D

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
