###### Class io.bidmachine.analytics.internal.A.a (io.bidmachine.analytics.internal.A.a)
.class public abstract Lio/bidmachine/analytics/internal/A/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/analytics/internal/A/a$a;
    }
.end annotation


# static fields
.field public static final e:Lio/bidmachine/analytics/internal/A/a$a;


# instance fields
.field private final a:Lio/bidmachine/analytics/internal/A/c;

.field private final b:Ljava/lang/String;

.field private final c:Lio/bidmachine/analytics/internal/I/f;

.field private final d:Lio/bidmachine/analytics/internal/b/a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/A/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/analytics/internal/A/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/analytics/internal/A/a;->e:Lio/bidmachine/analytics/internal/A/a$a;

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/analytics/internal/A/c;Ljava/lang/String;Lio/bidmachine/analytics/internal/I/f;Lio/bidmachine/analytics/internal/b/a;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/analytics/internal/A/a;->a:Lio/bidmachine/analytics/internal/A/c;

    .line 3
    iput-object p2, p0, Lio/bidmachine/analytics/internal/A/a;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lio/bidmachine/analytics/internal/A/a;->c:Lio/bidmachine/analytics/internal/I/f;

    .line 5
    iput-object p4, p0, Lio/bidmachine/analytics/internal/A/a;->d:Lio/bidmachine/analytics/internal/b/a;

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/analytics/internal/A/c;Ljava/lang/String;Lio/bidmachine/analytics/internal/I/f;Lio/bidmachine/analytics/internal/b/a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_a

    .line 6
    sget-object p4, Lio/bidmachine/analytics/BidMachineAnalytics;->INSTANCE:Lio/bidmachine/analytics/BidMachineAnalytics;

    invoke-virtual {p4}, Lio/bidmachine/analytics/BidMachineAnalytics;->getEncryptionManager$bidmachine_android_sdk_j_3_8_0()Lio/bidmachine/analytics/internal/b/a;

    move-result-object p4

    .line 7
    :cond_a
    invoke-direct {p0, p1, p2, p3, p4}, Lio/bidmachine/analytics/internal/A/a;-><init>(Lio/bidmachine/analytics/internal/A/c;Ljava/lang/String;Lio/bidmachine/analytics/internal/I/f;Lio/bidmachine/analytics/internal/b/a;)V

    return-void
.end method

.method public static final synthetic a(Lio/bidmachine/analytics/internal/A/a;)Lio/bidmachine/analytics/internal/I/f;
    .registers 1

    .line 3
    iget-object p0, p0, Lio/bidmachine/analytics/internal/A/a;->c:Lio/bidmachine/analytics/internal/I/f;

    return-object p0
.end method

