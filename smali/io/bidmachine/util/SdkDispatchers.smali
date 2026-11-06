###### Class io.bidmachine.util.SdkDispatchers (io.bidmachine.util.SdkDispatchers)
.class public final Lio/bidmachine/util/SdkDispatchers;
.super Ljava/lang/Object;
.source "SdkDispatchers.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/util/SdkDispatchers$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/bidmachine/util/SdkDispatchers$Companion;

.field public static final default:Lio/bidmachine/util/SdkDispatchers;


# instance fields
.field public final default$delegate:Lkotlin/Lazy;

.field public final defaultProvider:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field public final io$delegate:Lkotlin/Lazy;

.field public final ioProvider:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field public final main$delegate:Lkotlin/Lazy;

.field public final mainProvider:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lio/bidmachine/util/SdkDispatchers$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/util/SdkDispatchers$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/util/SdkDispatchers;->Companion:Lio/bidmachine/util/SdkDispatchers$Companion;

    .line 18
    new-instance v0, Lio/bidmachine/util/SdkDispatchers;

    .line 19
    sget-object v1, Lio/bidmachine/util/SdkDispatchers$Companion$default$1;->INSTANCE:Lio/bidmachine/util/SdkDispatchers$Companion$default$1;

    .line 20
    sget-object v2, Lio/bidmachine/util/SdkDispatchers$Companion$default$2;->INSTANCE:Lio/bidmachine/util/SdkDispatchers$Companion$default$2;

    .line 21
    sget-object v3, Lio/bidmachine/util/SdkDispatchers$Companion$default$3;->INSTANCE:Lio/bidmachine/util/SdkDispatchers$Companion$default$3;

    .line 18
    invoke-direct {v0, v1, v2, v3}, Lio/bidmachine/util/SdkDispatchers;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    sput-object v0, Lio/bidmachine/util/SdkDispatchers;->default:Lio/bidmachine/util/SdkDispatchers;

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;)V"
        }
    .end annotation

    const-string v0, "mainProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lio/bidmachine/util/SdkDispatchers;->mainProvider:Lkotlin/jvm/functions/Function0;

    .line 8
    iput-object p2, p0, Lio/bidmachine/util/SdkDispatchers;->ioProvider:Lkotlin/jvm/functions/Function0;

    .line 9
    iput-object p3, p0, Lio/bidmachine/util/SdkDispatchers;->defaultProvider:Lkotlin/jvm/functions/Function0;

    .line 12
    new-instance p1, Lio/bidmachine/util/SdkDispatchers$main$2;

    invoke-direct {p1, p0}, Lio/bidmachine/util/SdkDispatchers$main$2;-><init>(Lio/bidmachine/util/SdkDispatchers;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/util/SdkDispatchers;->main$delegate:Lkotlin/Lazy;

    .line 13
    new-instance p1, Lio/bidmachine/util/SdkDispatchers$io$2;

    invoke-direct {p1, p0}, Lio/bidmachine/util/SdkDispatchers$io$2;-><init>(Lio/bidmachine/util/SdkDispatchers;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/util/SdkDispatchers;->io$delegate:Lkotlin/Lazy;

    .line 14
    new-instance p1, Lio/bidmachine/util/SdkDispatchers$default$2;

    invoke-direct {p1, p0}, Lio/bidmachine/util/SdkDispatchers$default$2;-><init>(Lio/bidmachine/util/SdkDispatchers;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/util/SdkDispatchers;->default$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getDefault$cp()Lio/bidmachine/util/SdkDispatchers;
    .registers 1

    .line 6
    sget-object v0, Lio/bidmachine/util/SdkDispatchers;->default:Lio/bidmachine/util/SdkDispatchers;

    return-object v0
.end method

.method public static final synthetic access$getDefaultProvider$p(Lio/bidmachine/util/SdkDispatchers;)Lkotlin/jvm/functions/Function0;
    .registers 1

    .line 6
    iget-object p0, p0, Lio/bidmachine/util/SdkDispatchers;->defaultProvider:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic access$getIoProvider$p(Lio/bidmachine/util/SdkDispatchers;)Lkotlin/jvm/functions/Function0;
    .registers 1

    .line 6
    iget-object p0, p0, Lio/bidmachine/util/SdkDispatchers;->ioProvider:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic access$getMainProvider$p(Lio/bidmachine/util/SdkDispatchers;)Lkotlin/jvm/functions/Function0;
    .registers 1

    .line 6
    iget-object p0, p0, Lio/bidmachine/util/SdkDispatchers;->mainProvider:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method


# virtual methods
.method public final getIo()Lkotlinx/coroutines/CoroutineDispatcher;
    .registers 2

    .line 13
    iget-object v0, p0, Lio/bidmachine/util/SdkDispatchers;->io$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineDispatcher;

    return-object v0
.end method

.method public final getMain()Lkotlinx/coroutines/CoroutineDispatcher;
    .registers 2

    .line 12
    iget-object v0, p0, Lio/bidmachine/util/SdkDispatchers;->main$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineDispatcher;

    return-object v0
.end method

###### Class io.bidmachine.util.SdkDispatchers.Companion (io.bidmachine.util.SdkDispatchers$Companion)
.class public final Lio/bidmachine/util/SdkDispatchers$Companion;
.super Ljava/lang/Object;
.source "SdkDispatchers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/util/SdkDispatchers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lio/bidmachine/util/SdkDispatchers$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDefault()Lio/bidmachine/util/SdkDispatchers;
    .registers 2

    .line 18
    invoke-static {}, Lio/bidmachine/util/SdkDispatchers;->access$getDefault$cp()Lio/bidmachine/util/SdkDispatchers;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.util.SdkDispatchers$Companion$default$1 (io.bidmachine.util.SdkDispatchers$Companion$default$1)
.class public final Lio/bidmachine/util/SdkDispatchers$Companion$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SdkDispatchers.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/util/SdkDispatchers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lio/bidmachine/util/SdkDispatchers$Companion$default$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/util/SdkDispatchers$Companion$default$1;

    invoke-direct {v0}, Lio/bidmachine/util/SdkDispatchers$Companion$default$1;-><init>()V

    sput-object v0, Lio/bidmachine/util/SdkDispatchers$Companion$default$1;->INSTANCE:Lio/bidmachine/util/SdkDispatchers$Companion$default$1;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 19
    invoke-virtual {p0}, Lio/bidmachine/util/SdkDispatchers$Companion$default$1;->invoke()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lkotlinx/coroutines/CoroutineDispatcher;
    .registers 2

    .line 19
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.util.SdkDispatchers$Companion$default$2 (io.bidmachine.util.SdkDispatchers$Companion$default$2)
.class public final Lio/bidmachine/util/SdkDispatchers$Companion$default$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SdkDispatchers.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/util/SdkDispatchers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lio/bidmachine/util/SdkDispatchers$Companion$default$2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/util/SdkDispatchers$Companion$default$2;

    invoke-direct {v0}, Lio/bidmachine/util/SdkDispatchers$Companion$default$2;-><init>()V

    sput-object v0, Lio/bidmachine/util/SdkDispatchers$Companion$default$2;->INSTANCE:Lio/bidmachine/util/SdkDispatchers$Companion$default$2;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 20
    invoke-virtual {p0}, Lio/bidmachine/util/SdkDispatchers$Companion$default$2;->invoke()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lkotlinx/coroutines/CoroutineDispatcher;
    .registers 2

    .line 20
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.util.SdkDispatchers$Companion$default$3 (io.bidmachine.util.SdkDispatchers$Companion$default$3)
.class public final Lio/bidmachine/util/SdkDispatchers$Companion$default$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SdkDispatchers.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/util/SdkDispatchers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lio/bidmachine/util/SdkDispatchers$Companion$default$3;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/util/SdkDispatchers$Companion$default$3;

    invoke-direct {v0}, Lio/bidmachine/util/SdkDispatchers$Companion$default$3;-><init>()V

    sput-object v0, Lio/bidmachine/util/SdkDispatchers$Companion$default$3;->INSTANCE:Lio/bidmachine/util/SdkDispatchers$Companion$default$3;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 21
    invoke-virtual {p0}, Lio/bidmachine/util/SdkDispatchers$Companion$default$3;->invoke()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lkotlinx/coroutines/CoroutineDispatcher;
    .registers 2

    .line 21
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.util.SdkDispatchers$default$2 (io.bidmachine.util.SdkDispatchers$default$2)
.class public final Lio/bidmachine/util/SdkDispatchers$default$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SdkDispatchers.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/SdkDispatchers;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/util/SdkDispatchers;


# direct methods
.method public constructor <init>(Lio/bidmachine/util/SdkDispatchers;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/util/SdkDispatchers$default$2;->this$0:Lio/bidmachine/util/SdkDispatchers;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 14
    invoke-virtual {p0}, Lio/bidmachine/util/SdkDispatchers$default$2;->invoke()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lkotlinx/coroutines/CoroutineDispatcher;
    .registers 2

    .line 14
    iget-object v0, p0, Lio/bidmachine/util/SdkDispatchers$default$2;->this$0:Lio/bidmachine/util/SdkDispatchers;

    invoke-static {v0}, Lio/bidmachine/util/SdkDispatchers;->access$getDefaultProvider$p(Lio/bidmachine/util/SdkDispatchers;)Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineDispatcher;

    return-object v0
.end method

###### Class io.bidmachine.util.SdkDispatchers$io$2 (io.bidmachine.util.SdkDispatchers$io$2)
.class public final Lio/bidmachine/util/SdkDispatchers$io$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SdkDispatchers.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/SdkDispatchers;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/util/SdkDispatchers;


# direct methods
.method public constructor <init>(Lio/bidmachine/util/SdkDispatchers;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/util/SdkDispatchers$io$2;->this$0:Lio/bidmachine/util/SdkDispatchers;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/util/SdkDispatchers$io$2;->invoke()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lkotlinx/coroutines/CoroutineDispatcher;
    .registers 2

    .line 13
    iget-object v0, p0, Lio/bidmachine/util/SdkDispatchers$io$2;->this$0:Lio/bidmachine/util/SdkDispatchers;

    invoke-static {v0}, Lio/bidmachine/util/SdkDispatchers;->access$getIoProvider$p(Lio/bidmachine/util/SdkDispatchers;)Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineDispatcher;

    return-object v0
.end method

###### Class io.bidmachine.util.SdkDispatchers$main$2 (io.bidmachine.util.SdkDispatchers$main$2)
.class public final Lio/bidmachine/util/SdkDispatchers$main$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SdkDispatchers.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/SdkDispatchers;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/util/SdkDispatchers;


# direct methods
.method public constructor <init>(Lio/bidmachine/util/SdkDispatchers;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/util/SdkDispatchers$main$2;->this$0:Lio/bidmachine/util/SdkDispatchers;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 12
    invoke-virtual {p0}, Lio/bidmachine/util/SdkDispatchers$main$2;->invoke()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lkotlinx/coroutines/CoroutineDispatcher;
    .registers 2

    .line 12
    iget-object v0, p0, Lio/bidmachine/util/SdkDispatchers$main$2;->this$0:Lio/bidmachine/util/SdkDispatchers;

    invoke-static {v0}, Lio/bidmachine/util/SdkDispatchers;->access$getMainProvider$p(Lio/bidmachine/util/SdkDispatchers;)Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineDispatcher;

    return-object v0
.end method
