package io.bidmachine.protobuf.sdk;

import ads_mobile_sdk.fh;
import com.explorestack.protobuf.AbstractMessage;
import com.explorestack.protobuf.AbstractMessageLite;
import com.explorestack.protobuf.AbstractParser;
import com.explorestack.protobuf.BoolValue;
import com.explorestack.protobuf.BoolValueOrBuilder;
import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.CodedInputStream;
import com.explorestack.protobuf.CodedOutputStream;
import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.ExtensionRegistryLite;
import com.explorestack.protobuf.GeneratedMessageV3;
import com.explorestack.protobuf.Internal;
import com.explorestack.protobuf.InvalidProtocolBufferException;
import com.explorestack.protobuf.LazyStringArrayList;
import com.explorestack.protobuf.LazyStringList;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.Parser;
import com.explorestack.protobuf.ProtocolStringList;
import com.explorestack.protobuf.SingleFieldBuilderV3;
import com.explorestack.protobuf.StringValue;
import com.explorestack.protobuf.StringValueOrBuilder;
import com.explorestack.protobuf.UnknownFieldSet;
import com.explorestack.protobuf.adcom.Context;
import com.unity3d.services.UnityAdsConstants;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class Device extends GeneratedMessageV3 implements DeviceOrBuilder {
    public static final int ACCESS_FIELD_NUMBER = 19;
    public static final int AIRPLANE_FIELD_NUMBER = 12;
    public static final int APILEVEL_FIELD_NUMBER = 31;
    public static final int ATTS_FIELD_NUMBER = 22;
    public static final int AUDIOCONTEXT_FIELD_NUMBER = 24;
    public static final int BATTERYLEVEL_FIELD_NUMBER = 9;
    public static final int BATTERYSAVER_FIELD_NUMBER = 10;
    public static final int BM_IFV_FIELD_NUMBER = 2;
    public static final int CHARGING_FIELD_NUMBER = 7;
    public static final int CONNECTION_FIELD_NUMBER = 23;
    public static final int CPUNAME_FIELD_NUMBER = 25;
    public static final int CPUVENDOR_FIELD_NUMBER = 26;
    public static final int DARKMODE_FIELD_NUMBER = 11;
    public static final int DEVICENAME_FIELD_NUMBER = 14;
    public static final int DISKSPACE_FIELD_NUMBER = 4;
    public static final int DND_FIELD_NUMBER = 13;
    public static final int FREEMEM_FIELD_NUMBER = 30;
    public static final int GPUNAME_FIELD_NUMBER = 27;
    public static final int GPUVENDOR_FIELD_NUMBER = 28;
    public static final int HEADSETNAME_FIELD_NUMBER = 20;
    public static final int HEADSET_FIELD_NUMBER = 8;
    public static final int IFV_FIELD_NUMBER = 1;
    public static final int INPUTLANGUAGE_FIELD_NUMBER = 3;
    public static final int JAILBREAK_FIELD_NUMBER = 17;
    public static final int LASTBOOTUP_FIELD_NUMBER = 18;
    public static final int LASTBOOTUP_HISTORY_FIELD_NUMBER = 36;
    public static final int LASTBOOTUP_V2_FIELD_NUMBER = 35;
    public static final int NETWORKROAMING_FIELD_NUMBER = 34;
    public static final int RINGMUTE_FIELD_NUMBER = 6;
    public static final int SCREENBRIGHT_FIELD_NUMBER = 16;
    public static final int SIMCARRIER_FIELD_NUMBER = 32;
    public static final int SIMCOUNTRY_FIELD_NUMBER = 33;
    public static final int TIMEZONE_FIELD_NUMBER = 29;
    public static final int TIME_FIELD_NUMBER = 15;
    public static final int TOTALDISK_FIELD_NUMBER = 5;
    public static final int TOTALMEM_FIELD_NUMBER = 21;
    private static final long serialVersionUID = 0;
    private volatile Object access_;
    private boolean airplane_;
    private int apilevel_;
    private int atts_;
    private Context.Device.AudioContext audioContext_;
    private float batterylevel_;
    private boolean batterysaver_;
    private volatile Object bmIfv_;
    private boolean charging_;
    private Context.Device.Connection connection_;
    private volatile Object cpuname_;
    private volatile Object cpuvendor_;
    private boolean darkmode_;
    private volatile Object devicename_;
    private long diskspace_;
    private boolean dnd_;
    private long freemem_;
    private volatile Object gpuname_;
    private volatile Object gpuvendor_;
    private boolean headset_;
    private volatile Object headsetname_;
    private volatile Object ifv_;
    private LazyStringList inputlanguage_;
    private boolean jailbreak_;
    private int lastbootupHistoryMemoizedSerializedSize;
    private Internal.LongList lastbootupHistory_;
    private long lastbootupV2_;
    private long lastbootup_;
    private byte memoizedIsInitialized;
    private BoolValue networkRoaming_;
    private boolean ringmute_;
    private float screenbright_;
    private StringValue simCarrier_;
    private StringValue simCountry_;
    private long time_;
    private volatile Object timezone_;
    private long totaldisk_;
    private long totalmem_;
    private static final Device DEFAULT_INSTANCE = new Device();
    private static final Parser<Device> PARSER = new AbstractParser<Device>() { // from class: io.bidmachine.protobuf.sdk.Device.1
        @Override // com.explorestack.protobuf.Parser
        public Device parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return new Device(codedInputStream, extensionRegistryLite);
        }
    };

    private Device(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.lastbootupHistoryMemoizedSerializedSize = -1;
        this.memoizedIsInitialized = (byte) -1;
    }

    private Device() {
        this.lastbootupHistoryMemoizedSerializedSize = -1;
        this.memoizedIsInitialized = (byte) -1;
        this.ifv_ = "";
        this.bmIfv_ = "";
        this.inputlanguage_ = LazyStringArrayList.EMPTY;
        this.devicename_ = "";
        this.lastbootupHistory_ = GeneratedMessageV3.emptyLongList();
        this.access_ = "";
        this.headsetname_ = "";
        this.cpuname_ = "";
        this.cpuvendor_ = "";
        this.gpuname_ = "";
        this.gpuvendor_ = "";
        this.timezone_ = "";
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
        return new Device();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
    public final UnknownFieldSet getUnknownFields() {
        return this.unknownFields;
    }

    private Device(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        this();
        extensionRegistryLite.getClass();
        UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
        boolean z = false;
        int i = 0;
        while (!z) {
            try {
                try {
                    int tag = codedInputStream.readTag();
                    switch (tag) {
                        case 0:
                            z = true;
                            break;
                        case 10:
                            this.ifv_ = codedInputStream.readStringRequireUtf8();
                            break;
                        case 18:
                            this.bmIfv_ = codedInputStream.readStringRequireUtf8();
                            break;
                        case 26:
                            String stringRequireUtf8 = codedInputStream.readStringRequireUtf8();
                            int i2 = (i == true ? 1 : 0) & 1;
                            i = i;
                            if (i2 == 0) {
                                this.inputlanguage_ = new LazyStringArrayList();
                                i = (i == true ? 1 : 0) | 1;
                            }
                            this.inputlanguage_.add(stringRequireUtf8);
                            break;
                        case 32:
                            this.diskspace_ = codedInputStream.readUInt64();
                            break;
                        case 40:
                            this.totaldisk_ = codedInputStream.readUInt64();
                            break;
                        case 48:
                            this.ringmute_ = codedInputStream.readBool();
                            break;
                        case 56:
                            this.charging_ = codedInputStream.readBool();
                            break;
                        case 64:
                            this.headset_ = codedInputStream.readBool();
                            break;
                        case 77:
                            this.batterylevel_ = codedInputStream.readFloat();
                            break;
                        case 80:
                            this.batterysaver_ = codedInputStream.readBool();
                            break;
                        case 88:
                            this.darkmode_ = codedInputStream.readBool();
                            break;
                        case fh.A0 /* 96 */:
                            this.airplane_ = codedInputStream.readBool();
                            break;
                        case 104:
                            this.dnd_ = codedInputStream.readBool();
                            break;
                        case ASSET_WRITE_ERROR_VALUE:
                            this.devicename_ = codedInputStream.readStringRequireUtf8();
                            break;
                        case 120:
                            this.time_ = codedInputStream.readUInt64();
                            break;
                        case OMSDK_JS_WRITE_FAILED_VALUE:
                            this.screenbright_ = codedInputStream.readFloat();
                            break;
                        case PRIVACY_URL_ERROR_VALUE:
                            this.jailbreak_ = codedInputStream.readBool();
                            break;
                        case 144:
                            this.lastbootup_ = codedInputStream.readUInt64();
                            break;
                        case 154:
                            this.access_ = codedInputStream.readStringRequireUtf8();
                            break;
                        case 162:
                            this.headsetname_ = codedInputStream.readStringRequireUtf8();
                            break;
                        case 168:
                            this.totalmem_ = codedInputStream.readUInt64();
                            break;
                        case 176:
                            this.atts_ = codedInputStream.readUInt32();
                            break;
                        case 186:
                            Context.Device.Connection connection = this.connection_;
                            Context.Device.Connection.Builder builder = connection != null ? connection.toBuilder() : null;
                            Context.Device.Connection connection2 = (Context.Device.Connection) codedInputStream.readMessage(Context.Device.Connection.parser(), extensionRegistryLite);
                            this.connection_ = connection2;
                            if (builder != null) {
                                builder.mergeFrom(connection2);
                                this.connection_ = builder.buildPartial();
                            }
                            break;
                        case 194:
                            Context.Device.AudioContext audioContext = this.audioContext_;
                            Context.Device.AudioContext.Builder builder2 = audioContext != null ? audioContext.toBuilder() : null;
                            Context.Device.AudioContext audioContext2 = (Context.Device.AudioContext) codedInputStream.readMessage(Context.Device.AudioContext.parser(), extensionRegistryLite);
                            this.audioContext_ = audioContext2;
                            if (builder2 != null) {
                                builder2.mergeFrom(audioContext2);
                                this.audioContext_ = builder2.buildPartial();
                            }
                            break;
                        case 202:
                            this.cpuname_ = codedInputStream.readStringRequireUtf8();
                            break;
                        case 210:
                            this.cpuvendor_ = codedInputStream.readStringRequireUtf8();
                            break;
                        case MRAID_JS_DOES_NOT_EXIST_VALUE:
                            this.gpuname_ = codedInputStream.readStringRequireUtf8();
                            break;
                        case PRIVACY_ICON_FALLBACK_ERROR_VALUE:
                            this.gpuvendor_ = codedInputStream.readStringRequireUtf8();
                            break;
                        case 234:
                            this.timezone_ = codedInputStream.readStringRequireUtf8();
                            break;
                        case 240:
                            this.freemem_ = codedInputStream.readUInt64();
                            break;
                        case 248:
                            this.apilevel_ = codedInputStream.readUInt32();
                            break;
                        case 258:
                            StringValue stringValue = this.simCarrier_;
                            StringValue.Builder builder3 = stringValue != null ? stringValue.toBuilder() : null;
                            StringValue stringValue2 = (StringValue) codedInputStream.readMessage(StringValue.parser(), extensionRegistryLite);
                            this.simCarrier_ = stringValue2;
                            if (builder3 != null) {
                                builder3.mergeFrom(stringValue2);
                                this.simCarrier_ = builder3.buildPartial();
                            }
                            break;
                        case 266:
                            StringValue stringValue3 = this.simCountry_;
                            StringValue.Builder builder4 = stringValue3 != null ? stringValue3.toBuilder() : null;
                            StringValue stringValue4 = (StringValue) codedInputStream.readMessage(StringValue.parser(), extensionRegistryLite);
                            this.simCountry_ = stringValue4;
                            if (builder4 != null) {
                                builder4.mergeFrom(stringValue4);
                                this.simCountry_ = builder4.buildPartial();
                            }
                            break;
                        case 274:
                            BoolValue boolValue = this.networkRoaming_;
                            BoolValue.Builder builder5 = boolValue != null ? boolValue.toBuilder() : null;
                            BoolValue boolValue2 = (BoolValue) codedInputStream.readMessage(BoolValue.parser(), extensionRegistryLite);
                            this.networkRoaming_ = boolValue2;
                            if (builder5 != null) {
                                builder5.mergeFrom(boolValue2);
                                this.networkRoaming_ = builder5.buildPartial();
                            }
                            break;
                        case 280:
                            this.lastbootupV2_ = codedInputStream.readUInt64();
                            break;
                        case 288:
                            int i3 = (i == true ? 1 : 0) & 2;
                            i = i;
                            if (i3 == 0) {
                                this.lastbootupHistory_ = GeneratedMessageV3.newLongList();
                                i = (i == true ? 1 : 0) | 2;
                            }
                            this.lastbootupHistory_.addLong(codedInputStream.readUInt64());
                            break;
                        case 290:
                            int iPushLimit = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                            int i4 = (i == true ? 1 : 0) & 2;
                            i = i;
                            if (i4 == 0) {
                                i = i;
                                if (codedInputStream.getBytesUntilLimit() > 0) {
                                    this.lastbootupHistory_ = GeneratedMessageV3.newLongList();
                                    i = (i == true ? 1 : 0) | 2;
                                }
                            }
                            while (codedInputStream.getBytesUntilLimit() > 0) {
                                this.lastbootupHistory_.addLong(codedInputStream.readUInt64());
                            }
                            codedInputStream.popLimit(iPushLimit);
                            break;
                        default:
                            if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                                z = true;
                            }
                            break;
                    }
                } catch (InvalidProtocolBufferException e) {
                    throw e.setUnfinishedMessage(this);
                } catch (IOException e2) {
                    throw new InvalidProtocolBufferException(e2).setUnfinishedMessage(this);
                }
            } catch (Throwable th) {
                if (((i == true ? 1 : 0) & 1) != 0) {
                    this.inputlanguage_ = this.inputlanguage_.getUnmodifiableView();
                }
                if (((i == true ? 1 : 0) & 2) != 0) {
                    this.lastbootupHistory_.makeImmutable();
                }
                this.unknownFields = builderNewBuilder.build();
                makeExtensionsImmutable();
                throw th;
            }
        }
        if (((i == true ? 1 : 0) & 1) != 0) {
            this.inputlanguage_ = this.inputlanguage_.getUnmodifiableView();
        }
        if (((i == true ? 1 : 0) & 2) != 0) {
            this.lastbootupHistory_.makeImmutable();
        }
        this.unknownFields = builderNewBuilder.build();
        makeExtensionsImmutable();
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return SDKContextProto.internal_static_bidmachine_protobuf_sdk_context_Device_descriptor;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return SDKContextProto.internal_static_bidmachine_protobuf_sdk_context_Device_fieldAccessorTable.ensureFieldAccessorsInitialized(Device.class, Builder.class);
    }

    @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
    public String getIfv() {
        Object obj = this.ifv_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.ifv_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
    public ByteString getIfvBytes() {
        Object obj = this.ifv_;
        if (obj instanceof String) {
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.ifv_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
    public String getBmIfv() {
        Object obj = this.bmIfv_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.bmIfv_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
    public ByteString getBmIfvBytes() {
        Object obj = this.bmIfv_;
        if (obj instanceof String) {
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.bmIfv_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
    public ProtocolStringList getInputlanguageList() {
        return this.inputlanguage_;
    }

    @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
    public int getInputlanguageCount() {
        return this.inputlanguage_.size();
    }

    @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
    public String getInputlanguage(int i) {
        return this.inputlanguage_.get(i);
    }

    @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
    public ByteString getInputlanguageBytes(int i) {
        return this.inputlanguage_.getByteString(i);
    }

    @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
    public long getDiskspace() {
        return this.diskspace_;
    }

    @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
    public long getTotaldisk() {
        return this.totaldisk_;
    }

    @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
    public boolean getRingmute() {
        return this.ringmute_;
    }

    @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
    public boolean getCharging() {
        return this.charging_;
    }

    @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
    public boolean getHeadset() {
        return this.headset_;
    }

    @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
    public float getBatterylevel() {
        return this.batterylevel_;
    }

    @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
    public boolean getBatterysaver() {
        return this.batterysaver_;
    }

    @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
    public boolean getDarkmode() {
        return this.darkmode_;
    }

    @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
    public boolean getAirplane() {
        return this.airplane_;
    }

    @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
    public boolean getDnd() {
        return this.dnd_;
    }

    @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
    public String getDevicename() {
        Object obj = this.devicename_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.devicename_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
    public ByteString getDevicenameBytes() {
        Object obj = this.devicename_;
        if (obj instanceof String) {
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.devicename_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
    public long getTime() {
        return this.time_;
    }

    @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
    public float getScreenbright() {
        return this.screenbright_;
    }

    @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
    public boolean getJailbreak() {
        return this.jailbreak_;
    }

    @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
    public long getLastbootup() {
        return this.lastbootup_;
    }

    @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
    public long getLastbootupV2() {
        return this.lastbootupV2_;
    }

    @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
    public List<Long> getLastbootupHistoryList() {
        return this.lastbootupHistory_;
    }

    @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
    public int getLastbootupHistoryCount() {
        return this.lastbootupHistory_.size();
    }

    @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
    public long getLastbootupHistory(int i) {
        return this.lastbootupHistory_.getLong(i);
    }

    @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
    public String getAccess() {
        Object obj = this.access_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.access_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
    public ByteString getAccessBytes() {
        Object obj = this.access_;
        if (obj instanceof String) {
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.access_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
    public String getHeadsetname() {
        Object obj = this.headsetname_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.headsetname_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
    public ByteString getHeadsetnameBytes() {
        Object obj = this.headsetname_;
        if (obj instanceof String) {
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.headsetname_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
    public long getTotalmem() {
        return this.totalmem_;
    }

    @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
    public int getAtts() {
        return this.atts_;
    }

    @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
    public String getCpuname() {
        Object obj = this.cpuname_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.cpuname_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
    public ByteString getCpunameBytes() {
        Object obj = this.cpuname_;
        if (obj instanceof String) {
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.cpuname_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
    public String getCpuvendor() {
        Object obj = this.cpuvendor_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.cpuvendor_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
    public ByteString getCpuvendorBytes() {
        Object obj = this.cpuvendor_;
        if (obj instanceof String) {
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.cpuvendor_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
    public String getGpuname() {
        Object obj = this.gpuname_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.gpuname_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
    public ByteString getGpunameBytes() {
        Object obj = this.gpuname_;
        if (obj instanceof String) {
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.gpuname_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
    public String getGpuvendor() {
        Object obj = this.gpuvendor_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.gpuvendor_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
    public ByteString getGpuvendorBytes() {
        Object obj = this.gpuvendor_;
        if (obj instanceof String) {
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.gpuvendor_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
    public String getTimezone() {
        Object obj = this.timezone_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.timezone_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
    public ByteString getTimezoneBytes() {
        Object obj = this.timezone_;
        if (obj instanceof String) {
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.timezone_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
    public long getFreemem() {
        return this.freemem_;
    }

    @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
    public int getApilevel() {
        return this.apilevel_;
    }

    @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
    public boolean hasSimCarrier() {
        return this.simCarrier_ != null;
    }

    @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
    public StringValue getSimCarrier() {
        StringValue stringValue = this.simCarrier_;
        return stringValue == null ? StringValue.getDefaultInstance() : stringValue;
    }

    @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
    public StringValueOrBuilder getSimCarrierOrBuilder() {
        return getSimCarrier();
    }

    @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
    public boolean hasSimCountry() {
        return this.simCountry_ != null;
    }

    @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
    public StringValue getSimCountry() {
        StringValue stringValue = this.simCountry_;
        return stringValue == null ? StringValue.getDefaultInstance() : stringValue;
    }

    @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
    public StringValueOrBuilder getSimCountryOrBuilder() {
        return getSimCountry();
    }

    @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
    public boolean hasNetworkRoaming() {
        return this.networkRoaming_ != null;
    }

    @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
    public BoolValue getNetworkRoaming() {
        BoolValue boolValue = this.networkRoaming_;
        return boolValue == null ? BoolValue.getDefaultInstance() : boolValue;
    }

    @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
    public BoolValueOrBuilder getNetworkRoamingOrBuilder() {
        return getNetworkRoaming();
    }

    @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
    public boolean hasConnection() {
        return this.connection_ != null;
    }

    @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
    public Context.Device.Connection getConnection() {
        Context.Device.Connection connection = this.connection_;
        return connection == null ? Context.Device.Connection.getDefaultInstance() : connection;
    }

    @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
    public Context.Device.ConnectionOrBuilder getConnectionOrBuilder() {
        return getConnection();
    }

    @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
    public boolean hasAudioContext() {
        return this.audioContext_ != null;
    }

    @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
    public Context.Device.AudioContext getAudioContext() {
        Context.Device.AudioContext audioContext = this.audioContext_;
        return audioContext == null ? Context.Device.AudioContext.getDefaultInstance() : audioContext;
    }

    @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
    public Context.Device.AudioContextOrBuilder getAudioContextOrBuilder() {
        return getAudioContext();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
    public final boolean isInitialized() {
        byte b = this.memoizedIsInitialized;
        if (b == 1) {
            return true;
        }
        if (b == 0) {
            return false;
        }
        this.memoizedIsInitialized = (byte) 1;
        return true;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        getSerializedSize();
        if (!getIfvBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.ifv_);
        }
        if (!getBmIfvBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.bmIfv_);
        }
        for (int i = 0; i < this.inputlanguage_.size(); i++) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.inputlanguage_.getRaw(i));
        }
        long j = this.diskspace_;
        if (j != 0) {
            codedOutputStream.writeUInt64(4, j);
        }
        long j2 = this.totaldisk_;
        if (j2 != 0) {
            codedOutputStream.writeUInt64(5, j2);
        }
        boolean z = this.ringmute_;
        if (z) {
            codedOutputStream.writeBool(6, z);
        }
        boolean z2 = this.charging_;
        if (z2) {
            codedOutputStream.writeBool(7, z2);
        }
        boolean z3 = this.headset_;
        if (z3) {
            codedOutputStream.writeBool(8, z3);
        }
        float f = this.batterylevel_;
        if (f != UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            codedOutputStream.writeFloat(9, f);
        }
        boolean z4 = this.batterysaver_;
        if (z4) {
            codedOutputStream.writeBool(10, z4);
        }
        boolean z5 = this.darkmode_;
        if (z5) {
            codedOutputStream.writeBool(11, z5);
        }
        boolean z6 = this.airplane_;
        if (z6) {
            codedOutputStream.writeBool(12, z6);
        }
        boolean z7 = this.dnd_;
        if (z7) {
            codedOutputStream.writeBool(13, z7);
        }
        if (!getDevicenameBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 14, this.devicename_);
        }
        long j3 = this.time_;
        if (j3 != 0) {
            codedOutputStream.writeUInt64(15, j3);
        }
        float f2 = this.screenbright_;
        if (f2 != UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            codedOutputStream.writeFloat(16, f2);
        }
        boolean z8 = this.jailbreak_;
        if (z8) {
            codedOutputStream.writeBool(17, z8);
        }
        long j4 = this.lastbootup_;
        if (j4 != 0) {
            codedOutputStream.writeUInt64(18, j4);
        }
        if (!getAccessBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 19, this.access_);
        }
        if (!getHeadsetnameBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 20, this.headsetname_);
        }
        long j5 = this.totalmem_;
        if (j5 != 0) {
            codedOutputStream.writeUInt64(21, j5);
        }
        int i2 = this.atts_;
        if (i2 != 0) {
            codedOutputStream.writeUInt32(22, i2);
        }
        if (this.connection_ != null) {
            codedOutputStream.writeMessage(23, getConnection());
        }
        if (this.audioContext_ != null) {
            codedOutputStream.writeMessage(24, getAudioContext());
        }
        if (!getCpunameBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 25, this.cpuname_);
        }
        if (!getCpuvendorBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 26, this.cpuvendor_);
        }
        if (!getGpunameBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 27, this.gpuname_);
        }
        if (!getGpuvendorBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 28, this.gpuvendor_);
        }
        if (!getTimezoneBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 29, this.timezone_);
        }
        long j6 = this.freemem_;
        if (j6 != 0) {
            codedOutputStream.writeUInt64(30, j6);
        }
        int i3 = this.apilevel_;
        if (i3 != 0) {
            codedOutputStream.writeUInt32(31, i3);
        }
        if (this.simCarrier_ != null) {
            codedOutputStream.writeMessage(32, getSimCarrier());
        }
        if (this.simCountry_ != null) {
            codedOutputStream.writeMessage(33, getSimCountry());
        }
        if (this.networkRoaming_ != null) {
            codedOutputStream.writeMessage(34, getNetworkRoaming());
        }
        long j7 = this.lastbootupV2_;
        if (j7 != 0) {
            codedOutputStream.writeUInt64(35, j7);
        }
        if (getLastbootupHistoryList().size() > 0) {
            codedOutputStream.writeUInt32NoTag(290);
            codedOutputStream.writeUInt32NoTag(this.lastbootupHistoryMemoizedSerializedSize);
        }
        for (int i4 = 0; i4 < this.lastbootupHistory_.size(); i4++) {
            codedOutputStream.writeUInt64NoTag(this.lastbootupHistory_.getLong(i4));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        int iComputeStringSize = !getIfvBytes().isEmpty() ? GeneratedMessageV3.computeStringSize(1, this.ifv_) : 0;
        if (!getBmIfvBytes().isEmpty()) {
            iComputeStringSize += GeneratedMessageV3.computeStringSize(2, this.bmIfv_);
        }
        int iComputeStringSizeNoTag = 0;
        for (int i2 = 0; i2 < this.inputlanguage_.size(); i2++) {
            iComputeStringSizeNoTag += GeneratedMessageV3.computeStringSizeNoTag(this.inputlanguage_.getRaw(i2));
        }
        int size = iComputeStringSize + iComputeStringSizeNoTag + getInputlanguageList().size();
        long j = this.diskspace_;
        if (j != 0) {
            size += CodedOutputStream.computeUInt64Size(4, j);
        }
        long j2 = this.totaldisk_;
        if (j2 != 0) {
            size += CodedOutputStream.computeUInt64Size(5, j2);
        }
        boolean z = this.ringmute_;
        if (z) {
            size += CodedOutputStream.computeBoolSize(6, z);
        }
        boolean z2 = this.charging_;
        if (z2) {
            size += CodedOutputStream.computeBoolSize(7, z2);
        }
        boolean z3 = this.headset_;
        if (z3) {
            size += CodedOutputStream.computeBoolSize(8, z3);
        }
        float f = this.batterylevel_;
        if (f != UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            size += CodedOutputStream.computeFloatSize(9, f);
        }
        boolean z4 = this.batterysaver_;
        if (z4) {
            size += CodedOutputStream.computeBoolSize(10, z4);
        }
        boolean z5 = this.darkmode_;
        if (z5) {
            size += CodedOutputStream.computeBoolSize(11, z5);
        }
        boolean z6 = this.airplane_;
        if (z6) {
            size += CodedOutputStream.computeBoolSize(12, z6);
        }
        boolean z7 = this.dnd_;
        if (z7) {
            size += CodedOutputStream.computeBoolSize(13, z7);
        }
        if (!getDevicenameBytes().isEmpty()) {
            size += GeneratedMessageV3.computeStringSize(14, this.devicename_);
        }
        long j3 = this.time_;
        if (j3 != 0) {
            size += CodedOutputStream.computeUInt64Size(15, j3);
        }
        float f2 = this.screenbright_;
        if (f2 != UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            size += CodedOutputStream.computeFloatSize(16, f2);
        }
        boolean z8 = this.jailbreak_;
        if (z8) {
            size += CodedOutputStream.computeBoolSize(17, z8);
        }
        long j4 = this.lastbootup_;
        if (j4 != 0) {
            size += CodedOutputStream.computeUInt64Size(18, j4);
        }
        if (!getAccessBytes().isEmpty()) {
            size += GeneratedMessageV3.computeStringSize(19, this.access_);
        }
        if (!getHeadsetnameBytes().isEmpty()) {
            size += GeneratedMessageV3.computeStringSize(20, this.headsetname_);
        }
        long j5 = this.totalmem_;
        if (j5 != 0) {
            size += CodedOutputStream.computeUInt64Size(21, j5);
        }
        int i3 = this.atts_;
        if (i3 != 0) {
            size += CodedOutputStream.computeUInt32Size(22, i3);
        }
        if (this.connection_ != null) {
            size += CodedOutputStream.computeMessageSize(23, getConnection());
        }
        if (this.audioContext_ != null) {
            size += CodedOutputStream.computeMessageSize(24, getAudioContext());
        }
        if (!getCpunameBytes().isEmpty()) {
            size += GeneratedMessageV3.computeStringSize(25, this.cpuname_);
        }
        if (!getCpuvendorBytes().isEmpty()) {
            size += GeneratedMessageV3.computeStringSize(26, this.cpuvendor_);
        }
        if (!getGpunameBytes().isEmpty()) {
            size += GeneratedMessageV3.computeStringSize(27, this.gpuname_);
        }
        if (!getGpuvendorBytes().isEmpty()) {
            size += GeneratedMessageV3.computeStringSize(28, this.gpuvendor_);
        }
        if (!getTimezoneBytes().isEmpty()) {
            size += GeneratedMessageV3.computeStringSize(29, this.timezone_);
        }
        long j6 = this.freemem_;
        if (j6 != 0) {
            size += CodedOutputStream.computeUInt64Size(30, j6);
        }
        int i4 = this.apilevel_;
        if (i4 != 0) {
            size += CodedOutputStream.computeUInt32Size(31, i4);
        }
        if (this.simCarrier_ != null) {
            size += CodedOutputStream.computeMessageSize(32, getSimCarrier());
        }
        if (this.simCountry_ != null) {
            size += CodedOutputStream.computeMessageSize(33, getSimCountry());
        }
        if (this.networkRoaming_ != null) {
            size += CodedOutputStream.computeMessageSize(34, getNetworkRoaming());
        }
        long j7 = this.lastbootupV2_;
        if (j7 != 0) {
            size += CodedOutputStream.computeUInt64Size(35, j7);
        }
        int iComputeUInt64SizeNoTag = 0;
        for (int i5 = 0; i5 < this.lastbootupHistory_.size(); i5++) {
            iComputeUInt64SizeNoTag += CodedOutputStream.computeUInt64SizeNoTag(this.lastbootupHistory_.getLong(i5));
        }
        int iComputeInt32SizeNoTag = size + iComputeUInt64SizeNoTag;
        if (!getLastbootupHistoryList().isEmpty()) {
            iComputeInt32SizeNoTag = iComputeInt32SizeNoTag + 2 + CodedOutputStream.computeInt32SizeNoTag(iComputeUInt64SizeNoTag);
        }
        this.lastbootupHistoryMemoizedSerializedSize = iComputeUInt64SizeNoTag;
        int serializedSize = iComputeInt32SizeNoTag + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Device)) {
            return super.equals(obj);
        }
        Device device = (Device) obj;
        if (!getIfv().equals(device.getIfv()) || !getBmIfv().equals(device.getBmIfv()) || !getInputlanguageList().equals(device.getInputlanguageList()) || getDiskspace() != device.getDiskspace() || getTotaldisk() != device.getTotaldisk() || getRingmute() != device.getRingmute() || getCharging() != device.getCharging() || getHeadset() != device.getHeadset() || Float.floatToIntBits(getBatterylevel()) != Float.floatToIntBits(device.getBatterylevel()) || getBatterysaver() != device.getBatterysaver() || getDarkmode() != device.getDarkmode() || getAirplane() != device.getAirplane() || getDnd() != device.getDnd() || !getDevicename().equals(device.getDevicename()) || getTime() != device.getTime() || Float.floatToIntBits(getScreenbright()) != Float.floatToIntBits(device.getScreenbright()) || getJailbreak() != device.getJailbreak() || getLastbootup() != device.getLastbootup() || getLastbootupV2() != device.getLastbootupV2() || !getLastbootupHistoryList().equals(device.getLastbootupHistoryList()) || !getAccess().equals(device.getAccess()) || !getHeadsetname().equals(device.getHeadsetname()) || getTotalmem() != device.getTotalmem() || getAtts() != device.getAtts() || !getCpuname().equals(device.getCpuname()) || !getCpuvendor().equals(device.getCpuvendor()) || !getGpuname().equals(device.getGpuname()) || !getGpuvendor().equals(device.getGpuvendor()) || !getTimezone().equals(device.getTimezone()) || getFreemem() != device.getFreemem() || getApilevel() != device.getApilevel() || hasSimCarrier() != device.hasSimCarrier()) {
            return false;
        }
        if ((hasSimCarrier() && !getSimCarrier().equals(device.getSimCarrier())) || hasSimCountry() != device.hasSimCountry()) {
            return false;
        }
        if ((hasSimCountry() && !getSimCountry().equals(device.getSimCountry())) || hasNetworkRoaming() != device.hasNetworkRoaming()) {
            return false;
        }
        if ((hasNetworkRoaming() && !getNetworkRoaming().equals(device.getNetworkRoaming())) || hasConnection() != device.hasConnection()) {
            return false;
        }
        if ((!hasConnection() || getConnection().equals(device.getConnection())) && hasAudioContext() == device.hasAudioContext()) {
            return (!hasAudioContext() || getAudioContext().equals(device.getAudioContext())) && this.unknownFields.equals(device.unknownFields);
        }
        return false;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public int hashCode() {
        int i = this.memoizedHashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getIfv().hashCode()) * 37) + 2) * 53) + getBmIfv().hashCode();
        if (getInputlanguageCount() > 0) {
            iHashCode = (((iHashCode * 37) + 3) * 53) + getInputlanguageList().hashCode();
        }
        int iHashLong = (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((iHashCode * 37) + 4) * 53) + Internal.hashLong(getDiskspace())) * 37) + 5) * 53) + Internal.hashLong(getTotaldisk())) * 37) + 6) * 53) + Internal.hashBoolean(getRingmute())) * 37) + 7) * 53) + Internal.hashBoolean(getCharging())) * 37) + 8) * 53) + Internal.hashBoolean(getHeadset())) * 37) + 9) * 53) + Float.floatToIntBits(getBatterylevel())) * 37) + 10) * 53) + Internal.hashBoolean(getBatterysaver())) * 37) + 11) * 53) + Internal.hashBoolean(getDarkmode())) * 37) + 12) * 53) + Internal.hashBoolean(getAirplane())) * 37) + 13) * 53) + Internal.hashBoolean(getDnd())) * 37) + 14) * 53) + getDevicename().hashCode()) * 37) + 15) * 53) + Internal.hashLong(getTime())) * 37) + 16) * 53) + Float.floatToIntBits(getScreenbright())) * 37) + 17) * 53) + Internal.hashBoolean(getJailbreak())) * 37) + 18) * 53) + Internal.hashLong(getLastbootup())) * 37) + 35) * 53) + Internal.hashLong(getLastbootupV2());
        if (getLastbootupHistoryCount() > 0) {
            iHashLong = (((iHashLong * 37) + 36) * 53) + getLastbootupHistoryList().hashCode();
        }
        int iHashCode2 = (((((((((((((((((((((((((((((((((((((((((((iHashLong * 37) + 19) * 53) + getAccess().hashCode()) * 37) + 20) * 53) + getHeadsetname().hashCode()) * 37) + 21) * 53) + Internal.hashLong(getTotalmem())) * 37) + 22) * 53) + getAtts()) * 37) + 25) * 53) + getCpuname().hashCode()) * 37) + 26) * 53) + getCpuvendor().hashCode()) * 37) + 27) * 53) + getGpuname().hashCode()) * 37) + 28) * 53) + getGpuvendor().hashCode()) * 37) + 29) * 53) + getTimezone().hashCode()) * 37) + 30) * 53) + Internal.hashLong(getFreemem())) * 37) + 31) * 53) + getApilevel();
        if (hasSimCarrier()) {
            iHashCode2 = (((iHashCode2 * 37) + 32) * 53) + getSimCarrier().hashCode();
        }
        if (hasSimCountry()) {
            iHashCode2 = (((iHashCode2 * 37) + 33) * 53) + getSimCountry().hashCode();
        }
        if (hasNetworkRoaming()) {
            iHashCode2 = (((iHashCode2 * 37) + 34) * 53) + getNetworkRoaming().hashCode();
        }
        if (hasConnection()) {
            iHashCode2 = (((iHashCode2 * 37) + 23) * 53) + getConnection().hashCode();
        }
        if (hasAudioContext()) {
            iHashCode2 = (((iHashCode2 * 37) + 24) * 53) + getAudioContext().hashCode();
        }
        int iHashCode3 = (iHashCode2 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode3;
        return iHashCode3;
    }

    public static Device parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static Device parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
    }

    public static Device parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    public static Device parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, extensionRegistryLite);
    }

    public static Device parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    public static Device parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, extensionRegistryLite);
    }

    public static Device parseFrom(InputStream inputStream) throws IOException {
        return (Device) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Device parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Device) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static Device parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Device) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Device parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Device) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static Device parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (Device) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
    }

    public static Device parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Device) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Builder newBuilder(Device device) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(device);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
        return new Builder(builderParent);
    }

    public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements DeviceOrBuilder {
        private Object access_;
        private boolean airplane_;
        private int apilevel_;
        private int atts_;
        private SingleFieldBuilderV3<Context.Device.AudioContext, Context.Device.AudioContext.Builder, Context.Device.AudioContextOrBuilder> audioContextBuilder_;
        private Context.Device.AudioContext audioContext_;
        private float batterylevel_;
        private boolean batterysaver_;
        private int bitField0_;
        private Object bmIfv_;
        private boolean charging_;
        private SingleFieldBuilderV3<Context.Device.Connection, Context.Device.Connection.Builder, Context.Device.ConnectionOrBuilder> connectionBuilder_;
        private Context.Device.Connection connection_;
        private Object cpuname_;
        private Object cpuvendor_;
        private boolean darkmode_;
        private Object devicename_;
        private long diskspace_;
        private boolean dnd_;
        private long freemem_;
        private Object gpuname_;
        private Object gpuvendor_;
        private boolean headset_;
        private Object headsetname_;
        private Object ifv_;
        private LazyStringList inputlanguage_;
        private boolean jailbreak_;
        private Internal.LongList lastbootupHistory_;
        private long lastbootupV2_;
        private long lastbootup_;
        private SingleFieldBuilderV3<BoolValue, BoolValue.Builder, BoolValueOrBuilder> networkRoamingBuilder_;
        private BoolValue networkRoaming_;
        private boolean ringmute_;
        private float screenbright_;
        private SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> simCarrierBuilder_;
        private StringValue simCarrier_;
        private SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> simCountryBuilder_;
        private StringValue simCountry_;
        private long time_;
        private Object timezone_;
        private long totaldisk_;
        private long totalmem_;

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SDKContextProto.internal_static_bidmachine_protobuf_sdk_context_Device_descriptor;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return SDKContextProto.internal_static_bidmachine_protobuf_sdk_context_Device_fieldAccessorTable.ensureFieldAccessorsInitialized(Device.class, Builder.class);
        }

        private Builder() {
            this.ifv_ = "";
            this.bmIfv_ = "";
            this.inputlanguage_ = LazyStringArrayList.EMPTY;
            this.devicename_ = "";
            this.lastbootupHistory_ = GeneratedMessageV3.emptyLongList();
            this.access_ = "";
            this.headsetname_ = "";
            this.cpuname_ = "";
            this.cpuvendor_ = "";
            this.gpuname_ = "";
            this.gpuvendor_ = "";
            this.timezone_ = "";
            maybeForceBuilderInitialization();
        }

        private Builder(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            this.ifv_ = "";
            this.bmIfv_ = "";
            this.inputlanguage_ = LazyStringArrayList.EMPTY;
            this.devicename_ = "";
            this.lastbootupHistory_ = GeneratedMessageV3.emptyLongList();
            this.access_ = "";
            this.headsetname_ = "";
            this.cpuname_ = "";
            this.cpuvendor_ = "";
            this.gpuname_ = "";
            this.gpuvendor_ = "";
            this.timezone_ = "";
            maybeForceBuilderInitialization();
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Builder clear() {
            super.clear();
            this.ifv_ = "";
            this.bmIfv_ = "";
            this.inputlanguage_ = LazyStringArrayList.EMPTY;
            this.bitField0_ &= -2;
            this.diskspace_ = 0L;
            this.totaldisk_ = 0L;
            this.ringmute_ = false;
            this.charging_ = false;
            this.headset_ = false;
            this.batterylevel_ = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
            this.batterysaver_ = false;
            this.darkmode_ = false;
            this.airplane_ = false;
            this.dnd_ = false;
            this.devicename_ = "";
            this.time_ = 0L;
            this.screenbright_ = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
            this.jailbreak_ = false;
            this.lastbootup_ = 0L;
            this.lastbootupV2_ = 0L;
            this.lastbootupHistory_ = GeneratedMessageV3.emptyLongList();
            this.bitField0_ &= -3;
            this.access_ = "";
            this.headsetname_ = "";
            this.totalmem_ = 0L;
            this.atts_ = 0;
            this.cpuname_ = "";
            this.cpuvendor_ = "";
            this.gpuname_ = "";
            this.gpuvendor_ = "";
            this.timezone_ = "";
            this.freemem_ = 0L;
            this.apilevel_ = 0;
            if (this.simCarrierBuilder_ == null) {
                this.simCarrier_ = null;
            } else {
                this.simCarrier_ = null;
                this.simCarrierBuilder_ = null;
            }
            if (this.simCountryBuilder_ == null) {
                this.simCountry_ = null;
            } else {
                this.simCountry_ = null;
                this.simCountryBuilder_ = null;
            }
            if (this.networkRoamingBuilder_ == null) {
                this.networkRoaming_ = null;
            } else {
                this.networkRoaming_ = null;
                this.networkRoamingBuilder_ = null;
            }
            if (this.connectionBuilder_ == null) {
                this.connection_ = null;
            } else {
                this.connection_ = null;
                this.connectionBuilder_ = null;
            }
            if (this.audioContextBuilder_ == null) {
                this.audioContext_ = null;
                return this;
            }
            this.audioContext_ = null;
            this.audioContextBuilder_ = null;
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return SDKContextProto.internal_static_bidmachine_protobuf_sdk_context_Device_descriptor;
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        /* JADX INFO: renamed from: getDefaultInstanceForType */
        public Device mo687getDefaultInstanceForType() {
            return Device.getDefaultInstance();
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Device build() {
            Device deviceBuildPartial = buildPartial();
            if (deviceBuildPartial.isInitialized()) {
                return deviceBuildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) deviceBuildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Device buildPartial() {
            Device device = new Device(this);
            device.ifv_ = this.ifv_;
            device.bmIfv_ = this.bmIfv_;
            if ((this.bitField0_ & 1) != 0) {
                this.inputlanguage_ = this.inputlanguage_.getUnmodifiableView();
                this.bitField0_ &= -2;
            }
            device.inputlanguage_ = this.inputlanguage_;
            device.diskspace_ = this.diskspace_;
            device.totaldisk_ = this.totaldisk_;
            device.ringmute_ = this.ringmute_;
            device.charging_ = this.charging_;
            device.headset_ = this.headset_;
            device.batterylevel_ = this.batterylevel_;
            device.batterysaver_ = this.batterysaver_;
            device.darkmode_ = this.darkmode_;
            device.airplane_ = this.airplane_;
            device.dnd_ = this.dnd_;
            device.devicename_ = this.devicename_;
            device.time_ = this.time_;
            device.screenbright_ = this.screenbright_;
            device.jailbreak_ = this.jailbreak_;
            device.lastbootup_ = this.lastbootup_;
            device.lastbootupV2_ = this.lastbootupV2_;
            if ((this.bitField0_ & 2) != 0) {
                this.lastbootupHistory_.makeImmutable();
                this.bitField0_ &= -3;
            }
            device.lastbootupHistory_ = this.lastbootupHistory_;
            device.access_ = this.access_;
            device.headsetname_ = this.headsetname_;
            device.totalmem_ = this.totalmem_;
            device.atts_ = this.atts_;
            device.cpuname_ = this.cpuname_;
            device.cpuvendor_ = this.cpuvendor_;
            device.gpuname_ = this.gpuname_;
            device.gpuvendor_ = this.gpuvendor_;
            device.timezone_ = this.timezone_;
            device.freemem_ = this.freemem_;
            device.apilevel_ = this.apilevel_;
            SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.simCarrierBuilder_;
            if (singleFieldBuilderV3 == null) {
                device.simCarrier_ = this.simCarrier_;
            } else {
                device.simCarrier_ = (StringValue) singleFieldBuilderV3.build();
            }
            SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV32 = this.simCountryBuilder_;
            if (singleFieldBuilderV32 == null) {
                device.simCountry_ = this.simCountry_;
            } else {
                device.simCountry_ = (StringValue) singleFieldBuilderV32.build();
            }
            SingleFieldBuilderV3<BoolValue, BoolValue.Builder, BoolValueOrBuilder> singleFieldBuilderV33 = this.networkRoamingBuilder_;
            if (singleFieldBuilderV33 == null) {
                device.networkRoaming_ = this.networkRoaming_;
            } else {
                device.networkRoaming_ = (BoolValue) singleFieldBuilderV33.build();
            }
            SingleFieldBuilderV3<Context.Device.Connection, Context.Device.Connection.Builder, Context.Device.ConnectionOrBuilder> singleFieldBuilderV34 = this.connectionBuilder_;
            if (singleFieldBuilderV34 == null) {
                device.connection_ = this.connection_;
            } else {
                device.connection_ = (Context.Device.Connection) singleFieldBuilderV34.build();
            }
            SingleFieldBuilderV3<Context.Device.AudioContext, Context.Device.AudioContext.Builder, Context.Device.AudioContextOrBuilder> singleFieldBuilderV35 = this.audioContextBuilder_;
            if (singleFieldBuilderV35 == null) {
                device.audioContext_ = this.audioContext_;
            } else {
                device.audioContext_ = (Context.Device.AudioContext) singleFieldBuilderV35.build();
            }
            onBuilt();
            return device;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder
        /* JADX INFO: renamed from: clone */
        public Builder mo671clone() {
            return (Builder) super.mo671clone();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.setField(fieldDescriptor, obj);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            return (Builder) super.clearField(fieldDescriptor);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
            return (Builder) super.clearOneof(oneofDescriptor);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i, Object obj) {
            return (Builder) super.setRepeatedField(fieldDescriptor, i, obj);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public Builder mergeFrom(Message message) {
            if (message instanceof Device) {
                return mergeFrom((Device) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public Builder mergeFrom(Device device) {
            if (device == Device.getDefaultInstance()) {
                return this;
            }
            if (!device.getIfv().isEmpty()) {
                this.ifv_ = device.ifv_;
                onChanged();
            }
            if (!device.getBmIfv().isEmpty()) {
                this.bmIfv_ = device.bmIfv_;
                onChanged();
            }
            if (!device.inputlanguage_.isEmpty()) {
                if (this.inputlanguage_.isEmpty()) {
                    this.inputlanguage_ = device.inputlanguage_;
                    this.bitField0_ &= -2;
                } else {
                    ensureInputlanguageIsMutable();
                    this.inputlanguage_.addAll(device.inputlanguage_);
                }
                onChanged();
            }
            if (device.getDiskspace() != 0) {
                setDiskspace(device.getDiskspace());
            }
            if (device.getTotaldisk() != 0) {
                setTotaldisk(device.getTotaldisk());
            }
            if (device.getRingmute()) {
                setRingmute(device.getRingmute());
            }
            if (device.getCharging()) {
                setCharging(device.getCharging());
            }
            if (device.getHeadset()) {
                setHeadset(device.getHeadset());
            }
            if (device.getBatterylevel() != UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                setBatterylevel(device.getBatterylevel());
            }
            if (device.getBatterysaver()) {
                setBatterysaver(device.getBatterysaver());
            }
            if (device.getDarkmode()) {
                setDarkmode(device.getDarkmode());
            }
            if (device.getAirplane()) {
                setAirplane(device.getAirplane());
            }
            if (device.getDnd()) {
                setDnd(device.getDnd());
            }
            if (!device.getDevicename().isEmpty()) {
                this.devicename_ = device.devicename_;
                onChanged();
            }
            if (device.getTime() != 0) {
                setTime(device.getTime());
            }
            if (device.getScreenbright() != UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                setScreenbright(device.getScreenbright());
            }
            if (device.getJailbreak()) {
                setJailbreak(device.getJailbreak());
            }
            if (device.getLastbootup() != 0) {
                setLastbootup(device.getLastbootup());
            }
            if (device.getLastbootupV2() != 0) {
                setLastbootupV2(device.getLastbootupV2());
            }
            if (!device.lastbootupHistory_.isEmpty()) {
                if (this.lastbootupHistory_.isEmpty()) {
                    this.lastbootupHistory_ = device.lastbootupHistory_;
                    this.bitField0_ &= -3;
                } else {
                    ensureLastbootupHistoryIsMutable();
                    this.lastbootupHistory_.addAll(device.lastbootupHistory_);
                }
                onChanged();
            }
            if (!device.getAccess().isEmpty()) {
                this.access_ = device.access_;
                onChanged();
            }
            if (!device.getHeadsetname().isEmpty()) {
                this.headsetname_ = device.headsetname_;
                onChanged();
            }
            if (device.getTotalmem() != 0) {
                setTotalmem(device.getTotalmem());
            }
            if (device.getAtts() != 0) {
                setAtts(device.getAtts());
            }
            if (!device.getCpuname().isEmpty()) {
                this.cpuname_ = device.cpuname_;
                onChanged();
            }
            if (!device.getCpuvendor().isEmpty()) {
                this.cpuvendor_ = device.cpuvendor_;
                onChanged();
            }
            if (!device.getGpuname().isEmpty()) {
                this.gpuname_ = device.gpuname_;
                onChanged();
            }
            if (!device.getGpuvendor().isEmpty()) {
                this.gpuvendor_ = device.gpuvendor_;
                onChanged();
            }
            if (!device.getTimezone().isEmpty()) {
                this.timezone_ = device.timezone_;
                onChanged();
            }
            if (device.getFreemem() != 0) {
                setFreemem(device.getFreemem());
            }
            if (device.getApilevel() != 0) {
                setApilevel(device.getApilevel());
            }
            if (device.hasSimCarrier()) {
                mergeSimCarrier(device.getSimCarrier());
            }
            if (device.hasSimCountry()) {
                mergeSimCountry(device.getSimCountry());
            }
            if (device.hasNetworkRoaming()) {
                mergeNetworkRoaming(device.getNetworkRoaming());
            }
            if (device.hasConnection()) {
                mergeConnection(device.getConnection());
            }
            if (device.hasAudioContext()) {
                mergeAudioContext(device.getAudioContext());
            }
            mergeUnknownFields(((GeneratedMessageV3) device).unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public io.bidmachine.protobuf.sdk.Device.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r3, com.explorestack.protobuf.ExtensionRegistryLite r4) throws java.lang.Throwable {
            /*
                r2 = this;
                r0 = 0
                com.explorestack.protobuf.Parser r1 = io.bidmachine.protobuf.sdk.Device.access$4200()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                io.bidmachine.protobuf.sdk.Device r3 = (io.bidmachine.protobuf.sdk.Device) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.mergeFrom(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.explorestack.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                io.bidmachine.protobuf.sdk.Device r4 = (io.bidmachine.protobuf.sdk.Device) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.mergeFrom(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.sdk.Device.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):io.bidmachine.protobuf.sdk.Device$Builder");
        }

        @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
        public String getIfv() {
            Object obj = this.ifv_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.ifv_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
        public ByteString getIfvBytes() {
            Object obj = this.ifv_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.ifv_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        public Builder setIfv(String str) {
            str.getClass();
            this.ifv_ = str;
            onChanged();
            return this;
        }

        public Builder clearIfv() {
            this.ifv_ = Device.getDefaultInstance().getIfv();
            onChanged();
            return this;
        }

        public Builder setIfvBytes(ByteString byteString) {
            byteString.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.ifv_ = byteString;
            onChanged();
            return this;
        }

        @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
        public String getBmIfv() {
            Object obj = this.bmIfv_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.bmIfv_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
        public ByteString getBmIfvBytes() {
            Object obj = this.bmIfv_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.bmIfv_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        public Builder setBmIfv(String str) {
            str.getClass();
            this.bmIfv_ = str;
            onChanged();
            return this;
        }

        public Builder clearBmIfv() {
            this.bmIfv_ = Device.getDefaultInstance().getBmIfv();
            onChanged();
            return this;
        }

        public Builder setBmIfvBytes(ByteString byteString) {
            byteString.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.bmIfv_ = byteString;
            onChanged();
            return this;
        }

        private void ensureInputlanguageIsMutable() {
            if ((this.bitField0_ & 1) == 0) {
                this.inputlanguage_ = new LazyStringArrayList(this.inputlanguage_);
                this.bitField0_ |= 1;
            }
        }

        @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
        public ProtocolStringList getInputlanguageList() {
            return this.inputlanguage_.getUnmodifiableView();
        }

        @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
        public int getInputlanguageCount() {
            return this.inputlanguage_.size();
        }

        @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
        public String getInputlanguage(int i) {
            return this.inputlanguage_.get(i);
        }

        @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
        public ByteString getInputlanguageBytes(int i) {
            return this.inputlanguage_.getByteString(i);
        }

        public Builder setInputlanguage(int i, String str) {
            str.getClass();
            ensureInputlanguageIsMutable();
            this.inputlanguage_.set(i, str);
            onChanged();
            return this;
        }

        public Builder addInputlanguage(String str) {
            str.getClass();
            ensureInputlanguageIsMutable();
            this.inputlanguage_.add(str);
            onChanged();
            return this;
        }

        public Builder addAllInputlanguage(Iterable<String> iterable) {
            ensureInputlanguageIsMutable();
            AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.inputlanguage_);
            onChanged();
            return this;
        }

        public Builder clearInputlanguage() {
            this.inputlanguage_ = LazyStringArrayList.EMPTY;
            this.bitField0_ &= -2;
            onChanged();
            return this;
        }

        public Builder addInputlanguageBytes(ByteString byteString) {
            byteString.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            ensureInputlanguageIsMutable();
            this.inputlanguage_.add(byteString);
            onChanged();
            return this;
        }

        @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
        public long getDiskspace() {
            return this.diskspace_;
        }

        public Builder setDiskspace(long j) {
            this.diskspace_ = j;
            onChanged();
            return this;
        }

        public Builder clearDiskspace() {
            this.diskspace_ = 0L;
            onChanged();
            return this;
        }

        @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
        public long getTotaldisk() {
            return this.totaldisk_;
        }

        public Builder setTotaldisk(long j) {
            this.totaldisk_ = j;
            onChanged();
            return this;
        }

        public Builder clearTotaldisk() {
            this.totaldisk_ = 0L;
            onChanged();
            return this;
        }

        @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
        public boolean getRingmute() {
            return this.ringmute_;
        }

        public Builder setRingmute(boolean z) {
            this.ringmute_ = z;
            onChanged();
            return this;
        }

        public Builder clearRingmute() {
            this.ringmute_ = false;
            onChanged();
            return this;
        }

        @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
        public boolean getCharging() {
            return this.charging_;
        }

        public Builder setCharging(boolean z) {
            this.charging_ = z;
            onChanged();
            return this;
        }

        public Builder clearCharging() {
            this.charging_ = false;
            onChanged();
            return this;
        }

        @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
        public boolean getHeadset() {
            return this.headset_;
        }

        public Builder setHeadset(boolean z) {
            this.headset_ = z;
            onChanged();
            return this;
        }

        public Builder clearHeadset() {
            this.headset_ = false;
            onChanged();
            return this;
        }

        @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
        public float getBatterylevel() {
            return this.batterylevel_;
        }

        public Builder setBatterylevel(float f) {
            this.batterylevel_ = f;
            onChanged();
            return this;
        }

        public Builder clearBatterylevel() {
            this.batterylevel_ = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
            onChanged();
            return this;
        }

        @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
        public boolean getBatterysaver() {
            return this.batterysaver_;
        }

        public Builder setBatterysaver(boolean z) {
            this.batterysaver_ = z;
            onChanged();
            return this;
        }

        public Builder clearBatterysaver() {
            this.batterysaver_ = false;
            onChanged();
            return this;
        }

        @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
        public boolean getDarkmode() {
            return this.darkmode_;
        }

        public Builder setDarkmode(boolean z) {
            this.darkmode_ = z;
            onChanged();
            return this;
        }

        public Builder clearDarkmode() {
            this.darkmode_ = false;
            onChanged();
            return this;
        }

        @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
        public boolean getAirplane() {
            return this.airplane_;
        }

        public Builder setAirplane(boolean z) {
            this.airplane_ = z;
            onChanged();
            return this;
        }

        public Builder clearAirplane() {
            this.airplane_ = false;
            onChanged();
            return this;
        }

        @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
        public boolean getDnd() {
            return this.dnd_;
        }

        public Builder setDnd(boolean z) {
            this.dnd_ = z;
            onChanged();
            return this;
        }

        public Builder clearDnd() {
            this.dnd_ = false;
            onChanged();
            return this;
        }

        @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
        public String getDevicename() {
            Object obj = this.devicename_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.devicename_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
        public ByteString getDevicenameBytes() {
            Object obj = this.devicename_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.devicename_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        public Builder setDevicename(String str) {
            str.getClass();
            this.devicename_ = str;
            onChanged();
            return this;
        }

        public Builder clearDevicename() {
            this.devicename_ = Device.getDefaultInstance().getDevicename();
            onChanged();
            return this;
        }

        public Builder setDevicenameBytes(ByteString byteString) {
            byteString.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.devicename_ = byteString;
            onChanged();
            return this;
        }

        @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
        public long getTime() {
            return this.time_;
        }

        public Builder setTime(long j) {
            this.time_ = j;
            onChanged();
            return this;
        }

        public Builder clearTime() {
            this.time_ = 0L;
            onChanged();
            return this;
        }

        @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
        public float getScreenbright() {
            return this.screenbright_;
        }

        public Builder setScreenbright(float f) {
            this.screenbright_ = f;
            onChanged();
            return this;
        }

        public Builder clearScreenbright() {
            this.screenbright_ = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
            onChanged();
            return this;
        }

        @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
        public boolean getJailbreak() {
            return this.jailbreak_;
        }

        public Builder setJailbreak(boolean z) {
            this.jailbreak_ = z;
            onChanged();
            return this;
        }

        public Builder clearJailbreak() {
            this.jailbreak_ = false;
            onChanged();
            return this;
        }

        @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
        public long getLastbootup() {
            return this.lastbootup_;
        }

        public Builder setLastbootup(long j) {
            this.lastbootup_ = j;
            onChanged();
            return this;
        }

        public Builder clearLastbootup() {
            this.lastbootup_ = 0L;
            onChanged();
            return this;
        }

        @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
        public long getLastbootupV2() {
            return this.lastbootupV2_;
        }

        public Builder setLastbootupV2(long j) {
            this.lastbootupV2_ = j;
            onChanged();
            return this;
        }

        public Builder clearLastbootupV2() {
            this.lastbootupV2_ = 0L;
            onChanged();
            return this;
        }

        private void ensureLastbootupHistoryIsMutable() {
            if ((this.bitField0_ & 2) == 0) {
                this.lastbootupHistory_ = GeneratedMessageV3.mutableCopy(this.lastbootupHistory_);
                this.bitField0_ |= 2;
            }
        }

        @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
        public List<Long> getLastbootupHistoryList() {
            return (this.bitField0_ & 2) != 0 ? Collections.unmodifiableList(this.lastbootupHistory_) : this.lastbootupHistory_;
        }

        @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
        public int getLastbootupHistoryCount() {
            return this.lastbootupHistory_.size();
        }

        @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
        public long getLastbootupHistory(int i) {
            return this.lastbootupHistory_.getLong(i);
        }

        public Builder setLastbootupHistory(int i, long j) {
            ensureLastbootupHistoryIsMutable();
            this.lastbootupHistory_.setLong(i, j);
            onChanged();
            return this;
        }

        public Builder addLastbootupHistory(long j) {
            ensureLastbootupHistoryIsMutable();
            this.lastbootupHistory_.addLong(j);
            onChanged();
            return this;
        }

        public Builder addAllLastbootupHistory(Iterable<? extends Long> iterable) {
            ensureLastbootupHistoryIsMutable();
            AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.lastbootupHistory_);
            onChanged();
            return this;
        }

        public Builder clearLastbootupHistory() {
            this.lastbootupHistory_ = GeneratedMessageV3.emptyLongList();
            this.bitField0_ &= -3;
            onChanged();
            return this;
        }

        @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
        public String getAccess() {
            Object obj = this.access_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.access_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
        public ByteString getAccessBytes() {
            Object obj = this.access_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.access_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        public Builder setAccess(String str) {
            str.getClass();
            this.access_ = str;
            onChanged();
            return this;
        }

        public Builder clearAccess() {
            this.access_ = Device.getDefaultInstance().getAccess();
            onChanged();
            return this;
        }

        public Builder setAccessBytes(ByteString byteString) {
            byteString.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.access_ = byteString;
            onChanged();
            return this;
        }

        @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
        public String getHeadsetname() {
            Object obj = this.headsetname_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.headsetname_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
        public ByteString getHeadsetnameBytes() {
            Object obj = this.headsetname_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.headsetname_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        public Builder setHeadsetname(String str) {
            str.getClass();
            this.headsetname_ = str;
            onChanged();
            return this;
        }

        public Builder clearHeadsetname() {
            this.headsetname_ = Device.getDefaultInstance().getHeadsetname();
            onChanged();
            return this;
        }

        public Builder setHeadsetnameBytes(ByteString byteString) {
            byteString.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.headsetname_ = byteString;
            onChanged();
            return this;
        }

        @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
        public long getTotalmem() {
            return this.totalmem_;
        }

        public Builder setTotalmem(long j) {
            this.totalmem_ = j;
            onChanged();
            return this;
        }

        public Builder clearTotalmem() {
            this.totalmem_ = 0L;
            onChanged();
            return this;
        }

        @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
        public int getAtts() {
            return this.atts_;
        }

        public Builder setAtts(int i) {
            this.atts_ = i;
            onChanged();
            return this;
        }

        public Builder clearAtts() {
            this.atts_ = 0;
            onChanged();
            return this;
        }

        @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
        public String getCpuname() {
            Object obj = this.cpuname_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.cpuname_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
        public ByteString getCpunameBytes() {
            Object obj = this.cpuname_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.cpuname_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        public Builder setCpuname(String str) {
            str.getClass();
            this.cpuname_ = str;
            onChanged();
            return this;
        }

        public Builder clearCpuname() {
            this.cpuname_ = Device.getDefaultInstance().getCpuname();
            onChanged();
            return this;
        }

        public Builder setCpunameBytes(ByteString byteString) {
            byteString.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.cpuname_ = byteString;
            onChanged();
            return this;
        }

        @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
        public String getCpuvendor() {
            Object obj = this.cpuvendor_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.cpuvendor_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
        public ByteString getCpuvendorBytes() {
            Object obj = this.cpuvendor_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.cpuvendor_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        public Builder setCpuvendor(String str) {
            str.getClass();
            this.cpuvendor_ = str;
            onChanged();
            return this;
        }

        public Builder clearCpuvendor() {
            this.cpuvendor_ = Device.getDefaultInstance().getCpuvendor();
            onChanged();
            return this;
        }

        public Builder setCpuvendorBytes(ByteString byteString) {
            byteString.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.cpuvendor_ = byteString;
            onChanged();
            return this;
        }

        @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
        public String getGpuname() {
            Object obj = this.gpuname_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.gpuname_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
        public ByteString getGpunameBytes() {
            Object obj = this.gpuname_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.gpuname_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        public Builder setGpuname(String str) {
            str.getClass();
            this.gpuname_ = str;
            onChanged();
            return this;
        }

        public Builder clearGpuname() {
            this.gpuname_ = Device.getDefaultInstance().getGpuname();
            onChanged();
            return this;
        }

        public Builder setGpunameBytes(ByteString byteString) {
            byteString.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.gpuname_ = byteString;
            onChanged();
            return this;
        }

        @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
        public String getGpuvendor() {
            Object obj = this.gpuvendor_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.gpuvendor_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
        public ByteString getGpuvendorBytes() {
            Object obj = this.gpuvendor_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.gpuvendor_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        public Builder setGpuvendor(String str) {
            str.getClass();
            this.gpuvendor_ = str;
            onChanged();
            return this;
        }

        public Builder clearGpuvendor() {
            this.gpuvendor_ = Device.getDefaultInstance().getGpuvendor();
            onChanged();
            return this;
        }

        public Builder setGpuvendorBytes(ByteString byteString) {
            byteString.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.gpuvendor_ = byteString;
            onChanged();
            return this;
        }

        @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
        public String getTimezone() {
            Object obj = this.timezone_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.timezone_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
        public ByteString getTimezoneBytes() {
            Object obj = this.timezone_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.timezone_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        public Builder setTimezone(String str) {
            str.getClass();
            this.timezone_ = str;
            onChanged();
            return this;
        }

        public Builder clearTimezone() {
            this.timezone_ = Device.getDefaultInstance().getTimezone();
            onChanged();
            return this;
        }

        public Builder setTimezoneBytes(ByteString byteString) {
            byteString.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.timezone_ = byteString;
            onChanged();
            return this;
        }

        @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
        public long getFreemem() {
            return this.freemem_;
        }

        public Builder setFreemem(long j) {
            this.freemem_ = j;
            onChanged();
            return this;
        }

        public Builder clearFreemem() {
            this.freemem_ = 0L;
            onChanged();
            return this;
        }

        @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
        public int getApilevel() {
            return this.apilevel_;
        }

        public Builder setApilevel(int i) {
            this.apilevel_ = i;
            onChanged();
            return this;
        }

        public Builder clearApilevel() {
            this.apilevel_ = 0;
            onChanged();
            return this;
        }

        @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
        public boolean hasSimCarrier() {
            return (this.simCarrierBuilder_ == null && this.simCarrier_ == null) ? false : true;
        }

        @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
        public StringValue getSimCarrier() {
            SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.simCarrierBuilder_;
            if (singleFieldBuilderV3 == null) {
                StringValue stringValue = this.simCarrier_;
                return stringValue == null ? StringValue.getDefaultInstance() : stringValue;
            }
            return (StringValue) singleFieldBuilderV3.getMessage();
        }

        public Builder setSimCarrier(StringValue stringValue) {
            SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.simCarrierBuilder_;
            if (singleFieldBuilderV3 == null) {
                stringValue.getClass();
                this.simCarrier_ = stringValue;
                onChanged();
                return this;
            }
            singleFieldBuilderV3.setMessage(stringValue);
            return this;
        }

        public Builder setSimCarrier(StringValue.Builder builder) {
            SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.simCarrierBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.simCarrier_ = builder.build();
                onChanged();
                return this;
            }
            singleFieldBuilderV3.setMessage(builder.build());
            return this;
        }

        public Builder mergeSimCarrier(StringValue stringValue) {
            SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.simCarrierBuilder_;
            if (singleFieldBuilderV3 == null) {
                StringValue stringValue2 = this.simCarrier_;
                if (stringValue2 != null) {
                    this.simCarrier_ = StringValue.newBuilder(stringValue2).mergeFrom(stringValue).buildPartial();
                } else {
                    this.simCarrier_ = stringValue;
                }
                onChanged();
                return this;
            }
            singleFieldBuilderV3.mergeFrom(stringValue);
            return this;
        }

        public Builder clearSimCarrier() {
            if (this.simCarrierBuilder_ == null) {
                this.simCarrier_ = null;
                onChanged();
                return this;
            }
            this.simCarrier_ = null;
            this.simCarrierBuilder_ = null;
            return this;
        }

        public StringValue.Builder getSimCarrierBuilder() {
            onChanged();
            return (StringValue.Builder) getSimCarrierFieldBuilder().getBuilder();
        }

        @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
        public StringValueOrBuilder getSimCarrierOrBuilder() {
            SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.simCarrierBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (StringValueOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
            }
            StringValue stringValue = this.simCarrier_;
            return stringValue == null ? StringValue.getDefaultInstance() : stringValue;
        }

        private SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> getSimCarrierFieldBuilder() {
            if (this.simCarrierBuilder_ == null) {
                this.simCarrierBuilder_ = new SingleFieldBuilderV3<>(getSimCarrier(), getParentForChildren(), isClean());
                this.simCarrier_ = null;
            }
            return this.simCarrierBuilder_;
        }

        @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
        public boolean hasSimCountry() {
            return (this.simCountryBuilder_ == null && this.simCountry_ == null) ? false : true;
        }

        @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
        public StringValue getSimCountry() {
            SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.simCountryBuilder_;
            if (singleFieldBuilderV3 == null) {
                StringValue stringValue = this.simCountry_;
                return stringValue == null ? StringValue.getDefaultInstance() : stringValue;
            }
            return (StringValue) singleFieldBuilderV3.getMessage();
        }

        public Builder setSimCountry(StringValue stringValue) {
            SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.simCountryBuilder_;
            if (singleFieldBuilderV3 == null) {
                stringValue.getClass();
                this.simCountry_ = stringValue;
                onChanged();
                return this;
            }
            singleFieldBuilderV3.setMessage(stringValue);
            return this;
        }

        public Builder setSimCountry(StringValue.Builder builder) {
            SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.simCountryBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.simCountry_ = builder.build();
                onChanged();
                return this;
            }
            singleFieldBuilderV3.setMessage(builder.build());
            return this;
        }

        public Builder mergeSimCountry(StringValue stringValue) {
            SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.simCountryBuilder_;
            if (singleFieldBuilderV3 == null) {
                StringValue stringValue2 = this.simCountry_;
                if (stringValue2 != null) {
                    this.simCountry_ = StringValue.newBuilder(stringValue2).mergeFrom(stringValue).buildPartial();
                } else {
                    this.simCountry_ = stringValue;
                }
                onChanged();
                return this;
            }
            singleFieldBuilderV3.mergeFrom(stringValue);
            return this;
        }

        public Builder clearSimCountry() {
            if (this.simCountryBuilder_ == null) {
                this.simCountry_ = null;
                onChanged();
                return this;
            }
            this.simCountry_ = null;
            this.simCountryBuilder_ = null;
            return this;
        }

        public StringValue.Builder getSimCountryBuilder() {
            onChanged();
            return (StringValue.Builder) getSimCountryFieldBuilder().getBuilder();
        }

        @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
        public StringValueOrBuilder getSimCountryOrBuilder() {
            SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.simCountryBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (StringValueOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
            }
            StringValue stringValue = this.simCountry_;
            return stringValue == null ? StringValue.getDefaultInstance() : stringValue;
        }

        private SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> getSimCountryFieldBuilder() {
            if (this.simCountryBuilder_ == null) {
                this.simCountryBuilder_ = new SingleFieldBuilderV3<>(getSimCountry(), getParentForChildren(), isClean());
                this.simCountry_ = null;
            }
            return this.simCountryBuilder_;
        }

        @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
        public boolean hasNetworkRoaming() {
            return (this.networkRoamingBuilder_ == null && this.networkRoaming_ == null) ? false : true;
        }

        @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
        public BoolValue getNetworkRoaming() {
            SingleFieldBuilderV3<BoolValue, BoolValue.Builder, BoolValueOrBuilder> singleFieldBuilderV3 = this.networkRoamingBuilder_;
            if (singleFieldBuilderV3 == null) {
                BoolValue boolValue = this.networkRoaming_;
                return boolValue == null ? BoolValue.getDefaultInstance() : boolValue;
            }
            return (BoolValue) singleFieldBuilderV3.getMessage();
        }

        public Builder setNetworkRoaming(BoolValue boolValue) {
            SingleFieldBuilderV3<BoolValue, BoolValue.Builder, BoolValueOrBuilder> singleFieldBuilderV3 = this.networkRoamingBuilder_;
            if (singleFieldBuilderV3 == null) {
                boolValue.getClass();
                this.networkRoaming_ = boolValue;
                onChanged();
                return this;
            }
            singleFieldBuilderV3.setMessage(boolValue);
            return this;
        }

        public Builder setNetworkRoaming(BoolValue.Builder builder) {
            SingleFieldBuilderV3<BoolValue, BoolValue.Builder, BoolValueOrBuilder> singleFieldBuilderV3 = this.networkRoamingBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.networkRoaming_ = builder.build();
                onChanged();
                return this;
            }
            singleFieldBuilderV3.setMessage(builder.build());
            return this;
        }

        public Builder mergeNetworkRoaming(BoolValue boolValue) {
            SingleFieldBuilderV3<BoolValue, BoolValue.Builder, BoolValueOrBuilder> singleFieldBuilderV3 = this.networkRoamingBuilder_;
            if (singleFieldBuilderV3 == null) {
                BoolValue boolValue2 = this.networkRoaming_;
                if (boolValue2 != null) {
                    this.networkRoaming_ = BoolValue.newBuilder(boolValue2).mergeFrom(boolValue).buildPartial();
                } else {
                    this.networkRoaming_ = boolValue;
                }
                onChanged();
                return this;
            }
            singleFieldBuilderV3.mergeFrom(boolValue);
            return this;
        }

        public Builder clearNetworkRoaming() {
            if (this.networkRoamingBuilder_ == null) {
                this.networkRoaming_ = null;
                onChanged();
                return this;
            }
            this.networkRoaming_ = null;
            this.networkRoamingBuilder_ = null;
            return this;
        }

        public BoolValue.Builder getNetworkRoamingBuilder() {
            onChanged();
            return (BoolValue.Builder) getNetworkRoamingFieldBuilder().getBuilder();
        }

        @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
        public BoolValueOrBuilder getNetworkRoamingOrBuilder() {
            SingleFieldBuilderV3<BoolValue, BoolValue.Builder, BoolValueOrBuilder> singleFieldBuilderV3 = this.networkRoamingBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (BoolValueOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
            }
            BoolValue boolValue = this.networkRoaming_;
            return boolValue == null ? BoolValue.getDefaultInstance() : boolValue;
        }

        private SingleFieldBuilderV3<BoolValue, BoolValue.Builder, BoolValueOrBuilder> getNetworkRoamingFieldBuilder() {
            if (this.networkRoamingBuilder_ == null) {
                this.networkRoamingBuilder_ = new SingleFieldBuilderV3<>(getNetworkRoaming(), getParentForChildren(), isClean());
                this.networkRoaming_ = null;
            }
            return this.networkRoamingBuilder_;
        }

        @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
        public boolean hasConnection() {
            return (this.connectionBuilder_ == null && this.connection_ == null) ? false : true;
        }

        @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
        public Context.Device.Connection getConnection() {
            SingleFieldBuilderV3<Context.Device.Connection, Context.Device.Connection.Builder, Context.Device.ConnectionOrBuilder> singleFieldBuilderV3 = this.connectionBuilder_;
            if (singleFieldBuilderV3 == null) {
                Context.Device.Connection connection = this.connection_;
                return connection == null ? Context.Device.Connection.getDefaultInstance() : connection;
            }
            return (Context.Device.Connection) singleFieldBuilderV3.getMessage();
        }

        public Builder setConnection(Context.Device.Connection connection) {
            SingleFieldBuilderV3<Context.Device.Connection, Context.Device.Connection.Builder, Context.Device.ConnectionOrBuilder> singleFieldBuilderV3 = this.connectionBuilder_;
            if (singleFieldBuilderV3 == null) {
                connection.getClass();
                this.connection_ = connection;
                onChanged();
                return this;
            }
            singleFieldBuilderV3.setMessage(connection);
            return this;
        }

        public Builder setConnection(Context.Device.Connection.Builder builder) {
            SingleFieldBuilderV3<Context.Device.Connection, Context.Device.Connection.Builder, Context.Device.ConnectionOrBuilder> singleFieldBuilderV3 = this.connectionBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.connection_ = builder.build();
                onChanged();
                return this;
            }
            singleFieldBuilderV3.setMessage(builder.build());
            return this;
        }

        public Builder mergeConnection(Context.Device.Connection connection) {
            SingleFieldBuilderV3<Context.Device.Connection, Context.Device.Connection.Builder, Context.Device.ConnectionOrBuilder> singleFieldBuilderV3 = this.connectionBuilder_;
            if (singleFieldBuilderV3 == null) {
                Context.Device.Connection connection2 = this.connection_;
                if (connection2 != null) {
                    this.connection_ = Context.Device.Connection.newBuilder(connection2).mergeFrom(connection).buildPartial();
                } else {
                    this.connection_ = connection;
                }
                onChanged();
                return this;
            }
            singleFieldBuilderV3.mergeFrom(connection);
            return this;
        }

        public Builder clearConnection() {
            if (this.connectionBuilder_ == null) {
                this.connection_ = null;
                onChanged();
                return this;
            }
            this.connection_ = null;
            this.connectionBuilder_ = null;
            return this;
        }

        public Context.Device.Connection.Builder getConnectionBuilder() {
            onChanged();
            return (Context.Device.Connection.Builder) getConnectionFieldBuilder().getBuilder();
        }

        @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
        public Context.Device.ConnectionOrBuilder getConnectionOrBuilder() {
            SingleFieldBuilderV3<Context.Device.Connection, Context.Device.Connection.Builder, Context.Device.ConnectionOrBuilder> singleFieldBuilderV3 = this.connectionBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (Context.Device.ConnectionOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
            }
            Context.Device.Connection connection = this.connection_;
            return connection == null ? Context.Device.Connection.getDefaultInstance() : connection;
        }

        private SingleFieldBuilderV3<Context.Device.Connection, Context.Device.Connection.Builder, Context.Device.ConnectionOrBuilder> getConnectionFieldBuilder() {
            if (this.connectionBuilder_ == null) {
                this.connectionBuilder_ = new SingleFieldBuilderV3<>(getConnection(), getParentForChildren(), isClean());
                this.connection_ = null;
            }
            return this.connectionBuilder_;
        }

        @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
        public boolean hasAudioContext() {
            return (this.audioContextBuilder_ == null && this.audioContext_ == null) ? false : true;
        }

        @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
        public Context.Device.AudioContext getAudioContext() {
            SingleFieldBuilderV3<Context.Device.AudioContext, Context.Device.AudioContext.Builder, Context.Device.AudioContextOrBuilder> singleFieldBuilderV3 = this.audioContextBuilder_;
            if (singleFieldBuilderV3 == null) {
                Context.Device.AudioContext audioContext = this.audioContext_;
                return audioContext == null ? Context.Device.AudioContext.getDefaultInstance() : audioContext;
            }
            return (Context.Device.AudioContext) singleFieldBuilderV3.getMessage();
        }

        public Builder setAudioContext(Context.Device.AudioContext audioContext) {
            SingleFieldBuilderV3<Context.Device.AudioContext, Context.Device.AudioContext.Builder, Context.Device.AudioContextOrBuilder> singleFieldBuilderV3 = this.audioContextBuilder_;
            if (singleFieldBuilderV3 == null) {
                audioContext.getClass();
                this.audioContext_ = audioContext;
                onChanged();
                return this;
            }
            singleFieldBuilderV3.setMessage(audioContext);
            return this;
        }

        public Builder setAudioContext(Context.Device.AudioContext.Builder builder) {
            SingleFieldBuilderV3<Context.Device.AudioContext, Context.Device.AudioContext.Builder, Context.Device.AudioContextOrBuilder> singleFieldBuilderV3 = this.audioContextBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.audioContext_ = builder.build();
                onChanged();
                return this;
            }
            singleFieldBuilderV3.setMessage(builder.build());
            return this;
        }

        public Builder mergeAudioContext(Context.Device.AudioContext audioContext) {
            SingleFieldBuilderV3<Context.Device.AudioContext, Context.Device.AudioContext.Builder, Context.Device.AudioContextOrBuilder> singleFieldBuilderV3 = this.audioContextBuilder_;
            if (singleFieldBuilderV3 == null) {
                Context.Device.AudioContext audioContext2 = this.audioContext_;
                if (audioContext2 != null) {
                    this.audioContext_ = Context.Device.AudioContext.newBuilder(audioContext2).mergeFrom(audioContext).buildPartial();
                } else {
                    this.audioContext_ = audioContext;
                }
                onChanged();
                return this;
            }
            singleFieldBuilderV3.mergeFrom(audioContext);
            return this;
        }

        public Builder clearAudioContext() {
            if (this.audioContextBuilder_ == null) {
                this.audioContext_ = null;
                onChanged();
                return this;
            }
            this.audioContext_ = null;
            this.audioContextBuilder_ = null;
            return this;
        }

        public Context.Device.AudioContext.Builder getAudioContextBuilder() {
            onChanged();
            return (Context.Device.AudioContext.Builder) getAudioContextFieldBuilder().getBuilder();
        }

        @Override // io.bidmachine.protobuf.sdk.DeviceOrBuilder
        public Context.Device.AudioContextOrBuilder getAudioContextOrBuilder() {
            SingleFieldBuilderV3<Context.Device.AudioContext, Context.Device.AudioContext.Builder, Context.Device.AudioContextOrBuilder> singleFieldBuilderV3 = this.audioContextBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (Context.Device.AudioContextOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
            }
            Context.Device.AudioContext audioContext = this.audioContext_;
            return audioContext == null ? Context.Device.AudioContext.getDefaultInstance() : audioContext;
        }

        private SingleFieldBuilderV3<Context.Device.AudioContext, Context.Device.AudioContext.Builder, Context.Device.AudioContextOrBuilder> getAudioContextFieldBuilder() {
            if (this.audioContextBuilder_ == null) {
                this.audioContextBuilder_ = new SingleFieldBuilderV3<>(getAudioContext(), getParentForChildren(), isClean());
                this.audioContext_ = null;
            }
            return this.audioContextBuilder_;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
            return (Builder) super.setUnknownFields(unknownFieldSet);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
            return (Builder) super.mergeUnknownFields(unknownFieldSet);
        }
    }

    public static Device getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static Parser<Device> parser() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Parser<Device> getParserForType() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
    /* JADX INFO: renamed from: getDefaultInstanceForType */
    public Device mo687getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }
}
