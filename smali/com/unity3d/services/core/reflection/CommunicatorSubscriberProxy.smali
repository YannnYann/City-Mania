###### Class com.unity3d.services.core.reflection.CommunicatorSubscriberProxy (com.unity3d.services.core.reflection.CommunicatorSubscriberProxy)
.class public final Lcom/unity3d/services/core/reflection/CommunicatorSubscriberProxy;
.super Lcom/unity3d/services/core/reflection/GenericListenerProxy;
.source "CommunicatorSubscriberProxy.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/services/core/reflection/CommunicatorSubscriberProxy$CommunicatorMessageListener;,
        Lcom/unity3d/services/core/reflection/CommunicatorSubscriberProxy$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/unity3d/services/core/reflection/CommunicatorSubscriberProxy$Companion;

.field private static final GET_COMMUNICATOR_ID:Ljava/lang/String; = "getCommunicatorId"

.field private static final MESSAGE_CLASS:Ljava/lang/String; = "com.applovin.communicator.AppLovinCommunicatorMessage"

.field private static final ON_MESSAGE_RECEIVED:Ljava/lang/String; = "onMessageReceived"

.field private static final SUBSCRIBER_CLASS:Ljava/lang/String; = "com.applovin.communicator.AppLovinCommunicatorSubscriber"


# instance fields
.field private final communicatorId:Ljava/lang/String;

.field private final logger:Lcom/unity3d/ads/core/log/Logger;

.field private final messageListener:Lcom/unity3d/services/core/reflection/CommunicatorSubscriberProxy$CommunicatorMessageListener;

.field private final topic:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/unity3d/services/core/reflection/CommunicatorSubscriberProxy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unity3d/services/core/reflection/CommunicatorSubscriberProxy$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/unity3d/services/core/reflection/CommunicatorSubscriberProxy;->Companion:Lcom/unity3d/services/core/reflection/CommunicatorSubscriberProxy$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/services/core/reflection/CommunicatorSubscriberProxy$CommunicatorMessageListener;Lcom/unity3d/ads/core/log/Logger;)V
    .registers 6

    const-string v0, "communicatorId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "topic"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Lcom/unity3d/services/core/reflection/GenericListenerProxy;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/unity3d/services/core/reflection/CommunicatorSubscriberProxy;->communicatorId:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/unity3d/services/core/reflection/CommunicatorSubscriberProxy;->topic:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/unity3d/services/core/reflection/CommunicatorSubscriberProxy;->messageListener:Lcom/unity3d/services/core/reflection/CommunicatorSubscriberProxy$CommunicatorMessageListener;

    .line 17
    iput-object p4, p0, Lcom/unity3d/services/core/reflection/CommunicatorSubscriberProxy;->logger:Lcom/unity3d/ads/core/log/Logger;

    return-void
.end method

.method private final handleMessage(Ljava/lang/Object;)V
    .registers 6

    .line 44
    :try_start_0
    const-string v0, "com.applovin.communicator.AppLovinCommunicatorMessage"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 45
    const-string v1, "getTopic"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 46
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_1e

    check-cast v1, Ljava/lang/String;

    goto :goto_1f

    :catch_1c
    move-exception p1

    goto :goto_41

    :cond_1e
    const/4 v1, 0x0

    .line 47
    :goto_1f
    iget-object v3, p0, Lcom/unity3d/services/core/reflection/CommunicatorSubscriberProxy;->topic:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 48
    const-string v1, "getMessageData"

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 49
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 50
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_48

    .line 51
    iget-object v0, p0, Lcom/unity3d/services/core/reflection/CommunicatorSubscriberProxy;->messageListener:Lcom/unity3d/services/core/reflection/CommunicatorSubscriberProxy$CommunicatorMessageListener;

    check-cast p1, Landroid/os/Bundle;

    invoke-interface {v0, p1}, Lcom/unity3d/services/core/reflection/CommunicatorSubscriberProxy$CommunicatorMessageListener;->onMessageReceived(Landroid/os/Bundle;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_40} :catch_1c

    return-void

    .line 55
    :goto_41
    iget-object v0, p0, Lcom/unity3d/services/core/reflection/CommunicatorSubscriberProxy;->logger:Lcom/unity3d/ads/core/log/Logger;

    const-string v1, "Failed to handle proxy communicator message"

    invoke-interface {v0, v1, p1}, Lcom/unity3d/ads/core/log/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_48
    return-void