.method private final a(Ljava/net/URLConnection;)Ljava/lang/Object;
    .registers 3

    .line 59
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 60
    instance-of v0, p1, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_e

    .line 61
    check-cast p1, Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_e

    :catchall_c
    move-exception p1

    goto :goto_15

    .line 63
    :cond_e
    :goto_e
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 64
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_c

    return-object p1

    :goto_15
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public static final synthetic a(Lio/bidmachine/analytics/internal/A/a;Ljava/lang/String;[B)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/analytics/internal/A/a;->a(Ljava/lang/String;[B)V

    return-void
.end method

.method private final a(Ljava/lang/String;[B)V
    .registers 7

    const/4 v0, 0x0

    .line 6
    :try_start_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_c2

    .line 8
    :try_start_11
    iget-object v1, p0, Lio/bidmachine/analytics/internal/A/a;->a:Lio/bidmachine/analytics/internal/A/c;

    invoke-virtual {v1, p1}, Lio/bidmachine/analytics/internal/A/c;->a(Ljava/net/URLConnection;)V

    const/4 v1, 0x0

    .line 9
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const v1, 0x9c40

    .line 10
    invoke-virtual {p1, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 11
    invoke-virtual {p1, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 12
    iget-object v1, p0, Lio/bidmachine/analytics/internal/A/a;->d:Lio/bidmachine/analytics/internal/b/a;

    if-eqz v1, :cond_3e

    .line 14
    const-string v2, "bm-data"

    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/b/a;->a()Lio/bidmachine/analytics/internal/d/a;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/d/a;->b()[B

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-virtual {p1, v2, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    :catchall_3a
    move-exception p2

    move-object v0, p1

    goto/16 :goto_c3

    :cond_3e
    :goto_3e
    if-eqz p2, :cond_72

    .line 20
    array-length v1, p2

    if-nez v1, :cond_44

    goto :goto_72

    :cond_44
    const/4 v1, 0x1

    .line 21
    invoke-virtual {p1, v1}, Ljava/net/URLConnection;->setDoOutput(Z)V
    :try_end_48
    .catchall {:try_start_11 .. :try_end_48} :catchall_3a

    .line 25
    :try_start_48
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_51
    .catchall {:try_start_48 .. :try_end_51} :catchall_5e

    .line 26
    :try_start_51
    invoke-virtual {v1, p2}, Ljava/io/OutputStream;->write([B)V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_5b

    .line 28
    :try_start_54
    invoke-static {v1}, Lio/bidmachine/analytics/internal/I/g;->a(Ljava/io/Flushable;)Ljava/lang/Object;

    .line 29
    invoke-static {v1}, Lio/bidmachine/analytics/internal/I/g;->a(Ljava/io/Closeable;)Ljava/lang/Object;

    goto :goto_72

    :catchall_5b
    move-exception p2

    move-object v0, v1

    goto :goto_5f

    :catchall_5e
    move-exception p2

    :goto_5f
    if-eqz v0, :cond_68

    .line 30
    invoke-static {v0}, Lio/bidmachine/analytics/internal/I/g;->a(Ljava/io/Flushable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    :cond_68
    if-eqz v0, :cond_71

    .line 31
    invoke-static {v0}, Lio/bidmachine/analytics/internal/I/g;->a(Ljava/io/Closeable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    :cond_71
    throw p2

    .line 35
    :cond_72
    :goto_72
    invoke-direct {p0, p1}, Lio/bidmachine/analytics/internal/A/a;->b(Ljava/net/URLConnection;)I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_be

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_be

    const/16 v1, 0x131

    if-eq v0, v1, :cond_8e

    const/16 v1, 0x133

    if-eq v0, v1, :cond_8e

    const/16 v1, 0x134

    if-eq v0, v1, :cond_8e

    packed-switch v0, :pswitch_data_c8

    goto :goto_a3

    .line 42
    :cond_8e
    :pswitch_8e
    const-string v1, "Location"

    invoke-virtual {p1, v1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a3

    .line 43
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_a3

    .line 44
    invoke-direct {p0, v1, p2}, Lio/bidmachine/analytics/internal/A/a;->a(Ljava/lang/String;[B)V
    :try_end_9f
    .catchall {:try_start_54 .. :try_end_9f} :catchall_3a

    .line 51
    invoke-direct {p0, p1}, Lio/bidmachine/analytics/internal/A/a;->a(Ljava/net/URLConnection;)Ljava/lang/Object;

    return-void

    .line 52
    :cond_a3
    :goto_a3
    :try_start_a3
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid response code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_be
    .catchall {:try_start_a3 .. :try_end_be} :catchall_3a

    .line 58
    :cond_be
    invoke-direct {p0, p1}, Lio/bidmachine/analytics/internal/A/a;->a(Ljava/net/URLConnection;)Ljava/lang/Object;

    return-void

    :catchall_c2
    move-exception p2

    :goto_c3
    invoke-direct {p0, v0}, Lio/bidmachine/analytics/internal/A/a;->a(Ljava/net/URLConnection;)Ljava/lang/Object;

    throw p2

    nop

    :pswitch_data_c8
    .packed-switch 0x12d
        :pswitch_8e
        :pswitch_8e
        :pswitch_8e
    .end packed-switch
.end method

.method public static final synthetic a(Lio/bidmachine/analytics/internal/A/a;Lio/bidmachine/analytics/internal/b/a;[B)[B
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Lio/bidmachine/analytics/internal/A/a;->a(Lio/bidmachine/analytics/internal/b/a;[B)[B

    move-result-object p0

    return-object p0
.end method

.method private final a(Lio/bidmachine/analytics/internal/b/a;[B)[B
    .registers 3

    if-eqz p2, :cond_7

    .line 5
    invoke-static {p2, p1}, Lio/bidmachine/analytics/internal/b/b;->a([BLio/bidmachine/analytics/internal/b/a;)[B

    move-result-object p1

    return-object p1

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method private final b(Ljava/net/URLConnection;)I
    .registers 3

    .line 2
    instance-of v0, p1, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_b

    .line 3
    check-cast p1, Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    return p1

    :cond_b
    const/4 p1, -0x1

    return p1
.end method

.method public static final synthetic b(Lio/bidmachine/analytics/internal/A/a;)Lio/bidmachine/analytics/internal/b/a;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/analytics/internal/A/a;->d:Lio/bidmachine/analytics/internal/b/a;

    return-object p0
.end method

.method public static final synthetic c(Lio/bidmachine/analytics/internal/A/a;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/analytics/internal/A/a;->b:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public abstract a()Lio/bidmachine/analytics/internal/A/a;
.end method

.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    instance-of v0, p1, Lio/bidmachine/analytics/internal/A/a$b;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lio/bidmachine/analytics/internal/A/a$b;

    iget v1, v0, Lio/bidmachine/analytics/internal/A/a$b;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lio/bidmachine/analytics/internal/A/a$b;->c:I

    goto :goto_18

    :cond_13
    new-instance v0, Lio/bidmachine/analytics/internal/A/a$b;

    invoke-direct {v0, p0, p1}, Lio/bidmachine/analytics/internal/A/a$b;-><init>(Lio/bidmachine/analytics/internal/A/a;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lio/bidmachine/analytics/internal/A/a$b;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 4
    iget v2, v0, Lio/bidmachine/analytics/internal/A/a$b;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    if-ne v2, v3, :cond_29

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_49

    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_31
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/bidmachine/analytics/internal/A/a;->c:Lio/bidmachine/analytics/internal/I/f;

    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/I/f;->c()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    new-instance v2, Lio/bidmachine/analytics/internal/A/a$c;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lio/bidmachine/analytics/internal/A/a$c;-><init>(Lio/bidmachine/analytics/internal/A/a;Lkotlin/coroutines/Continuation;)V

    iput v3, v0, Lio/bidmachine/analytics/internal/A/a$b;->c:I

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_49

    return-object v1

    :cond_49
    :goto_49
    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract b()[B
.end method

###### Class io.bidmachine.analytics.internal.A.a.C1108a (io.bidmachine.analytics.internal.A.a$a)
.class public final Lio/bidmachine/analytics/internal/A/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/internal/A/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/A/a$a;-><init>()V

    return-void
.end method

###### Class io.bidmachine.analytics.internal.A.a.b (io.bidmachine.analytics.internal.A.a$b)
.class final Lio/bidmachine/analytics/internal/A/a$b;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/analytics/internal/A/a;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field synthetic a:Ljava/lang/Object;

.field final synthetic b:Lio/bidmachine/analytics/internal/A/a;

.field c:I


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/internal/A/a;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/bidmachine/analytics/internal/A/a$b;->b:Lio/bidmachine/analytics/internal/A/a;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iput-object p1, p0, Lio/bidmachine/analytics/internal/A/a$b;->a:Ljava/lang/Object;

    iget p1, p0, Lio/bidmachine/analytics/internal/A/a$b;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/bidmachine/analytics/internal/A/a$b;->c:I

    iget-object p1, p0, Lio/bidmachine/analytics/internal/A/a$b;->b:Lio/bidmachine/analytics/internal/A/a;

    invoke-virtual {p1, p0}, Lio/bidmachine/analytics/internal/A/a;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_16

    return-object p1

    :cond_16
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.analytics.internal.A.a.c (io.bidmachine.analytics.internal.A.a$c)
.class final Lio/bidmachine/analytics/internal/A/a$c;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/analytics/internal/A/a;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lio/bidmachine/analytics/internal/A/a;


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/internal/A/a;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/bidmachine/analytics/internal/A/a$c;->b:Lio/bidmachine/analytics/internal/A/a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/analytics/internal/A/a$c;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/analytics/internal/A/a$c;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/analytics/internal/A/a$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4

    .line 1
    new-instance p1, Lio/bidmachine/analytics/internal/A/a$c;

    iget-object v0, p0, Lio/bidmachine/analytics/internal/A/a$c;->b:Lio/bidmachine/analytics/internal/A/a;

    invoke-direct {p1, v0, p2}, Lio/bidmachine/analytics/internal/A/a$c;-><init>(Lio/bidmachine/analytics/internal/A/a;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/analytics/internal/A/a$c;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lio/bidmachine/analytics/internal/A/a$c;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    :try_start_b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_68

    goto :goto_4e

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/analytics/internal/A/a$c;->b:Lio/bidmachine/analytics/internal/A/a;

    invoke-static {p1}, Lio/bidmachine/analytics/internal/A/a;->b(Lio/bidmachine/analytics/internal/A/a;)Lio/bidmachine/analytics/internal/b/a;

    move-result-object p1

    if-nez p1, :cond_33

    .line 3
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object p1, p0, Lio/bidmachine/analytics/internal/A/a$c;->b:Lio/bidmachine/analytics/internal/A/a;

    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/A/a;->a()Lio/bidmachine/analytics/internal/A/a;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    return-object p1

    .line 7
    :cond_33
    :try_start_33
    iget-object p1, p0, Lio/bidmachine/analytics/internal/A/a$c;->b:Lio/bidmachine/analytics/internal/A/a;

    invoke-static {p1}, Lio/bidmachine/analytics/internal/A/a;->a(Lio/bidmachine/analytics/internal/A/a;)Lio/bidmachine/analytics/internal/I/f;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/I/f;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    new-instance v1, Lio/bidmachine/analytics/internal/A/a$c$a;

    iget-object v3, p0, Lio/bidmachine/analytics/internal/A/a$c;->b:Lio/bidmachine/analytics/internal/A/a;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lio/bidmachine/analytics/internal/A/a$c$a;-><init>(Lio/bidmachine/analytics/internal/A/a;Lkotlin/coroutines/Continuation;)V

    iput v2, p0, Lio/bidmachine/analytics/internal/A/a$c;->a:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4e

    return-object v0

    :cond_4e
    :goto_4e
    check-cast p1, [B
    :try_end_50
    .catchall {:try_start_33 .. :try_end_50} :catchall_68

    .line 15
    :try_start_50
    iget-object v0, p0, Lio/bidmachine/analytics/internal/A/a$c;->b:Lio/bidmachine/analytics/internal/A/a;

    invoke-static {v0}, Lio/bidmachine/analytics/internal/A/a;->c(Lio/bidmachine/analytics/internal/A/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lio/bidmachine/analytics/internal/A/a;->a(Lio/bidmachine/analytics/internal/A/a;Ljava/lang/String;[B)V

    .line 16
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object p1, p0, Lio/bidmachine/analytics/internal/A/a$c;->b:Lio/bidmachine/analytics/internal/A/a;

    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/A/a;->a()Lio/bidmachine/analytics/internal/A/a;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_83

    :catchall_66
    move-exception p1

    goto :goto_79

    .line 17
    :catchall_68
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object p1, p0, Lio/bidmachine/analytics/internal/A/a$c;->b:Lio/bidmachine/analytics/internal/A/a;

    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/A/a;->a()Lio/bidmachine/analytics/internal/A/a;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1
    :try_end_78
    .catchall {:try_start_50 .. :try_end_78} :catchall_66

    return-object p1

    .line 22
    :goto_79
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_83
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.analytics.internal.A.a.c.C1109a (io.bidmachine.analytics.internal.A.a$c$a)
.class final Lio/bidmachine/analytics/internal/A/a$c$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/analytics/internal/A/a$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lio/bidmachine/analytics/internal/A/a;


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/internal/A/a;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/bidmachine/analytics/internal/A/a$c$a;->b:Lio/bidmachine/analytics/internal/A/a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/analytics/internal/A/a$c$a;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/analytics/internal/A/a$c$a;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/analytics/internal/A/a$c$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4

    .line 1
    new-instance p1, Lio/bidmachine/analytics/internal/A/a$c$a;

    iget-object v0, p0, Lio/bidmachine/analytics/internal/A/a$c$a;->b:Lio/bidmachine/analytics/internal/A/a;

    invoke-direct {p1, v0, p2}, Lio/bidmachine/analytics/internal/A/a$c$a;-><init>(Lio/bidmachine/analytics/internal/A/a;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/analytics/internal/A/a$c$a;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lio/bidmachine/analytics/internal/A/a$c$a;->a:I

    if-nez v0, :cond_1b

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/analytics/internal/A/a$c$a;->b:Lio/bidmachine/analytics/internal/A/a;

    invoke-static {p1}, Lio/bidmachine/analytics/internal/A/a;->b(Lio/bidmachine/analytics/internal/A/a;)Lio/bidmachine/analytics/internal/b/a;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/analytics/internal/A/a$c$a;->b:Lio/bidmachine/analytics/internal/A/a;

    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/A/a;->b()[B

    move-result-object v1

    invoke-static {p1, v0, v1}, Lio/bidmachine/analytics/internal/A/a;->a(Lio/bidmachine/analytics/internal/A/a;Lio/bidmachine/analytics/internal/b/a;[B)[B

    move-result-object p1

    return-object p1

    .line 3
    :cond_1b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
