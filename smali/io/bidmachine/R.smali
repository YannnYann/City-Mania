###### Class io.bidmachine.R (io.bidmachine.R)
.class public final Lio/bidmachine/R;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/R$attr;,
        Lio/bidmachine/R$styleable;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class io.bidmachine.R.attr (io.bidmachine.R$attr)
.class public final Lio/bidmachine/R$attr;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "attr"
.end annotation


# static fields
.field public static ageRestrictionViewId:I = 0x7f04002e

.field public static callToActionViewId:I = 0x7f0400ad

.field public static descriptionViewId:I = 0x7f0401ad

.field public static iconViewId:I = 0x7f04029b

.field public static mediaViewId:I = 0x7f0403a7

.field public static providerViewId:I = 0x7f040439

.field public static ratingViewId:I = 0x7f040445

.field public static titleViewId:I = 0x7f040593


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class io.bidmachine.R.styleable (io.bidmachine.R$styleable)
.class public final Lio/bidmachine/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static NativeAdContentLayout:[I = null

.field public static NativeAdContentLayout_ageRestrictionViewId:I = 0x0

.field public static NativeAdContentLayout_callToActionViewId:I = 0x1

.field public static NativeAdContentLayout_descriptionViewId:I = 0x2

.field public static NativeAdContentLayout_iconViewId:I = 0x3

.field public static NativeAdContentLayout_mediaViewId:I = 0x4

.field public static NativeAdContentLayout_providerViewId:I = 0x5

.field public static NativeAdContentLayout_ratingViewId:I = 0x6

.field public static NativeAdContentLayout_titleViewId:I = 0x7


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 0
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lio/bidmachine/R$styleable;->NativeAdContentLayout:[I

    return-void

    :array_a
    .array-data 4
        0x7f04002e
        0x7f0400ad
        0x7f0401ad
        0x7f04029b
        0x7f0403a7
        0x7f040439
        0x7f040445
        0x7f040593
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