.end method


# virtual methods
.method public getProxyClass()Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 25
    const-string v0, "com.applovin.communicator.AppLovinCommunicatorSubscriber"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "forName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "proxy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "m"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_89

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_8a

    goto/16 :goto_89

    :sswitch_1b
    const-string p1, "getCommunicatorId"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_24

    goto :goto_89

    .line 34
    :cond_24
    iget-object p1, p0, Lcom/unity3d/services/core/reflection/CommunicatorSubscriberProxy;->communicatorId:Ljava/lang/String;

    return-object p1

    .line 29
    :sswitch_27
    const-string p3, "hashCode"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_30

    goto :goto_89

    .line 35
    :cond_30
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 29
    :sswitch_39
    const-string v1, "equals"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_42

    goto :goto_89

    :cond_42
    if-eqz p3, :cond_4d

    .line 36
    array-length p2, p3

    const/4 v0, 0x1

    if-ne p2, v0, :cond_4d

    aget-object p2, p3, v2

    if-ne p1, p2, :cond_4d

    move v2, v0

    :cond_4d
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 29
    :sswitch_52
    const-string p1, "onMessageReceived"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5b

    goto :goto_89

    :cond_5b
    if-eqz p3, :cond_66

    .line 31
    array-length p1, p3

    if-nez p1, :cond_61

    goto :goto_66

    :cond_61
    aget-object p1, p3, v2

    invoke-direct {p0, p1}, Lcom/unity3d/services/core/reflection/CommunicatorSubscriberProxy;->handleMessage(Ljava/lang/Object;)V

    :cond_66
    :goto_66
    return-object v0

    .line 29
    :sswitch_67
    const-string p1, "toString"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_70

    goto :goto_89

    .line 37
    :cond_70
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "CommunicatorSubscriber("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/unity3d/services/core/reflection/CommunicatorSubscriberProxy;->communicatorId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x29

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_89
    :goto_89
    return-object v0

    :sswitch_data_8a
    .sparse-switch
        -0x69e9ad94 -> :sswitch_67
        -0x55a858d7 -> :sswitch_52
        -0x4d378041 -> :sswitch_39
        0x8cdac1b -> :sswitch_27
        0x75a9b946 -> :sswitch_1b
    .end sparse-switch
.end method

###### Class com.unity3d.services.core.reflection.CommunicatorSubscriberProxy.CommunicatorMessageListener (com.unity3d.services.core.reflection.CommunicatorSubscriberProxy$CommunicatorMessageListener)
.class public interface abstract Lcom/unity3d/services/core/reflection/CommunicatorSubscriberProxy$CommunicatorMessageListener;
.super Ljava/lang/Object;
.source "CommunicatorSubscriberProxy.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/core/reflection/CommunicatorSubscriberProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CommunicatorMessageListener"
.end annotation


# virtual methods
.method public abstract onMessageReceived(Landroid/os/Bundle;)V
.end method

###### Class com.unity3d.services.core.reflection.CommunicatorSubscriberProxy.Companion (com.unity3d.services.core.reflection.CommunicatorSubscriberProxy$Companion)
.class public final Lcom/unity3d/services/core/reflection/CommunicatorSubscriberProxy$Companion;
.super Ljava/lang/Object;
.source "CommunicatorSubscriberProxy.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/core/reflection/CommunicatorSubscriberProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/unity3d/services/core/reflection/CommunicatorSubscriberProxy$Companion;-><init>()V

    return-void
.end method
