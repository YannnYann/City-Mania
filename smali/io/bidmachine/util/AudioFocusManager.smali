###### Class io.bidmachine.util.AudioFocusManager (io.bidmachine.util.AudioFocusManager)
.class public final Lio/bidmachine/util/AudioFocusManager;
.super Ljava/lang/Object;
.source "AudioFocusManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAudioFocusManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AudioFocusManager.kt\nio/bidmachine/util/AudioFocusManager\n+ 2 Utils.kt\nio/bidmachine/util/UtilsKt\n*L\n1#1,133:1\n846#2,4:134\n846#2,4:138\n*S KotlinDebug\n*F\n+ 1 AudioFocusManager.kt\nio/bidmachine/util/AudioFocusManager\n*L\n81#1:134,4\n106#1:138,4\n*E\n"
.end annotation


# instance fields
.field public final audioFocusRequest$delegate:Lkotlin/Lazy;

.field public final audioManager:Landroid/media/AudioManager;

.field public final internalFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field public final isFocusDesired:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final isFocusRequested:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static synthetic $r8$lambda$KLJSQ0N4afjvQXvJe8X729kIpOs(I)V
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/util/AudioFocusManager;->internalFocusChangeListener$lambda$0(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {p1}, Lio/bidmachine/util/UtilsKt;->getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/util/AudioFocusManager;->audioManager:Landroid/media/AudioManager;

    .line 19
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/util/AudioFocusManager;->isFocusRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/util/AudioFocusManager;->isFocusDesired:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    new-instance p1, Lio/bidmachine/util/AudioFocusManager$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lio/bidmachine/util/AudioFocusManager$$ExternalSyntheticLambda1;-><init>()V

    iput-object p1, p0, Lio/bidmachine/util/AudioFocusManager;->internalFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 30
    new-instance p1, Lio/bidmachine/util/AudioFocusManager$audioFocusRequest$2;

    invoke-direct {p1, p0}, Lio/bidmachine/util/AudioFocusManager$audioFocusRequest$2;-><init>(Lio/bidmachine/util/AudioFocusManager;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/util/AudioFocusManager;->audioFocusRequest$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$createAudioFocusRequest(Lio/bidmachine/util/AudioFocusManager;)Landroid/media/AudioFocusRequest;
    .registers 1

    .line 16
    invoke-virtual {p0}, Lio/bidmachine/util/AudioFocusManager;->createAudioFocusRequest()Landroid/media/AudioFocusRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final internalFocusChangeListener$lambda$0(I)V
    .registers 1

    .line 0
    return-void
.end method


# virtual methods
.method public final createAudioFocusRequest()Landroid/media/AudioFocusRequest;
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x2

    .line 122
    invoke-static {v0}, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$$ExternalSyntheticApiModelOutline0;->m(I)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 124
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v2, 0x1

    .line 125
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/4 v2, 0x3

    .line 126
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 127
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 123
    invoke-static {v0, v1}, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$$ExternalSyntheticApiModelOutline1;->m(Landroid/media/AudioFocusRequest$Builder;Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lio/bidmachine/util/AudioFocusManager;->internalFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-static {v0, v1}, Lio/bidmachine/util/AudioFocusManager$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioFocusRequest$Builder;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 130
    invoke-static {v0}, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$$ExternalSyntheticApiModelOutline4;->m(Landroid/media/AudioFocusRequest$Builder;)Landroid/media/AudioFocusRequest;

    move-result-object v0

    const-string v1, "Builder(AudioManager.AUD\u2026ner)\n            .build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getAudioFocusRequest()Landroid/media/AudioFocusRequest;
    .registers 2

    .line 30
    iget-object v0, p0, Lio/bidmachine/util/AudioFocusManager;->audioFocusRequest$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$$ExternalSyntheticApiModelOutline5;->m(Ljava/lang/Object;)Landroid/media/AudioFocusRequest;

    move-result-object v0

    return-object v0
.end method

.method public final pause()V
    .registers 1

    .line 51
    invoke-virtual {p0}, Lio/bidmachine/util/AudioFocusManager;->releaseFocus()V

    return-void
.end method

.method public final release()V
    .registers 3

    .line 71
    iget-object v0, p0, Lio/bidmachine/util/AudioFocusManager;->isFocusDesired:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 72
    invoke-virtual {p0}, Lio/bidmachine/util/AudioFocusManager;->releaseFocus()V

    return-void
.end method

.method public final releaseFocus()V
    .registers 5

    .line 101
    iget-object v0, p0, Lio/bidmachine/util/AudioFocusManager;->audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_5

    goto :goto_23

    .line 102
    :cond_5
    iget-object v1, p0, Lio/bidmachine/util/AudioFocusManager;->isFocusRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_23

    .line 107
    :cond_10
    :try_start_10
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1e

    .line 108
    invoke-virtual {p0}, Lio/bidmachine/util/AudioFocusManager;->getAudioFocusRequest()Landroid/media/AudioFocusRequest;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/audio/AudioManagerCompat$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioManager;Landroid/media/AudioFocusRequest;)I

    return-void

    .line 111
    :cond_1e
    iget-object v1, p0, Lio/bidmachine/util/AudioFocusManager;->internalFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    :try_end_23
    .catchall {:try_start_10 .. :try_end_23} :catchall_23

    :catchall_23
    :goto_23
    return-void
.end method

.method public final request()Z
    .registers 3

    .line 43
    iget-object v0, p0, Lio/bidmachine/util/AudioFocusManager;->isFocusDesired:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 44
    invoke-virtual {p0}, Lio/bidmachine/util/AudioFocusManager;->requestFocus()Z

    move-result v0

    return v0
.end method

.method public final requestFocus()Z
    .registers 7

    .line 76
    iget-object v0, p0, Lio/bidmachine/util/AudioFocusManager;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 77
    :cond_6
    iget-object v2, p0, Lio/bidmachine/util/AudioFocusManager;->isFocusRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-nez v2, :cond_10

    return v3

    .line 82
    :cond_10
    :try_start_10
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v2, v4, :cond_1f

    .line 83
    invoke-virtual {p0}, Lio/bidmachine/util/AudioFocusManager;->getAudioFocusRequest()Landroid/media/AudioFocusRequest;

    move-result-object v2

    invoke-static {v0, v2}, Lio/bidmachine/media3/common/audio/AudioManagerCompat$$ExternalSyntheticApiModelOutline1;->m(Landroid/media/AudioManager;Landroid/media/AudioFocusRequest;)I

    move-result v0

    goto :goto_27

    .line 87
    :cond_1f
    iget-object v2, p0, Lio/bidmachine/util/AudioFocusManager;->internalFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v4, 0x3

    const/4 v5, 0x2

    .line 86
    invoke-virtual {v0, v2, v4, v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    :goto_27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_2c

    goto :goto_2d

    :catchall_2c
    const/4 v0, 0x0

    :goto_2d
    if-eqz v0, :cond_34

    .line 81
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_35

    :cond_34
    move v0, v1

    :goto_35
    if-ne v0, v3, :cond_38

    goto :goto_39

    :cond_38
    move v3, v1

    :goto_39
    if-nez v3, :cond_40

    .line 95
    iget-object v0, p0, Lio/bidmachine/util/AudioFocusManager;->isFocusRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_40
    return v3
.end method

.method public final resume()Z
    .registers 2

    .line 60
    iget-object v0, p0, Lio/bidmachine/util/AudioFocusManager;->isFocusDesired:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 63
    :cond_a
    invoke-virtual {p0}, Lio/bidmachine/util/AudioFocusManager;->requestFocus()Z

    move-result v0

    return v0
.end method

###### Class io.bidmachine.util.AudioFocusManager$$ExternalSyntheticLambda1 (io.bidmachine.util.AudioFocusManager$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/util/AudioFocusManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .registers 2

    .line 0
    invoke-static {p1}, Lio/bidmachine/util/AudioFocusManager;->$r8$lambda$KLJSQ0N4afjvQXvJe8X729kIpOs(I)V

    return-void
.end method

###### Class io.bidmachine.util.AudioFocusManager$audioFocusRequest$2 (io.bidmachine.util.AudioFocusManager$audioFocusRequest$2)
.class public final Lio/bidmachine/util/AudioFocusManager$audioFocusRequest$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AudioFocusManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/AudioFocusManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/media/AudioFocusRequest;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/util/AudioFocusManager;


# direct methods
.method public constructor <init>(Lio/bidmachine/util/AudioFocusManager;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/util/AudioFocusManager$audioFocusRequest$2;->this$0:Lio/bidmachine/util/AudioFocusManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/media/AudioFocusRequest;
    .registers 2

    .line 31
    iget-object v0, p0, Lio/bidmachine/util/AudioFocusManager$audioFocusRequest$2;->this$0:Lio/bidmachine/util/AudioFocusManager;

    invoke-static {v0}, Lio/bidmachine/util/AudioFocusManager;->access$createAudioFocusRequest(Lio/bidmachine/util/AudioFocusManager;)Landroid/media/AudioFocusRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 30
    invoke-virtual {p0}, Lio/bidmachine/util/AudioFocusManager$audioFocusRequest$2;->invoke()Landroid/media/AudioFocusRequest;

    move-result-object v0

    return-object v0
.end method
