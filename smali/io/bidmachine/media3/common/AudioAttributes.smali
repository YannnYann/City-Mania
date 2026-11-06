###### Class io.bidmachine.media3.common.AudioAttributes (io.bidmachine.media3.common.AudioAttributes)
.class public final Lio/bidmachine/media3/common/AudioAttributes;
.super Ljava/lang/Object;
.source "AudioAttributes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/common/AudioAttributes$AudioAttributesV21;,
        Lio/bidmachine/media3/common/AudioAttributes$Builder;,
        Lio/bidmachine/media3/common/AudioAttributes$Api32;,
        Lio/bidmachine/media3/common/AudioAttributes$Api29;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lio/bidmachine/media3/common/AudioAttributes;

.field public static final FIELD_ALLOWED_CAPTURE_POLICY:Ljava/lang/String;

.field public static final FIELD_CONTENT_TYPE:Ljava/lang/String;

.field public static final FIELD_FLAGS:Ljava/lang/String;

.field public static final FIELD_SPATIALIZATION_BEHAVIOR:Ljava/lang/String;

.field public static final FIELD_USAGE:Ljava/lang/String;


# instance fields
.field public final allowedCapturePolicy:I

.field public audioAttributesV21:Lio/bidmachine/media3/common/AudioAttributes$AudioAttributesV21;

.field public final contentType:I

.field public final flags:I

.field public final spatializationBehavior:I

.field public final usage:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 63
    new-instance v0, Lio/bidmachine/media3/common/AudioAttributes$Builder;

    invoke-direct {v0}, Lio/bidmachine/media3/common/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0}, Lio/bidmachine/media3/common/AudioAttributes$Builder;->build()Lio/bidmachine/media3/common/AudioAttributes;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/AudioAttributes;->DEFAULT:Lio/bidmachine/media3/common/AudioAttributes;

    const/4 v0, 0x0

    .line 237
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/AudioAttributes;->FIELD_CONTENT_TYPE:Ljava/lang/String;

    const/4 v0, 0x1

    .line 238
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/AudioAttributes;->FIELD_FLAGS:Ljava/lang/String;

    const/4 v0, 0x2

    .line 239
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/AudioAttributes;->FIELD_USAGE:Ljava/lang/String;

    const/4 v0, 0x3

    .line 240
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/AudioAttributes;->FIELD_ALLOWED_CAPTURE_POLICY:Ljava/lang/String;

    const/4 v0, 0x4

    .line 241
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/AudioAttributes;->FIELD_SPATIALIZATION_BEHAVIOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIIII)V
    .registers 6

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput p1, p0, Lio/bidmachine/media3/common/AudioAttributes;->contentType:I

    .line 154
    iput p2, p0, Lio/bidmachine/media3/common/AudioAttributes;->flags:I

    .line 155
    iput p3, p0, Lio/bidmachine/media3/common/AudioAttributes;->usage:I

    .line 156
    iput p4, p0, Lio/bidmachine/media3/common/AudioAttributes;->allowedCapturePolicy:I

    .line 157
    iput p5, p0, Lio/bidmachine/media3/common/AudioAttributes;->spatializationBehavior:I

    return-void
.end method

.method public synthetic constructor <init>(IIIIILio/bidmachine/media3/common/AudioAttributes$1;)V
    .registers 7

    .line 36
    invoke-direct/range {p0 .. p5}, Lio/bidmachine/media3/common/AudioAttributes;-><init>(IIIII)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_31

    .line 215
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/bidmachine/media3/common/AudioAttributes;

    if-eq v3, v2, :cond_10

    goto :goto_31

    .line 218
    :cond_10
    check-cast p1, Lio/bidmachine/media3/common/AudioAttributes;

    .line 219
    iget v2, p0, Lio/bidmachine/media3/common/AudioAttributes;->contentType:I

    iget v3, p1, Lio/bidmachine/media3/common/AudioAttributes;->contentType:I

    if-ne v2, v3, :cond_31

    iget v2, p0, Lio/bidmachine/media3/common/AudioAttributes;->flags:I

    iget v3, p1, Lio/bidmachine/media3/common/AudioAttributes;->flags:I

    if-ne v2, v3, :cond_31

    iget v2, p0, Lio/bidmachine/media3/common/AudioAttributes;->usage:I

    iget v3, p1, Lio/bidmachine/media3/common/AudioAttributes;->usage:I

    if-ne v2, v3, :cond_31

    iget v2, p0, Lio/bidmachine/media3/common/AudioAttributes;->allowedCapturePolicy:I

    iget v3, p1, Lio/bidmachine/media3/common/AudioAttributes;->allowedCapturePolicy:I

    if-ne v2, v3, :cond_31

    iget v2, p0, Lio/bidmachine/media3/common/AudioAttributes;->spatializationBehavior:I

    iget p1, p1, Lio/bidmachine/media3/common/AudioAttributes;->spatializationBehavior:I

    if-ne v2, p1, :cond_31

    return v0

    :cond_31
    :goto_31
    return v1
