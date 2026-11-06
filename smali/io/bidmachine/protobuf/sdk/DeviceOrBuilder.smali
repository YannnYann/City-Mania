###### Class io.bidmachine.protobuf.sdk.DeviceOrBuilder (io.bidmachine.protobuf.sdk.DeviceOrBuilder)
.class public interface abstract Lio/bidmachine/protobuf/sdk/DeviceOrBuilder;
.super Ljava/lang/Object;
.source "DeviceOrBuilder.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# virtual methods
.method public abstract getAccess()Ljava/lang/String;
.end method

.method public abstract getAccessBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getAirplane()Z
.end method

.method public abstract getApilevel()I
.end method

.method public abstract getAtts()I
.end method

.method public abstract getAudioContext()Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;
.end method

.method public abstract getAudioContextOrBuilder()Lcom/explorestack/protobuf/adcom/Context$Device$AudioContextOrBuilder;
.end method

.method public abstract getBatterylevel()F
.end method

.method public abstract getBatterysaver()Z
.end method

.method public abstract getBmIfv()Ljava/lang/String;
.end method

.method public abstract getBmIfvBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getCharging()Z
.end method

.method public abstract getConnection()Lcom/explorestack/protobuf/adcom/Context$Device$Connection;
.end method

.method public abstract getConnectionOrBuilder()Lcom/explorestack/protobuf/adcom/Context$Device$ConnectionOrBuilder;
.end method

.method public abstract getCpuname()Ljava/lang/String;
.end method

.method public abstract getCpunameBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getCpuvendor()Ljava/lang/String;
.end method

.method public abstract getCpuvendorBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getDarkmode()Z
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
.end method

.method public abstract getDevicename()Ljava/lang/String;
.end method

.method public abstract getDevicenameBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getDiskspace()J
.end method

.method public abstract getDnd()Z
.end method

.method public abstract getFreemem()J
.end method

.method public abstract getGpuname()Ljava/lang/String;
.end method

.method public abstract getGpunameBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getGpuvendor()Ljava/lang/String;
.end method

.method public abstract getGpuvendorBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getHeadset()Z
.end method

.method public abstract getHeadsetname()Ljava/lang/String;
.end method

.method public abstract getHeadsetnameBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getIfv()Ljava/lang/String;
.end method

.method public abstract getIfvBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getInputlanguage(I)Ljava/lang/String;
.end method

.method public abstract getInputlanguageBytes(I)Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getInputlanguageCount()I
.end method

.method public abstract getInputlanguageList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getJailbreak()Z
.end method

.method public abstract getLastbootup()J
.end method

.method public abstract getLastbootupHistory(I)J
.end method

.method public abstract getLastbootupHistoryCount()I
.end method

.method public abstract getLastbootupHistoryList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLastbootupV2()J
.end method

.method public abstract getNetworkRoaming()Lcom/explorestack/protobuf/BoolValue;
.end method

.method public abstract getNetworkRoamingOrBuilder()Lcom/explorestack/protobuf/BoolValueOrBuilder;
.end method

.method public abstract getRingmute()Z
.end method

.method public abstract getScreenbright()F
.end method

.method public abstract getSimCarrier()Lcom/explorestack/protobuf/StringValue;
.end method

.method public abstract getSimCarrierOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
.end method

.method public abstract getSimCountry()Lcom/explorestack/protobuf/StringValue;
.end method

.method public abstract getSimCountryOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
.end method

.method public abstract getTime()J
.end method

.method public abstract getTimezone()Ljava/lang/String;
.end method

.method public abstract getTimezoneBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getTotaldisk()J
.end method

.method public abstract getTotalmem()J
.end method

.method public abstract hasAudioContext()Z
.end method

.method public abstract hasConnection()Z
.end method

.method public abstract hasNetworkRoaming()Z
.end method

.method public abstract hasSimCarrier()Z
.end method

.method public abstract hasSimCountry()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
