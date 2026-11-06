###### Class io.bidmachine.BidMachineSharedPreferenceKt (io.bidmachine.BidMachineSharedPreferenceKt)
.class public final Lio/bidmachine/BidMachineSharedPreferenceKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lio/bidmachine/BidMachineSharedPreferenceKt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/BidMachineSharedPreferenceKt;

    invoke-direct {v0}, Lio/bidmachine/BidMachineSharedPreferenceKt;-><init>()V

    sput-object v0, Lio/bidmachine/BidMachineSharedPreferenceKt;->INSTANCE:Lio/bidmachine/BidMachineSharedPreferenceKt;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic decreaseBMIFVTtlSessionCountRemaining$default(Lio/bidmachine/BidMachineSharedPreferenceKt;Landroid/content/Context;IILjava/lang/Object;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x1

    .line 1
    :cond_5
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/BidMachineSharedPreferenceKt;->decreaseBMIFVTtlSessionCountRemaining(Landroid/content/Context;I)V

    return-void
.end method

.method public static synthetic increaseBMIFVTtlSessionCountRemaining$default(Lio/bidmachine/BidMachineSharedPreferenceKt;Landroid/content/Context;IILjava/lang/Object;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x1

    .line 1
    :cond_5
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/BidMachineSharedPreferenceKt;->increaseBMIFVTtlSessionCountRemaining(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public final synthetic clear(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lio/bidmachine/n;->b(Landroid/content/Context;)V

    return-void
.end method

.method public final synthetic decreaseBMIFVTtlSessionCountRemaining(Landroid/content/Context;I)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, p2}, Lio/bidmachine/n;->a(Landroid/content/Context;I)V

    return-void
.end method

.method public final synthetic generateBMIFV(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, p2}, Lio/bidmachine/n;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "generateBMIFV(context, ttlSessionCount)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final synthetic getBMIFVTtlSessionCountRemaining(Landroid/content/Context;)I
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lio/bidmachine/n;->e(Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method public final synthetic getCurrentVersionMilestone(Landroid/content/Context;)Lio/bidmachine/internal/S;
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lio/bidmachine/n;->g(Landroid/content/Context;)Lio/bidmachine/internal/S;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic getHistoryVersionMilestoneList(Landroid/content/Context;)Ljava/util/List;
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lio/bidmachine/n;->h(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    const-string v0, "getHistoryVersionMilestoneList(context)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final synthetic getLastBMIFVTtlSessionCount(Landroid/content/Context;)I
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lio/bidmachine/n;->r(Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method public final synthetic getSdkInstallTime(Landroid/content/Context;)J
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lio/bidmachine/n;->u(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final synthetic hasBMIFV(Landroid/content/Context;)Z
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lio/bidmachine/n;->A(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public final synthetic increaseBMIFVTtlSessionCountRemaining(Landroid/content/Context;I)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, p2}, Lio/bidmachine/n;->c(Landroid/content/Context;I)V

    return-void
.end method

.method public final synthetic obtainBMIFV(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, p2}, Lio/bidmachine/n;->d(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "obtainBMIFV(context, ttlSessionCount)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final synthetic setBMIFVTtlSessionCountRemaining(Landroid/content/Context;I)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, p2}, Lio/bidmachine/n;->e(Landroid/content/Context;I)V

    return-void
.end method

.method public final synthetic setCurrentVersionMilestone(Landroid/content/Context;Lio/bidmachine/internal/S;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, p2}, Lio/bidmachine/n;->a(Landroid/content/Context;Lio/bidmachine/internal/S;)V

    return-void
.end method

.method public final synthetic setHistoryVersionMilestoneList(Landroid/content/Context;Ljava/util/List;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "historyVersionMilestoneList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, p2}, Lio/bidmachine/n;->a(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public final synthetic setLastBMIFVTtlSessionCount(Landroid/content/Context;I)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, p2}, Lio/bidmachine/n;->f(Landroid/content/Context;I)V

    return-void
.end method

.method public final synthetic setSdkInstallTime(Landroid/content/Context;J)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, p2, p3}, Lio/bidmachine/n;->b(Landroid/content/Context;J)V

    return-void
.end method