.end method

.method public getAudioAttributesV21()Lio/bidmachine/media3/common/AudioAttributes$AudioAttributesV21;
    .registers 3

    .line 167
    iget-object v0, p0, Lio/bidmachine/media3/common/AudioAttributes;->audioAttributesV21:Lio/bidmachine/media3/common/AudioAttributes$AudioAttributesV21;

    if-nez v0, :cond_c

    .line 168
    new-instance v0, Lio/bidmachine/media3/common/AudioAttributes$AudioAttributesV21;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/media3/common/AudioAttributes$AudioAttributesV21;-><init>(Lio/bidmachine/media3/common/AudioAttributes;Lio/bidmachine/media3/common/AudioAttributes$1;)V

    iput-object v0, p0, Lio/bidmachine/media3/common/AudioAttributes;->audioAttributesV21:Lio/bidmachine/media3/common/AudioAttributes$AudioAttributesV21;

    .line 170
    :cond_c
    iget-object v0, p0, Lio/bidmachine/media3/common/AudioAttributes;->audioAttributesV21:Lio/bidmachine/media3/common/AudioAttributes$AudioAttributesV21;

    return-object v0
.end method

.method public getStreamType()I
    .registers 3

    .line 177
    iget v0, p0, Lio/bidmachine/media3/common/AudioAttributes;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    return v1

    .line 181
    :cond_7
    iget v0, p0, Lio/bidmachine/media3/common/AudioAttributes;->usage:I

    packed-switch v0, :pswitch_data_1e

    :pswitch_c
    const/4 v0, 0x3

    return v0

    :pswitch_e
    return v1

    :pswitch_f
    const/16 v0, 0xa

    return v0

    :pswitch_12
    const/4 v0, 0x2

    return v0

    :pswitch_14
    const/4 v0, 0x5

    return v0

    :pswitch_16
    const/4 v0, 0x4

    return v0

    :pswitch_18
    const/16 v0, 0x8

    return v0

    :pswitch_1b
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_1e
    .packed-switch 0x2
        :pswitch_1b
        :pswitch_18
        :pswitch_16
        :pswitch_14
        :pswitch_12
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_f
        :pswitch_c
        :pswitch_e
    .end packed-switch
.end method

.method public hashCode()I
    .registers 3

    const/16 v0, 0x20f

    .line 229
    iget v1, p0, Lio/bidmachine/media3/common/AudioAttributes;->contentType:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 230
    iget v1, p0, Lio/bidmachine/media3/common/AudioAttributes;->flags:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 231
    iget v1, p0, Lio/bidmachine/media3/common/AudioAttributes;->usage:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 232
    iget v1, p0, Lio/bidmachine/media3/common/AudioAttributes;->allowedCapturePolicy:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 233
    iget v1, p0, Lio/bidmachine/media3/common/AudioAttributes;->spatializationBehavior:I

    add-int/2addr v0, v1

    return v0
.end method

###### Class io.bidmachine.media3.common.AudioAttributes.AnonymousClass1 (io.bidmachine.media3.common.AudioAttributes$1)
.class public synthetic Lio/bidmachine/media3/common/AudioAttributes$1;
.super Ljava/lang/Object;
.source "AudioAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/AudioAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.common.AudioAttributes.Api29 (io.bidmachine.media3.common.AudioAttributes$Api29)
.class public final Lio/bidmachine/media3/common/AudioAttributes$Api29;
.super Ljava/lang/Object;
.source "AudioAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/AudioAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Api29"
.end annotation


# direct methods
.method public static setAllowedCapturePolicy(Landroid/media/AudioAttributes$Builder;I)V
    .registers 2

    .line 282
    invoke-static {p0, p1}, Lio/bidmachine/media3/common/AudioAttributes$Api29$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioAttributes$Builder;I)Landroid/media/AudioAttributes$Builder;

    return-void
.end method

###### Class io.bidmachine.media3.common.AudioAttributes.Api32 (io.bidmachine.media3.common.AudioAttributes$Api32)
.class public final Lio/bidmachine/media3/common/AudioAttributes$Api32;
.super Ljava/lang/Object;
.source "AudioAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/AudioAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Api32"
.end annotation


# direct methods
.method public static setSpatializationBehavior(Landroid/media/AudioAttributes$Builder;I)V
    .registers 2

    .line 291
    invoke-static {p0, p1}, Lio/bidmachine/media3/common/AudioAttributes$Api32$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioAttributes$Builder;I)Landroid/media/AudioAttributes$Builder;

    return-void
