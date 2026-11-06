###### Class io.bidmachine.util.log.EmptyLoggerInstance (io.bidmachine.util.log.EmptyLoggerInstance)
.class public Lio/bidmachine/util/log/EmptyLoggerInstance;
.super Ljava/lang/Object;
.source "EmptyLoggerInstance.kt"

# interfaces
.implements Lio/bidmachine/util/log/LoggerInstance;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/util/log/EmptyLoggerInstance$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/bidmachine/util/log/EmptyLoggerInstance$Companion;

.field public static final INSTANCE:Lio/bidmachine/util/log/LoggerInstance;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/bidmachine/util/log/EmptyLoggerInstance$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/util/log/EmptyLoggerInstance$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/util/log/EmptyLoggerInstance;->Companion:Lio/bidmachine/util/log/EmptyLoggerInstance$Companion;

    .line 27
    new-instance v0, Lio/bidmachine/util/log/EmptyLoggerInstance;

    invoke-direct {v0}, Lio/bidmachine/util/log/EmptyLoggerInstance;-><init>()V

    sput-object v0, Lio/bidmachine/util/log/EmptyLoggerInstance;->INSTANCE:Lio/bidmachine/util/log/LoggerInstance;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getINSTANCE$cp()Lio/bidmachine/util/log/LoggerInstance;
    .registers 1

    .line 3
    sget-object v0, Lio/bidmachine/util/log/EmptyLoggerInstance;->INSTANCE:Lio/bidmachine/util/log/LoggerInstance;

    return-object v0
.end method


# virtual methods
.method public d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 0
    const-string p1, "messageBuilder"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 0
    const-string p1, "messageBuilder"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public w(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 0
    const-string p1, "messageBuilder"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

###### Class io.bidmachine.util.log.EmptyLoggerInstance.Companion (io.bidmachine.util.log.EmptyLoggerInstance$Companion)
.class public final Lio/bidmachine/util/log/EmptyLoggerInstance$Companion;
.super Ljava/lang/Object;
.source "EmptyLoggerInstance.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/util/log/EmptyLoggerInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lio/bidmachine/util/log/EmptyLoggerInstance$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getINSTANCE()Lio/bidmachine/util/log/LoggerInstance;
    .registers 2

    .line 27
    invoke-static {}, Lio/bidmachine/util/log/EmptyLoggerInstance;->access$getINSTANCE$cp()Lio/bidmachine/util/log/LoggerInstance;

    move-result-object v0

    return-object v0
.end method
