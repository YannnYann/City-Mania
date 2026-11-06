###### Class io.bidmachine.util.MathUtils (io.bidmachine.util.MathUtils)
.class public final Lio/bidmachine/util/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.kt"


# static fields
.field public static final INSTANCE:Lio/bidmachine/util/MathUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/util/MathUtils;

    invoke-direct {v0}, Lio/bidmachine/util/MathUtils;-><init>()V

    sput-object v0, Lio/bidmachine/util/MathUtils;->INSTANCE:Lio/bidmachine/util/MathUtils;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final lerp(FFF)F
    .registers 3

    .line 0
    sub-float/2addr p1, p0

    mul-float/2addr p2, p1

    add-float/2addr p0, p2

    return p0
.end method

.method public static final nonNegative(I)I
    .registers 1

    .line 89
    invoke-static {p0}, Lio/bidmachine/util/MathUtilsKt;->nonNegative(I)I

    move-result p0

    return p0
.end method