.end method

###### Class io.bidmachine.media3.common.AudioAttributes.AudioAttributesV21 (io.bidmachine.media3.common.AudioAttributes$AudioAttributesV21)
.class public final Lio/bidmachine/media3/common/AudioAttributes$AudioAttributesV21;
.super Ljava/lang/Object;
.source "AudioAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/AudioAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AudioAttributesV21"
.end annotation


# instance fields
.field public final audioAttributes:Landroid/media/AudioAttributes;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/common/AudioAttributes;)V
    .registers 5

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    iget v1, p1, Lio/bidmachine/media3/common/AudioAttributes;->contentType:I

    .line 45
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    iget v1, p1, Lio/bidmachine/media3/common/AudioAttributes;->flags:I

    .line 46
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    iget v1, p1, Lio/bidmachine/media3/common/AudioAttributes;->usage:I

    .line 47
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 48
    sget v1, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_25

    .line 49
    iget v2, p1, Lio/bidmachine/media3/common/AudioAttributes;->allowedCapturePolicy:I

    invoke-static {v0, v2}, Lio/bidmachine/media3/common/AudioAttributes$Api29;->setAllowedCapturePolicy(Landroid/media/AudioAttributes$Builder;I)V

    :cond_25
    const/16 v2, 0x20

    if-lt v1, v2, :cond_2e

    .line 52
    iget p1, p1, Lio/bidmachine/media3/common/AudioAttributes;->spatializationBehavior:I

    invoke-static {v0, p1}, Lio/bidmachine/media3/common/AudioAttributes$Api32;->setSpatializationBehavior(Landroid/media/AudioAttributes$Builder;I)V

    .line 54
    :cond_2e
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/common/AudioAttributes$AudioAttributesV21;->audioAttributes:Landroid/media/AudioAttributes;

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/common/AudioAttributes;Lio/bidmachine/media3/common/AudioAttributes$1;)V
    .registers 3

    .line 39
    invoke-direct {p0, p1}, Lio/bidmachine/media3/common/AudioAttributes$AudioAttributesV21;-><init>(Lio/bidmachine/media3/common/AudioAttributes;)V

    return-void
.end method

###### Class io.bidmachine.media3.common.AudioAttributes.Builder (io.bidmachine.media3.common.AudioAttributes$Builder)
.class public final Lio/bidmachine/media3/common/AudioAttributes$Builder;
.super Ljava/lang/Object;
.source "AudioAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/AudioAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public allowedCapturePolicy:I

.field public contentType:I

.field public flags:I

.field public spatializationBehavior:I

.field public usage:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 81
    iput v0, p0, Lio/bidmachine/media3/common/AudioAttributes$Builder;->contentType:I

    .line 82
    iput v0, p0, Lio/bidmachine/media3/common/AudioAttributes$Builder;->flags:I

    const/4 v1, 0x1

    .line 83
    iput v1, p0, Lio/bidmachine/media3/common/AudioAttributes$Builder;->usage:I

    .line 84
    iput v1, p0, Lio/bidmachine/media3/common/AudioAttributes$Builder;->allowedCapturePolicy:I

    .line 85
    iput v0, p0, Lio/bidmachine/media3/common/AudioAttributes$Builder;->spatializationBehavior:I

    return-void
.end method


# virtual methods
.method public build()Lio/bidmachine/media3/common/AudioAttributes;
    .registers 8

    .line 125
    new-instance v0, Lio/bidmachine/media3/common/AudioAttributes;

    iget v1, p0, Lio/bidmachine/media3/common/AudioAttributes$Builder;->contentType:I

    iget v2, p0, Lio/bidmachine/media3/common/AudioAttributes$Builder;->flags:I

    iget v3, p0, Lio/bidmachine/media3/common/AudioAttributes$Builder;->usage:I

    iget v4, p0, Lio/bidmachine/media3/common/AudioAttributes$Builder;->allowedCapturePolicy:I

    iget v5, p0, Lio/bidmachine/media3/common/AudioAttributes$Builder;->spatializationBehavior:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lio/bidmachine/media3/common/AudioAttributes;-><init>(IIIIILio/bidmachine/media3/common/AudioAttributes$1;)V

    return-object v0
.end method

.method public setContentType(I)Lio/bidmachine/media3/common/AudioAttributes$Builder;
    .registers 2

    .line 91
    iput p1, p0, Lio/bidmachine/media3/common/AudioAttributes$Builder;->contentType:I

    return-object p0
.end method

.method public setUsage(I)Lio/bidmachine/media3/common/AudioAttributes$Builder;
    .registers 2

    .line 105
    iput p1, p0, Lio/bidmachine/media3/common/AudioAttributes$Builder;->usage:I

    return-object p0
.end method
