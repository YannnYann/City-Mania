package io.bidmachine.protobuf;

import ads_mobile_sdk.fh;
import com.explorestack.protobuf.AbstractMessage;
import com.explorestack.protobuf.AbstractMessageLite;
import com.explorestack.protobuf.AbstractParser;
import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.CodedInputStream;
import com.explorestack.protobuf.CodedOutputStream;
import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.ExtensionRegistryLite;
import com.explorestack.protobuf.GeneratedMessageV3;
import com.explorestack.protobuf.Internal;
import com.explorestack.protobuf.InvalidProtocolBufferException;
import com.explorestack.protobuf.MapEntry;
import com.explorestack.protobuf.MapField;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.Parser;
import com.explorestack.protobuf.RepeatedFieldBuilderV3;
import com.explorestack.protobuf.SingleFieldBuilderV3;
import com.explorestack.protobuf.UnknownFieldSet;
import com.explorestack.protobuf.WireFormat;
import com.explorestack.protobuf.adcom.Ad;
import io.bidmachine.protobuf.AdExtension;
import io.bidmachine.protobuf.AdNetwork;
import io.bidmachine.protobuf.Extras;
import io.bidmachine.protobuf.SdkAnalyticConfig;
import io.bidmachine.protobuf.SdkCrashSignalConfig;
import io.bidmachine.protobuf.TokenConfiguration;
import io.bidmachine.protobuf.sdk.AssetCache;
import io.bidmachine.protobuf.sdk.Configuration;
import io.bidmachine.protobuf.sdk.ConfigurationOrBuilder;
import io.bidmachine.protobuf.sdk.RestrictionMode;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class InitResponse extends GeneratedMessageV3 implements InitResponseOrBuilder {
    public static final int AD_CACHE_CONTROL_FIELD_NUMBER = 5;
    public static final int AD_CACHE_MAX_AGE_FIELD_NUMBER = 6;
    public static final int AD_CACHE_PLACEMENT_CONTROL_FIELD_NUMBER = 8;
    public static final int AD_NETWORKS_FIELD_NUMBER = 4;
    public static final int AD_NETWORKS_LOADING_TIMEOUT_FIELD_NUMBER = 9;
    public static final int AD_REQUEST_TMAX_FIELD_NUMBER = 7;
    public static final int ASSET_CACHE_CONFIGURATION_FIELD_NUMBER = 16;
    public static final int BMIFV_TTL_SESSIONS_FIELD_NUMBER = 18;
    public static final int CRASH_SIGNAL_CONFIG_FIELD_NUMBER = 19;
    public static final int ENDPOINT_FIELD_NUMBER = 1;
    public static final int EVENT_CONFIGURATION_FIELD_NUMBER = 11;
    public static final int EVENT_FIELD_NUMBER = 2;
    public static final int EXTRAS_FIELD_NUMBER = 14;
    public static final int RESTRICTION_MODE_FIELD_NUMBER = 17;
    public static final int SDK_ANALYTIC_CONFIG_FIELD_NUMBER = 10;
    public static final int SDK_ANALYTIC_CONFIG_V2_FIELD_NUMBER = 15;
    public static final int SESSION_RESET_AFTER_FIELD_NUMBER = 3;
    public static final int SHOW_WITHOUT_INTERNET_FIELD_NUMBER = 13;
    public static final int TOKEN_CONFIGURATIONS_FIELD_NUMBER = 12;
    private static final long serialVersionUID = 0;
    private int adCacheControl_;
    private int adCacheMaxAge_;
    private MapField<String, AdCachePlacementControl> adCachePlacementControl_;
    private int adNetworksLoadingTimeout_;
    private List<AdNetwork> adNetworks_;
    private int adRequestTmax_;
    private AssetCache.Configuration assetCacheConfiguration_;
    private int bmifvTtlSessions_;
    private SdkCrashSignalConfig crashSignalConfig_;
    private volatile Object endpoint_;
    private AdExtension.EventConfiguration eventConfiguration_;
    private List<Ad.Event> event_;
    private Extras extras_;
    private byte memoizedIsInitialized;
    private int restrictionMode_;
    private Configuration sdkAnalyticConfigV2_;
    private SdkAnalyticConfig sdkAnalyticConfig_;
    private int sessionResetAfter_;
    private boolean showWithoutInternet_;
    private List<TokenConfiguration> tokenConfigurations_;
    private static final InitResponse DEFAULT_INSTANCE = new InitResponse();
    private static final Parser<InitResponse> PARSER = new AbstractParser<InitResponse>() { // from class: io.bidmachine.protobuf.InitResponse.1
        @Override // com.explorestack.protobuf.Parser
        public InitResponse parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return new InitResponse(codedInputStream, extensionRegistryLite);
        }
    };

    private InitResponse(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    private InitResponse() {
        this.memoizedIsInitialized = (byte) -1;
        this.endpoint_ = "";
        List list = Collections.EMPTY_LIST;
        this.event_ = list;
        this.adNetworks_ = list;
        this.adCacheControl_ = 0;
        this.tokenConfigurations_ = list;
        this.restrictionMode_ = 0;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
        return new InitResponse();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
    public final UnknownFieldSet getUnknownFields() {
        return this.unknownFields;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private InitResponse(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.endpoint_ = codedInputStream.readStringRequireUtf8();
                            break;
                        case 18:
                            int i2 = (i == true ? 1 : 0) & 1;
                            i = i;
                            if (i2 == 0) {
                                this.event_ = new ArrayList();
                                i = (i == true ? 1 : 0) | 1;
                            }
                            this.event_.add((Ad.Event) codedInputStream.readMessage(Ad.Event.parser(), extensionRegistryLite));
                            break;
                        case 24:
                            this.sessionResetAfter_ = codedInputStream.readUInt32();
                            break;
                        case 34:
                            int i3 = (i == true ? 1 : 0) & 2;
                            i = i;
                            if (i3 == 0) {
                                this.adNetworks_ = new ArrayList();
                                i = (i == true ? 1 : 0) | 2;
                            }
                            this.adNetworks_.add((AdNetwork) codedInputStream.readMessage(AdNetwork.parser(), extensionRegistryLite));
                            break;
                        case 40:
                            this.adCacheControl_ = codedInputStream.readEnum();
                            break;
                        case 48:
                            this.adCacheMaxAge_ = codedInputStream.readUInt32();
                            break;
                        case 56:
                            this.adRequestTmax_ = codedInputStream.readUInt32();
                            break;
                        case 66:
                            int i4 = (i == true ? 1 : 0) & 4;
                            i = i;
                            if (i4 == 0) {
                                this.adCachePlacementControl_ = MapField.newMapField(AdCachePlacementControlDefaultEntryHolder.defaultEntry);
                                i = (i == true ? 1 : 0) | 4;
                            }
                            MapEntry mapEntry = (MapEntry) codedInputStream.readMessage(AdCachePlacementControlDefaultEntryHolder.defaultEntry.getParserForType(), extensionRegistryLite);
                            this.adCachePlacementControl_.getMutableMap().put(mapEntry.getKey(), mapEntry.getValue());
                            break;
                        case 72:
                            this.adNetworksLoadingTimeout_ = codedInputStream.readUInt32();
                            break;
                        case 82:
                            SdkAnalyticConfig sdkAnalyticConfig = this.sdkAnalyticConfig_;
                            SdkAnalyticConfig.Builder builder = sdkAnalyticConfig != null ? sdkAnalyticConfig.toBuilder() : null;
                            SdkAnalyticConfig sdkAnalyticConfig2 = (SdkAnalyticConfig) codedInputStream.readMessage(SdkAnalyticConfig.parser(), extensionRegistryLite);
                            this.sdkAnalyticConfig_ = sdkAnalyticConfig2;
                            if (builder != null) {
                                builder.mergeFrom(sdkAnalyticConfig2);
                                this.sdkAnalyticConfig_ = builder.buildPartial();
                            }
                            break;
                        case 90:
                            AdExtension.EventConfiguration eventConfiguration = this.eventConfiguration_;
                            AdExtension.EventConfiguration.Builder builder2 = eventConfiguration != null ? eventConfiguration.toBuilder() : null;
                            AdExtension.EventConfiguration eventConfiguration2 = (AdExtension.EventConfiguration) codedInputStream.readMessage(AdExtension.EventConfiguration.parser(), extensionRegistryLite);
                            this.eventConfiguration_ = eventConfiguration2;
                            if (builder2 != null) {
                                builder2.mergeFrom(eventConfiguration2);
                                this.eventConfiguration_ = builder2.buildPartial();
                            }
                            break;
                        case fh.Q0 /* 98 */:
                            int i5 = (i == true ? 1 : 0) & 8;
                            i = i;
                            if (i5 == 0) {
                                this.tokenConfigurations_ = new ArrayList();
                                i = (i == true ? 1 : 0) | 8;
                            }
                            this.tokenConfigurations_.add((TokenConfiguration) codedInputStream.readMessage(TokenConfiguration.parser(), extensionRegistryLite));
                            break;
                        case 104:
                            this.showWithoutInternet_ = codedInputStream.readBool();
                            break;
                        case ASSET_WRITE_ERROR_VALUE:
                            Extras extras = this.extras_;
                            Extras.Builder builder3 = extras != null ? extras.toBuilder() : null;
                            Extras extras2 = (Extras) codedInputStream.readMessage(Extras.parser(), extensionRegistryLite);
                            this.extras_ = extras2;
                            if (builder3 != null) {
                                builder3.mergeFrom(extras2);
                                this.extras_ = builder3.buildPartial();
                            }
                            break;
                        case INVALID_ADS_ENDPOINT_VALUE:
                            Configuration configuration = this.sdkAnalyticConfigV2_;
                            Configuration.Builder builder4 = configuration != null ? configuration.toBuilder() : null;
                            Configuration configuration2 = (Configuration) codedInputStream.readMessage(Configuration.parser(), extensionRegistryLite);
                            this.sdkAnalyticConfigV2_ = configuration2;
                            if (builder4 != null) {
                                builder4.mergeFrom(configuration2);
                                this.sdkAnalyticConfigV2_ = builder4.buildPartial();
                            }
                            break;
                        case MRAID_DOWNLOAD_JS_ERROR_VALUE:
                            AssetCache.Configuration configuration3 = this.assetCacheConfiguration_;
                            AssetCache.Configuration.Builder builder5 = configuration3 != null ? configuration3.toBuilder() : null;
                            AssetCache.Configuration configuration4 = (AssetCache.Configuration) codedInputStream.readMessage(AssetCache.Configuration.parser(), extensionRegistryLite);
                            this.assetCacheConfiguration_ = configuration4;
                            if (builder5 != null) {
                                builder5.mergeFrom(configuration4);
                                this.assetCacheConfiguration_ = builder5.buildPartial();
                            }
                            break;
                        case PRIVACY_URL_ERROR_VALUE:
                            this.restrictionMode_ = codedInputStream.readEnum();
                            break;
                        case 144:
                            this.bmifvTtlSessions_ = codedInputStream.readUInt32();
                            break;
                        case 154:
                            SdkCrashSignalConfig sdkCrashSignalConfig = this.crashSignalConfig_;
                            SdkCrashSignalConfig.Builder builder6 = sdkCrashSignalConfig != null ? sdkCrashSignalConfig.toBuilder() : null;
                            SdkCrashSignalConfig sdkCrashSignalConfig2 = (SdkCrashSignalConfig) codedInputStream.readMessage(SdkCrashSignalConfig.parser(), extensionRegistryLite);
                            this.crashSignalConfig_ = sdkCrashSignalConfig2;
                            if (builder6 != null) {
                                builder6.mergeFrom(sdkCrashSignalConfig2);
                                this.crashSignalConfig_ = builder6.buildPartial();
                            }
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
                    this.event_ = Collections.unmodifiableList(this.event_);
                }
                if (((i == true ? 1 : 0) & 2) != 0) {
                    this.adNetworks_ = Collections.unmodifiableList(this.adNetworks_);
                }
                if (((i == true ? 1 : 0) & 8) != 0) {
                    this.tokenConfigurations_ = Collections.unmodifiableList(this.tokenConfigurations_);
                }
                this.unknownFields = builderNewBuilder.build();
                makeExtensionsImmutable();
                throw th;
            }
        }
        if (((i == true ? 1 : 0) & 1) != 0) {
            this.event_ = Collections.unmodifiableList(this.event_);
        }
        if (((i == true ? 1 : 0) & 2) != 0) {
            this.adNetworks_ = Collections.unmodifiableList(this.adNetworks_);
        }
        if (((i == true ? 1 : 0) & 8) != 0) {
            this.tokenConfigurations_ = Collections.unmodifiableList(this.tokenConfigurations_);
        }
        this.unknownFields = builderNewBuilder.build();
        makeExtensionsImmutable();
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return InitProto.internal_static_bidmachine_protobuf_InitResponse_descriptor;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public MapField internalGetMapField(int i) {
        if (i == 8) {
            return internalGetAdCachePlacementControl();
        }
        throw new RuntimeException("Invalid map field number: " + i);
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return InitProto.internal_static_bidmachine_protobuf_InitResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(InitResponse.class, Builder.class);
    }

    @Override // io.bidmachine.protobuf.InitResponseOrBuilder
    public String getEndpoint() {
        Object obj = this.endpoint_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.endpoint_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.InitResponseOrBuilder
    public ByteString getEndpointBytes() {
        Object obj = this.endpoint_;
        if (obj instanceof String) {
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.endpoint_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // io.bidmachine.protobuf.InitResponseOrBuilder
    public List<Ad.Event> getEventList() {
        return this.event_;
    }

    @Override // io.bidmachine.protobuf.InitResponseOrBuilder
    public List<? extends Ad.EventOrBuilder> getEventOrBuilderList() {
        return this.event_;
    }

    @Override // io.bidmachine.protobuf.InitResponseOrBuilder
    public int getEventCount() {
        return this.event_.size();
    }

    @Override // io.bidmachine.protobuf.InitResponseOrBuilder
    public Ad.Event getEvent(int i) {
        return this.event_.get(i);
    }

    @Override // io.bidmachine.protobuf.InitResponseOrBuilder
    public Ad.EventOrBuilder getEventOrBuilder(int i) {
        return this.event_.get(i);
    }

    @Override // io.bidmachine.protobuf.InitResponseOrBuilder
    public int getSessionResetAfter() {
        return this.sessionResetAfter_;
    }

    @Override // io.bidmachine.protobuf.InitResponseOrBuilder
    public List<AdNetwork> getAdNetworksList() {
        return this.adNetworks_;
    }

    @Override // io.bidmachine.protobuf.InitResponseOrBuilder
    public List<? extends AdNetworkOrBuilder> getAdNetworksOrBuilderList() {
        return this.adNetworks_;
    }

    @Override // io.bidmachine.protobuf.InitResponseOrBuilder
    public int getAdNetworksCount() {
        return this.adNetworks_.size();
    }

    @Override // io.bidmachine.protobuf.InitResponseOrBuilder
    public AdNetwork getAdNetworks(int i) {
        return this.adNetworks_.get(i);
    }

    @Override // io.bidmachine.protobuf.InitResponseOrBuilder
    public AdNetworkOrBuilder getAdNetworksOrBuilder(int i) {
        return this.adNetworks_.get(i);
    }

    @Override // io.bidmachine.protobuf.InitResponseOrBuilder
    public int getAdCacheControlValue() {
        return this.adCacheControl_;
    }

    @Override // io.bidmachine.protobuf.InitResponseOrBuilder
    public AdCacheControl getAdCacheControl() {
        AdCacheControl adCacheControlValueOf = AdCacheControl.valueOf(this.adCacheControl_);
        return adCacheControlValueOf == null ? AdCacheControl.UNRECOGNIZED : adCacheControlValueOf;
    }

    @Override // io.bidmachine.protobuf.InitResponseOrBuilder
    public int getAdCacheMaxAge() {
        return this.adCacheMaxAge_;
    }

    @Override // io.bidmachine.protobuf.InitResponseOrBuilder
    public int getAdRequestTmax() {
        return this.adRequestTmax_;
    }

    public static final class AdCachePlacementControlDefaultEntryHolder {
        static final MapEntry<String, AdCachePlacementControl> defaultEntry = MapEntry.newDefaultInstance(InitProto.internal_static_bidmachine_protobuf_InitResponse_AdCachePlacementControlEntry_descriptor, WireFormat.FieldType.STRING, "", WireFormat.FieldType.MESSAGE, AdCachePlacementControl.getDefaultInstance());

        private AdCachePlacementControlDefaultEntryHolder() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MapField<String, AdCachePlacementControl> internalGetAdCachePlacementControl() {
        MapField<String, AdCachePlacementControl> mapField = this.adCachePlacementControl_;
        return mapField == null ? MapField.emptyMapField(AdCachePlacementControlDefaultEntryHolder.defaultEntry) : mapField;
    }

    @Override // io.bidmachine.protobuf.InitResponseOrBuilder
    public int getAdCachePlacementControlCount() {
        return internalGetAdCachePlacementControl().getMap().size();
    }

    @Override // io.bidmachine.protobuf.InitResponseOrBuilder
    public boolean containsAdCachePlacementControl(String str) {
        str.getClass();
        return internalGetAdCachePlacementControl().getMap().containsKey(str);
    }

    @Override // io.bidmachine.protobuf.InitResponseOrBuilder
    @Deprecated
    public Map<String, AdCachePlacementControl> getAdCachePlacementControl() {
        return getAdCachePlacementControlMap();
    }

    @Override // io.bidmachine.protobuf.InitResponseOrBuilder
    public Map<String, AdCachePlacementControl> getAdCachePlacementControlMap() {
        return internalGetAdCachePlacementControl().getMap();
    }

    @Override // io.bidmachine.protobuf.InitResponseOrBuilder
    public AdCachePlacementControl getAdCachePlacementControlOrDefault(String str, AdCachePlacementControl adCachePlacementControl) {
        str.getClass();
        Map<String, AdCachePlacementControl> map = internalGetAdCachePlacementControl().getMap();
        return map.containsKey(str) ? map.get(str) : adCachePlacementControl;
    }

    @Override // io.bidmachine.protobuf.InitResponseOrBuilder
    public AdCachePlacementControl getAdCachePlacementControlOrThrow(String str) {
        str.getClass();
        Map<String, AdCachePlacementControl> map = internalGetAdCachePlacementControl().getMap();
        if (!map.containsKey(str)) {
            throw new IllegalArgumentException();
        }
        return map.get(str);
    }

    @Override // io.bidmachine.protobuf.InitResponseOrBuilder
    public int getAdNetworksLoadingTimeout() {
        return this.adNetworksLoadingTimeout_;
    }

    @Override // io.bidmachine.protobuf.InitResponseOrBuilder
    public boolean hasSdkAnalyticConfig() {
        return this.sdkAnalyticConfig_ != null;
    }

    @Override // io.bidmachine.protobuf.InitResponseOrBuilder
    public SdkAnalyticConfig getSdkAnalyticConfig() {
        SdkAnalyticConfig sdkAnalyticConfig = this.sdkAnalyticConfig_;
        return sdkAnalyticConfig == null ? SdkAnalyticConfig.getDefaultInstance() : sdkAnalyticConfig;
    }

    @Override // io.bidmachine.protobuf.InitResponseOrBuilder
    public SdkAnalyticConfigOrBuilder getSdkAnalyticConfigOrBuilder() {
        return getSdkAnalyticConfig();
    }

    @Override // io.bidmachine.protobuf.InitResponseOrBuilder
    public boolean hasEventConfiguration() {
        return this.eventConfiguration_ != null;
    }

    @Override // io.bidmachine.protobuf.InitResponseOrBuilder
    public AdExtension.EventConfiguration getEventConfiguration() {
        AdExtension.EventConfiguration eventConfiguration = this.eventConfiguration_;
        return eventConfiguration == null ? AdExtension.EventConfiguration.getDefaultInstance() : eventConfiguration;
    }

    @Override // io.bidmachine.protobuf.InitResponseOrBuilder
    public AdExtension.EventConfigurationOrBuilder getEventConfigurationOrBuilder() {
        return getEventConfiguration();
    }

    @Override // io.bidmachine.protobuf.InitResponseOrBuilder
    public List<TokenConfiguration> getTokenConfigurationsList() {
        return this.tokenConfigurations_;
    }

    @Override // io.bidmachine.protobuf.InitResponseOrBuilder
    public List<? extends TokenConfigurationOrBuilder> getTokenConfigurationsOrBuilderList() {
        return this.tokenConfigurations_;
    }

    @Override // io.bidmachine.protobuf.InitResponseOrBuilder
    public int getTokenConfigurationsCount() {
        return this.tokenConfigurations_.size();
    }

    @Override // io.bidmachine.protobuf.InitResponseOrBuilder
    public TokenConfiguration getTokenConfigurations(int i) {
        return this.tokenConfigurations_.get(i);
    }

    @Override // io.bidmachine.protobuf.InitResponseOrBuilder
    public TokenConfigurationOrBuilder getTokenConfigurationsOrBuilder(int i) {
        return this.tokenConfigurations_.get(i);
    }

    @Override // io.bidmachine.protobuf.InitResponseOrBuilder
    public boolean getShowWithoutInternet() {
        return this.showWithoutInternet_;
    }

    @Override // io.bidmachine.protobuf.InitResponseOrBuilder
    public boolean hasExtras() {
        return this.extras_ != null;
    }

    @Override // io.bidmachine.protobuf.InitResponseOrBuilder
    public Extras getExtras() {
        Extras extras = this.extras_;
        return extras == null ? Extras.getDefaultInstance() : extras;
    }

    @Override // io.bidmachine.protobuf.InitResponseOrBuilder
    public ExtrasOrBuilder getExtrasOrBuilder() {
        return getExtras();
    }

    @Override // io.bidmachine.protobuf.InitResponseOrBuilder
    public boolean hasSdkAnalyticConfigV2() {
        return this.sdkAnalyticConfigV2_ != null;
    }

    @Override // io.bidmachine.protobuf.InitResponseOrBuilder
    public Configuration getSdkAnalyticConfigV2() {
        Configuration configuration = this.sdkAnalyticConfigV2_;
        return configuration == null ? Configuration.getDefaultInstance() : configuration;
    }

    @Override // io.bidmachine.protobuf.InitResponseOrBuilder
    public ConfigurationOrBuilder getSdkAnalyticConfigV2OrBuilder() {
        return getSdkAnalyticConfigV2();
    }

    @Override // io.bidmachine.protobuf.InitResponseOrBuilder
    public boolean hasAssetCacheConfiguration() {
        return this.assetCacheConfiguration_ != null;
    }

    @Override // io.bidmachine.protobuf.InitResponseOrBuilder
    public AssetCache.Configuration getAssetCacheConfiguration() {
        AssetCache.Configuration configuration = this.assetCacheConfiguration_;
        return configuration == null ? AssetCache.Configuration.getDefaultInstance() : configuration;
    }

    @Override // io.bidmachine.protobuf.InitResponseOrBuilder
    public AssetCache.ConfigurationOrBuilder getAssetCacheConfigurationOrBuilder() {
        return getAssetCacheConfiguration();
    }

    @Override // io.bidmachine.protobuf.InitResponseOrBuilder
    public int getRestrictionModeValue() {
        return this.restrictionMode_;
    }

    @Override // io.bidmachine.protobuf.InitResponseOrBuilder
    public RestrictionMode getRestrictionMode() {
        RestrictionMode restrictionModeValueOf = RestrictionMode.valueOf(this.restrictionMode_);
        return restrictionModeValueOf == null ? RestrictionMode.UNRECOGNIZED : restrictionModeValueOf;
    }

    @Override // io.bidmachine.protobuf.InitResponseOrBuilder
    public int getBmifvTtlSessions() {
        return this.bmifvTtlSessions_;
    }

    @Override // io.bidmachine.protobuf.InitResponseOrBuilder
    public boolean hasCrashSignalConfig() {
        return this.crashSignalConfig_ != null;
    }

    @Override // io.bidmachine.protobuf.InitResponseOrBuilder
    public SdkCrashSignalConfig getCrashSignalConfig() {
        SdkCrashSignalConfig sdkCrashSignalConfig = this.crashSignalConfig_;
        return sdkCrashSignalConfig == null ? SdkCrashSignalConfig.getDefaultInstance() : sdkCrashSignalConfig;
    }

    @Override // io.bidmachine.protobuf.InitResponseOrBuilder
    public SdkCrashSignalConfigOrBuilder getCrashSignalConfigOrBuilder() {
        return getCrashSignalConfig();
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
        if (!getEndpointBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.endpoint_);
        }
        for (int i = 0; i < this.event_.size(); i++) {
            codedOutputStream.writeMessage(2, this.event_.get(i));
        }
        int i2 = this.sessionResetAfter_;
        if (i2 != 0) {
            codedOutputStream.writeUInt32(3, i2);
        }
        for (int i3 = 0; i3 < this.adNetworks_.size(); i3++) {
            codedOutputStream.writeMessage(4, this.adNetworks_.get(i3));
        }
        if (this.adCacheControl_ != AdCacheControl.AD_CACHE_CONTROL_DISABLED.getNumber()) {
            codedOutputStream.writeEnum(5, this.adCacheControl_);
        }
        int i4 = this.adCacheMaxAge_;
        if (i4 != 0) {
            codedOutputStream.writeUInt32(6, i4);
        }
        int i5 = this.adRequestTmax_;
        if (i5 != 0) {
            codedOutputStream.writeUInt32(7, i5);
        }
        GeneratedMessageV3.serializeStringMapTo(codedOutputStream, internalGetAdCachePlacementControl(), AdCachePlacementControlDefaultEntryHolder.defaultEntry, 8);
        int i6 = this.adNetworksLoadingTimeout_;
        if (i6 != 0) {
            codedOutputStream.writeUInt32(9, i6);
        }
        if (this.sdkAnalyticConfig_ != null) {
            codedOutputStream.writeMessage(10, getSdkAnalyticConfig());
        }
        if (this.eventConfiguration_ != null) {
            codedOutputStream.writeMessage(11, getEventConfiguration());
        }
        for (int i7 = 0; i7 < this.tokenConfigurations_.size(); i7++) {
            codedOutputStream.writeMessage(12, this.tokenConfigurations_.get(i7));
        }
        boolean z = this.showWithoutInternet_;
        if (z) {
            codedOutputStream.writeBool(13, z);
        }
        if (this.extras_ != null) {
            codedOutputStream.writeMessage(14, getExtras());
        }
        if (this.sdkAnalyticConfigV2_ != null) {
            codedOutputStream.writeMessage(15, getSdkAnalyticConfigV2());
        }
        if (this.assetCacheConfiguration_ != null) {
            codedOutputStream.writeMessage(16, getAssetCacheConfiguration());
        }
        if (this.restrictionMode_ != RestrictionMode.RESTRICTION_MODE_STRICT.getNumber()) {
            codedOutputStream.writeEnum(17, this.restrictionMode_);
        }
        int i8 = this.bmifvTtlSessions_;
        if (i8 != 0) {
            codedOutputStream.writeUInt32(18, i8);
        }
        if (this.crashSignalConfig_ != null) {
            codedOutputStream.writeMessage(19, getCrashSignalConfig());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        int iComputeStringSize = !getEndpointBytes().isEmpty() ? GeneratedMessageV3.computeStringSize(1, this.endpoint_) : 0;
        for (int i2 = 0; i2 < this.event_.size(); i2++) {
            iComputeStringSize += CodedOutputStream.computeMessageSize(2, this.event_.get(i2));
        }
        int i3 = this.sessionResetAfter_;
        if (i3 != 0) {
            iComputeStringSize += CodedOutputStream.computeUInt32Size(3, i3);
        }
        for (int i4 = 0; i4 < this.adNetworks_.size(); i4++) {
            iComputeStringSize += CodedOutputStream.computeMessageSize(4, this.adNetworks_.get(i4));
        }
        if (this.adCacheControl_ != AdCacheControl.AD_CACHE_CONTROL_DISABLED.getNumber()) {
            iComputeStringSize += CodedOutputStream.computeEnumSize(5, this.adCacheControl_);
        }
        int i5 = this.adCacheMaxAge_;
        if (i5 != 0) {
            iComputeStringSize += CodedOutputStream.computeUInt32Size(6, i5);
        }
        int i6 = this.adRequestTmax_;
        if (i6 != 0) {
            iComputeStringSize += CodedOutputStream.computeUInt32Size(7, i6);
        }
        for (Map.Entry<String, AdCachePlacementControl> entry : internalGetAdCachePlacementControl().getMap().entrySet()) {
            iComputeStringSize += CodedOutputStream.computeMessageSize(8, AdCachePlacementControlDefaultEntryHolder.defaultEntry.newBuilderForType().setKey(entry.getKey()).setValue(entry.getValue()).build());
        }
        int i7 = this.adNetworksLoadingTimeout_;
        if (i7 != 0) {
            iComputeStringSize += CodedOutputStream.computeUInt32Size(9, i7);
        }
        if (this.sdkAnalyticConfig_ != null) {
            iComputeStringSize += CodedOutputStream.computeMessageSize(10, getSdkAnalyticConfig());
        }
        if (this.eventConfiguration_ != null) {
            iComputeStringSize += CodedOutputStream.computeMessageSize(11, getEventConfiguration());
        }
        for (int i8 = 0; i8 < this.tokenConfigurations_.size(); i8++) {
            iComputeStringSize += CodedOutputStream.computeMessageSize(12, this.tokenConfigurations_.get(i8));
        }
        boolean z = this.showWithoutInternet_;
        if (z) {
            iComputeStringSize += CodedOutputStream.computeBoolSize(13, z);
        }
        if (this.extras_ != null) {
            iComputeStringSize += CodedOutputStream.computeMessageSize(14, getExtras());
        }
        if (this.sdkAnalyticConfigV2_ != null) {
            iComputeStringSize += CodedOutputStream.computeMessageSize(15, getSdkAnalyticConfigV2());
        }
        if (this.assetCacheConfiguration_ != null) {
            iComputeStringSize += CodedOutputStream.computeMessageSize(16, getAssetCacheConfiguration());
        }
        if (this.restrictionMode_ != RestrictionMode.RESTRICTION_MODE_STRICT.getNumber()) {
            iComputeStringSize += CodedOutputStream.computeEnumSize(17, this.restrictionMode_);
        }
        int i9 = this.bmifvTtlSessions_;
        if (i9 != 0) {
            iComputeStringSize += CodedOutputStream.computeUInt32Size(18, i9);
        }
        if (this.crashSignalConfig_ != null) {
            iComputeStringSize += CodedOutputStream.computeMessageSize(19, getCrashSignalConfig());
        }
        int serializedSize = iComputeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof InitResponse)) {
            return super.equals(obj);
        }
        InitResponse initResponse = (InitResponse) obj;
        if (!getEndpoint().equals(initResponse.getEndpoint()) || !getEventList().equals(initResponse.getEventList()) || getSessionResetAfter() != initResponse.getSessionResetAfter() || !getAdNetworksList().equals(initResponse.getAdNetworksList()) || this.adCacheControl_ != initResponse.adCacheControl_ || getAdCacheMaxAge() != initResponse.getAdCacheMaxAge() || getAdRequestTmax() != initResponse.getAdRequestTmax() || !internalGetAdCachePlacementControl().equals(initResponse.internalGetAdCachePlacementControl()) || getAdNetworksLoadingTimeout() != initResponse.getAdNetworksLoadingTimeout() || hasSdkAnalyticConfig() != initResponse.hasSdkAnalyticConfig()) {
            return false;
        }
        if ((hasSdkAnalyticConfig() && !getSdkAnalyticConfig().equals(initResponse.getSdkAnalyticConfig())) || hasEventConfiguration() != initResponse.hasEventConfiguration()) {
            return false;
        }
        if ((hasEventConfiguration() && !getEventConfiguration().equals(initResponse.getEventConfiguration())) || !getTokenConfigurationsList().equals(initResponse.getTokenConfigurationsList()) || getShowWithoutInternet() != initResponse.getShowWithoutInternet() || hasExtras() != initResponse.hasExtras()) {
            return false;
        }
        if ((hasExtras() && !getExtras().equals(initResponse.getExtras())) || hasSdkAnalyticConfigV2() != initResponse.hasSdkAnalyticConfigV2()) {
            return false;
        }
        if ((hasSdkAnalyticConfigV2() && !getSdkAnalyticConfigV2().equals(initResponse.getSdkAnalyticConfigV2())) || hasAssetCacheConfiguration() != initResponse.hasAssetCacheConfiguration()) {
            return false;
        }
        if ((!hasAssetCacheConfiguration() || getAssetCacheConfiguration().equals(initResponse.getAssetCacheConfiguration())) && this.restrictionMode_ == initResponse.restrictionMode_ && getBmifvTtlSessions() == initResponse.getBmifvTtlSessions() && hasCrashSignalConfig() == initResponse.hasCrashSignalConfig()) {
            return (!hasCrashSignalConfig() || getCrashSignalConfig().equals(initResponse.getCrashSignalConfig())) && this.unknownFields.equals(initResponse.unknownFields);
        }
        return false;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public int hashCode() {
        int i = this.memoizedHashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getEndpoint().hashCode();
        if (getEventCount() > 0) {
            iHashCode = (((iHashCode * 37) + 2) * 53) + getEventList().hashCode();
        }
        int sessionResetAfter = (((iHashCode * 37) + 3) * 53) + getSessionResetAfter();
        if (getAdNetworksCount() > 0) {
            sessionResetAfter = (((sessionResetAfter * 37) + 4) * 53) + getAdNetworksList().hashCode();
        }
        int adCacheMaxAge = (((((((((((sessionResetAfter * 37) + 5) * 53) + this.adCacheControl_) * 37) + 6) * 53) + getAdCacheMaxAge()) * 37) + 7) * 53) + getAdRequestTmax();
        if (!internalGetAdCachePlacementControl().getMap().isEmpty()) {
            adCacheMaxAge = (((adCacheMaxAge * 37) + 8) * 53) + internalGetAdCachePlacementControl().hashCode();
        }
        int adNetworksLoadingTimeout = (((adCacheMaxAge * 37) + 9) * 53) + getAdNetworksLoadingTimeout();
        if (hasSdkAnalyticConfig()) {
            adNetworksLoadingTimeout = (((adNetworksLoadingTimeout * 37) + 10) * 53) + getSdkAnalyticConfig().hashCode();
        }
        if (hasEventConfiguration()) {
            adNetworksLoadingTimeout = (((adNetworksLoadingTimeout * 37) + 11) * 53) + getEventConfiguration().hashCode();
        }
        if (getTokenConfigurationsCount() > 0) {
            adNetworksLoadingTimeout = (((adNetworksLoadingTimeout * 37) + 12) * 53) + getTokenConfigurationsList().hashCode();
        }
        int iHashBoolean = (((adNetworksLoadingTimeout * 37) + 13) * 53) + Internal.hashBoolean(getShowWithoutInternet());
        if (hasExtras()) {
            iHashBoolean = (((iHashBoolean * 37) + 14) * 53) + getExtras().hashCode();
        }
        if (hasSdkAnalyticConfigV2()) {
            iHashBoolean = (((iHashBoolean * 37) + 15) * 53) + getSdkAnalyticConfigV2().hashCode();
        }
        if (hasAssetCacheConfiguration()) {
            iHashBoolean = (((iHashBoolean * 37) + 16) * 53) + getAssetCacheConfiguration().hashCode();
        }
        int bmifvTtlSessions = (((((((iHashBoolean * 37) + 17) * 53) + this.restrictionMode_) * 37) + 18) * 53) + getBmifvTtlSessions();
        if (hasCrashSignalConfig()) {
            bmifvTtlSessions = (((bmifvTtlSessions * 37) + 19) * 53) + getCrashSignalConfig().hashCode();
        }
        int iHashCode2 = (bmifvTtlSessions * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode2;
        return iHashCode2;
    }

    public static InitResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static InitResponse parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
    }

    public static InitResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    public static InitResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, extensionRegistryLite);
    }

    public static InitResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    public static InitResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, extensionRegistryLite);
    }

    public static InitResponse parseFrom(InputStream inputStream) throws IOException {
        return (InitResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static InitResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (InitResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static InitResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (InitResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static InitResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (InitResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static InitResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (InitResponse) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
    }

    public static InitResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (InitResponse) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Builder newBuilder(InitResponse initResponse) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(initResponse);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
        return new Builder(builderParent);
    }

    public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements InitResponseOrBuilder {
        private int adCacheControl_;
        private int adCacheMaxAge_;
        private MapField<String, AdCachePlacementControl> adCachePlacementControl_;
        private RepeatedFieldBuilderV3<AdNetwork, AdNetwork.Builder, AdNetworkOrBuilder> adNetworksBuilder_;
        private int adNetworksLoadingTimeout_;
        private List<AdNetwork> adNetworks_;
        private int adRequestTmax_;
        private SingleFieldBuilderV3<AssetCache.Configuration, AssetCache.Configuration.Builder, AssetCache.ConfigurationOrBuilder> assetCacheConfigurationBuilder_;
        private AssetCache.Configuration assetCacheConfiguration_;
        private int bitField0_;
        private int bmifvTtlSessions_;
        private SingleFieldBuilderV3<SdkCrashSignalConfig, SdkCrashSignalConfig.Builder, SdkCrashSignalConfigOrBuilder> crashSignalConfigBuilder_;
        private SdkCrashSignalConfig crashSignalConfig_;
        private Object endpoint_;
        private RepeatedFieldBuilderV3<Ad.Event, Ad.Event.Builder, Ad.EventOrBuilder> eventBuilder_;
        private SingleFieldBuilderV3<AdExtension.EventConfiguration, AdExtension.EventConfiguration.Builder, AdExtension.EventConfigurationOrBuilder> eventConfigurationBuilder_;
        private AdExtension.EventConfiguration eventConfiguration_;
        private List<Ad.Event> event_;
        private SingleFieldBuilderV3<Extras, Extras.Builder, ExtrasOrBuilder> extrasBuilder_;
        private Extras extras_;
        private int restrictionMode_;
        private SingleFieldBuilderV3<SdkAnalyticConfig, SdkAnalyticConfig.Builder, SdkAnalyticConfigOrBuilder> sdkAnalyticConfigBuilder_;
        private SingleFieldBuilderV3<Configuration, Configuration.Builder, ConfigurationOrBuilder> sdkAnalyticConfigV2Builder_;
        private Configuration sdkAnalyticConfigV2_;
        private SdkAnalyticConfig sdkAnalyticConfig_;
        private int sessionResetAfter_;
        private boolean showWithoutInternet_;
        private RepeatedFieldBuilderV3<TokenConfiguration, TokenConfiguration.Builder, TokenConfigurationOrBuilder> tokenConfigurationsBuilder_;
        private List<TokenConfiguration> tokenConfigurations_;

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return InitProto.internal_static_bidmachine_protobuf_InitResponse_descriptor;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
        public MapField internalGetMapField(int i) {
            if (i == 8) {
                return internalGetAdCachePlacementControl();
            }
            throw new RuntimeException("Invalid map field number: " + i);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
        public MapField internalGetMutableMapField(int i) {
            if (i == 8) {
                return internalGetMutableAdCachePlacementControl();
            }
            throw new RuntimeException("Invalid map field number: " + i);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return InitProto.internal_static_bidmachine_protobuf_InitResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(InitResponse.class, Builder.class);
        }

        private Builder() {
            this.endpoint_ = "";
            List list = Collections.EMPTY_LIST;
            this.event_ = list;
            this.adNetworks_ = list;
            this.adCacheControl_ = 0;
            this.tokenConfigurations_ = list;
            this.restrictionMode_ = 0;
            maybeForceBuilderInitialization();
        }

        private Builder(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            this.endpoint_ = "";
            List list = Collections.EMPTY_LIST;
            this.event_ = list;
            this.adNetworks_ = list;
            this.adCacheControl_ = 0;
            this.tokenConfigurations_ = list;
            this.restrictionMode_ = 0;
            maybeForceBuilderInitialization();
        }

        private void maybeForceBuilderInitialization() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                getEventFieldBuilder();
                getAdNetworksFieldBuilder();
                getTokenConfigurationsFieldBuilder();
            }
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Builder clear() {
            super.clear();
            this.endpoint_ = "";
            RepeatedFieldBuilderV3<Ad.Event, Ad.Event.Builder, Ad.EventOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                this.event_ = Collections.EMPTY_LIST;
                this.bitField0_ &= -2;
            } else {
                repeatedFieldBuilderV3.clear();
            }
            this.sessionResetAfter_ = 0;
            RepeatedFieldBuilderV3<AdNetwork, AdNetwork.Builder, AdNetworkOrBuilder> repeatedFieldBuilderV32 = this.adNetworksBuilder_;
            if (repeatedFieldBuilderV32 == null) {
                this.adNetworks_ = Collections.EMPTY_LIST;
                this.bitField0_ &= -3;
            } else {
                repeatedFieldBuilderV32.clear();
            }
            this.adCacheControl_ = 0;
            this.adCacheMaxAge_ = 0;
            this.adRequestTmax_ = 0;
            internalGetMutableAdCachePlacementControl().clear();
            this.adNetworksLoadingTimeout_ = 0;
            if (this.sdkAnalyticConfigBuilder_ == null) {
                this.sdkAnalyticConfig_ = null;
            } else {
                this.sdkAnalyticConfig_ = null;
                this.sdkAnalyticConfigBuilder_ = null;
            }
            if (this.eventConfigurationBuilder_ == null) {
                this.eventConfiguration_ = null;
            } else {
                this.eventConfiguration_ = null;
                this.eventConfigurationBuilder_ = null;
            }
            RepeatedFieldBuilderV3<TokenConfiguration, TokenConfiguration.Builder, TokenConfigurationOrBuilder> repeatedFieldBuilderV33 = this.tokenConfigurationsBuilder_;
            if (repeatedFieldBuilderV33 == null) {
                this.tokenConfigurations_ = Collections.EMPTY_LIST;
                this.bitField0_ &= -9;
            } else {
                repeatedFieldBuilderV33.clear();
            }
            this.showWithoutInternet_ = false;
            if (this.extrasBuilder_ == null) {
                this.extras_ = null;
            } else {
                this.extras_ = null;
                this.extrasBuilder_ = null;
            }
            if (this.sdkAnalyticConfigV2Builder_ == null) {
                this.sdkAnalyticConfigV2_ = null;
            } else {
                this.sdkAnalyticConfigV2_ = null;
                this.sdkAnalyticConfigV2Builder_ = null;
            }
            if (this.assetCacheConfigurationBuilder_ == null) {
                this.assetCacheConfiguration_ = null;
            } else {
                this.assetCacheConfiguration_ = null;
                this.assetCacheConfigurationBuilder_ = null;
            }
            this.restrictionMode_ = 0;
            this.bmifvTtlSessions_ = 0;
            if (this.crashSignalConfigBuilder_ == null) {
                this.crashSignalConfig_ = null;
                return this;
            }
            this.crashSignalConfig_ = null;
            this.crashSignalConfigBuilder_ = null;
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return InitProto.internal_static_bidmachine_protobuf_InitResponse_descriptor;
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        /* JADX INFO: renamed from: getDefaultInstanceForType */
        public InitResponse mo687getDefaultInstanceForType() {
            return InitResponse.getDefaultInstance();
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public InitResponse build() {
            InitResponse initResponseBuildPartial = buildPartial();
            if (initResponseBuildPartial.isInitialized()) {
                return initResponseBuildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) initResponseBuildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public InitResponse buildPartial() {
            InitResponse initResponse = new InitResponse(this);
            initResponse.endpoint_ = this.endpoint_;
            RepeatedFieldBuilderV3<Ad.Event, Ad.Event.Builder, Ad.EventOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
            if (repeatedFieldBuilderV3 != null) {
                initResponse.event_ = repeatedFieldBuilderV3.build();
            } else {
                if ((this.bitField0_ & 1) != 0) {
                    this.event_ = Collections.unmodifiableList(this.event_);
                    this.bitField0_ &= -2;
                }
                initResponse.event_ = this.event_;
            }
            initResponse.sessionResetAfter_ = this.sessionResetAfter_;
            RepeatedFieldBuilderV3<AdNetwork, AdNetwork.Builder, AdNetworkOrBuilder> repeatedFieldBuilderV32 = this.adNetworksBuilder_;
            if (repeatedFieldBuilderV32 != null) {
                initResponse.adNetworks_ = repeatedFieldBuilderV32.build();
            } else {
                if ((this.bitField0_ & 2) != 0) {
                    this.adNetworks_ = Collections.unmodifiableList(this.adNetworks_);
                    this.bitField0_ &= -3;
                }
                initResponse.adNetworks_ = this.adNetworks_;
            }
            initResponse.adCacheControl_ = this.adCacheControl_;
            initResponse.adCacheMaxAge_ = this.adCacheMaxAge_;
            initResponse.adRequestTmax_ = this.adRequestTmax_;
            initResponse.adCachePlacementControl_ = internalGetAdCachePlacementControl();
            initResponse.adCachePlacementControl_.makeImmutable();
            initResponse.adNetworksLoadingTimeout_ = this.adNetworksLoadingTimeout_;
            SingleFieldBuilderV3<SdkAnalyticConfig, SdkAnalyticConfig.Builder, SdkAnalyticConfigOrBuilder> singleFieldBuilderV3 = this.sdkAnalyticConfigBuilder_;
            if (singleFieldBuilderV3 == null) {
                initResponse.sdkAnalyticConfig_ = this.sdkAnalyticConfig_;
            } else {
                initResponse.sdkAnalyticConfig_ = (SdkAnalyticConfig) singleFieldBuilderV3.build();
            }
            SingleFieldBuilderV3<AdExtension.EventConfiguration, AdExtension.EventConfiguration.Builder, AdExtension.EventConfigurationOrBuilder> singleFieldBuilderV32 = this.eventConfigurationBuilder_;
            if (singleFieldBuilderV32 == null) {
                initResponse.eventConfiguration_ = this.eventConfiguration_;
            } else {
                initResponse.eventConfiguration_ = (AdExtension.EventConfiguration) singleFieldBuilderV32.build();
            }
            RepeatedFieldBuilderV3<TokenConfiguration, TokenConfiguration.Builder, TokenConfigurationOrBuilder> repeatedFieldBuilderV33 = this.tokenConfigurationsBuilder_;
            if (repeatedFieldBuilderV33 != null) {
                initResponse.tokenConfigurations_ = repeatedFieldBuilderV33.build();
            } else {
                if ((this.bitField0_ & 8) != 0) {
                    this.tokenConfigurations_ = Collections.unmodifiableList(this.tokenConfigurations_);
                    this.bitField0_ &= -9;
                }
                initResponse.tokenConfigurations_ = this.tokenConfigurations_;
            }
            initResponse.showWithoutInternet_ = this.showWithoutInternet_;
            SingleFieldBuilderV3<Extras, Extras.Builder, ExtrasOrBuilder> singleFieldBuilderV33 = this.extrasBuilder_;
            if (singleFieldBuilderV33 == null) {
                initResponse.extras_ = this.extras_;
            } else {
                initResponse.extras_ = (Extras) singleFieldBuilderV33.build();
            }
            SingleFieldBuilderV3<Configuration, Configuration.Builder, ConfigurationOrBuilder> singleFieldBuilderV34 = this.sdkAnalyticConfigV2Builder_;
            if (singleFieldBuilderV34 == null) {
                initResponse.sdkAnalyticConfigV2_ = this.sdkAnalyticConfigV2_;
            } else {
                initResponse.sdkAnalyticConfigV2_ = (Configuration) singleFieldBuilderV34.build();
            }
            SingleFieldBuilderV3<AssetCache.Configuration, AssetCache.Configuration.Builder, AssetCache.ConfigurationOrBuilder> singleFieldBuilderV35 = this.assetCacheConfigurationBuilder_;
            if (singleFieldBuilderV35 == null) {
                initResponse.assetCacheConfiguration_ = this.assetCacheConfiguration_;
            } else {
                initResponse.assetCacheConfiguration_ = (AssetCache.Configuration) singleFieldBuilderV35.build();
            }
            initResponse.restrictionMode_ = this.restrictionMode_;
            initResponse.bmifvTtlSessions_ = this.bmifvTtlSessions_;
            SingleFieldBuilderV3<SdkCrashSignalConfig, SdkCrashSignalConfig.Builder, SdkCrashSignalConfigOrBuilder> singleFieldBuilderV36 = this.crashSignalConfigBuilder_;
            if (singleFieldBuilderV36 == null) {
                initResponse.crashSignalConfig_ = this.crashSignalConfig_;
            } else {
                initResponse.crashSignalConfig_ = (SdkCrashSignalConfig) singleFieldBuilderV36.build();
            }
            onBuilt();
            return initResponse;
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
            if (message instanceof InitResponse) {
                return mergeFrom((InitResponse) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public Builder mergeFrom(InitResponse initResponse) {
            if (initResponse == InitResponse.getDefaultInstance()) {
                return this;
            }
            if (!initResponse.getEndpoint().isEmpty()) {
                this.endpoint_ = initResponse.endpoint_;
                onChanged();
            }
            if (this.eventBuilder_ == null) {
                if (!initResponse.event_.isEmpty()) {
                    if (this.event_.isEmpty()) {
                        this.event_ = initResponse.event_;
                        this.bitField0_ &= -2;
                    } else {
                        ensureEventIsMutable();
                        this.event_.addAll(initResponse.event_);
                    }
                    onChanged();
                }
            } else if (!initResponse.event_.isEmpty()) {
                if (!this.eventBuilder_.isEmpty()) {
                    this.eventBuilder_.addAllMessages(initResponse.event_);
                } else {
                    this.eventBuilder_.dispose();
                    this.eventBuilder_ = null;
                    this.event_ = initResponse.event_;
                    this.bitField0_ &= -2;
                    this.eventBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getEventFieldBuilder() : null;
                }
            }
            if (initResponse.getSessionResetAfter() != 0) {
                setSessionResetAfter(initResponse.getSessionResetAfter());
            }
            if (this.adNetworksBuilder_ == null) {
                if (!initResponse.adNetworks_.isEmpty()) {
                    if (this.adNetworks_.isEmpty()) {
                        this.adNetworks_ = initResponse.adNetworks_;
                        this.bitField0_ &= -3;
                    } else {
                        ensureAdNetworksIsMutable();
                        this.adNetworks_.addAll(initResponse.adNetworks_);
                    }
                    onChanged();
                }
            } else if (!initResponse.adNetworks_.isEmpty()) {
                if (!this.adNetworksBuilder_.isEmpty()) {
                    this.adNetworksBuilder_.addAllMessages(initResponse.adNetworks_);
                } else {
                    this.adNetworksBuilder_.dispose();
                    this.adNetworksBuilder_ = null;
                    this.adNetworks_ = initResponse.adNetworks_;
                    this.bitField0_ &= -3;
                    this.adNetworksBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getAdNetworksFieldBuilder() : null;
                }
            }
            if (initResponse.adCacheControl_ != 0) {
                setAdCacheControlValue(initResponse.getAdCacheControlValue());
            }
            if (initResponse.getAdCacheMaxAge() != 0) {
                setAdCacheMaxAge(initResponse.getAdCacheMaxAge());
            }
            if (initResponse.getAdRequestTmax() != 0) {
                setAdRequestTmax(initResponse.getAdRequestTmax());
            }
            internalGetMutableAdCachePlacementControl().mergeFrom(initResponse.internalGetAdCachePlacementControl());
            if (initResponse.getAdNetworksLoadingTimeout() != 0) {
                setAdNetworksLoadingTimeout(initResponse.getAdNetworksLoadingTimeout());
            }
            if (initResponse.hasSdkAnalyticConfig()) {
                mergeSdkAnalyticConfig(initResponse.getSdkAnalyticConfig());
            }
            if (initResponse.hasEventConfiguration()) {
                mergeEventConfiguration(initResponse.getEventConfiguration());
            }
            if (this.tokenConfigurationsBuilder_ == null) {
                if (!initResponse.tokenConfigurations_.isEmpty()) {
                    if (this.tokenConfigurations_.isEmpty()) {
                        this.tokenConfigurations_ = initResponse.tokenConfigurations_;
                        this.bitField0_ &= -9;
                    } else {
                        ensureTokenConfigurationsIsMutable();
                        this.tokenConfigurations_.addAll(initResponse.tokenConfigurations_);
                    }
                    onChanged();
                }
            } else if (!initResponse.tokenConfigurations_.isEmpty()) {
                if (!this.tokenConfigurationsBuilder_.isEmpty()) {
                    this.tokenConfigurationsBuilder_.addAllMessages(initResponse.tokenConfigurations_);
                } else {
                    this.tokenConfigurationsBuilder_.dispose();
                    this.tokenConfigurationsBuilder_ = null;
                    this.tokenConfigurations_ = initResponse.tokenConfigurations_;
                    this.bitField0_ &= -9;
                    this.tokenConfigurationsBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getTokenConfigurationsFieldBuilder() : null;
                }
            }
            if (initResponse.getShowWithoutInternet()) {
                setShowWithoutInternet(initResponse.getShowWithoutInternet());
            }
            if (initResponse.hasExtras()) {
                mergeExtras(initResponse.getExtras());
            }
            if (initResponse.hasSdkAnalyticConfigV2()) {
                mergeSdkAnalyticConfigV2(initResponse.getSdkAnalyticConfigV2());
            }
            if (initResponse.hasAssetCacheConfiguration()) {
                mergeAssetCacheConfiguration(initResponse.getAssetCacheConfiguration());
            }
            if (initResponse.restrictionMode_ != 0) {
                setRestrictionModeValue(initResponse.getRestrictionModeValue());
            }
            if (initResponse.getBmifvTtlSessions() != 0) {
                setBmifvTtlSessions(initResponse.getBmifvTtlSessions());
            }
            if (initResponse.hasCrashSignalConfig()) {
                mergeCrashSignalConfig(initResponse.getCrashSignalConfig());
            }
            mergeUnknownFields(((GeneratedMessageV3) initResponse).unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public io.bidmachine.protobuf.InitResponse.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r3, com.explorestack.protobuf.ExtensionRegistryLite r4) throws java.lang.Throwable {
            /*
                r2 = this;
                r0 = 0
                com.explorestack.protobuf.Parser r1 = io.bidmachine.protobuf.InitResponse.access$2800()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                io.bidmachine.protobuf.InitResponse r3 = (io.bidmachine.protobuf.InitResponse) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                io.bidmachine.protobuf.InitResponse r4 = (io.bidmachine.protobuf.InitResponse) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.InitResponse.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):io.bidmachine.protobuf.InitResponse$Builder");
        }

        @Override // io.bidmachine.protobuf.InitResponseOrBuilder
        public String getEndpoint() {
            Object obj = this.endpoint_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.endpoint_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.InitResponseOrBuilder
        public ByteString getEndpointBytes() {
            Object obj = this.endpoint_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.endpoint_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        public Builder setEndpoint(String str) {
            str.getClass();
            this.endpoint_ = str;
            onChanged();
            return this;
        }

        public Builder clearEndpoint() {
            this.endpoint_ = InitResponse.getDefaultInstance().getEndpoint();
            onChanged();
            return this;
        }

        public Builder setEndpointBytes(ByteString byteString) {
            byteString.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.endpoint_ = byteString;
            onChanged();
            return this;
        }

        private void ensureEventIsMutable() {
            if ((this.bitField0_ & 1) == 0) {
                this.event_ = new ArrayList(this.event_);
                this.bitField0_ |= 1;
            }
        }

        @Override // io.bidmachine.protobuf.InitResponseOrBuilder
        public List<Ad.Event> getEventList() {
            RepeatedFieldBuilderV3<Ad.Event, Ad.Event.Builder, Ad.EventOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                return Collections.unmodifiableList(this.event_);
            }
            return repeatedFieldBuilderV3.getMessageList();
        }

        @Override // io.bidmachine.protobuf.InitResponseOrBuilder
        public int getEventCount() {
            RepeatedFieldBuilderV3<Ad.Event, Ad.Event.Builder, Ad.EventOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                return this.event_.size();
            }
            return repeatedFieldBuilderV3.getCount();
        }

        @Override // io.bidmachine.protobuf.InitResponseOrBuilder
        public Ad.Event getEvent(int i) {
            RepeatedFieldBuilderV3<Ad.Event, Ad.Event.Builder, Ad.EventOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                return this.event_.get(i);
            }
            return (Ad.Event) repeatedFieldBuilderV3.getMessage(i);
        }

        public Builder setEvent(int i, Ad.Event event) {
            RepeatedFieldBuilderV3<Ad.Event, Ad.Event.Builder, Ad.EventOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                event.getClass();
                ensureEventIsMutable();
                this.event_.set(i, event);
                onChanged();
                return this;
            }
            repeatedFieldBuilderV3.setMessage(i, event);
            return this;
        }

        public Builder setEvent(int i, Ad.Event.Builder builder) {
            RepeatedFieldBuilderV3<Ad.Event, Ad.Event.Builder, Ad.EventOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureEventIsMutable();
                this.event_.set(i, builder.build());
                onChanged();
                return this;
            }
            repeatedFieldBuilderV3.setMessage(i, builder.build());
            return this;
        }

        public Builder addEvent(Ad.Event event) {
            RepeatedFieldBuilderV3<Ad.Event, Ad.Event.Builder, Ad.EventOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                event.getClass();
                ensureEventIsMutable();
                this.event_.add(event);
                onChanged();
                return this;
            }
            repeatedFieldBuilderV3.addMessage(event);
            return this;
        }

        public Builder addEvent(int i, Ad.Event event) {
            RepeatedFieldBuilderV3<Ad.Event, Ad.Event.Builder, Ad.EventOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                event.getClass();
                ensureEventIsMutable();
                this.event_.add(i, event);
                onChanged();
                return this;
            }
            repeatedFieldBuilderV3.addMessage(i, event);
            return this;
        }

        public Builder addEvent(Ad.Event.Builder builder) {
            RepeatedFieldBuilderV3<Ad.Event, Ad.Event.Builder, Ad.EventOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureEventIsMutable();
                this.event_.add(builder.build());
                onChanged();
                return this;
            }
            repeatedFieldBuilderV3.addMessage(builder.build());
            return this;
        }

        public Builder addEvent(int i, Ad.Event.Builder builder) {
            RepeatedFieldBuilderV3<Ad.Event, Ad.Event.Builder, Ad.EventOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureEventIsMutable();
                this.event_.add(i, builder.build());
                onChanged();
                return this;
            }
            repeatedFieldBuilderV3.addMessage(i, builder.build());
            return this;
        }

        public Builder addAllEvent(Iterable<? extends Ad.Event> iterable) {
            RepeatedFieldBuilderV3<Ad.Event, Ad.Event.Builder, Ad.EventOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureEventIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.event_);
                onChanged();
                return this;
            }
            repeatedFieldBuilderV3.addAllMessages(iterable);
            return this;
        }

        public Builder clearEvent() {
            RepeatedFieldBuilderV3<Ad.Event, Ad.Event.Builder, Ad.EventOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                this.event_ = Collections.EMPTY_LIST;
                this.bitField0_ &= -2;
                onChanged();
                return this;
            }
            repeatedFieldBuilderV3.clear();
            return this;
        }

        public Builder removeEvent(int i) {
            RepeatedFieldBuilderV3<Ad.Event, Ad.Event.Builder, Ad.EventOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureEventIsMutable();
                this.event_.remove(i);
                onChanged();
                return this;
            }
            repeatedFieldBuilderV3.remove(i);
            return this;
        }

        public Ad.Event.Builder getEventBuilder(int i) {
            return (Ad.Event.Builder) getEventFieldBuilder().getBuilder(i);
        }

        @Override // io.bidmachine.protobuf.InitResponseOrBuilder
        public Ad.EventOrBuilder getEventOrBuilder(int i) {
            RepeatedFieldBuilderV3<Ad.Event, Ad.Event.Builder, Ad.EventOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                return this.event_.get(i);
            }
            return (Ad.EventOrBuilder) repeatedFieldBuilderV3.getMessageOrBuilder(i);
        }

        @Override // io.bidmachine.protobuf.InitResponseOrBuilder
        public List<? extends Ad.EventOrBuilder> getEventOrBuilderList() {
            RepeatedFieldBuilderV3<Ad.Event, Ad.Event.Builder, Ad.EventOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
            if (repeatedFieldBuilderV3 != null) {
                return repeatedFieldBuilderV3.getMessageOrBuilderList();
            }
            return Collections.unmodifiableList(this.event_);
        }

        public Ad.Event.Builder addEventBuilder() {
            return (Ad.Event.Builder) getEventFieldBuilder().addBuilder(Ad.Event.getDefaultInstance());
        }

        public Ad.Event.Builder addEventBuilder(int i) {
            return (Ad.Event.Builder) getEventFieldBuilder().addBuilder(i, Ad.Event.getDefaultInstance());
        }

        public List<Ad.Event.Builder> getEventBuilderList() {
            return getEventFieldBuilder().getBuilderList();
        }

        private RepeatedFieldBuilderV3<Ad.Event, Ad.Event.Builder, Ad.EventOrBuilder> getEventFieldBuilder() {
            if (this.eventBuilder_ == null) {
                this.eventBuilder_ = new RepeatedFieldBuilderV3<>(this.event_, (this.bitField0_ & 1) != 0, getParentForChildren(), isClean());
                this.event_ = null;
            }
            return this.eventBuilder_;
        }

        @Override // io.bidmachine.protobuf.InitResponseOrBuilder
        public int getSessionResetAfter() {
            return this.sessionResetAfter_;
        }

        public Builder setSessionResetAfter(int i) {
            this.sessionResetAfter_ = i;
            onChanged();
            return this;
        }

        public Builder clearSessionResetAfter() {
            this.sessionResetAfter_ = 0;
            onChanged();
            return this;
        }

        private void ensureAdNetworksIsMutable() {
            if ((this.bitField0_ & 2) == 0) {
                this.adNetworks_ = new ArrayList(this.adNetworks_);
                this.bitField0_ |= 2;
            }
        }

        @Override // io.bidmachine.protobuf.InitResponseOrBuilder
        public List<AdNetwork> getAdNetworksList() {
            RepeatedFieldBuilderV3<AdNetwork, AdNetwork.Builder, AdNetworkOrBuilder> repeatedFieldBuilderV3 = this.adNetworksBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                return Collections.unmodifiableList(this.adNetworks_);
            }
            return repeatedFieldBuilderV3.getMessageList();
        }

        @Override // io.bidmachine.protobuf.InitResponseOrBuilder
        public int getAdNetworksCount() {
            RepeatedFieldBuilderV3<AdNetwork, AdNetwork.Builder, AdNetworkOrBuilder> repeatedFieldBuilderV3 = this.adNetworksBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                return this.adNetworks_.size();
            }
            return repeatedFieldBuilderV3.getCount();
        }

        @Override // io.bidmachine.protobuf.InitResponseOrBuilder
        public AdNetwork getAdNetworks(int i) {
            RepeatedFieldBuilderV3<AdNetwork, AdNetwork.Builder, AdNetworkOrBuilder> repeatedFieldBuilderV3 = this.adNetworksBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                return this.adNetworks_.get(i);
            }
            return (AdNetwork) repeatedFieldBuilderV3.getMessage(i);
        }

        public Builder setAdNetworks(int i, AdNetwork adNetwork) {
            RepeatedFieldBuilderV3<AdNetwork, AdNetwork.Builder, AdNetworkOrBuilder> repeatedFieldBuilderV3 = this.adNetworksBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                adNetwork.getClass();
                ensureAdNetworksIsMutable();
                this.adNetworks_.set(i, adNetwork);
                onChanged();
                return this;
            }
            repeatedFieldBuilderV3.setMessage(i, adNetwork);
            return this;
        }

        public Builder setAdNetworks(int i, AdNetwork.Builder builder) {
            RepeatedFieldBuilderV3<AdNetwork, AdNetwork.Builder, AdNetworkOrBuilder> repeatedFieldBuilderV3 = this.adNetworksBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureAdNetworksIsMutable();
                this.adNetworks_.set(i, builder.build());
                onChanged();
                return this;
            }
            repeatedFieldBuilderV3.setMessage(i, builder.build());
            return this;
        }

        public Builder addAdNetworks(AdNetwork adNetwork) {
            RepeatedFieldBuilderV3<AdNetwork, AdNetwork.Builder, AdNetworkOrBuilder> repeatedFieldBuilderV3 = this.adNetworksBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                adNetwork.getClass();
                ensureAdNetworksIsMutable();
                this.adNetworks_.add(adNetwork);
                onChanged();
                return this;
            }
            repeatedFieldBuilderV3.addMessage(adNetwork);
            return this;
        }

        public Builder addAdNetworks(int i, AdNetwork adNetwork) {
            RepeatedFieldBuilderV3<AdNetwork, AdNetwork.Builder, AdNetworkOrBuilder> repeatedFieldBuilderV3 = this.adNetworksBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                adNetwork.getClass();
                ensureAdNetworksIsMutable();
                this.adNetworks_.add(i, adNetwork);
                onChanged();
                return this;
            }
            repeatedFieldBuilderV3.addMessage(i, adNetwork);
            return this;
        }

        public Builder addAdNetworks(AdNetwork.Builder builder) {
            RepeatedFieldBuilderV3<AdNetwork, AdNetwork.Builder, AdNetworkOrBuilder> repeatedFieldBuilderV3 = this.adNetworksBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureAdNetworksIsMutable();
                this.adNetworks_.add(builder.build());
                onChanged();
                return this;
            }
            repeatedFieldBuilderV3.addMessage(builder.build());
            return this;
        }

        public Builder addAdNetworks(int i, AdNetwork.Builder builder) {
            RepeatedFieldBuilderV3<AdNetwork, AdNetwork.Builder, AdNetworkOrBuilder> repeatedFieldBuilderV3 = this.adNetworksBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureAdNetworksIsMutable();
                this.adNetworks_.add(i, builder.build());
                onChanged();
                return this;
            }
            repeatedFieldBuilderV3.addMessage(i, builder.build());
            return this;
        }

        public Builder addAllAdNetworks(Iterable<? extends AdNetwork> iterable) {
            RepeatedFieldBuilderV3<AdNetwork, AdNetwork.Builder, AdNetworkOrBuilder> repeatedFieldBuilderV3 = this.adNetworksBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureAdNetworksIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.adNetworks_);
                onChanged();
                return this;
            }
            repeatedFieldBuilderV3.addAllMessages(iterable);
            return this;
        }

        public Builder clearAdNetworks() {
            RepeatedFieldBuilderV3<AdNetwork, AdNetwork.Builder, AdNetworkOrBuilder> repeatedFieldBuilderV3 = this.adNetworksBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                this.adNetworks_ = Collections.EMPTY_LIST;
                this.bitField0_ &= -3;
                onChanged();
                return this;
            }
            repeatedFieldBuilderV3.clear();
            return this;
        }

        public Builder removeAdNetworks(int i) {
            RepeatedFieldBuilderV3<AdNetwork, AdNetwork.Builder, AdNetworkOrBuilder> repeatedFieldBuilderV3 = this.adNetworksBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureAdNetworksIsMutable();
                this.adNetworks_.remove(i);
                onChanged();
                return this;
            }
            repeatedFieldBuilderV3.remove(i);
            return this;
        }

        public AdNetwork.Builder getAdNetworksBuilder(int i) {
            return (AdNetwork.Builder) getAdNetworksFieldBuilder().getBuilder(i);
        }

        @Override // io.bidmachine.protobuf.InitResponseOrBuilder
        public AdNetworkOrBuilder getAdNetworksOrBuilder(int i) {
            RepeatedFieldBuilderV3<AdNetwork, AdNetwork.Builder, AdNetworkOrBuilder> repeatedFieldBuilderV3 = this.adNetworksBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                return this.adNetworks_.get(i);
            }
            return (AdNetworkOrBuilder) repeatedFieldBuilderV3.getMessageOrBuilder(i);
        }

        @Override // io.bidmachine.protobuf.InitResponseOrBuilder
        public List<? extends AdNetworkOrBuilder> getAdNetworksOrBuilderList() {
            RepeatedFieldBuilderV3<AdNetwork, AdNetwork.Builder, AdNetworkOrBuilder> repeatedFieldBuilderV3 = this.adNetworksBuilder_;
            if (repeatedFieldBuilderV3 != null) {
                return repeatedFieldBuilderV3.getMessageOrBuilderList();
            }
            return Collections.unmodifiableList(this.adNetworks_);
        }

        public AdNetwork.Builder addAdNetworksBuilder() {
            return (AdNetwork.Builder) getAdNetworksFieldBuilder().addBuilder(AdNetwork.getDefaultInstance());
        }

        public AdNetwork.Builder addAdNetworksBuilder(int i) {
            return (AdNetwork.Builder) getAdNetworksFieldBuilder().addBuilder(i, AdNetwork.getDefaultInstance());
        }

        public List<AdNetwork.Builder> getAdNetworksBuilderList() {
            return getAdNetworksFieldBuilder().getBuilderList();
        }

        private RepeatedFieldBuilderV3<AdNetwork, AdNetwork.Builder, AdNetworkOrBuilder> getAdNetworksFieldBuilder() {
            if (this.adNetworksBuilder_ == null) {
                this.adNetworksBuilder_ = new RepeatedFieldBuilderV3<>(this.adNetworks_, (this.bitField0_ & 2) != 0, getParentForChildren(), isClean());
                this.adNetworks_ = null;
            }
            return this.adNetworksBuilder_;
        }

        @Override // io.bidmachine.protobuf.InitResponseOrBuilder
        public int getAdCacheControlValue() {
            return this.adCacheControl_;
        }

        public Builder setAdCacheControlValue(int i) {
            this.adCacheControl_ = i;
            onChanged();
            return this;
        }

        @Override // io.bidmachine.protobuf.InitResponseOrBuilder
        public AdCacheControl getAdCacheControl() {
            AdCacheControl adCacheControlValueOf = AdCacheControl.valueOf(this.adCacheControl_);
            return adCacheControlValueOf == null ? AdCacheControl.UNRECOGNIZED : adCacheControlValueOf;
        }

        public Builder setAdCacheControl(AdCacheControl adCacheControl) {
            adCacheControl.getClass();
            this.adCacheControl_ = adCacheControl.getNumber();
            onChanged();
            return this;
        }

        public Builder clearAdCacheControl() {
            this.adCacheControl_ = 0;
            onChanged();
            return this;
        }

        @Override // io.bidmachine.protobuf.InitResponseOrBuilder
        public int getAdCacheMaxAge() {
            return this.adCacheMaxAge_;
        }

        public Builder setAdCacheMaxAge(int i) {
            this.adCacheMaxAge_ = i;
            onChanged();
            return this;
        }

        public Builder clearAdCacheMaxAge() {
            this.adCacheMaxAge_ = 0;
            onChanged();
            return this;
        }

        @Override // io.bidmachine.protobuf.InitResponseOrBuilder
        public int getAdRequestTmax() {
            return this.adRequestTmax_;
        }

        public Builder setAdRequestTmax(int i) {
            this.adRequestTmax_ = i;
            onChanged();
            return this;
        }

        public Builder clearAdRequestTmax() {
            this.adRequestTmax_ = 0;
            onChanged();
            return this;
        }

        private MapField<String, AdCachePlacementControl> internalGetAdCachePlacementControl() {
            MapField<String, AdCachePlacementControl> mapField = this.adCachePlacementControl_;
            return mapField == null ? MapField.emptyMapField(AdCachePlacementControlDefaultEntryHolder.defaultEntry) : mapField;
        }

        private MapField<String, AdCachePlacementControl> internalGetMutableAdCachePlacementControl() {
            onChanged();
            if (this.adCachePlacementControl_ == null) {
                this.adCachePlacementControl_ = MapField.newMapField(AdCachePlacementControlDefaultEntryHolder.defaultEntry);
            }
            if (!this.adCachePlacementControl_.isMutable()) {
                this.adCachePlacementControl_ = this.adCachePlacementControl_.copy();
            }
            return this.adCachePlacementControl_;
        }

        @Override // io.bidmachine.protobuf.InitResponseOrBuilder
        public int getAdCachePlacementControlCount() {
            return internalGetAdCachePlacementControl().getMap().size();
        }

        @Override // io.bidmachine.protobuf.InitResponseOrBuilder
        public boolean containsAdCachePlacementControl(String str) {
            str.getClass();
            return internalGetAdCachePlacementControl().getMap().containsKey(str);
        }

        @Override // io.bidmachine.protobuf.InitResponseOrBuilder
        @Deprecated
        public Map<String, AdCachePlacementControl> getAdCachePlacementControl() {
            return getAdCachePlacementControlMap();
        }

        @Override // io.bidmachine.protobuf.InitResponseOrBuilder
        public Map<String, AdCachePlacementControl> getAdCachePlacementControlMap() {
            return internalGetAdCachePlacementControl().getMap();
        }

        @Override // io.bidmachine.protobuf.InitResponseOrBuilder
        public AdCachePlacementControl getAdCachePlacementControlOrDefault(String str, AdCachePlacementControl adCachePlacementControl) {
            str.getClass();
            Map<String, AdCachePlacementControl> map = internalGetAdCachePlacementControl().getMap();
            return map.containsKey(str) ? map.get(str) : adCachePlacementControl;
        }

        @Override // io.bidmachine.protobuf.InitResponseOrBuilder
        public AdCachePlacementControl getAdCachePlacementControlOrThrow(String str) {
            str.getClass();
            Map<String, AdCachePlacementControl> map = internalGetAdCachePlacementControl().getMap();
            if (!map.containsKey(str)) {
                throw new IllegalArgumentException();
            }
            return map.get(str);
        }

        public Builder clearAdCachePlacementControl() {
            internalGetMutableAdCachePlacementControl().getMutableMap().clear();
            return this;
        }

        public Builder removeAdCachePlacementControl(String str) {
            str.getClass();
            internalGetMutableAdCachePlacementControl().getMutableMap().remove(str);
            return this;
        }

        @Deprecated
        public Map<String, AdCachePlacementControl> getMutableAdCachePlacementControl() {
            return internalGetMutableAdCachePlacementControl().getMutableMap();
        }

        public Builder putAdCachePlacementControl(String str, AdCachePlacementControl adCachePlacementControl) {
            str.getClass();
            adCachePlacementControl.getClass();
            internalGetMutableAdCachePlacementControl().getMutableMap().put(str, adCachePlacementControl);
            return this;
        }

        public Builder putAllAdCachePlacementControl(Map<String, AdCachePlacementControl> map) {
            internalGetMutableAdCachePlacementControl().getMutableMap().putAll(map);
            return this;
        }

        @Override // io.bidmachine.protobuf.InitResponseOrBuilder
        public int getAdNetworksLoadingTimeout() {
            return this.adNetworksLoadingTimeout_;
        }

        public Builder setAdNetworksLoadingTimeout(int i) {
            this.adNetworksLoadingTimeout_ = i;
            onChanged();
            return this;
        }

        public Builder clearAdNetworksLoadingTimeout() {
            this.adNetworksLoadingTimeout_ = 0;
            onChanged();
            return this;
        }

        @Override // io.bidmachine.protobuf.InitResponseOrBuilder
        public boolean hasSdkAnalyticConfig() {
            return (this.sdkAnalyticConfigBuilder_ == null && this.sdkAnalyticConfig_ == null) ? false : true;
        }

        @Override // io.bidmachine.protobuf.InitResponseOrBuilder
        public SdkAnalyticConfig getSdkAnalyticConfig() {
            SingleFieldBuilderV3<SdkAnalyticConfig, SdkAnalyticConfig.Builder, SdkAnalyticConfigOrBuilder> singleFieldBuilderV3 = this.sdkAnalyticConfigBuilder_;
            if (singleFieldBuilderV3 == null) {
                SdkAnalyticConfig sdkAnalyticConfig = this.sdkAnalyticConfig_;
                return sdkAnalyticConfig == null ? SdkAnalyticConfig.getDefaultInstance() : sdkAnalyticConfig;
            }
            return (SdkAnalyticConfig) singleFieldBuilderV3.getMessage();
        }

        public Builder setSdkAnalyticConfig(SdkAnalyticConfig sdkAnalyticConfig) {
            SingleFieldBuilderV3<SdkAnalyticConfig, SdkAnalyticConfig.Builder, SdkAnalyticConfigOrBuilder> singleFieldBuilderV3 = this.sdkAnalyticConfigBuilder_;
            if (singleFieldBuilderV3 == null) {
                sdkAnalyticConfig.getClass();
                this.sdkAnalyticConfig_ = sdkAnalyticConfig;
                onChanged();
                return this;
            }
            singleFieldBuilderV3.setMessage(sdkAnalyticConfig);
            return this;
        }

        public Builder setSdkAnalyticConfig(SdkAnalyticConfig.Builder builder) {
            SingleFieldBuilderV3<SdkAnalyticConfig, SdkAnalyticConfig.Builder, SdkAnalyticConfigOrBuilder> singleFieldBuilderV3 = this.sdkAnalyticConfigBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.sdkAnalyticConfig_ = builder.build();
                onChanged();
                return this;
            }
            singleFieldBuilderV3.setMessage(builder.build());
            return this;
        }

        public Builder mergeSdkAnalyticConfig(SdkAnalyticConfig sdkAnalyticConfig) {
            SingleFieldBuilderV3<SdkAnalyticConfig, SdkAnalyticConfig.Builder, SdkAnalyticConfigOrBuilder> singleFieldBuilderV3 = this.sdkAnalyticConfigBuilder_;
            if (singleFieldBuilderV3 == null) {
                SdkAnalyticConfig sdkAnalyticConfig2 = this.sdkAnalyticConfig_;
                if (sdkAnalyticConfig2 != null) {
                    this.sdkAnalyticConfig_ = SdkAnalyticConfig.newBuilder(sdkAnalyticConfig2).mergeFrom(sdkAnalyticConfig).buildPartial();
                } else {
                    this.sdkAnalyticConfig_ = sdkAnalyticConfig;
                }
                onChanged();
                return this;
            }
            singleFieldBuilderV3.mergeFrom(sdkAnalyticConfig);
            return this;
        }

        public Builder clearSdkAnalyticConfig() {
            if (this.sdkAnalyticConfigBuilder_ == null) {
                this.sdkAnalyticConfig_ = null;
                onChanged();
                return this;
            }
            this.sdkAnalyticConfig_ = null;
            this.sdkAnalyticConfigBuilder_ = null;
            return this;
        }

        public SdkAnalyticConfig.Builder getSdkAnalyticConfigBuilder() {
            onChanged();
            return (SdkAnalyticConfig.Builder) getSdkAnalyticConfigFieldBuilder().getBuilder();
        }

        @Override // io.bidmachine.protobuf.InitResponseOrBuilder
        public SdkAnalyticConfigOrBuilder getSdkAnalyticConfigOrBuilder() {
            SingleFieldBuilderV3<SdkAnalyticConfig, SdkAnalyticConfig.Builder, SdkAnalyticConfigOrBuilder> singleFieldBuilderV3 = this.sdkAnalyticConfigBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (SdkAnalyticConfigOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
            }
            SdkAnalyticConfig sdkAnalyticConfig = this.sdkAnalyticConfig_;
            return sdkAnalyticConfig == null ? SdkAnalyticConfig.getDefaultInstance() : sdkAnalyticConfig;
        }

        private SingleFieldBuilderV3<SdkAnalyticConfig, SdkAnalyticConfig.Builder, SdkAnalyticConfigOrBuilder> getSdkAnalyticConfigFieldBuilder() {
            if (this.sdkAnalyticConfigBuilder_ == null) {
                this.sdkAnalyticConfigBuilder_ = new SingleFieldBuilderV3<>(getSdkAnalyticConfig(), getParentForChildren(), isClean());
                this.sdkAnalyticConfig_ = null;
            }
            return this.sdkAnalyticConfigBuilder_;
        }

        @Override // io.bidmachine.protobuf.InitResponseOrBuilder
        public boolean hasEventConfiguration() {
            return (this.eventConfigurationBuilder_ == null && this.eventConfiguration_ == null) ? false : true;
        }

        @Override // io.bidmachine.protobuf.InitResponseOrBuilder
        public AdExtension.EventConfiguration getEventConfiguration() {
            SingleFieldBuilderV3<AdExtension.EventConfiguration, AdExtension.EventConfiguration.Builder, AdExtension.EventConfigurationOrBuilder> singleFieldBuilderV3 = this.eventConfigurationBuilder_;
            if (singleFieldBuilderV3 == null) {
                AdExtension.EventConfiguration eventConfiguration = this.eventConfiguration_;
                return eventConfiguration == null ? AdExtension.EventConfiguration.getDefaultInstance() : eventConfiguration;
            }
            return (AdExtension.EventConfiguration) singleFieldBuilderV3.getMessage();
        }

        public Builder setEventConfiguration(AdExtension.EventConfiguration eventConfiguration) {
            SingleFieldBuilderV3<AdExtension.EventConfiguration, AdExtension.EventConfiguration.Builder, AdExtension.EventConfigurationOrBuilder> singleFieldBuilderV3 = this.eventConfigurationBuilder_;
            if (singleFieldBuilderV3 == null) {
                eventConfiguration.getClass();
                this.eventConfiguration_ = eventConfiguration;
                onChanged();
                return this;
            }
            singleFieldBuilderV3.setMessage(eventConfiguration);
            return this;
        }

        public Builder setEventConfiguration(AdExtension.EventConfiguration.Builder builder) {
            SingleFieldBuilderV3<AdExtension.EventConfiguration, AdExtension.EventConfiguration.Builder, AdExtension.EventConfigurationOrBuilder> singleFieldBuilderV3 = this.eventConfigurationBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.eventConfiguration_ = builder.build();
                onChanged();
                return this;
            }
            singleFieldBuilderV3.setMessage(builder.build());
            return this;
        }

        public Builder mergeEventConfiguration(AdExtension.EventConfiguration eventConfiguration) {
            SingleFieldBuilderV3<AdExtension.EventConfiguration, AdExtension.EventConfiguration.Builder, AdExtension.EventConfigurationOrBuilder> singleFieldBuilderV3 = this.eventConfigurationBuilder_;
            if (singleFieldBuilderV3 == null) {
                AdExtension.EventConfiguration eventConfiguration2 = this.eventConfiguration_;
                if (eventConfiguration2 != null) {
                    this.eventConfiguration_ = AdExtension.EventConfiguration.newBuilder(eventConfiguration2).mergeFrom(eventConfiguration).buildPartial();
                } else {
                    this.eventConfiguration_ = eventConfiguration;
                }
                onChanged();
                return this;
            }
            singleFieldBuilderV3.mergeFrom(eventConfiguration);
            return this;
        }

        public Builder clearEventConfiguration() {
            if (this.eventConfigurationBuilder_ == null) {
                this.eventConfiguration_ = null;
                onChanged();
                return this;
            }
            this.eventConfiguration_ = null;
            this.eventConfigurationBuilder_ = null;
            return this;
        }

        public AdExtension.EventConfiguration.Builder getEventConfigurationBuilder() {
            onChanged();
            return (AdExtension.EventConfiguration.Builder) getEventConfigurationFieldBuilder().getBuilder();
        }

        @Override // io.bidmachine.protobuf.InitResponseOrBuilder
        public AdExtension.EventConfigurationOrBuilder getEventConfigurationOrBuilder() {
            SingleFieldBuilderV3<AdExtension.EventConfiguration, AdExtension.EventConfiguration.Builder, AdExtension.EventConfigurationOrBuilder> singleFieldBuilderV3 = this.eventConfigurationBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (AdExtension.EventConfigurationOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
            }
            AdExtension.EventConfiguration eventConfiguration = this.eventConfiguration_;
            return eventConfiguration == null ? AdExtension.EventConfiguration.getDefaultInstance() : eventConfiguration;
        }

        private SingleFieldBuilderV3<AdExtension.EventConfiguration, AdExtension.EventConfiguration.Builder, AdExtension.EventConfigurationOrBuilder> getEventConfigurationFieldBuilder() {
            if (this.eventConfigurationBuilder_ == null) {
                this.eventConfigurationBuilder_ = new SingleFieldBuilderV3<>(getEventConfiguration(), getParentForChildren(), isClean());
                this.eventConfiguration_ = null;
            }
            return this.eventConfigurationBuilder_;
        }

        private void ensureTokenConfigurationsIsMutable() {
            if ((this.bitField0_ & 8) == 0) {
                this.tokenConfigurations_ = new ArrayList(this.tokenConfigurations_);
                this.bitField0_ |= 8;
            }
        }

        @Override // io.bidmachine.protobuf.InitResponseOrBuilder
        public List<TokenConfiguration> getTokenConfigurationsList() {
            RepeatedFieldBuilderV3<TokenConfiguration, TokenConfiguration.Builder, TokenConfigurationOrBuilder> repeatedFieldBuilderV3 = this.tokenConfigurationsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                return Collections.unmodifiableList(this.tokenConfigurations_);
            }
            return repeatedFieldBuilderV3.getMessageList();
        }

        @Override // io.bidmachine.protobuf.InitResponseOrBuilder
        public int getTokenConfigurationsCount() {
            RepeatedFieldBuilderV3<TokenConfiguration, TokenConfiguration.Builder, TokenConfigurationOrBuilder> repeatedFieldBuilderV3 = this.tokenConfigurationsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                return this.tokenConfigurations_.size();
            }
            return repeatedFieldBuilderV3.getCount();
        }

        @Override // io.bidmachine.protobuf.InitResponseOrBuilder
        public TokenConfiguration getTokenConfigurations(int i) {
            RepeatedFieldBuilderV3<TokenConfiguration, TokenConfiguration.Builder, TokenConfigurationOrBuilder> repeatedFieldBuilderV3 = this.tokenConfigurationsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                return this.tokenConfigurations_.get(i);
            }
            return (TokenConfiguration) repeatedFieldBuilderV3.getMessage(i);
        }

        public Builder setTokenConfigurations(int i, TokenConfiguration tokenConfiguration) {
            RepeatedFieldBuilderV3<TokenConfiguration, TokenConfiguration.Builder, TokenConfigurationOrBuilder> repeatedFieldBuilderV3 = this.tokenConfigurationsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                tokenConfiguration.getClass();
                ensureTokenConfigurationsIsMutable();
                this.tokenConfigurations_.set(i, tokenConfiguration);
                onChanged();
                return this;
            }
            repeatedFieldBuilderV3.setMessage(i, tokenConfiguration);
            return this;
        }

        public Builder setTokenConfigurations(int i, TokenConfiguration.Builder builder) {
            RepeatedFieldBuilderV3<TokenConfiguration, TokenConfiguration.Builder, TokenConfigurationOrBuilder> repeatedFieldBuilderV3 = this.tokenConfigurationsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureTokenConfigurationsIsMutable();
                this.tokenConfigurations_.set(i, builder.build());
                onChanged();
                return this;
            }
            repeatedFieldBuilderV3.setMessage(i, builder.build());
            return this;
        }

        public Builder addTokenConfigurations(TokenConfiguration tokenConfiguration) {
            RepeatedFieldBuilderV3<TokenConfiguration, TokenConfiguration.Builder, TokenConfigurationOrBuilder> repeatedFieldBuilderV3 = this.tokenConfigurationsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                tokenConfiguration.getClass();
                ensureTokenConfigurationsIsMutable();
                this.tokenConfigurations_.add(tokenConfiguration);
                onChanged();
                return this;
            }
            repeatedFieldBuilderV3.addMessage(tokenConfiguration);
            return this;
        }

        public Builder addTokenConfigurations(int i, TokenConfiguration tokenConfiguration) {
            RepeatedFieldBuilderV3<TokenConfiguration, TokenConfiguration.Builder, TokenConfigurationOrBuilder> repeatedFieldBuilderV3 = this.tokenConfigurationsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                tokenConfiguration.getClass();
                ensureTokenConfigurationsIsMutable();
                this.tokenConfigurations_.add(i, tokenConfiguration);
                onChanged();
                return this;
            }
            repeatedFieldBuilderV3.addMessage(i, tokenConfiguration);
            return this;
        }

        public Builder addTokenConfigurations(TokenConfiguration.Builder builder) {
            RepeatedFieldBuilderV3<TokenConfiguration, TokenConfiguration.Builder, TokenConfigurationOrBuilder> repeatedFieldBuilderV3 = this.tokenConfigurationsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureTokenConfigurationsIsMutable();
                this.tokenConfigurations_.add(builder.build());
                onChanged();
                return this;
            }
            repeatedFieldBuilderV3.addMessage(builder.build());
            return this;
        }

        public Builder addTokenConfigurations(int i, TokenConfiguration.Builder builder) {
            RepeatedFieldBuilderV3<TokenConfiguration, TokenConfiguration.Builder, TokenConfigurationOrBuilder> repeatedFieldBuilderV3 = this.tokenConfigurationsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureTokenConfigurationsIsMutable();
                this.tokenConfigurations_.add(i, builder.build());
                onChanged();
                return this;
            }
            repeatedFieldBuilderV3.addMessage(i, builder.build());
            return this;
        }

        public Builder addAllTokenConfigurations(Iterable<? extends TokenConfiguration> iterable) {
            RepeatedFieldBuilderV3<TokenConfiguration, TokenConfiguration.Builder, TokenConfigurationOrBuilder> repeatedFieldBuilderV3 = this.tokenConfigurationsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureTokenConfigurationsIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.tokenConfigurations_);
                onChanged();
                return this;
            }
            repeatedFieldBuilderV3.addAllMessages(iterable);
            return this;
        }

        public Builder clearTokenConfigurations() {
            RepeatedFieldBuilderV3<TokenConfiguration, TokenConfiguration.Builder, TokenConfigurationOrBuilder> repeatedFieldBuilderV3 = this.tokenConfigurationsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                this.tokenConfigurations_ = Collections.EMPTY_LIST;
                this.bitField0_ &= -9;
                onChanged();
                return this;
            }
            repeatedFieldBuilderV3.clear();
            return this;
        }

        public Builder removeTokenConfigurations(int i) {
            RepeatedFieldBuilderV3<TokenConfiguration, TokenConfiguration.Builder, TokenConfigurationOrBuilder> repeatedFieldBuilderV3 = this.tokenConfigurationsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureTokenConfigurationsIsMutable();
                this.tokenConfigurations_.remove(i);
                onChanged();
                return this;
            }
            repeatedFieldBuilderV3.remove(i);
            return this;
        }

        public TokenConfiguration.Builder getTokenConfigurationsBuilder(int i) {
            return (TokenConfiguration.Builder) getTokenConfigurationsFieldBuilder().getBuilder(i);
        }

        @Override // io.bidmachine.protobuf.InitResponseOrBuilder
        public TokenConfigurationOrBuilder getTokenConfigurationsOrBuilder(int i) {
            RepeatedFieldBuilderV3<TokenConfiguration, TokenConfiguration.Builder, TokenConfigurationOrBuilder> repeatedFieldBuilderV3 = this.tokenConfigurationsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                return this.tokenConfigurations_.get(i);
            }
            return (TokenConfigurationOrBuilder) repeatedFieldBuilderV3.getMessageOrBuilder(i);
        }

        @Override // io.bidmachine.protobuf.InitResponseOrBuilder
        public List<? extends TokenConfigurationOrBuilder> getTokenConfigurationsOrBuilderList() {
            RepeatedFieldBuilderV3<TokenConfiguration, TokenConfiguration.Builder, TokenConfigurationOrBuilder> repeatedFieldBuilderV3 = this.tokenConfigurationsBuilder_;
            if (repeatedFieldBuilderV3 != null) {
                return repeatedFieldBuilderV3.getMessageOrBuilderList();
            }
            return Collections.unmodifiableList(this.tokenConfigurations_);
        }

        public TokenConfiguration.Builder addTokenConfigurationsBuilder() {
            return (TokenConfiguration.Builder) getTokenConfigurationsFieldBuilder().addBuilder(TokenConfiguration.getDefaultInstance());
        }

        public TokenConfiguration.Builder addTokenConfigurationsBuilder(int i) {
            return (TokenConfiguration.Builder) getTokenConfigurationsFieldBuilder().addBuilder(i, TokenConfiguration.getDefaultInstance());
        }

        public List<TokenConfiguration.Builder> getTokenConfigurationsBuilderList() {
            return getTokenConfigurationsFieldBuilder().getBuilderList();
        }

        private RepeatedFieldBuilderV3<TokenConfiguration, TokenConfiguration.Builder, TokenConfigurationOrBuilder> getTokenConfigurationsFieldBuilder() {
            if (this.tokenConfigurationsBuilder_ == null) {
                this.tokenConfigurationsBuilder_ = new RepeatedFieldBuilderV3<>(this.tokenConfigurations_, (this.bitField0_ & 8) != 0, getParentForChildren(), isClean());
                this.tokenConfigurations_ = null;
            }
            return this.tokenConfigurationsBuilder_;
        }

        @Override // io.bidmachine.protobuf.InitResponseOrBuilder
        public boolean getShowWithoutInternet() {
            return this.showWithoutInternet_;
        }

        public Builder setShowWithoutInternet(boolean z) {
            this.showWithoutInternet_ = z;
            onChanged();
            return this;
        }

        public Builder clearShowWithoutInternet() {
            this.showWithoutInternet_ = false;
            onChanged();
            return this;
        }

        @Override // io.bidmachine.protobuf.InitResponseOrBuilder
        public boolean hasExtras() {
            return (this.extrasBuilder_ == null && this.extras_ == null) ? false : true;
        }

        @Override // io.bidmachine.protobuf.InitResponseOrBuilder
        public Extras getExtras() {
            SingleFieldBuilderV3<Extras, Extras.Builder, ExtrasOrBuilder> singleFieldBuilderV3 = this.extrasBuilder_;
            if (singleFieldBuilderV3 == null) {
                Extras extras = this.extras_;
                return extras == null ? Extras.getDefaultInstance() : extras;
            }
            return (Extras) singleFieldBuilderV3.getMessage();
        }

        public Builder setExtras(Extras extras) {
            SingleFieldBuilderV3<Extras, Extras.Builder, ExtrasOrBuilder> singleFieldBuilderV3 = this.extrasBuilder_;
            if (singleFieldBuilderV3 == null) {
                extras.getClass();
                this.extras_ = extras;
                onChanged();
                return this;
            }
            singleFieldBuilderV3.setMessage(extras);
            return this;
        }

        public Builder setExtras(Extras.Builder builder) {
            SingleFieldBuilderV3<Extras, Extras.Builder, ExtrasOrBuilder> singleFieldBuilderV3 = this.extrasBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.extras_ = builder.build();
                onChanged();
                return this;
            }
            singleFieldBuilderV3.setMessage(builder.build());
            return this;
        }

        public Builder mergeExtras(Extras extras) {
            SingleFieldBuilderV3<Extras, Extras.Builder, ExtrasOrBuilder> singleFieldBuilderV3 = this.extrasBuilder_;
            if (singleFieldBuilderV3 == null) {
                Extras extras2 = this.extras_;
                if (extras2 != null) {
                    this.extras_ = Extras.newBuilder(extras2).mergeFrom(extras).buildPartial();
                } else {
                    this.extras_ = extras;
                }
                onChanged();
                return this;
            }
            singleFieldBuilderV3.mergeFrom(extras);
            return this;
        }

        public Builder clearExtras() {
            if (this.extrasBuilder_ == null) {
                this.extras_ = null;
                onChanged();
                return this;
            }
            this.extras_ = null;
            this.extrasBuilder_ = null;
            return this;
        }

        public Extras.Builder getExtrasBuilder() {
            onChanged();
            return (Extras.Builder) getExtrasFieldBuilder().getBuilder();
        }

        @Override // io.bidmachine.protobuf.InitResponseOrBuilder
        public ExtrasOrBuilder getExtrasOrBuilder() {
            SingleFieldBuilderV3<Extras, Extras.Builder, ExtrasOrBuilder> singleFieldBuilderV3 = this.extrasBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (ExtrasOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
            }
            Extras extras = this.extras_;
            return extras == null ? Extras.getDefaultInstance() : extras;
        }

        private SingleFieldBuilderV3<Extras, Extras.Builder, ExtrasOrBuilder> getExtrasFieldBuilder() {
            if (this.extrasBuilder_ == null) {
                this.extrasBuilder_ = new SingleFieldBuilderV3<>(getExtras(), getParentForChildren(), isClean());
                this.extras_ = null;
            }
            return this.extrasBuilder_;
        }

        @Override // io.bidmachine.protobuf.InitResponseOrBuilder
        public boolean hasSdkAnalyticConfigV2() {
            return (this.sdkAnalyticConfigV2Builder_ == null && this.sdkAnalyticConfigV2_ == null) ? false : true;
        }

        @Override // io.bidmachine.protobuf.InitResponseOrBuilder
        public Configuration getSdkAnalyticConfigV2() {
            SingleFieldBuilderV3<Configuration, Configuration.Builder, ConfigurationOrBuilder> singleFieldBuilderV3 = this.sdkAnalyticConfigV2Builder_;
            if (singleFieldBuilderV3 == null) {
                Configuration configuration = this.sdkAnalyticConfigV2_;
                return configuration == null ? Configuration.getDefaultInstance() : configuration;
            }
            return (Configuration) singleFieldBuilderV3.getMessage();
        }

        public Builder setSdkAnalyticConfigV2(Configuration configuration) {
            SingleFieldBuilderV3<Configuration, Configuration.Builder, ConfigurationOrBuilder> singleFieldBuilderV3 = this.sdkAnalyticConfigV2Builder_;
            if (singleFieldBuilderV3 == null) {
                configuration.getClass();
                this.sdkAnalyticConfigV2_ = configuration;
                onChanged();
                return this;
            }
            singleFieldBuilderV3.setMessage(configuration);
            return this;
        }

        public Builder setSdkAnalyticConfigV2(Configuration.Builder builder) {
            SingleFieldBuilderV3<Configuration, Configuration.Builder, ConfigurationOrBuilder> singleFieldBuilderV3 = this.sdkAnalyticConfigV2Builder_;
            if (singleFieldBuilderV3 == null) {
                this.sdkAnalyticConfigV2_ = builder.build();
                onChanged();
                return this;
            }
            singleFieldBuilderV3.setMessage(builder.build());
            return this;
        }

        public Builder mergeSdkAnalyticConfigV2(Configuration configuration) {
            SingleFieldBuilderV3<Configuration, Configuration.Builder, ConfigurationOrBuilder> singleFieldBuilderV3 = this.sdkAnalyticConfigV2Builder_;
            if (singleFieldBuilderV3 == null) {
                Configuration configuration2 = this.sdkAnalyticConfigV2_;
                if (configuration2 != null) {
                    this.sdkAnalyticConfigV2_ = Configuration.newBuilder(configuration2).mergeFrom(configuration).buildPartial();
                } else {
                    this.sdkAnalyticConfigV2_ = configuration;
                }
                onChanged();
                return this;
            }
            singleFieldBuilderV3.mergeFrom(configuration);
            return this;
        }

        public Builder clearSdkAnalyticConfigV2() {
            if (this.sdkAnalyticConfigV2Builder_ == null) {
                this.sdkAnalyticConfigV2_ = null;
                onChanged();
                return this;
            }
            this.sdkAnalyticConfigV2_ = null;
            this.sdkAnalyticConfigV2Builder_ = null;
            return this;
        }

        public Configuration.Builder getSdkAnalyticConfigV2Builder() {
            onChanged();
            return (Configuration.Builder) getSdkAnalyticConfigV2FieldBuilder().getBuilder();
        }

        @Override // io.bidmachine.protobuf.InitResponseOrBuilder
        public ConfigurationOrBuilder getSdkAnalyticConfigV2OrBuilder() {
            SingleFieldBuilderV3<Configuration, Configuration.Builder, ConfigurationOrBuilder> singleFieldBuilderV3 = this.sdkAnalyticConfigV2Builder_;
            if (singleFieldBuilderV3 != null) {
                return (ConfigurationOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
            }
            Configuration configuration = this.sdkAnalyticConfigV2_;
            return configuration == null ? Configuration.getDefaultInstance() : configuration;
        }

        private SingleFieldBuilderV3<Configuration, Configuration.Builder, ConfigurationOrBuilder> getSdkAnalyticConfigV2FieldBuilder() {
            if (this.sdkAnalyticConfigV2Builder_ == null) {
                this.sdkAnalyticConfigV2Builder_ = new SingleFieldBuilderV3<>(getSdkAnalyticConfigV2(), getParentForChildren(), isClean());
                this.sdkAnalyticConfigV2_ = null;
            }
            return this.sdkAnalyticConfigV2Builder_;
        }

        @Override // io.bidmachine.protobuf.InitResponseOrBuilder
        public boolean hasAssetCacheConfiguration() {
            return (this.assetCacheConfigurationBuilder_ == null && this.assetCacheConfiguration_ == null) ? false : true;
        }

        @Override // io.bidmachine.protobuf.InitResponseOrBuilder
        public AssetCache.Configuration getAssetCacheConfiguration() {
            SingleFieldBuilderV3<AssetCache.Configuration, AssetCache.Configuration.Builder, AssetCache.ConfigurationOrBuilder> singleFieldBuilderV3 = this.assetCacheConfigurationBuilder_;
            if (singleFieldBuilderV3 == null) {
                AssetCache.Configuration configuration = this.assetCacheConfiguration_;
                return configuration == null ? AssetCache.Configuration.getDefaultInstance() : configuration;
            }
            return (AssetCache.Configuration) singleFieldBuilderV3.getMessage();
        }

        public Builder setAssetCacheConfiguration(AssetCache.Configuration configuration) {
            SingleFieldBuilderV3<AssetCache.Configuration, AssetCache.Configuration.Builder, AssetCache.ConfigurationOrBuilder> singleFieldBuilderV3 = this.assetCacheConfigurationBuilder_;
            if (singleFieldBuilderV3 == null) {
                configuration.getClass();
                this.assetCacheConfiguration_ = configuration;
                onChanged();
                return this;
            }
            singleFieldBuilderV3.setMessage(configuration);
            return this;
        }

        public Builder setAssetCacheConfiguration(AssetCache.Configuration.Builder builder) {
            SingleFieldBuilderV3<AssetCache.Configuration, AssetCache.Configuration.Builder, AssetCache.ConfigurationOrBuilder> singleFieldBuilderV3 = this.assetCacheConfigurationBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.assetCacheConfiguration_ = builder.build();
                onChanged();
                return this;
            }
            singleFieldBuilderV3.setMessage(builder.build());
            return this;
        }

        public Builder mergeAssetCacheConfiguration(AssetCache.Configuration configuration) {
            SingleFieldBuilderV3<AssetCache.Configuration, AssetCache.Configuration.Builder, AssetCache.ConfigurationOrBuilder> singleFieldBuilderV3 = this.assetCacheConfigurationBuilder_;
            if (singleFieldBuilderV3 == null) {
                AssetCache.Configuration configuration2 = this.assetCacheConfiguration_;
                if (configuration2 != null) {
                    this.assetCacheConfiguration_ = AssetCache.Configuration.newBuilder(configuration2).mergeFrom(configuration).buildPartial();
                } else {
                    this.assetCacheConfiguration_ = configuration;
                }
                onChanged();
                return this;
            }
            singleFieldBuilderV3.mergeFrom(configuration);
            return this;
        }

        public Builder clearAssetCacheConfiguration() {
            if (this.assetCacheConfigurationBuilder_ == null) {
                this.assetCacheConfiguration_ = null;
                onChanged();
                return this;
            }
            this.assetCacheConfiguration_ = null;
            this.assetCacheConfigurationBuilder_ = null;
            return this;
        }

        public AssetCache.Configuration.Builder getAssetCacheConfigurationBuilder() {
            onChanged();
            return (AssetCache.Configuration.Builder) getAssetCacheConfigurationFieldBuilder().getBuilder();
        }

        @Override // io.bidmachine.protobuf.InitResponseOrBuilder
        public AssetCache.ConfigurationOrBuilder getAssetCacheConfigurationOrBuilder() {
            SingleFieldBuilderV3<AssetCache.Configuration, AssetCache.Configuration.Builder, AssetCache.ConfigurationOrBuilder> singleFieldBuilderV3 = this.assetCacheConfigurationBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (AssetCache.ConfigurationOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
            }
            AssetCache.Configuration configuration = this.assetCacheConfiguration_;
            return configuration == null ? AssetCache.Configuration.getDefaultInstance() : configuration;
        }

        private SingleFieldBuilderV3<AssetCache.Configuration, AssetCache.Configuration.Builder, AssetCache.ConfigurationOrBuilder> getAssetCacheConfigurationFieldBuilder() {
            if (this.assetCacheConfigurationBuilder_ == null) {
                this.assetCacheConfigurationBuilder_ = new SingleFieldBuilderV3<>(getAssetCacheConfiguration(), getParentForChildren(), isClean());
                this.assetCacheConfiguration_ = null;
            }
            return this.assetCacheConfigurationBuilder_;
        }

        @Override // io.bidmachine.protobuf.InitResponseOrBuilder
        public int getRestrictionModeValue() {
            return this.restrictionMode_;
        }

        public Builder setRestrictionModeValue(int i) {
            this.restrictionMode_ = i;
            onChanged();
            return this;
        }

        @Override // io.bidmachine.protobuf.InitResponseOrBuilder
        public RestrictionMode getRestrictionMode() {
            RestrictionMode restrictionModeValueOf = RestrictionMode.valueOf(this.restrictionMode_);
            return restrictionModeValueOf == null ? RestrictionMode.UNRECOGNIZED : restrictionModeValueOf;
        }

        public Builder setRestrictionMode(RestrictionMode restrictionMode) {
            restrictionMode.getClass();
            this.restrictionMode_ = restrictionMode.getNumber();
            onChanged();
            return this;
        }

        public Builder clearRestrictionMode() {
            this.restrictionMode_ = 0;
            onChanged();
            return this;
        }

        @Override // io.bidmachine.protobuf.InitResponseOrBuilder
        public int getBmifvTtlSessions() {
            return this.bmifvTtlSessions_;
        }

        public Builder setBmifvTtlSessions(int i) {
            this.bmifvTtlSessions_ = i;
            onChanged();
            return this;
        }

        public Builder clearBmifvTtlSessions() {
            this.bmifvTtlSessions_ = 0;
            onChanged();
            return this;
        }

        @Override // io.bidmachine.protobuf.InitResponseOrBuilder
        public boolean hasCrashSignalConfig() {
            return (this.crashSignalConfigBuilder_ == null && this.crashSignalConfig_ == null) ? false : true;
        }

        @Override // io.bidmachine.protobuf.InitResponseOrBuilder
        public SdkCrashSignalConfig getCrashSignalConfig() {
            SingleFieldBuilderV3<SdkCrashSignalConfig, SdkCrashSignalConfig.Builder, SdkCrashSignalConfigOrBuilder> singleFieldBuilderV3 = this.crashSignalConfigBuilder_;
            if (singleFieldBuilderV3 == null) {
                SdkCrashSignalConfig sdkCrashSignalConfig = this.crashSignalConfig_;
                return sdkCrashSignalConfig == null ? SdkCrashSignalConfig.getDefaultInstance() : sdkCrashSignalConfig;
            }
            return (SdkCrashSignalConfig) singleFieldBuilderV3.getMessage();
        }

        public Builder setCrashSignalConfig(SdkCrashSignalConfig sdkCrashSignalConfig) {
            SingleFieldBuilderV3<SdkCrashSignalConfig, SdkCrashSignalConfig.Builder, SdkCrashSignalConfigOrBuilder> singleFieldBuilderV3 = this.crashSignalConfigBuilder_;
            if (singleFieldBuilderV3 == null) {
                sdkCrashSignalConfig.getClass();
                this.crashSignalConfig_ = sdkCrashSignalConfig;
                onChanged();
                return this;
            }
            singleFieldBuilderV3.setMessage(sdkCrashSignalConfig);
            return this;
        }

        public Builder setCrashSignalConfig(SdkCrashSignalConfig.Builder builder) {
            SingleFieldBuilderV3<SdkCrashSignalConfig, SdkCrashSignalConfig.Builder, SdkCrashSignalConfigOrBuilder> singleFieldBuilderV3 = this.crashSignalConfigBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.crashSignalConfig_ = builder.build();
                onChanged();
                return this;
            }
            singleFieldBuilderV3.setMessage(builder.build());
            return this;
        }

        public Builder mergeCrashSignalConfig(SdkCrashSignalConfig sdkCrashSignalConfig) {
            SingleFieldBuilderV3<SdkCrashSignalConfig, SdkCrashSignalConfig.Builder, SdkCrashSignalConfigOrBuilder> singleFieldBuilderV3 = this.crashSignalConfigBuilder_;
            if (singleFieldBuilderV3 == null) {
                SdkCrashSignalConfig sdkCrashSignalConfig2 = this.crashSignalConfig_;
                if (sdkCrashSignalConfig2 != null) {
                    this.crashSignalConfig_ = SdkCrashSignalConfig.newBuilder(sdkCrashSignalConfig2).mergeFrom(sdkCrashSignalConfig).buildPartial();
                } else {
                    this.crashSignalConfig_ = sdkCrashSignalConfig;
                }
                onChanged();
                return this;
            }
            singleFieldBuilderV3.mergeFrom(sdkCrashSignalConfig);
            return this;
        }

        public Builder clearCrashSignalConfig() {
            if (this.crashSignalConfigBuilder_ == null) {
                this.crashSignalConfig_ = null;
                onChanged();
                return this;
            }
            this.crashSignalConfig_ = null;
            this.crashSignalConfigBuilder_ = null;
            return this;
        }

        public SdkCrashSignalConfig.Builder getCrashSignalConfigBuilder() {
            onChanged();
            return (SdkCrashSignalConfig.Builder) getCrashSignalConfigFieldBuilder().getBuilder();
        }

        @Override // io.bidmachine.protobuf.InitResponseOrBuilder
        public SdkCrashSignalConfigOrBuilder getCrashSignalConfigOrBuilder() {
            SingleFieldBuilderV3<SdkCrashSignalConfig, SdkCrashSignalConfig.Builder, SdkCrashSignalConfigOrBuilder> singleFieldBuilderV3 = this.crashSignalConfigBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (SdkCrashSignalConfigOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
            }
            SdkCrashSignalConfig sdkCrashSignalConfig = this.crashSignalConfig_;
            return sdkCrashSignalConfig == null ? SdkCrashSignalConfig.getDefaultInstance() : sdkCrashSignalConfig;
        }

        private SingleFieldBuilderV3<SdkCrashSignalConfig, SdkCrashSignalConfig.Builder, SdkCrashSignalConfigOrBuilder> getCrashSignalConfigFieldBuilder() {
            if (this.crashSignalConfigBuilder_ == null) {
                this.crashSignalConfigBuilder_ = new SingleFieldBuilderV3<>(getCrashSignalConfig(), getParentForChildren(), isClean());
                this.crashSignalConfig_ = null;
            }
            return this.crashSignalConfigBuilder_;
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

    public static InitResponse getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static Parser<InitResponse> parser() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Parser<InitResponse> getParserForType() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
    /* JADX INFO: renamed from: getDefaultInstanceForType */
    public InitResponse mo687getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }
}
