###### Class io.bidmachine.internal.C4219c (io.bidmachine.internal.c)
.class public final Lio/bidmachine/internal/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/SessionManager$Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/internal/c$a;
    }
.end annotation


# static fields
.field public static final d:Lio/bidmachine/internal/c$a;


# instance fields
.field public a:Landroid/content/Context;

.field public b:I

.field public c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lio/bidmachine/internal/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/internal/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/internal/c;->d:Lio/bidmachine/internal/c$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 6

    .line 3
    iget-object v0, p0, Lio/bidmachine/internal/c;->a:Landroid/content/Context;

    if-nez v0, :cond_5

    return-void

    .line 4
    :cond_5
    sget-object v1, Lio/bidmachine/BidMachineSharedPreferenceKt;->INSTANCE:Lio/bidmachine/BidMachineSharedPreferenceKt;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v0, v4, v2, v3}, Lio/bidmachine/BidMachineSharedPreferenceKt;->decreaseBMIFVTtlSessionCountRemaining$default(Lio/bidmachine/BidMachineSharedPreferenceKt;Landroid/content/Context;IILjava/lang/Object;)V

    .line 7
    iget v1, p0, Lio/bidmachine/internal/c;->b:I

    .line 8
    invoke-virtual {p0, v0, v1}, Lio/bidmachine/internal/c;->a(Landroid/content/Context;I)V

    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/internal/c;->a:Landroid/content/Context;

    .line 2
    sget-object v0, Lio/bidmachine/BidMachineSharedPreferenceKt;->INSTANCE:Lio/bidmachine/BidMachineSharedPreferenceKt;

    invoke-virtual {v0, p1}, Lio/bidmachine/BidMachineSharedPreferenceKt;->getLastBMIFVTtlSessionCount(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lio/bidmachine/internal/c;->b:I

    return-void
.end method

.method public final a(Landroid/content/Context;I)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez p2, :cond_16

    .line 9
    sget-object v0, Lio/bidmachine/BidMachineSharedPreferenceKt;->INSTANCE:Lio/bidmachine/BidMachineSharedPreferenceKt;

    invoke-virtual {v0, p1}, Lio/bidmachine/BidMachineSharedPreferenceKt;->getBMIFVTtlSessionCountRemaining(Landroid/content/Context;)I

    move-result v1

    if-lez v1, :cond_10

    goto :goto_16

    .line 12
    :cond_10
    invoke-virtual {v0, p1, p2}, Lio/bidmachine/BidMachineSharedPreferenceKt;->generateBMIFV(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/internal/c;->c:Ljava/lang/String;

    :cond_16
    :goto_16
    return-void
.end method

.method public final b(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lio/bidmachine/internal/c;->c:Ljava/lang/String;

    invoke-static {v0}, Lio/bidmachine/util/UtilsKt;->notEmptyOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_18

    .line 36
    sget-object v0, Lio/bidmachine/BidMachineSharedPreferenceKt;->INSTANCE:Lio/bidmachine/BidMachineSharedPreferenceKt;

    .line 38
    iget v1, p0, Lio/bidmachine/internal/c;->b:I

    .line 39
    invoke-virtual {v0, p1, v1}, Lio/bidmachine/BidMachineSharedPreferenceKt;->obtainBMIFV(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 43
    iput-object p1, p0, Lio/bidmachine/internal/c;->c:Ljava/lang/String;

    return-object p1

    :cond_18
    return-object v0
.end method

.method public final b(Landroid/content/Context;I)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Lio/bidmachine/internal/c;->b:I

    .line 2
    invoke-static {p2}, Lio/bidmachine/util/MathUtilsKt;->nonNegative(I)I

    move-result p2

    if-ne p2, v0, :cond_e

    return-void

    .line 6
    :cond_e
    iput p2, p0, Lio/bidmachine/internal/c;->b:I

    if-lez p2, :cond_2e

    if-nez v0, :cond_1a

    .line 10
    sget-object v0, Lio/bidmachine/BidMachineSharedPreferenceKt;->INSTANCE:Lio/bidmachine/BidMachineSharedPreferenceKt;

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/BidMachineSharedPreferenceKt;->setBMIFVTtlSessionCountRemaining(Landroid/content/Context;I)V

    goto :goto_34

    :cond_1a
    if-ge p2, v0, :cond_26

    .line 15
    sget-object v1, Lio/bidmachine/BidMachineSharedPreferenceKt;->INSTANCE:Lio/bidmachine/BidMachineSharedPreferenceKt;

    sub-int/2addr v0, p2

    .line 16
    invoke-virtual {v1, p1, v0}, Lio/bidmachine/BidMachineSharedPreferenceKt;->decreaseBMIFVTtlSessionCountRemaining(Landroid/content/Context;I)V

    .line 20
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/internal/c;->a(Landroid/content/Context;I)V

    goto :goto_34

    .line 25
    :cond_26
    sget-object v1, Lio/bidmachine/BidMachineSharedPreferenceKt;->INSTANCE:Lio/bidmachine/BidMachineSharedPreferenceKt;

    sub-int v0, p2, v0

    invoke-virtual {v1, p1, v0}, Lio/bidmachine/BidMachineSharedPreferenceKt;->increaseBMIFVTtlSessionCountRemaining(Landroid/content/Context;I)V

    goto :goto_34

    .line 28
    :cond_2e
    sget-object v0, Lio/bidmachine/BidMachineSharedPreferenceKt;->INSTANCE:Lio/bidmachine/BidMachineSharedPreferenceKt;

    const/4 v1, 0x0

    .line 29
    invoke-virtual {v0, p1, v1}, Lio/bidmachine/BidMachineSharedPreferenceKt;->setBMIFVTtlSessionCountRemaining(Landroid/content/Context;I)V

    .line 34
    :goto_34
    sget-object v0, Lio/bidmachine/BidMachineSharedPreferenceKt;->INSTANCE:Lio/bidmachine/BidMachineSharedPreferenceKt;

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/BidMachineSharedPreferenceKt;->setLastBMIFVTtlSessionCount(Landroid/content/Context;I)V

    return-void
.end method

.method public onSessionEvent(Lio/bidmachine/SessionManager$Status;)V
    .registers 3

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lio/bidmachine/SessionManager$Status;->START:Lio/bidmachine/SessionManager$Status;

    if-eq p1, v0, :cond_a

    return-void

    .line 5
    :cond_a
    invoke-virtual {p0}, Lio/bidmachine/internal/c;->a()V

    return-void
.end method

###### Class io.bidmachine.internal.C4219c.a (io.bidmachine.internal.c$a)
.class public final Lio/bidmachine/internal/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/internal/c$a;-><init>()V

    return-void
.end method
