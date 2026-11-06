###### Class io.bidmachine.util.TopActivityHolder (io.bidmachine.util.TopActivityHolder)
.class public final Lio/bidmachine/util/TopActivityHolder;
.super Ljava/lang/Object;
.source "TopActivityHolder.kt"


# static fields
.field public static final INSTANCE:Lio/bidmachine/util/TopActivityHolder;

.field public static weakTopActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/util/TopActivityHolder;

    invoke-direct {v0}, Lio/bidmachine/util/TopActivityHolder;-><init>()V

    sput-object v0, Lio/bidmachine/util/TopActivityHolder;->INSTANCE:Lio/bidmachine/util/TopActivityHolder;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTopActivity()Landroid/app/Activity;
    .registers 2

    .line 10
    sget-object v0, Lio/bidmachine/util/TopActivityHolder;->weakTopActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public final setTopActivity(Landroid/app/Activity;)V
    .registers 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lio/bidmachine/util/TopActivityHolder;->weakTopActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method
