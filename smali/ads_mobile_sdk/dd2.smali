###### Class ads_mobile_sdk.dd2 (ads_mobile_sdk.dd2)
.class public final Lads_mobile_sdk/dd2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/kd2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/kd2;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/dd2;->a:Lads_mobile_sdk/kd2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4

    .line 1
    new-instance p1, Lads_mobile_sdk/dd2;

    iget-object v0, p0, Lads_mobile_sdk/dd2;->a:Lads_mobile_sdk/kd2;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/dd2;-><init>(Lads_mobile_sdk/kd2;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/dd2;

    iget-object v0, p0, Lads_mobile_sdk/dd2;->a:Lads_mobile_sdk/kd2;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/dd2;-><init>(Lads_mobile_sdk/kd2;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/dd2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 77
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/dd2;->a:Lads_mobile_sdk/kd2;

    .line 78
    iget-object p1, p1, Lads_mobile_sdk/kd2;->c:Landroid/content/Context;

    .line 79
    sget-object v0, Lads_mobile_sdk/jd2;->a:Lads_mobile_sdk/me2;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_b2

    .line 81
    iget-boolean v1, v0, Lads_mobile_sdk/me2;->a:Z

    if-nez v1, :cond_af

    const/4 v1, 0x1

    .line 82
    iput-boolean v1, v0, Lads_mobile_sdk/me2;->a:Z

    .line 83
    invoke-static {}, Lads_mobile_sdk/cf2;->a()Lads_mobile_sdk/cf2;

    move-result-object v0

    .line 84
    iget-object v2, v0, Lads_mobile_sdk/cf2;->c:Lads_mobile_sdk/ln0;

    .line 85
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    new-instance v2, Lads_mobile_sdk/kn0;

    invoke-direct {v2}, Lads_mobile_sdk/kn0;-><init>()V

    .line 87
    iget-object v3, v0, Lads_mobile_sdk/cf2;->b:Lads_mobile_sdk/qn0;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    new-instance v3, Lads_mobile_sdk/pn0;

    invoke-direct {v3, v4, p1, v2, v0}, Lads_mobile_sdk/pn0;-><init>(Landroid/os/Handler;Landroid/content/Context;Lads_mobile_sdk/kn0;Lads_mobile_sdk/cf2;)V

    .line 89
    iput-object v3, v0, Lads_mobile_sdk/cf2;->d:Lads_mobile_sdk/pn0;

    .line 90
    sget-object v0, Lads_mobile_sdk/l9;->d:Lads_mobile_sdk/l9;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/sn;->a(Landroid/content/Context;)V

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lads_mobile_sdk/sd2;->a:Landroid/content/Context;

    if-nez v0, :cond_47

    .line 93
    sput-object p1, Lads_mobile_sdk/sd2;->a:Landroid/content/Context;

    :cond_47
    const/4 v0, 0x0

    .line 96
    sput v0, Lads_mobile_sdk/sd2;->b:I

    .line 97
    invoke-static {p1}, Lads_mobile_sdk/pe2;->a(Landroid/content/Context;)V

    .line 98
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 99
    new-instance v2, Lads_mobile_sdk/yf2;

    invoke-direct {v2}, Lads_mobile_sdk/yf2;-><init>()V

    .line 114
    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 115
    sget-object v0, Lads_mobile_sdk/wh1;->b:Lads_mobile_sdk/wh1;

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, v0, Lads_mobile_sdk/wh1;->a:Landroid/content/Context;

    .line 117
    sget-object v0, Lads_mobile_sdk/o;->f:Lads_mobile_sdk/o;

    .line 118
    iget-boolean v2, v0, Lads_mobile_sdk/o;->c:Z

    if-nez v2, :cond_86

    .line 119
    iget-object v2, v0, Lads_mobile_sdk/o;->d:Lads_mobile_sdk/sn;

    invoke-virtual {v2, p1}, Lads_mobile_sdk/sn;->a(Landroid/content/Context;)V

    .line 120
    iget-object v2, v0, Lads_mobile_sdk/o;->d:Lads_mobile_sdk/sn;

    .line 121
    iput-object v0, v2, Lads_mobile_sdk/sn;->c:Lads_mobile_sdk/rn;

    .line 122
    iput-boolean v1, v2, Lads_mobile_sdk/sn;->a:Z

    .line 123
    invoke-virtual {v2}, Lads_mobile_sdk/sn;->a()Z

    move-result v3

    iput-boolean v3, v2, Lads_mobile_sdk/sn;->b:Z

    .line 124
    invoke-virtual {v2, v3}, Lads_mobile_sdk/sn;->a(Z)V

    .line 125
    iget-object v2, v0, Lads_mobile_sdk/o;->d:Lads_mobile_sdk/sn;

    .line 126
    iget-boolean v2, v2, Lads_mobile_sdk/sn;->b:Z

    .line 127
    iput-boolean v2, v0, Lads_mobile_sdk/o;->e:Z

    .line 128
    iput-boolean v1, v0, Lads_mobile_sdk/o;->c:Z

    .line 129
    :cond_86
    sget-object v0, Lads_mobile_sdk/ra3;->d:Lads_mobile_sdk/ra3;

    .line 130
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lads_mobile_sdk/ra3;->a:Ljava/lang/ref/WeakReference;

    .line 132
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 133
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    new-instance v1, Lads_mobile_sdk/qa3;

    invoke-direct {v1}, Lads_mobile_sdk/qa3;-><init>()V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 136
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 137
    new-instance v1, Lads_mobile_sdk/le2;

    invoke-direct {v1, p1}, Lads_mobile_sdk/le2;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 138
    :cond_af
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 139
    :cond_b2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Application Context cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
