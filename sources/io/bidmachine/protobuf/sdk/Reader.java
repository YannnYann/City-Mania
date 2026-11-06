package io.bidmachine.protobuf.sdk;

import com.explorestack.protobuf.AbstractMessage;
import com.explorestack.protobuf.AbstractMessageLite;
import com.explorestack.protobuf.AbstractParser;
import com.explorestack.protobuf.BoolValue;
import com.explorestack.protobuf.BoolValueOrBuilder;
import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.BytesValue;
import com.explorestack.protobuf.BytesValueOrBuilder;
import com.explorestack.protobuf.CodedInputStream;
import com.explorestack.protobuf.CodedOutputStream;
import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.ExtensionRegistryLite;
import com.explorestack.protobuf.GeneratedMessageV3;
import com.explorestack.protobuf.Internal;
import com.explorestack.protobuf.InvalidProtocolBufferException;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.MessageLite;
import com.explorestack.protobuf.MessageOrBuilder;
import com.explorestack.protobuf.Parser;
import com.explorestack.protobuf.RepeatedFieldBuilderV3;
import com.explorestack.protobuf.SingleFieldBuilderV3;
import com.explorestack.protobuf.StringValue;
import com.explorestack.protobuf.StringValueOrBuilder;
import com.explorestack.protobuf.Timestamp;
import com.explorestack.protobuf.TimestampOrBuilder;
import com.explorestack.protobuf.UInt32Value;
import com.explorestack.protobuf.UInt32ValueOrBuilder;
import com.explorestack.protobuf.UnknownFieldSet;
import io.bidmachine.protobuf.sdk.Error;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class Reader extends GeneratedMessageV3 implements ReaderOrBuilder {
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int RECORDS_FIELD_NUMBER = 3;
    public static final int TIMESTAMP_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private volatile Object name_;
    private List<Record> records_;
    private Timestamp timestamp_;
    private static final Reader DEFAULT_INSTANCE = new Reader();
    private static final Parser<Reader> PARSER = new AbstractParser<Reader>() { // from class: io.bidmachine.protobuf.sdk.Reader.1
        @Override // com.explorestack.protobuf.Parser
        public Reader parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return new Reader(codedInputStream, extensionRegistryLite);
        }
    };

    public interface ConfigurationOrBuilder extends MessageOrBuilder {
        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* JADX INFO: renamed from: getDefaultInstanceForType */
        /* synthetic */ MessageLite mo687getDefaultInstanceForType();

        StringValue getName();

        StringValueOrBuilder getNameOrBuilder();

        Rule getRules(int i);

        int getRulesCount();

        List<Rule> getRulesList();

        RuleOrBuilder getRulesOrBuilder(int i);

        List<? extends RuleOrBuilder> getRulesOrBuilderList();

        BoolValue getUniqueOnly();

        BoolValueOrBuilder getUniqueOnlyOrBuilder();

        UInt32Value getUpdateInterval();

        UInt32ValueOrBuilder getUpdateIntervalOrBuilder();

        StringValue getUrl();

        StringValueOrBuilder getUrlOrBuilder();

        boolean hasName();

        boolean hasUniqueOnly();

        boolean hasUpdateInterval();

        boolean hasUrl();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    public interface RecordOrBuilder extends MessageOrBuilder {
        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* JADX INFO: renamed from: getDefaultInstanceForType */
        /* synthetic */ MessageLite mo687getDefaultInstanceForType();

        Error getError();

        ErrorOrBuilder getErrorOrBuilder();

        BytesValue getRawData();

        BytesValueOrBuilder getRawDataOrBuilder();

        Rule getRule();

        RuleOrBuilder getRuleOrBuilder();

        boolean hasError();

        boolean hasRawData();

        boolean hasRule();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    public interface RuleOrBuilder extends MessageOrBuilder {
        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* JADX INFO: renamed from: getDefaultInstanceForType */
        /* synthetic */ MessageLite mo687getDefaultInstanceForType();

        Rule.GeneralRule getGeneralRule();

        Rule.GeneralRuleOrBuilder getGeneralRuleOrBuilder();

        Rule.IOSLogRule getIosLogRule();

        Rule.IOSLogRuleOrBuilder getIosLogRuleOrBuilder();

        Rule.PurRule getPurRule();

        Rule.PurRuleOrBuilder getPurRuleOrBuilder();

        Rule.RuleOneofCase getRuleOneofCase();

        boolean hasGeneralRule();

        boolean hasIosLogRule();

        boolean hasPurRule();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    private Reader(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    private Reader() {
        this.memoizedIsInitialized = (byte) -1;
        this.name_ = "";
        this.records_ = Collections.EMPTY_LIST;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
        return new Reader();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
    public final UnknownFieldSet getUnknownFields() {
        return this.unknownFields;
    }

    private Reader(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        this();
        extensionRegistryLite.getClass();
        UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
        boolean z = false;
        boolean z2 = false;
        while (!z) {
            try {
                try {
                    try {
                        int tag = codedInputStream.readTag();
                        if (tag != 0) {
                            if (tag == 10) {
                                this.name_ = codedInputStream.readStringRequireUtf8();
                            } else if (tag == 18) {
                                Timestamp timestamp = this.timestamp_;
                                Timestamp.Builder builder = timestamp != null ? timestamp.toBuilder() : null;
                                Timestamp timestamp2 = (Timestamp) codedInputStream.readMessage(Timestamp.parser(), extensionRegistryLite);
                                this.timestamp_ = timestamp2;
                                if (builder != null) {
                                    builder.mergeFrom(timestamp2);
                                    this.timestamp_ = builder.buildPartial();
                                }
                            } else if (tag == 26) {
                                if (!z2) {
                                    this.records_ = new ArrayList();
                                    z2 = true;
                                }
                                this.records_.add((Record) codedInputStream.readMessage(Record.parser(), extensionRegistryLite));
                            } else if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                            }
                        }
                        z = true;
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(this);
                    }
                } catch (IOException e2) {
                    throw new InvalidProtocolBufferException(e2).setUnfinishedMessage(this);
                }
            } catch (Throwable th) {
                if (z2) {
                    this.records_ = Collections.unmodifiableList(this.records_);
                }
                this.unknownFields = builderNewBuilder.build();
                makeExtensionsImmutable();
                throw th;
            }
        }
        if (z2) {
            this.records_ = Collections.unmodifiableList(this.records_);
        }
        this.unknownFields = builderNewBuilder.build();
        makeExtensionsImmutable();
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_descriptor;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_fieldAccessorTable.ensureFieldAccessorsInitialized(Reader.class, Builder.class);
    }

    public static final class Configuration extends GeneratedMessageV3 implements ConfigurationOrBuilder {
        public static final int NAME_FIELD_NUMBER = 1;
        public static final int RULES_FIELD_NUMBER = 5;
        public static final int UNIQUE_ONLY_FIELD_NUMBER = 4;
        public static final int UPDATE_INTERVAL_FIELD_NUMBER = 3;
        public static final int URL_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private StringValue name_;
        private List<Rule> rules_;
        private BoolValue uniqueOnly_;
        private UInt32Value updateInterval_;
        private StringValue url_;
        private static final Configuration DEFAULT_INSTANCE = new Configuration();
        private static final Parser<Configuration> PARSER = new AbstractParser<Configuration>() { // from class: io.bidmachine.protobuf.sdk.Reader.Configuration.1
            @Override // com.explorestack.protobuf.Parser
            public Configuration parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new Configuration(codedInputStream, extensionRegistryLite);
            }
        };

        private Configuration(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private Configuration() {
            this.memoizedIsInitialized = (byte) -1;
            this.rules_ = Collections.EMPTY_LIST;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
            return new Configuration();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        /* JADX WARN: Multi-variable type inference failed */
        private Configuration(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this();
            extensionRegistryLite.getClass();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            Object[] objArr = false;
            while (!z) {
                try {
                    try {
                        int tag = codedInputStream.readTag();
                        if (tag != 0) {
                            if (tag == 10) {
                                StringValue stringValue = this.name_;
                                StringValue.Builder builder = stringValue != null ? stringValue.toBuilder() : null;
                                StringValue stringValue2 = (StringValue) codedInputStream.readMessage(StringValue.parser(), extensionRegistryLite);
                                this.name_ = stringValue2;
                                if (builder != null) {
                                    builder.mergeFrom(stringValue2);
                                    this.name_ = builder.buildPartial();
                                }
                            } else if (tag == 18) {
                                StringValue stringValue3 = this.url_;
                                StringValue.Builder builder2 = stringValue3 != null ? stringValue3.toBuilder() : null;
                                StringValue stringValue4 = (StringValue) codedInputStream.readMessage(StringValue.parser(), extensionRegistryLite);
                                this.url_ = stringValue4;
                                if (builder2 != null) {
                                    builder2.mergeFrom(stringValue4);
                                    this.url_ = builder2.buildPartial();
                                }
                            } else if (tag == 26) {
                                UInt32Value uInt32Value = this.updateInterval_;
                                UInt32Value.Builder builder3 = uInt32Value != null ? uInt32Value.toBuilder() : null;
                                UInt32Value uInt32Value2 = (UInt32Value) codedInputStream.readMessage(UInt32Value.parser(), extensionRegistryLite);
                                this.updateInterval_ = uInt32Value2;
                                if (builder3 != null) {
                                    builder3.mergeFrom(uInt32Value2);
                                    this.updateInterval_ = builder3.buildPartial();
                                }
                            } else if (tag == 34) {
                                BoolValue boolValue = this.uniqueOnly_;
                                BoolValue.Builder builder4 = boolValue != null ? boolValue.toBuilder() : null;
                                BoolValue boolValue2 = (BoolValue) codedInputStream.readMessage(BoolValue.parser(), extensionRegistryLite);
                                this.uniqueOnly_ = boolValue2;
                                if (builder4 != null) {
                                    builder4.mergeFrom(boolValue2);
                                    this.uniqueOnly_ = builder4.buildPartial();
                                }
                            } else if (tag == 42) {
                                if (objArr == false) {
                                    this.rules_ = new ArrayList();
                                    objArr = true;
                                }
                                this.rules_.add((Rule) codedInputStream.readMessage(Rule.parser(), extensionRegistryLite));
                            } else if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                            }
                        }
                        z = true;
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(this);
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2).setUnfinishedMessage(this);
                    }
                } catch (Throwable th) {
                    if (objArr != false) {
                        this.rules_ = Collections.unmodifiableList(this.rules_);
                    }
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            if (objArr != false) {
                this.rules_ = Collections.unmodifiableList(this.rules_);
            }
            this.unknownFields = builderNewBuilder.build();
            makeExtensionsImmutable();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Configuration_descriptor;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Configuration_fieldAccessorTable.ensureFieldAccessorsInitialized(Configuration.class, Builder.class);
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
        public boolean hasName() {
            return this.name_ != null;
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
        public StringValue getName() {
            StringValue stringValue = this.name_;
            return stringValue == null ? StringValue.getDefaultInstance() : stringValue;
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
        public StringValueOrBuilder getNameOrBuilder() {
            return getName();
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
        public boolean hasUrl() {
            return this.url_ != null;
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
        public StringValue getUrl() {
            StringValue stringValue = this.url_;
            return stringValue == null ? StringValue.getDefaultInstance() : stringValue;
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
        public StringValueOrBuilder getUrlOrBuilder() {
            return getUrl();
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
        public boolean hasUpdateInterval() {
            return this.updateInterval_ != null;
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
        public UInt32Value getUpdateInterval() {
            UInt32Value uInt32Value = this.updateInterval_;
            return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
        public UInt32ValueOrBuilder getUpdateIntervalOrBuilder() {
            return getUpdateInterval();
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
        public boolean hasUniqueOnly() {
            return this.uniqueOnly_ != null;
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
        public BoolValue getUniqueOnly() {
            BoolValue boolValue = this.uniqueOnly_;
            return boolValue == null ? BoolValue.getDefaultInstance() : boolValue;
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
        public BoolValueOrBuilder getUniqueOnlyOrBuilder() {
            return getUniqueOnly();
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
        public List<Rule> getRulesList() {
            return this.rules_;
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
        public List<? extends RuleOrBuilder> getRulesOrBuilderList() {
            return this.rules_;
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
        public int getRulesCount() {
            return this.rules_.size();
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
        public Rule getRules(int i) {
            return this.rules_.get(i);
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
        public RuleOrBuilder getRulesOrBuilder(int i) {
            return this.rules_.get(i);
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
            if (this.name_ != null) {
                codedOutputStream.writeMessage(1, getName());
            }
            if (this.url_ != null) {
                codedOutputStream.writeMessage(2, getUrl());
            }
            if (this.updateInterval_ != null) {
                codedOutputStream.writeMessage(3, getUpdateInterval());
            }
            if (this.uniqueOnly_ != null) {
                codedOutputStream.writeMessage(4, getUniqueOnly());
            }
            for (int i = 0; i < this.rules_.size(); i++) {
                codedOutputStream.writeMessage(5, this.rules_.get(i));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeMessageSize = this.name_ != null ? CodedOutputStream.computeMessageSize(1, getName()) : 0;
            if (this.url_ != null) {
                iComputeMessageSize += CodedOutputStream.computeMessageSize(2, getUrl());
            }
            if (this.updateInterval_ != null) {
                iComputeMessageSize += CodedOutputStream.computeMessageSize(3, getUpdateInterval());
            }
            if (this.uniqueOnly_ != null) {
                iComputeMessageSize += CodedOutputStream.computeMessageSize(4, getUniqueOnly());
            }
            for (int i2 = 0; i2 < this.rules_.size(); i2++) {
                iComputeMessageSize += CodedOutputStream.computeMessageSize(5, this.rules_.get(i2));
            }
            int serializedSize = iComputeMessageSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Configuration)) {
                return super.equals(obj);
            }
            Configuration configuration = (Configuration) obj;
            if (hasName() != configuration.hasName()) {
                return false;
            }
            if ((hasName() && !getName().equals(configuration.getName())) || hasUrl() != configuration.hasUrl()) {
                return false;
            }
            if ((hasUrl() && !getUrl().equals(configuration.getUrl())) || hasUpdateInterval() != configuration.hasUpdateInterval()) {
                return false;
            }
            if ((!hasUpdateInterval() || getUpdateInterval().equals(configuration.getUpdateInterval())) && hasUniqueOnly() == configuration.hasUniqueOnly()) {
                return (!hasUniqueOnly() || getUniqueOnly().equals(configuration.getUniqueOnly())) && getRulesList().equals(configuration.getRulesList()) && this.unknownFields.equals(configuration.unknownFields);
            }
            return false;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasName()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getName().hashCode();
            }
            if (hasUrl()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getUrl().hashCode();
            }
            if (hasUpdateInterval()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getUpdateInterval().hashCode();
            }
            if (hasUniqueOnly()) {
                iHashCode = (((iHashCode * 37) + 4) * 53) + getUniqueOnly().hashCode();
            }
            if (getRulesCount() > 0) {
                iHashCode = (((iHashCode * 37) + 5) * 53) + getRulesList().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static Configuration parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Configuration parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static Configuration parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static Configuration parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static Configuration parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static Configuration parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static Configuration parseFrom(InputStream inputStream) throws IOException {
            return (Configuration) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static Configuration parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Configuration) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static Configuration parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Configuration) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Configuration parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Configuration) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static Configuration parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (Configuration) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static Configuration parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Configuration) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(Configuration configuration) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(configuration);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements ConfigurationOrBuilder {
            private int bitField0_;
            private SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> nameBuilder_;
            private StringValue name_;
            private RepeatedFieldBuilderV3<Rule, Rule.Builder, RuleOrBuilder> rulesBuilder_;
            private List<Rule> rules_;
            private SingleFieldBuilderV3<BoolValue, BoolValue.Builder, BoolValueOrBuilder> uniqueOnlyBuilder_;
            private BoolValue uniqueOnly_;
            private SingleFieldBuilderV3<UInt32Value, UInt32Value.Builder, UInt32ValueOrBuilder> updateIntervalBuilder_;
            private UInt32Value updateInterval_;
            private SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> urlBuilder_;
            private StringValue url_;

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Configuration_descriptor;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Configuration_fieldAccessorTable.ensureFieldAccessorsInitialized(Configuration.class, Builder.class);
            }

            private Builder() {
                this.rules_ = Collections.EMPTY_LIST;
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.rules_ = Collections.EMPTY_LIST;
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    getRulesFieldBuilder();
                }
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                if (this.nameBuilder_ == null) {
                    this.name_ = null;
                } else {
                    this.name_ = null;
                    this.nameBuilder_ = null;
                }
                if (this.urlBuilder_ == null) {
                    this.url_ = null;
                } else {
                    this.url_ = null;
                    this.urlBuilder_ = null;
                }
                if (this.updateIntervalBuilder_ == null) {
                    this.updateInterval_ = null;
                } else {
                    this.updateInterval_ = null;
                    this.updateIntervalBuilder_ = null;
                }
                if (this.uniqueOnlyBuilder_ == null) {
                    this.uniqueOnly_ = null;
                } else {
                    this.uniqueOnly_ = null;
                    this.uniqueOnlyBuilder_ = null;
                }
                RepeatedFieldBuilderV3<Rule, Rule.Builder, RuleOrBuilder> repeatedFieldBuilderV3 = this.rulesBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.rules_ = Collections.EMPTY_LIST;
                    this.bitField0_ &= -2;
                    return this;
                }
                repeatedFieldBuilderV3.clear();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Configuration_descriptor;
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            /* JADX INFO: renamed from: getDefaultInstanceForType */
            public Configuration mo687getDefaultInstanceForType() {
                return Configuration.getDefaultInstance();
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Configuration build() {
                Configuration configurationBuildPartial = buildPartial();
                if (configurationBuildPartial.isInitialized()) {
                    return configurationBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) configurationBuildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Configuration buildPartial() {
                Configuration configuration = new Configuration(this);
                SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.nameBuilder_;
                if (singleFieldBuilderV3 == null) {
                    configuration.name_ = this.name_;
                } else {
                    configuration.name_ = (StringValue) singleFieldBuilderV3.build();
                }
                SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV32 = this.urlBuilder_;
                if (singleFieldBuilderV32 == null) {
                    configuration.url_ = this.url_;
                } else {
                    configuration.url_ = (StringValue) singleFieldBuilderV32.build();
                }
                SingleFieldBuilderV3<UInt32Value, UInt32Value.Builder, UInt32ValueOrBuilder> singleFieldBuilderV33 = this.updateIntervalBuilder_;
                if (singleFieldBuilderV33 == null) {
                    configuration.updateInterval_ = this.updateInterval_;
                } else {
                    configuration.updateInterval_ = (UInt32Value) singleFieldBuilderV33.build();
                }
                SingleFieldBuilderV3<BoolValue, BoolValue.Builder, BoolValueOrBuilder> singleFieldBuilderV34 = this.uniqueOnlyBuilder_;
                if (singleFieldBuilderV34 == null) {
                    configuration.uniqueOnly_ = this.uniqueOnly_;
                } else {
                    configuration.uniqueOnly_ = (BoolValue) singleFieldBuilderV34.build();
                }
                RepeatedFieldBuilderV3<Rule, Rule.Builder, RuleOrBuilder> repeatedFieldBuilderV3 = this.rulesBuilder_;
                if (repeatedFieldBuilderV3 != null) {
                    configuration.rules_ = repeatedFieldBuilderV3.build();
                } else {
                    if ((this.bitField0_ & 1) != 0) {
                        this.rules_ = Collections.unmodifiableList(this.rules_);
                        this.bitField0_ &= -2;
                    }
                    configuration.rules_ = this.rules_;
                }
                onBuilt();
                return configuration;
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
                if (message instanceof Configuration) {
                    return mergeFrom((Configuration) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(Configuration configuration) {
                if (configuration == Configuration.getDefaultInstance()) {
                    return this;
                }
                if (configuration.hasName()) {
                    mergeName(configuration.getName());
                }
                if (configuration.hasUrl()) {
                    mergeUrl(configuration.getUrl());
                }
                if (configuration.hasUpdateInterval()) {
                    mergeUpdateInterval(configuration.getUpdateInterval());
                }
                if (configuration.hasUniqueOnly()) {
                    mergeUniqueOnly(configuration.getUniqueOnly());
                }
                if (this.rulesBuilder_ == null) {
                    if (!configuration.rules_.isEmpty()) {
                        if (this.rules_.isEmpty()) {
                            this.rules_ = configuration.rules_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureRulesIsMutable();
                            this.rules_.addAll(configuration.rules_);
                        }
                        onChanged();
                    }
                } else if (!configuration.rules_.isEmpty()) {
                    if (!this.rulesBuilder_.isEmpty()) {
                        this.rulesBuilder_.addAllMessages(configuration.rules_);
                    } else {
                        this.rulesBuilder_.dispose();
                        this.rulesBuilder_ = null;
                        this.rules_ = configuration.rules_;
                        this.bitField0_ &= -2;
                        this.rulesBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getRulesFieldBuilder() : null;
                    }
                }
                mergeUnknownFields(((GeneratedMessageV3) configuration).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public io.bidmachine.protobuf.sdk.Reader.Configuration.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r3, com.explorestack.protobuf.ExtensionRegistryLite r4) throws java.lang.Throwable {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.Parser r1 = io.bidmachine.protobuf.sdk.Reader.Configuration.access$1100()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    io.bidmachine.protobuf.sdk.Reader$Configuration r3 = (io.bidmachine.protobuf.sdk.Reader.Configuration) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                    io.bidmachine.protobuf.sdk.Reader$Configuration r4 = (io.bidmachine.protobuf.sdk.Reader.Configuration) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.sdk.Reader.Configuration.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):io.bidmachine.protobuf.sdk.Reader$Configuration$Builder");
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
            public boolean hasName() {
                return (this.nameBuilder_ == null && this.name_ == null) ? false : true;
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
            public StringValue getName() {
                SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.nameBuilder_;
                if (singleFieldBuilderV3 == null) {
                    StringValue stringValue = this.name_;
                    return stringValue == null ? StringValue.getDefaultInstance() : stringValue;
                }
                return (StringValue) singleFieldBuilderV3.getMessage();
            }

            public Builder setName(StringValue stringValue) {
                SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.nameBuilder_;
                if (singleFieldBuilderV3 == null) {
                    stringValue.getClass();
                    this.name_ = stringValue;
                    onChanged();
                    return this;
                }
                singleFieldBuilderV3.setMessage(stringValue);
                return this;
            }

            public Builder setName(StringValue.Builder builder) {
                SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.nameBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.name_ = builder.build();
                    onChanged();
                    return this;
                }
                singleFieldBuilderV3.setMessage(builder.build());
                return this;
            }

            public Builder mergeName(StringValue stringValue) {
                SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.nameBuilder_;
                if (singleFieldBuilderV3 == null) {
                    StringValue stringValue2 = this.name_;
                    if (stringValue2 != null) {
                        this.name_ = StringValue.newBuilder(stringValue2).mergeFrom(stringValue).buildPartial();
                    } else {
                        this.name_ = stringValue;
                    }
                    onChanged();
                    return this;
                }
                singleFieldBuilderV3.mergeFrom(stringValue);
                return this;
            }

            public Builder clearName() {
                if (this.nameBuilder_ == null) {
                    this.name_ = null;
                    onChanged();
                    return this;
                }
                this.name_ = null;
                this.nameBuilder_ = null;
                return this;
            }

            public StringValue.Builder getNameBuilder() {
                onChanged();
                return (StringValue.Builder) getNameFieldBuilder().getBuilder();
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
            public StringValueOrBuilder getNameOrBuilder() {
                SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.nameBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (StringValueOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
                }
                StringValue stringValue = this.name_;
                return stringValue == null ? StringValue.getDefaultInstance() : stringValue;
            }

            private SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> getNameFieldBuilder() {
                if (this.nameBuilder_ == null) {
                    this.nameBuilder_ = new SingleFieldBuilderV3<>(getName(), getParentForChildren(), isClean());
                    this.name_ = null;
                }
                return this.nameBuilder_;
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
            public boolean hasUrl() {
                return (this.urlBuilder_ == null && this.url_ == null) ? false : true;
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
            public StringValue getUrl() {
                SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.urlBuilder_;
                if (singleFieldBuilderV3 == null) {
                    StringValue stringValue = this.url_;
                    return stringValue == null ? StringValue.getDefaultInstance() : stringValue;
                }
                return (StringValue) singleFieldBuilderV3.getMessage();
            }

            public Builder setUrl(StringValue stringValue) {
                SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.urlBuilder_;
                if (singleFieldBuilderV3 == null) {
                    stringValue.getClass();
                    this.url_ = stringValue;
                    onChanged();
                    return this;
                }
                singleFieldBuilderV3.setMessage(stringValue);
                return this;
            }

            public Builder setUrl(StringValue.Builder builder) {
                SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.urlBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.url_ = builder.build();
                    onChanged();
                    return this;
                }
                singleFieldBuilderV3.setMessage(builder.build());
                return this;
            }

            public Builder mergeUrl(StringValue stringValue) {
                SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.urlBuilder_;
                if (singleFieldBuilderV3 == null) {
                    StringValue stringValue2 = this.url_;
                    if (stringValue2 != null) {
                        this.url_ = StringValue.newBuilder(stringValue2).mergeFrom(stringValue).buildPartial();
                    } else {
                        this.url_ = stringValue;
                    }
                    onChanged();
                    return this;
                }
                singleFieldBuilderV3.mergeFrom(stringValue);
                return this;
            }

            public Builder clearUrl() {
                if (this.urlBuilder_ == null) {
                    this.url_ = null;
                    onChanged();
                    return this;
                }
                this.url_ = null;
                this.urlBuilder_ = null;
                return this;
            }

            public StringValue.Builder getUrlBuilder() {
                onChanged();
                return (StringValue.Builder) getUrlFieldBuilder().getBuilder();
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
            public StringValueOrBuilder getUrlOrBuilder() {
                SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.urlBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (StringValueOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
                }
                StringValue stringValue = this.url_;
                return stringValue == null ? StringValue.getDefaultInstance() : stringValue;
            }

            private SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> getUrlFieldBuilder() {
                if (this.urlBuilder_ == null) {
                    this.urlBuilder_ = new SingleFieldBuilderV3<>(getUrl(), getParentForChildren(), isClean());
                    this.url_ = null;
                }
                return this.urlBuilder_;
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
            public boolean hasUpdateInterval() {
                return (this.updateIntervalBuilder_ == null && this.updateInterval_ == null) ? false : true;
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
            public UInt32Value getUpdateInterval() {
                SingleFieldBuilderV3<UInt32Value, UInt32Value.Builder, UInt32ValueOrBuilder> singleFieldBuilderV3 = this.updateIntervalBuilder_;
                if (singleFieldBuilderV3 == null) {
                    UInt32Value uInt32Value = this.updateInterval_;
                    return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
                }
                return (UInt32Value) singleFieldBuilderV3.getMessage();
            }

            public Builder setUpdateInterval(UInt32Value uInt32Value) {
                SingleFieldBuilderV3<UInt32Value, UInt32Value.Builder, UInt32ValueOrBuilder> singleFieldBuilderV3 = this.updateIntervalBuilder_;
                if (singleFieldBuilderV3 == null) {
                    uInt32Value.getClass();
                    this.updateInterval_ = uInt32Value;
                    onChanged();
                    return this;
                }
                singleFieldBuilderV3.setMessage(uInt32Value);
                return this;
            }

            public Builder setUpdateInterval(UInt32Value.Builder builder) {
                SingleFieldBuilderV3<UInt32Value, UInt32Value.Builder, UInt32ValueOrBuilder> singleFieldBuilderV3 = this.updateIntervalBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.updateInterval_ = builder.build();
                    onChanged();
                    return this;
                }
                singleFieldBuilderV3.setMessage(builder.build());
                return this;
            }

            public Builder mergeUpdateInterval(UInt32Value uInt32Value) {
                SingleFieldBuilderV3<UInt32Value, UInt32Value.Builder, UInt32ValueOrBuilder> singleFieldBuilderV3 = this.updateIntervalBuilder_;
                if (singleFieldBuilderV3 == null) {
                    UInt32Value uInt32Value2 = this.updateInterval_;
                    if (uInt32Value2 != null) {
                        this.updateInterval_ = UInt32Value.newBuilder(uInt32Value2).mergeFrom(uInt32Value).buildPartial();
                    } else {
                        this.updateInterval_ = uInt32Value;
                    }
                    onChanged();
                    return this;
                }
                singleFieldBuilderV3.mergeFrom(uInt32Value);
                return this;
            }

            public Builder clearUpdateInterval() {
                if (this.updateIntervalBuilder_ == null) {
                    this.updateInterval_ = null;
                    onChanged();
                    return this;
                }
                this.updateInterval_ = null;
                this.updateIntervalBuilder_ = null;
                return this;
            }

            public UInt32Value.Builder getUpdateIntervalBuilder() {
                onChanged();
                return (UInt32Value.Builder) getUpdateIntervalFieldBuilder().getBuilder();
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
            public UInt32ValueOrBuilder getUpdateIntervalOrBuilder() {
                SingleFieldBuilderV3<UInt32Value, UInt32Value.Builder, UInt32ValueOrBuilder> singleFieldBuilderV3 = this.updateIntervalBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (UInt32ValueOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
                }
                UInt32Value uInt32Value = this.updateInterval_;
                return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
            }

            private SingleFieldBuilderV3<UInt32Value, UInt32Value.Builder, UInt32ValueOrBuilder> getUpdateIntervalFieldBuilder() {
                if (this.updateIntervalBuilder_ == null) {
                    this.updateIntervalBuilder_ = new SingleFieldBuilderV3<>(getUpdateInterval(), getParentForChildren(), isClean());
                    this.updateInterval_ = null;
                }
                return this.updateIntervalBuilder_;
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
            public boolean hasUniqueOnly() {
                return (this.uniqueOnlyBuilder_ == null && this.uniqueOnly_ == null) ? false : true;
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
            public BoolValue getUniqueOnly() {
                SingleFieldBuilderV3<BoolValue, BoolValue.Builder, BoolValueOrBuilder> singleFieldBuilderV3 = this.uniqueOnlyBuilder_;
                if (singleFieldBuilderV3 == null) {
                    BoolValue boolValue = this.uniqueOnly_;
                    return boolValue == null ? BoolValue.getDefaultInstance() : boolValue;
                }
                return (BoolValue) singleFieldBuilderV3.getMessage();
            }

            public Builder setUniqueOnly(BoolValue boolValue) {
                SingleFieldBuilderV3<BoolValue, BoolValue.Builder, BoolValueOrBuilder> singleFieldBuilderV3 = this.uniqueOnlyBuilder_;
                if (singleFieldBuilderV3 == null) {
                    boolValue.getClass();
                    this.uniqueOnly_ = boolValue;
                    onChanged();
                    return this;
                }
                singleFieldBuilderV3.setMessage(boolValue);
                return this;
            }

            public Builder setUniqueOnly(BoolValue.Builder builder) {
                SingleFieldBuilderV3<BoolValue, BoolValue.Builder, BoolValueOrBuilder> singleFieldBuilderV3 = this.uniqueOnlyBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.uniqueOnly_ = builder.build();
                    onChanged();
                    return this;
                }
                singleFieldBuilderV3.setMessage(builder.build());
                return this;
            }

            public Builder mergeUniqueOnly(BoolValue boolValue) {
                SingleFieldBuilderV3<BoolValue, BoolValue.Builder, BoolValueOrBuilder> singleFieldBuilderV3 = this.uniqueOnlyBuilder_;
                if (singleFieldBuilderV3 == null) {
                    BoolValue boolValue2 = this.uniqueOnly_;
                    if (boolValue2 != null) {
                        this.uniqueOnly_ = BoolValue.newBuilder(boolValue2).mergeFrom(boolValue).buildPartial();
                    } else {
                        this.uniqueOnly_ = boolValue;
                    }
                    onChanged();
                    return this;
                }
                singleFieldBuilderV3.mergeFrom(boolValue);
                return this;
            }

            public Builder clearUniqueOnly() {
                if (this.uniqueOnlyBuilder_ == null) {
                    this.uniqueOnly_ = null;
                    onChanged();
                    return this;
                }
                this.uniqueOnly_ = null;
                this.uniqueOnlyBuilder_ = null;
                return this;
            }

            public BoolValue.Builder getUniqueOnlyBuilder() {
                onChanged();
                return (BoolValue.Builder) getUniqueOnlyFieldBuilder().getBuilder();
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
            public BoolValueOrBuilder getUniqueOnlyOrBuilder() {
                SingleFieldBuilderV3<BoolValue, BoolValue.Builder, BoolValueOrBuilder> singleFieldBuilderV3 = this.uniqueOnlyBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (BoolValueOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
                }
                BoolValue boolValue = this.uniqueOnly_;
                return boolValue == null ? BoolValue.getDefaultInstance() : boolValue;
            }

            private SingleFieldBuilderV3<BoolValue, BoolValue.Builder, BoolValueOrBuilder> getUniqueOnlyFieldBuilder() {
                if (this.uniqueOnlyBuilder_ == null) {
                    this.uniqueOnlyBuilder_ = new SingleFieldBuilderV3<>(getUniqueOnly(), getParentForChildren(), isClean());
                    this.uniqueOnly_ = null;
                }
                return this.uniqueOnlyBuilder_;
            }

            private void ensureRulesIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.rules_ = new ArrayList(this.rules_);
                    this.bitField0_ |= 1;
                }
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
            public List<Rule> getRulesList() {
                RepeatedFieldBuilderV3<Rule, Rule.Builder, RuleOrBuilder> repeatedFieldBuilderV3 = this.rulesBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    return Collections.unmodifiableList(this.rules_);
                }
                return repeatedFieldBuilderV3.getMessageList();
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
            public int getRulesCount() {
                RepeatedFieldBuilderV3<Rule, Rule.Builder, RuleOrBuilder> repeatedFieldBuilderV3 = this.rulesBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    return this.rules_.size();
                }
                return repeatedFieldBuilderV3.getCount();
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
            public Rule getRules(int i) {
                RepeatedFieldBuilderV3<Rule, Rule.Builder, RuleOrBuilder> repeatedFieldBuilderV3 = this.rulesBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    return this.rules_.get(i);
                }
                return (Rule) repeatedFieldBuilderV3.getMessage(i);
            }

            public Builder setRules(int i, Rule rule) {
                RepeatedFieldBuilderV3<Rule, Rule.Builder, RuleOrBuilder> repeatedFieldBuilderV3 = this.rulesBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    rule.getClass();
                    ensureRulesIsMutable();
                    this.rules_.set(i, rule);
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.setMessage(i, rule);
                return this;
            }

            public Builder setRules(int i, Rule.Builder builder) {
                RepeatedFieldBuilderV3<Rule, Rule.Builder, RuleOrBuilder> repeatedFieldBuilderV3 = this.rulesBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureRulesIsMutable();
                    this.rules_.set(i, builder.build());
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.setMessage(i, builder.build());
                return this;
            }

            public Builder addRules(Rule rule) {
                RepeatedFieldBuilderV3<Rule, Rule.Builder, RuleOrBuilder> repeatedFieldBuilderV3 = this.rulesBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    rule.getClass();
                    ensureRulesIsMutable();
                    this.rules_.add(rule);
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.addMessage(rule);
                return this;
            }

            public Builder addRules(int i, Rule rule) {
                RepeatedFieldBuilderV3<Rule, Rule.Builder, RuleOrBuilder> repeatedFieldBuilderV3 = this.rulesBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    rule.getClass();
                    ensureRulesIsMutable();
                    this.rules_.add(i, rule);
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.addMessage(i, rule);
                return this;
            }

            public Builder addRules(Rule.Builder builder) {
                RepeatedFieldBuilderV3<Rule, Rule.Builder, RuleOrBuilder> repeatedFieldBuilderV3 = this.rulesBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureRulesIsMutable();
                    this.rules_.add(builder.build());
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.addMessage(builder.build());
                return this;
            }

            public Builder addRules(int i, Rule.Builder builder) {
                RepeatedFieldBuilderV3<Rule, Rule.Builder, RuleOrBuilder> repeatedFieldBuilderV3 = this.rulesBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureRulesIsMutable();
                    this.rules_.add(i, builder.build());
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.addMessage(i, builder.build());
                return this;
            }

            public Builder addAllRules(Iterable<? extends Rule> iterable) {
                RepeatedFieldBuilderV3<Rule, Rule.Builder, RuleOrBuilder> repeatedFieldBuilderV3 = this.rulesBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureRulesIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.rules_);
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.addAllMessages(iterable);
                return this;
            }

            public Builder clearRules() {
                RepeatedFieldBuilderV3<Rule, Rule.Builder, RuleOrBuilder> repeatedFieldBuilderV3 = this.rulesBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.rules_ = Collections.EMPTY_LIST;
                    this.bitField0_ &= -2;
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.clear();
                return this;
            }

            public Builder removeRules(int i) {
                RepeatedFieldBuilderV3<Rule, Rule.Builder, RuleOrBuilder> repeatedFieldBuilderV3 = this.rulesBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureRulesIsMutable();
                    this.rules_.remove(i);
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.remove(i);
                return this;
            }

            public Rule.Builder getRulesBuilder(int i) {
                return (Rule.Builder) getRulesFieldBuilder().getBuilder(i);
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
            public RuleOrBuilder getRulesOrBuilder(int i) {
                RepeatedFieldBuilderV3<Rule, Rule.Builder, RuleOrBuilder> repeatedFieldBuilderV3 = this.rulesBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    return this.rules_.get(i);
                }
                return (RuleOrBuilder) repeatedFieldBuilderV3.getMessageOrBuilder(i);
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
            public List<? extends RuleOrBuilder> getRulesOrBuilderList() {
                RepeatedFieldBuilderV3<Rule, Rule.Builder, RuleOrBuilder> repeatedFieldBuilderV3 = this.rulesBuilder_;
                if (repeatedFieldBuilderV3 != null) {
                    return repeatedFieldBuilderV3.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.rules_);
            }

            public Rule.Builder addRulesBuilder() {
                return (Rule.Builder) getRulesFieldBuilder().addBuilder(Rule.getDefaultInstance());
            }

            public Rule.Builder addRulesBuilder(int i) {
                return (Rule.Builder) getRulesFieldBuilder().addBuilder(i, Rule.getDefaultInstance());
            }

            public List<Rule.Builder> getRulesBuilderList() {
                return getRulesFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilderV3<Rule, Rule.Builder, RuleOrBuilder> getRulesFieldBuilder() {
                if (this.rulesBuilder_ == null) {
                    this.rulesBuilder_ = new RepeatedFieldBuilderV3<>(this.rules_, (this.bitField0_ & 1) != 0, getParentForChildren(), isClean());
                    this.rules_ = null;
                }
                return this.rulesBuilder_;
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

        public static Configuration getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<Configuration> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Parser<Configuration> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        /* JADX INFO: renamed from: getDefaultInstanceForType */
        public Configuration mo687getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class Rule extends GeneratedMessageV3 implements RuleOrBuilder {
        public static final int GENERAL_RULE_FIELD_NUMBER = 1;
        public static final int IOS_LOG_RULE_FIELD_NUMBER = 2;
        public static final int PUR_RULE_FIELD_NUMBER = 3;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private int ruleOneofCase_;
        private Object ruleOneof_;
        private static final Rule DEFAULT_INSTANCE = new Rule();
        private static final Parser<Rule> PARSER = new AbstractParser<Rule>() { // from class: io.bidmachine.protobuf.sdk.Reader.Rule.1
            @Override // com.explorestack.protobuf.Parser
            public Rule parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new Rule(codedInputStream, extensionRegistryLite);
            }
        };

        public interface GeneralRuleOrBuilder extends MessageOrBuilder {
            @Override // com.explorestack.protobuf.MessageOrBuilder
            /* JADX INFO: renamed from: getDefaultInstanceForType */
            /* synthetic */ MessageLite mo687getDefaultInstanceForType();

            StringValue getPath();

            StringValueOrBuilder getPathOrBuilder();

            StringValue getTag();

            StringValueOrBuilder getTagOrBuilder();

            boolean hasPath();

            boolean hasTag();

            @Override // com.explorestack.protobuf.MessageOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        public interface IOSLogRuleOrBuilder extends MessageOrBuilder {
            @Override // com.explorestack.protobuf.MessageOrBuilder
            /* JADX INFO: renamed from: getDefaultInstanceForType */
            /* synthetic */ MessageLite mo687getDefaultInstanceForType();

            StringValue getLevels(int i);

            int getLevelsCount();

            List<StringValue> getLevelsList();

            StringValueOrBuilder getLevelsOrBuilder(int i);

            List<? extends StringValueOrBuilder> getLevelsOrBuilderList();

            StringValue getSources(int i);

            int getSourcesCount();

            List<StringValue> getSourcesList();

            StringValueOrBuilder getSourcesOrBuilder(int i);

            List<? extends StringValueOrBuilder> getSourcesOrBuilderList();

            StringValue getTag();

            StringValueOrBuilder getTagOrBuilder();

            boolean hasTag();

            @Override // com.explorestack.protobuf.MessageOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        public interface PurRuleOrBuilder extends MessageOrBuilder {
            @Override // com.explorestack.protobuf.MessageOrBuilder
            /* JADX INFO: renamed from: getDefaultInstanceForType */
            /* synthetic */ MessageLite mo687getDefaultInstanceForType();

            StringValue getPath();

            StringValueOrBuilder getPathOrBuilder();

            StringValue getQuery();

            StringValueOrBuilder getQueryOrBuilder();

            BoolValue getShouldReport();

            BoolValueOrBuilder getShouldReportOrBuilder();

            StringValue getTag();

            StringValueOrBuilder getTagOrBuilder();

            boolean hasPath();

            boolean hasQuery();

            boolean hasShouldReport();

            boolean hasTag();

            @Override // com.explorestack.protobuf.MessageOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        private Rule(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.ruleOneofCase_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private Rule() {
            this.ruleOneofCase_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
            return new Rule();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private Rule(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this();
            extensionRegistryLite.getClass();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        int tag = codedInputStream.readTag();
                        if (tag != 0) {
                            if (tag == 10) {
                                GeneralRule.Builder builder = this.ruleOneofCase_ == 1 ? ((GeneralRule) this.ruleOneof_).toBuilder() : null;
                                MessageLite message = codedInputStream.readMessage(GeneralRule.parser(), extensionRegistryLite);
                                this.ruleOneof_ = message;
                                if (builder != null) {
                                    builder.mergeFrom((GeneralRule) message);
                                    this.ruleOneof_ = builder.buildPartial();
                                }
                                this.ruleOneofCase_ = 1;
                            } else if (tag == 18) {
                                IOSLogRule.Builder builder2 = this.ruleOneofCase_ == 2 ? ((IOSLogRule) this.ruleOneof_).toBuilder() : null;
                                MessageLite message2 = codedInputStream.readMessage(IOSLogRule.parser(), extensionRegistryLite);
                                this.ruleOneof_ = message2;
                                if (builder2 != null) {
                                    builder2.mergeFrom((IOSLogRule) message2);
                                    this.ruleOneof_ = builder2.buildPartial();
                                }
                                this.ruleOneofCase_ = 2;
                            } else if (tag == 26) {
                                PurRule.Builder builder3 = this.ruleOneofCase_ == 3 ? ((PurRule) this.ruleOneof_).toBuilder() : null;
                                MessageLite message3 = codedInputStream.readMessage(PurRule.parser(), extensionRegistryLite);
                                this.ruleOneof_ = message3;
                                if (builder3 != null) {
                                    builder3.mergeFrom((PurRule) message3);
                                    this.ruleOneof_ = builder3.buildPartial();
                                }
                                this.ruleOneofCase_ = 3;
                            } else if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                            }
                        }
                        z = true;
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(this);
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2).setUnfinishedMessage(this);
                    }
                } catch (Throwable th) {
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            this.unknownFields = builderNewBuilder.build();
            makeExtensionsImmutable();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_descriptor;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_fieldAccessorTable.ensureFieldAccessorsInitialized(Rule.class, Builder.class);
        }

        public static final class GeneralRule extends GeneratedMessageV3 implements GeneralRuleOrBuilder {
            private static final GeneralRule DEFAULT_INSTANCE = new GeneralRule();
            private static final Parser<GeneralRule> PARSER = new AbstractParser<GeneralRule>() { // from class: io.bidmachine.protobuf.sdk.Reader.Rule.GeneralRule.1
                @Override // com.explorestack.protobuf.Parser
                public GeneralRule parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return new GeneralRule(codedInputStream, extensionRegistryLite);
                }
            };
            public static final int PATH_FIELD_NUMBER = 2;
            public static final int TAG_FIELD_NUMBER = 1;
            private static final long serialVersionUID = 0;
            private byte memoizedIsInitialized;
            private StringValue path_;
            private StringValue tag_;

            private GeneralRule(GeneratedMessageV3.Builder<?> builder) {
                super(builder);
                this.memoizedIsInitialized = (byte) -1;
            }

            private GeneralRule() {
                this.memoizedIsInitialized = (byte) -1;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
                return new GeneralRule();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
            public final UnknownFieldSet getUnknownFields() {
                return this.unknownFields;
            }

            private GeneralRule(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                StringValue.Builder builder;
                this();
                extensionRegistryLite.getClass();
                UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
                boolean z = false;
                while (!z) {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag != 0) {
                                if (tag == 10) {
                                    StringValue stringValue = this.tag_;
                                    builder = stringValue != null ? stringValue.toBuilder() : null;
                                    StringValue stringValue2 = (StringValue) codedInputStream.readMessage(StringValue.parser(), extensionRegistryLite);
                                    this.tag_ = stringValue2;
                                    if (builder != null) {
                                        builder.mergeFrom(stringValue2);
                                        this.tag_ = builder.buildPartial();
                                    }
                                } else if (tag == 18) {
                                    StringValue stringValue3 = this.path_;
                                    builder = stringValue3 != null ? stringValue3.toBuilder() : null;
                                    StringValue stringValue4 = (StringValue) codedInputStream.readMessage(StringValue.parser(), extensionRegistryLite);
                                    this.path_ = stringValue4;
                                    if (builder != null) {
                                        builder.mergeFrom(stringValue4);
                                        this.path_ = builder.buildPartial();
                                    }
                                } else if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            throw e.setUnfinishedMessage(this);
                        } catch (IOException e2) {
                            throw new InvalidProtocolBufferException(e2).setUnfinishedMessage(this);
                        }
                    } catch (Throwable th) {
                        this.unknownFields = builderNewBuilder.build();
                        makeExtensionsImmutable();
                        throw th;
                    }
                }
                this.unknownFields = builderNewBuilder.build();
                makeExtensionsImmutable();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_GeneralRule_descriptor;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_GeneralRule_fieldAccessorTable.ensureFieldAccessorsInitialized(GeneralRule.class, Builder.class);
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.Rule.GeneralRuleOrBuilder
            public boolean hasTag() {
                return this.tag_ != null;
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.Rule.GeneralRuleOrBuilder
            public StringValue getTag() {
                StringValue stringValue = this.tag_;
                return stringValue == null ? StringValue.getDefaultInstance() : stringValue;
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.Rule.GeneralRuleOrBuilder
            public StringValueOrBuilder getTagOrBuilder() {
                return getTag();
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.Rule.GeneralRuleOrBuilder
            public boolean hasPath() {
                return this.path_ != null;
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.Rule.GeneralRuleOrBuilder
            public StringValue getPath() {
                StringValue stringValue = this.path_;
                return stringValue == null ? StringValue.getDefaultInstance() : stringValue;
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.Rule.GeneralRuleOrBuilder
            public StringValueOrBuilder getPathOrBuilder() {
                return getPath();
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
                if (this.tag_ != null) {
                    codedOutputStream.writeMessage(1, getTag());
                }
                if (this.path_ != null) {
                    codedOutputStream.writeMessage(2, getPath());
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public int getSerializedSize() {
                int i = this.memoizedSize;
                if (i != -1) {
                    return i;
                }
                int iComputeMessageSize = this.tag_ != null ? CodedOutputStream.computeMessageSize(1, getTag()) : 0;
                if (this.path_ != null) {
                    iComputeMessageSize += CodedOutputStream.computeMessageSize(2, getPath());
                }
                int serializedSize = iComputeMessageSize + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof GeneralRule)) {
                    return super.equals(obj);
                }
                GeneralRule generalRule = (GeneralRule) obj;
                if (hasTag() != generalRule.hasTag()) {
                    return false;
                }
                if ((!hasTag() || getTag().equals(generalRule.getTag())) && hasPath() == generalRule.hasPath()) {
                    return (!hasPath() || getPath().equals(generalRule.getPath())) && this.unknownFields.equals(generalRule.unknownFields);
                }
                return false;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public int hashCode() {
                int i = this.memoizedHashCode;
                if (i != 0) {
                    return i;
                }
                int iHashCode = 779 + getDescriptor().hashCode();
                if (hasTag()) {
                    iHashCode = (((iHashCode * 37) + 1) * 53) + getTag().hashCode();
                }
                if (hasPath()) {
                    iHashCode = (((iHashCode * 37) + 2) * 53) + getPath().hashCode();
                }
                int iHashCode2 = (iHashCode * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = iHashCode2;
                return iHashCode2;
            }

            public static GeneralRule parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static GeneralRule parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
            }

            public static GeneralRule parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            public static GeneralRule parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, extensionRegistryLite);
            }

            public static GeneralRule parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            public static GeneralRule parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, extensionRegistryLite);
            }

            public static GeneralRule parseFrom(InputStream inputStream) throws IOException {
                return (GeneralRule) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            public static GeneralRule parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (GeneralRule) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static GeneralRule parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (GeneralRule) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static GeneralRule parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (GeneralRule) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static GeneralRule parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (GeneralRule) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
            }

            public static GeneralRule parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (GeneralRule) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Builder newBuilder(GeneralRule generalRule) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(generalRule);
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
                return new Builder(builderParent);
            }

            public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements GeneralRuleOrBuilder {
                private SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> pathBuilder_;
                private StringValue path_;
                private SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> tagBuilder_;
                private StringValue tag_;

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_GeneralRule_descriptor;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
                public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                    return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_GeneralRule_fieldAccessorTable.ensureFieldAccessorsInitialized(GeneralRule.class, Builder.class);
                }

                private Builder() {
                    maybeForceBuilderInitialization();
                }

                private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                    super(builderParent);
                    maybeForceBuilderInitialization();
                }

                private void maybeForceBuilderInitialization() {
                    boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public Builder clear() {
                    super.clear();
                    if (this.tagBuilder_ == null) {
                        this.tag_ = null;
                    } else {
                        this.tag_ = null;
                        this.tagBuilder_ = null;
                    }
                    if (this.pathBuilder_ == null) {
                        this.path_ = null;
                        return this;
                    }
                    this.path_ = null;
                    this.pathBuilder_ = null;
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_GeneralRule_descriptor;
                }

                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                /* JADX INFO: renamed from: getDefaultInstanceForType */
                public GeneralRule mo687getDefaultInstanceForType() {
                    return GeneralRule.getDefaultInstance();
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public GeneralRule build() {
                    GeneralRule generalRuleBuildPartial = buildPartial();
                    if (generalRuleBuildPartial.isInitialized()) {
                        return generalRuleBuildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) generalRuleBuildPartial);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public GeneralRule buildPartial() {
                    GeneralRule generalRule = new GeneralRule(this);
                    SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.tagBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        generalRule.tag_ = this.tag_;
                    } else {
                        generalRule.tag_ = (StringValue) singleFieldBuilderV3.build();
                    }
                    SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV32 = this.pathBuilder_;
                    if (singleFieldBuilderV32 == null) {
                        generalRule.path_ = this.path_;
                    } else {
                        generalRule.path_ = (StringValue) singleFieldBuilderV32.build();
                    }
                    onBuilt();
                    return generalRule;
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
                    if (message instanceof GeneralRule) {
                        return mergeFrom((GeneralRule) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public Builder mergeFrom(GeneralRule generalRule) {
                    if (generalRule == GeneralRule.getDefaultInstance()) {
                        return this;
                    }
                    if (generalRule.hasTag()) {
                        mergeTag(generalRule.getTag());
                    }
                    if (generalRule.hasPath()) {
                        mergePath(generalRule.getPath());
                    }
                    mergeUnknownFields(((GeneratedMessageV3) generalRule).unknownFields);
                    onChanged();
                    return this;
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public io.bidmachine.protobuf.sdk.Reader.Rule.GeneralRule.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r3, com.explorestack.protobuf.ExtensionRegistryLite r4) throws java.lang.Throwable {
                    /*
                        r2 = this;
                        r0 = 0
                        com.explorestack.protobuf.Parser r1 = io.bidmachine.protobuf.sdk.Reader.Rule.GeneralRule.access$2000()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                        io.bidmachine.protobuf.sdk.Reader$Rule$GeneralRule r3 = (io.bidmachine.protobuf.sdk.Reader.Rule.GeneralRule) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                        io.bidmachine.protobuf.sdk.Reader$Rule$GeneralRule r4 = (io.bidmachine.protobuf.sdk.Reader.Rule.GeneralRule) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.sdk.Reader.Rule.GeneralRule.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):io.bidmachine.protobuf.sdk.Reader$Rule$GeneralRule$Builder");
                }

                @Override // io.bidmachine.protobuf.sdk.Reader.Rule.GeneralRuleOrBuilder
                public boolean hasTag() {
                    return (this.tagBuilder_ == null && this.tag_ == null) ? false : true;
                }

                @Override // io.bidmachine.protobuf.sdk.Reader.Rule.GeneralRuleOrBuilder
                public StringValue getTag() {
                    SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.tagBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        StringValue stringValue = this.tag_;
                        return stringValue == null ? StringValue.getDefaultInstance() : stringValue;
                    }
                    return (StringValue) singleFieldBuilderV3.getMessage();
                }

                public Builder setTag(StringValue stringValue) {
                    SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.tagBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        stringValue.getClass();
                        this.tag_ = stringValue;
                        onChanged();
                        return this;
                    }
                    singleFieldBuilderV3.setMessage(stringValue);
                    return this;
                }

                public Builder setTag(StringValue.Builder builder) {
                    SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.tagBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        this.tag_ = builder.build();
                        onChanged();
                        return this;
                    }
                    singleFieldBuilderV3.setMessage(builder.build());
                    return this;
                }

                public Builder mergeTag(StringValue stringValue) {
                    SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.tagBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        StringValue stringValue2 = this.tag_;
                        if (stringValue2 != null) {
                            this.tag_ = StringValue.newBuilder(stringValue2).mergeFrom(stringValue).buildPartial();
                        } else {
                            this.tag_ = stringValue;
                        }
                        onChanged();
                        return this;
                    }
                    singleFieldBuilderV3.mergeFrom(stringValue);
                    return this;
                }

                public Builder clearTag() {
                    if (this.tagBuilder_ == null) {
                        this.tag_ = null;
                        onChanged();
                        return this;
                    }
                    this.tag_ = null;
                    this.tagBuilder_ = null;
                    return this;
                }

                public StringValue.Builder getTagBuilder() {
                    onChanged();
                    return (StringValue.Builder) getTagFieldBuilder().getBuilder();
                }

                @Override // io.bidmachine.protobuf.sdk.Reader.Rule.GeneralRuleOrBuilder
                public StringValueOrBuilder getTagOrBuilder() {
                    SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.tagBuilder_;
                    if (singleFieldBuilderV3 != null) {
                        return (StringValueOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
                    }
                    StringValue stringValue = this.tag_;
                    return stringValue == null ? StringValue.getDefaultInstance() : stringValue;
                }

                private SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> getTagFieldBuilder() {
                    if (this.tagBuilder_ == null) {
                        this.tagBuilder_ = new SingleFieldBuilderV3<>(getTag(), getParentForChildren(), isClean());
                        this.tag_ = null;
                    }
                    return this.tagBuilder_;
                }

                @Override // io.bidmachine.protobuf.sdk.Reader.Rule.GeneralRuleOrBuilder
                public boolean hasPath() {
                    return (this.pathBuilder_ == null && this.path_ == null) ? false : true;
                }

                @Override // io.bidmachine.protobuf.sdk.Reader.Rule.GeneralRuleOrBuilder
                public StringValue getPath() {
                    SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.pathBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        StringValue stringValue = this.path_;
                        return stringValue == null ? StringValue.getDefaultInstance() : stringValue;
                    }
                    return (StringValue) singleFieldBuilderV3.getMessage();
                }

                public Builder setPath(StringValue stringValue) {
                    SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.pathBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        stringValue.getClass();
                        this.path_ = stringValue;
                        onChanged();
                        return this;
                    }
                    singleFieldBuilderV3.setMessage(stringValue);
                    return this;
                }

                public Builder setPath(StringValue.Builder builder) {
                    SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.pathBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        this.path_ = builder.build();
                        onChanged();
                        return this;
                    }
                    singleFieldBuilderV3.setMessage(builder.build());
                    return this;
                }

                public Builder mergePath(StringValue stringValue) {
                    SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.pathBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        StringValue stringValue2 = this.path_;
                        if (stringValue2 != null) {
                            this.path_ = StringValue.newBuilder(stringValue2).mergeFrom(stringValue).buildPartial();
                        } else {
                            this.path_ = stringValue;
                        }
                        onChanged();
                        return this;
                    }
                    singleFieldBuilderV3.mergeFrom(stringValue);
                    return this;
                }

                public Builder clearPath() {
                    if (this.pathBuilder_ == null) {
                        this.path_ = null;
                        onChanged();
                        return this;
                    }
                    this.path_ = null;
                    this.pathBuilder_ = null;
                    return this;
                }

                public StringValue.Builder getPathBuilder() {
                    onChanged();
                    return (StringValue.Builder) getPathFieldBuilder().getBuilder();
                }

                @Override // io.bidmachine.protobuf.sdk.Reader.Rule.GeneralRuleOrBuilder
                public StringValueOrBuilder getPathOrBuilder() {
                    SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.pathBuilder_;
                    if (singleFieldBuilderV3 != null) {
                        return (StringValueOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
                    }
                    StringValue stringValue = this.path_;
                    return stringValue == null ? StringValue.getDefaultInstance() : stringValue;
                }

                private SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> getPathFieldBuilder() {
                    if (this.pathBuilder_ == null) {
                        this.pathBuilder_ = new SingleFieldBuilderV3<>(getPath(), getParentForChildren(), isClean());
                        this.path_ = null;
                    }
                    return this.pathBuilder_;
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

            public static GeneralRule getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<GeneralRule> parser() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public Parser<GeneralRule> getParserForType() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
            /* JADX INFO: renamed from: getDefaultInstanceForType */
            public GeneralRule mo687getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }
        }

        public static final class IOSLogRule extends GeneratedMessageV3 implements IOSLogRuleOrBuilder {
            public static final int LEVELS_FIELD_NUMBER = 2;
            public static final int SOURCES_FIELD_NUMBER = 3;
            public static final int TAG_FIELD_NUMBER = 1;
            private static final long serialVersionUID = 0;
            private List<StringValue> levels_;
            private byte memoizedIsInitialized;
            private List<StringValue> sources_;
            private StringValue tag_;
            private static final IOSLogRule DEFAULT_INSTANCE = new IOSLogRule();
            private static final Parser<IOSLogRule> PARSER = new AbstractParser<IOSLogRule>() { // from class: io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRule.1
                @Override // com.explorestack.protobuf.Parser
                public IOSLogRule parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return new IOSLogRule(codedInputStream, extensionRegistryLite);
                }
            };

            private IOSLogRule(GeneratedMessageV3.Builder<?> builder) {
                super(builder);
                this.memoizedIsInitialized = (byte) -1;
            }

            private IOSLogRule() {
                this.memoizedIsInitialized = (byte) -1;
                List<StringValue> list = Collections.EMPTY_LIST;
                this.levels_ = list;
                this.sources_ = list;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
                return new IOSLogRule();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
            public final UnknownFieldSet getUnknownFields() {
                return this.unknownFields;
            }

            private IOSLogRule(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                this();
                extensionRegistryLite.getClass();
                UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
                boolean z = false;
                int i = 0;
                while (!z) {
                    try {
                        try {
                            try {
                                int tag = codedInputStream.readTag();
                                if (tag != 0) {
                                    if (tag == 10) {
                                        StringValue stringValue = this.tag_;
                                        StringValue.Builder builder = stringValue != null ? stringValue.toBuilder() : null;
                                        StringValue stringValue2 = (StringValue) codedInputStream.readMessage(StringValue.parser(), extensionRegistryLite);
                                        this.tag_ = stringValue2;
                                        if (builder != null) {
                                            builder.mergeFrom(stringValue2);
                                            this.tag_ = builder.buildPartial();
                                        }
                                    } else if (tag == 18) {
                                        if ((i & 1) == 0) {
                                            this.levels_ = new ArrayList();
                                            i |= 1;
                                        }
                                        this.levels_.add((StringValue) codedInputStream.readMessage(StringValue.parser(), extensionRegistryLite));
                                    } else if (tag == 26) {
                                        if ((i & 2) == 0) {
                                            this.sources_ = new ArrayList();
                                            i |= 2;
                                        }
                                        this.sources_.add((StringValue) codedInputStream.readMessage(StringValue.parser(), extensionRegistryLite));
                                    } else if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                                    }
                                }
                                z = true;
                            } catch (InvalidProtocolBufferException e) {
                                throw e.setUnfinishedMessage(this);
                            }
                        } catch (IOException e2) {
                            throw new InvalidProtocolBufferException(e2).setUnfinishedMessage(this);
                        }
                    } catch (Throwable th) {
                        if ((i & 1) != 0) {
                            this.levels_ = Collections.unmodifiableList(this.levels_);
                        }
                        if ((i & 2) != 0) {
                            this.sources_ = Collections.unmodifiableList(this.sources_);
                        }
                        this.unknownFields = builderNewBuilder.build();
                        makeExtensionsImmutable();
                        throw th;
                    }
                }
                if ((i & 1) != 0) {
                    this.levels_ = Collections.unmodifiableList(this.levels_);
                }
                if ((i & 2) != 0) {
                    this.sources_ = Collections.unmodifiableList(this.sources_);
                }
                this.unknownFields = builderNewBuilder.build();
                makeExtensionsImmutable();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_IOSLogRule_descriptor;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_IOSLogRule_fieldAccessorTable.ensureFieldAccessorsInitialized(IOSLogRule.class, Builder.class);
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRuleOrBuilder
            public boolean hasTag() {
                return this.tag_ != null;
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRuleOrBuilder
            public StringValue getTag() {
                StringValue stringValue = this.tag_;
                return stringValue == null ? StringValue.getDefaultInstance() : stringValue;
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRuleOrBuilder
            public StringValueOrBuilder getTagOrBuilder() {
                return getTag();
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRuleOrBuilder
            public List<StringValue> getLevelsList() {
                return this.levels_;
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRuleOrBuilder
            public List<? extends StringValueOrBuilder> getLevelsOrBuilderList() {
                return this.levels_;
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRuleOrBuilder
            public int getLevelsCount() {
                return this.levels_.size();
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRuleOrBuilder
            public StringValue getLevels(int i) {
                return this.levels_.get(i);
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRuleOrBuilder
            public StringValueOrBuilder getLevelsOrBuilder(int i) {
                return this.levels_.get(i);
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRuleOrBuilder
            public List<StringValue> getSourcesList() {
                return this.sources_;
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRuleOrBuilder
            public List<? extends StringValueOrBuilder> getSourcesOrBuilderList() {
                return this.sources_;
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRuleOrBuilder
            public int getSourcesCount() {
                return this.sources_.size();
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRuleOrBuilder
            public StringValue getSources(int i) {
                return this.sources_.get(i);
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRuleOrBuilder
            public StringValueOrBuilder getSourcesOrBuilder(int i) {
                return this.sources_.get(i);
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
                if (this.tag_ != null) {
                    codedOutputStream.writeMessage(1, getTag());
                }
                for (int i = 0; i < this.levels_.size(); i++) {
                    codedOutputStream.writeMessage(2, this.levels_.get(i));
                }
                for (int i2 = 0; i2 < this.sources_.size(); i2++) {
                    codedOutputStream.writeMessage(3, this.sources_.get(i2));
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public int getSerializedSize() {
                int i = this.memoizedSize;
                if (i != -1) {
                    return i;
                }
                int iComputeMessageSize = this.tag_ != null ? CodedOutputStream.computeMessageSize(1, getTag()) : 0;
                for (int i2 = 0; i2 < this.levels_.size(); i2++) {
                    iComputeMessageSize += CodedOutputStream.computeMessageSize(2, this.levels_.get(i2));
                }
                for (int i3 = 0; i3 < this.sources_.size(); i3++) {
                    iComputeMessageSize += CodedOutputStream.computeMessageSize(3, this.sources_.get(i3));
                }
                int serializedSize = iComputeMessageSize + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof IOSLogRule)) {
                    return super.equals(obj);
                }
                IOSLogRule iOSLogRule = (IOSLogRule) obj;
                if (hasTag() != iOSLogRule.hasTag()) {
                    return false;
                }
                return (!hasTag() || getTag().equals(iOSLogRule.getTag())) && getLevelsList().equals(iOSLogRule.getLevelsList()) && getSourcesList().equals(iOSLogRule.getSourcesList()) && this.unknownFields.equals(iOSLogRule.unknownFields);
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public int hashCode() {
                int i = this.memoizedHashCode;
                if (i != 0) {
                    return i;
                }
                int iHashCode = 779 + getDescriptor().hashCode();
                if (hasTag()) {
                    iHashCode = (((iHashCode * 37) + 1) * 53) + getTag().hashCode();
                }
                if (getLevelsCount() > 0) {
                    iHashCode = (((iHashCode * 37) + 2) * 53) + getLevelsList().hashCode();
                }
                if (getSourcesCount() > 0) {
                    iHashCode = (((iHashCode * 37) + 3) * 53) + getSourcesList().hashCode();
                }
                int iHashCode2 = (iHashCode * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = iHashCode2;
                return iHashCode2;
            }

            public static IOSLogRule parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static IOSLogRule parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
            }

            public static IOSLogRule parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            public static IOSLogRule parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, extensionRegistryLite);
            }

            public static IOSLogRule parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            public static IOSLogRule parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, extensionRegistryLite);
            }

            public static IOSLogRule parseFrom(InputStream inputStream) throws IOException {
                return (IOSLogRule) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            public static IOSLogRule parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (IOSLogRule) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static IOSLogRule parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (IOSLogRule) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static IOSLogRule parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (IOSLogRule) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static IOSLogRule parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (IOSLogRule) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
            }

            public static IOSLogRule parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (IOSLogRule) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Builder newBuilder(IOSLogRule iOSLogRule) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(iOSLogRule);
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
                return new Builder(builderParent);
            }

            public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements IOSLogRuleOrBuilder {
                private int bitField0_;
                private RepeatedFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> levelsBuilder_;
                private List<StringValue> levels_;
                private RepeatedFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> sourcesBuilder_;
                private List<StringValue> sources_;
                private SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> tagBuilder_;
                private StringValue tag_;

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_IOSLogRule_descriptor;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
                public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                    return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_IOSLogRule_fieldAccessorTable.ensureFieldAccessorsInitialized(IOSLogRule.class, Builder.class);
                }

                private Builder() {
                    List<StringValue> list = Collections.EMPTY_LIST;
                    this.levels_ = list;
                    this.sources_ = list;
                    maybeForceBuilderInitialization();
                }

                private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                    super(builderParent);
                    List<StringValue> list = Collections.EMPTY_LIST;
                    this.levels_ = list;
                    this.sources_ = list;
                    maybeForceBuilderInitialization();
                }

                private void maybeForceBuilderInitialization() {
                    if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                        getLevelsFieldBuilder();
                        getSourcesFieldBuilder();
                    }
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public Builder clear() {
                    super.clear();
                    if (this.tagBuilder_ == null) {
                        this.tag_ = null;
                    } else {
                        this.tag_ = null;
                        this.tagBuilder_ = null;
                    }
                    RepeatedFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> repeatedFieldBuilderV3 = this.levelsBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        this.levels_ = Collections.EMPTY_LIST;
                        this.bitField0_ &= -2;
                    } else {
                        repeatedFieldBuilderV3.clear();
                    }
                    RepeatedFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> repeatedFieldBuilderV32 = this.sourcesBuilder_;
                    if (repeatedFieldBuilderV32 == null) {
                        this.sources_ = Collections.EMPTY_LIST;
                        this.bitField0_ &= -3;
                        return this;
                    }
                    repeatedFieldBuilderV32.clear();
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_IOSLogRule_descriptor;
                }

                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                /* JADX INFO: renamed from: getDefaultInstanceForType */
                public IOSLogRule mo687getDefaultInstanceForType() {
                    return IOSLogRule.getDefaultInstance();
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public IOSLogRule build() {
                    IOSLogRule iOSLogRuleBuildPartial = buildPartial();
                    if (iOSLogRuleBuildPartial.isInitialized()) {
                        return iOSLogRuleBuildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) iOSLogRuleBuildPartial);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public IOSLogRule buildPartial() {
                    IOSLogRule iOSLogRule = new IOSLogRule(this);
                    SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.tagBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        iOSLogRule.tag_ = this.tag_;
                    } else {
                        iOSLogRule.tag_ = (StringValue) singleFieldBuilderV3.build();
                    }
                    RepeatedFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> repeatedFieldBuilderV3 = this.levelsBuilder_;
                    if (repeatedFieldBuilderV3 != null) {
                        iOSLogRule.levels_ = repeatedFieldBuilderV3.build();
                    } else {
                        if ((this.bitField0_ & 1) != 0) {
                            this.levels_ = Collections.unmodifiableList(this.levels_);
                            this.bitField0_ &= -2;
                        }
                        iOSLogRule.levels_ = this.levels_;
                    }
                    RepeatedFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> repeatedFieldBuilderV32 = this.sourcesBuilder_;
                    if (repeatedFieldBuilderV32 != null) {
                        iOSLogRule.sources_ = repeatedFieldBuilderV32.build();
                    } else {
                        if ((this.bitField0_ & 2) != 0) {
                            this.sources_ = Collections.unmodifiableList(this.sources_);
                            this.bitField0_ &= -3;
                        }
                        iOSLogRule.sources_ = this.sources_;
                    }
                    onBuilt();
                    return iOSLogRule;
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
                    if (message instanceof IOSLogRule) {
                        return mergeFrom((IOSLogRule) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public Builder mergeFrom(IOSLogRule iOSLogRule) {
                    if (iOSLogRule == IOSLogRule.getDefaultInstance()) {
                        return this;
                    }
                    if (iOSLogRule.hasTag()) {
                        mergeTag(iOSLogRule.getTag());
                    }
                    if (this.levelsBuilder_ == null) {
                        if (!iOSLogRule.levels_.isEmpty()) {
                            if (this.levels_.isEmpty()) {
                                this.levels_ = iOSLogRule.levels_;
                                this.bitField0_ &= -2;
                            } else {
                                ensureLevelsIsMutable();
                                this.levels_.addAll(iOSLogRule.levels_);
                            }
                            onChanged();
                        }
                    } else if (!iOSLogRule.levels_.isEmpty()) {
                        if (!this.levelsBuilder_.isEmpty()) {
                            this.levelsBuilder_.addAllMessages(iOSLogRule.levels_);
                        } else {
                            this.levelsBuilder_.dispose();
                            this.levelsBuilder_ = null;
                            this.levels_ = iOSLogRule.levels_;
                            this.bitField0_ &= -2;
                            this.levelsBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getLevelsFieldBuilder() : null;
                        }
                    }
                    if (this.sourcesBuilder_ == null) {
                        if (!iOSLogRule.sources_.isEmpty()) {
                            if (this.sources_.isEmpty()) {
                                this.sources_ = iOSLogRule.sources_;
                                this.bitField0_ &= -3;
                            } else {
                                ensureSourcesIsMutable();
                                this.sources_.addAll(iOSLogRule.sources_);
                            }
                            onChanged();
                        }
                    } else if (!iOSLogRule.sources_.isEmpty()) {
                        if (!this.sourcesBuilder_.isEmpty()) {
                            this.sourcesBuilder_.addAllMessages(iOSLogRule.sources_);
                        } else {
                            this.sourcesBuilder_.dispose();
                            this.sourcesBuilder_ = null;
                            this.sources_ = iOSLogRule.sources_;
                            this.bitField0_ &= -3;
                            this.sourcesBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getSourcesFieldBuilder() : null;
                        }
                    }
                    mergeUnknownFields(((GeneratedMessageV3) iOSLogRule).unknownFields);
                    onChanged();
                    return this;
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRule.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r3, com.explorestack.protobuf.ExtensionRegistryLite r4) throws java.lang.Throwable {
                    /*
                        r2 = this;
                        r0 = 0
                        com.explorestack.protobuf.Parser r1 = io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRule.access$3200()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                        io.bidmachine.protobuf.sdk.Reader$Rule$IOSLogRule r3 = (io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRule) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                        io.bidmachine.protobuf.sdk.Reader$Rule$IOSLogRule r4 = (io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRule) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRule.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):io.bidmachine.protobuf.sdk.Reader$Rule$IOSLogRule$Builder");
                }

                @Override // io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRuleOrBuilder
                public boolean hasTag() {
                    return (this.tagBuilder_ == null && this.tag_ == null) ? false : true;
                }

                @Override // io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRuleOrBuilder
                public StringValue getTag() {
                    SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.tagBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        StringValue stringValue = this.tag_;
                        return stringValue == null ? StringValue.getDefaultInstance() : stringValue;
                    }
                    return (StringValue) singleFieldBuilderV3.getMessage();
                }

                public Builder setTag(StringValue stringValue) {
                    SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.tagBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        stringValue.getClass();
                        this.tag_ = stringValue;
                        onChanged();
                        return this;
                    }
                    singleFieldBuilderV3.setMessage(stringValue);
                    return this;
                }

                public Builder setTag(StringValue.Builder builder) {
                    SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.tagBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        this.tag_ = builder.build();
                        onChanged();
                        return this;
                    }
                    singleFieldBuilderV3.setMessage(builder.build());
                    return this;
                }

                public Builder mergeTag(StringValue stringValue) {
                    SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.tagBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        StringValue stringValue2 = this.tag_;
                        if (stringValue2 != null) {
                            this.tag_ = StringValue.newBuilder(stringValue2).mergeFrom(stringValue).buildPartial();
                        } else {
                            this.tag_ = stringValue;
                        }
                        onChanged();
                        return this;
                    }
                    singleFieldBuilderV3.mergeFrom(stringValue);
                    return this;
                }

                public Builder clearTag() {
                    if (this.tagBuilder_ == null) {
                        this.tag_ = null;
                        onChanged();
                        return this;
                    }
                    this.tag_ = null;
                    this.tagBuilder_ = null;
                    return this;
                }

                public StringValue.Builder getTagBuilder() {
                    onChanged();
                    return (StringValue.Builder) getTagFieldBuilder().getBuilder();
                }

                @Override // io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRuleOrBuilder
                public StringValueOrBuilder getTagOrBuilder() {
                    SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.tagBuilder_;
                    if (singleFieldBuilderV3 != null) {
                        return (StringValueOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
                    }
                    StringValue stringValue = this.tag_;
                    return stringValue == null ? StringValue.getDefaultInstance() : stringValue;
                }

                private SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> getTagFieldBuilder() {
                    if (this.tagBuilder_ == null) {
                        this.tagBuilder_ = new SingleFieldBuilderV3<>(getTag(), getParentForChildren(), isClean());
                        this.tag_ = null;
                    }
                    return this.tagBuilder_;
                }

                private void ensureLevelsIsMutable() {
                    if ((this.bitField0_ & 1) == 0) {
                        this.levels_ = new ArrayList(this.levels_);
                        this.bitField0_ |= 1;
                    }
                }

                @Override // io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRuleOrBuilder
                public List<StringValue> getLevelsList() {
                    RepeatedFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> repeatedFieldBuilderV3 = this.levelsBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        return Collections.unmodifiableList(this.levels_);
                    }
                    return repeatedFieldBuilderV3.getMessageList();
                }

                @Override // io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRuleOrBuilder
                public int getLevelsCount() {
                    RepeatedFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> repeatedFieldBuilderV3 = this.levelsBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        return this.levels_.size();
                    }
                    return repeatedFieldBuilderV3.getCount();
                }

                @Override // io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRuleOrBuilder
                public StringValue getLevels(int i) {
                    RepeatedFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> repeatedFieldBuilderV3 = this.levelsBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        return this.levels_.get(i);
                    }
                    return (StringValue) repeatedFieldBuilderV3.getMessage(i);
                }

                public Builder setLevels(int i, StringValue stringValue) {
                    RepeatedFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> repeatedFieldBuilderV3 = this.levelsBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        stringValue.getClass();
                        ensureLevelsIsMutable();
                        this.levels_.set(i, stringValue);
                        onChanged();
                        return this;
                    }
                    repeatedFieldBuilderV3.setMessage(i, stringValue);
                    return this;
                }

                public Builder setLevels(int i, StringValue.Builder builder) {
                    RepeatedFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> repeatedFieldBuilderV3 = this.levelsBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        ensureLevelsIsMutable();
                        this.levels_.set(i, builder.build());
                        onChanged();
                        return this;
                    }
                    repeatedFieldBuilderV3.setMessage(i, builder.build());
                    return this;
                }

                public Builder addLevels(StringValue stringValue) {
                    RepeatedFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> repeatedFieldBuilderV3 = this.levelsBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        stringValue.getClass();
                        ensureLevelsIsMutable();
                        this.levels_.add(stringValue);
                        onChanged();
                        return this;
                    }
                    repeatedFieldBuilderV3.addMessage(stringValue);
                    return this;
                }

                public Builder addLevels(int i, StringValue stringValue) {
                    RepeatedFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> repeatedFieldBuilderV3 = this.levelsBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        stringValue.getClass();
                        ensureLevelsIsMutable();
                        this.levels_.add(i, stringValue);
                        onChanged();
                        return this;
                    }
                    repeatedFieldBuilderV3.addMessage(i, stringValue);
                    return this;
                }

                public Builder addLevels(StringValue.Builder builder) {
                    RepeatedFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> repeatedFieldBuilderV3 = this.levelsBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        ensureLevelsIsMutable();
                        this.levels_.add(builder.build());
                        onChanged();
                        return this;
                    }
                    repeatedFieldBuilderV3.addMessage(builder.build());
                    return this;
                }

                public Builder addLevels(int i, StringValue.Builder builder) {
                    RepeatedFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> repeatedFieldBuilderV3 = this.levelsBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        ensureLevelsIsMutable();
                        this.levels_.add(i, builder.build());
                        onChanged();
                        return this;
                    }
                    repeatedFieldBuilderV3.addMessage(i, builder.build());
                    return this;
                }

                public Builder addAllLevels(Iterable<? extends StringValue> iterable) {
                    RepeatedFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> repeatedFieldBuilderV3 = this.levelsBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        ensureLevelsIsMutable();
                        AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.levels_);
                        onChanged();
                        return this;
                    }
                    repeatedFieldBuilderV3.addAllMessages(iterable);
                    return this;
                }

                public Builder clearLevels() {
                    RepeatedFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> repeatedFieldBuilderV3 = this.levelsBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        this.levels_ = Collections.EMPTY_LIST;
                        this.bitField0_ &= -2;
                        onChanged();
                        return this;
                    }
                    repeatedFieldBuilderV3.clear();
                    return this;
                }

                public Builder removeLevels(int i) {
                    RepeatedFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> repeatedFieldBuilderV3 = this.levelsBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        ensureLevelsIsMutable();
                        this.levels_.remove(i);
                        onChanged();
                        return this;
                    }
                    repeatedFieldBuilderV3.remove(i);
                    return this;
                }

                public StringValue.Builder getLevelsBuilder(int i) {
                    return (StringValue.Builder) getLevelsFieldBuilder().getBuilder(i);
                }

                @Override // io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRuleOrBuilder
                public StringValueOrBuilder getLevelsOrBuilder(int i) {
                    RepeatedFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> repeatedFieldBuilderV3 = this.levelsBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        return this.levels_.get(i);
                    }
                    return (StringValueOrBuilder) repeatedFieldBuilderV3.getMessageOrBuilder(i);
                }

                @Override // io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRuleOrBuilder
                public List<? extends StringValueOrBuilder> getLevelsOrBuilderList() {
                    RepeatedFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> repeatedFieldBuilderV3 = this.levelsBuilder_;
                    if (repeatedFieldBuilderV3 != null) {
                        return repeatedFieldBuilderV3.getMessageOrBuilderList();
                    }
                    return Collections.unmodifiableList(this.levels_);
                }

                public StringValue.Builder addLevelsBuilder() {
                    return (StringValue.Builder) getLevelsFieldBuilder().addBuilder(StringValue.getDefaultInstance());
                }

                public StringValue.Builder addLevelsBuilder(int i) {
                    return (StringValue.Builder) getLevelsFieldBuilder().addBuilder(i, StringValue.getDefaultInstance());
                }

                public List<StringValue.Builder> getLevelsBuilderList() {
                    return getLevelsFieldBuilder().getBuilderList();
                }

                private RepeatedFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> getLevelsFieldBuilder() {
                    if (this.levelsBuilder_ == null) {
                        this.levelsBuilder_ = new RepeatedFieldBuilderV3<>(this.levels_, (this.bitField0_ & 1) != 0, getParentForChildren(), isClean());
                        this.levels_ = null;
                    }
                    return this.levelsBuilder_;
                }

                private void ensureSourcesIsMutable() {
                    if ((this.bitField0_ & 2) == 0) {
                        this.sources_ = new ArrayList(this.sources_);
                        this.bitField0_ |= 2;
                    }
                }

                @Override // io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRuleOrBuilder
                public List<StringValue> getSourcesList() {
                    RepeatedFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> repeatedFieldBuilderV3 = this.sourcesBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        return Collections.unmodifiableList(this.sources_);
                    }
                    return repeatedFieldBuilderV3.getMessageList();
                }

                @Override // io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRuleOrBuilder
                public int getSourcesCount() {
                    RepeatedFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> repeatedFieldBuilderV3 = this.sourcesBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        return this.sources_.size();
                    }
                    return repeatedFieldBuilderV3.getCount();
                }

                @Override // io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRuleOrBuilder
                public StringValue getSources(int i) {
                    RepeatedFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> repeatedFieldBuilderV3 = this.sourcesBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        return this.sources_.get(i);
                    }
                    return (StringValue) repeatedFieldBuilderV3.getMessage(i);
                }

                public Builder setSources(int i, StringValue stringValue) {
                    RepeatedFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> repeatedFieldBuilderV3 = this.sourcesBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        stringValue.getClass();
                        ensureSourcesIsMutable();
                        this.sources_.set(i, stringValue);
                        onChanged();
                        return this;
                    }
                    repeatedFieldBuilderV3.setMessage(i, stringValue);
                    return this;
                }

                public Builder setSources(int i, StringValue.Builder builder) {
                    RepeatedFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> repeatedFieldBuilderV3 = this.sourcesBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        ensureSourcesIsMutable();
                        this.sources_.set(i, builder.build());
                        onChanged();
                        return this;
                    }
                    repeatedFieldBuilderV3.setMessage(i, builder.build());
                    return this;
                }

                public Builder addSources(StringValue stringValue) {
                    RepeatedFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> repeatedFieldBuilderV3 = this.sourcesBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        stringValue.getClass();
                        ensureSourcesIsMutable();
                        this.sources_.add(stringValue);
                        onChanged();
                        return this;
                    }
                    repeatedFieldBuilderV3.addMessage(stringValue);
                    return this;
                }

                public Builder addSources(int i, StringValue stringValue) {
                    RepeatedFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> repeatedFieldBuilderV3 = this.sourcesBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        stringValue.getClass();
                        ensureSourcesIsMutable();
                        this.sources_.add(i, stringValue);
                        onChanged();
                        return this;
                    }
                    repeatedFieldBuilderV3.addMessage(i, stringValue);
                    return this;
                }

                public Builder addSources(StringValue.Builder builder) {
                    RepeatedFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> repeatedFieldBuilderV3 = this.sourcesBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        ensureSourcesIsMutable();
                        this.sources_.add(builder.build());
                        onChanged();
                        return this;
                    }
                    repeatedFieldBuilderV3.addMessage(builder.build());
                    return this;
                }

                public Builder addSources(int i, StringValue.Builder builder) {
                    RepeatedFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> repeatedFieldBuilderV3 = this.sourcesBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        ensureSourcesIsMutable();
                        this.sources_.add(i, builder.build());
                        onChanged();
                        return this;
                    }
                    repeatedFieldBuilderV3.addMessage(i, builder.build());
                    return this;
                }

                public Builder addAllSources(Iterable<? extends StringValue> iterable) {
                    RepeatedFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> repeatedFieldBuilderV3 = this.sourcesBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        ensureSourcesIsMutable();
                        AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.sources_);
                        onChanged();
                        return this;
                    }
                    repeatedFieldBuilderV3.addAllMessages(iterable);
                    return this;
                }

                public Builder clearSources() {
                    RepeatedFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> repeatedFieldBuilderV3 = this.sourcesBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        this.sources_ = Collections.EMPTY_LIST;
                        this.bitField0_ &= -3;
                        onChanged();
                        return this;
                    }
                    repeatedFieldBuilderV3.clear();
                    return this;
                }

                public Builder removeSources(int i) {
                    RepeatedFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> repeatedFieldBuilderV3 = this.sourcesBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        ensureSourcesIsMutable();
                        this.sources_.remove(i);
                        onChanged();
                        return this;
                    }
                    repeatedFieldBuilderV3.remove(i);
                    return this;
                }

                public StringValue.Builder getSourcesBuilder(int i) {
                    return (StringValue.Builder) getSourcesFieldBuilder().getBuilder(i);
                }

                @Override // io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRuleOrBuilder
                public StringValueOrBuilder getSourcesOrBuilder(int i) {
                    RepeatedFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> repeatedFieldBuilderV3 = this.sourcesBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        return this.sources_.get(i);
                    }
                    return (StringValueOrBuilder) repeatedFieldBuilderV3.getMessageOrBuilder(i);
                }

                @Override // io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRuleOrBuilder
                public List<? extends StringValueOrBuilder> getSourcesOrBuilderList() {
                    RepeatedFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> repeatedFieldBuilderV3 = this.sourcesBuilder_;
                    if (repeatedFieldBuilderV3 != null) {
                        return repeatedFieldBuilderV3.getMessageOrBuilderList();
                    }
                    return Collections.unmodifiableList(this.sources_);
                }

                public StringValue.Builder addSourcesBuilder() {
                    return (StringValue.Builder) getSourcesFieldBuilder().addBuilder(StringValue.getDefaultInstance());
                }

                public StringValue.Builder addSourcesBuilder(int i) {
                    return (StringValue.Builder) getSourcesFieldBuilder().addBuilder(i, StringValue.getDefaultInstance());
                }

                public List<StringValue.Builder> getSourcesBuilderList() {
                    return getSourcesFieldBuilder().getBuilderList();
                }

                private RepeatedFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> getSourcesFieldBuilder() {
                    if (this.sourcesBuilder_ == null) {
                        this.sourcesBuilder_ = new RepeatedFieldBuilderV3<>(this.sources_, (this.bitField0_ & 2) != 0, getParentForChildren(), isClean());
                        this.sources_ = null;
                    }
                    return this.sourcesBuilder_;
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

            public static IOSLogRule getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<IOSLogRule> parser() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public Parser<IOSLogRule> getParserForType() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
            /* JADX INFO: renamed from: getDefaultInstanceForType */
            public IOSLogRule mo687getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }
        }

        public static final class PurRule extends GeneratedMessageV3 implements PurRuleOrBuilder {
            private static final PurRule DEFAULT_INSTANCE = new PurRule();
            private static final Parser<PurRule> PARSER = new AbstractParser<PurRule>() { // from class: io.bidmachine.protobuf.sdk.Reader.Rule.PurRule.1
                @Override // com.explorestack.protobuf.Parser
                public PurRule parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return new PurRule(codedInputStream, extensionRegistryLite);
                }
            };
            public static final int PATH_FIELD_NUMBER = 2;
            public static final int QUERY_FIELD_NUMBER = 3;
            public static final int SHOULD_REPORT_FIELD_NUMBER = 4;
            public static final int TAG_FIELD_NUMBER = 1;
            private static final long serialVersionUID = 0;
            private byte memoizedIsInitialized;
            private StringValue path_;
            private StringValue query_;
            private BoolValue shouldReport_;
            private StringValue tag_;

            private PurRule(GeneratedMessageV3.Builder<?> builder) {
                super(builder);
                this.memoizedIsInitialized = (byte) -1;
            }

            private PurRule() {
                this.memoizedIsInitialized = (byte) -1;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
                return new PurRule();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
            public final UnknownFieldSet getUnknownFields() {
                return this.unknownFields;
            }

            private PurRule(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                this();
                extensionRegistryLite.getClass();
                UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
                boolean z = false;
                while (!z) {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag != 0) {
                                if (tag == 10) {
                                    StringValue stringValue = this.tag_;
                                    StringValue.Builder builder = stringValue != null ? stringValue.toBuilder() : null;
                                    StringValue stringValue2 = (StringValue) codedInputStream.readMessage(StringValue.parser(), extensionRegistryLite);
                                    this.tag_ = stringValue2;
                                    if (builder != null) {
                                        builder.mergeFrom(stringValue2);
                                        this.tag_ = builder.buildPartial();
                                    }
                                } else if (tag == 18) {
                                    StringValue stringValue3 = this.path_;
                                    StringValue.Builder builder2 = stringValue3 != null ? stringValue3.toBuilder() : null;
                                    StringValue stringValue4 = (StringValue) codedInputStream.readMessage(StringValue.parser(), extensionRegistryLite);
                                    this.path_ = stringValue4;
                                    if (builder2 != null) {
                                        builder2.mergeFrom(stringValue4);
                                        this.path_ = builder2.buildPartial();
                                    }
                                } else if (tag == 26) {
                                    StringValue stringValue5 = this.query_;
                                    StringValue.Builder builder3 = stringValue5 != null ? stringValue5.toBuilder() : null;
                                    StringValue stringValue6 = (StringValue) codedInputStream.readMessage(StringValue.parser(), extensionRegistryLite);
                                    this.query_ = stringValue6;
                                    if (builder3 != null) {
                                        builder3.mergeFrom(stringValue6);
                                        this.query_ = builder3.buildPartial();
                                    }
                                } else if (tag == 34) {
                                    BoolValue boolValue = this.shouldReport_;
                                    BoolValue.Builder builder4 = boolValue != null ? boolValue.toBuilder() : null;
                                    BoolValue boolValue2 = (BoolValue) codedInputStream.readMessage(BoolValue.parser(), extensionRegistryLite);
                                    this.shouldReport_ = boolValue2;
                                    if (builder4 != null) {
                                        builder4.mergeFrom(boolValue2);
                                        this.shouldReport_ = builder4.buildPartial();
                                    }
                                } else if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            throw e.setUnfinishedMessage(this);
                        } catch (IOException e2) {
                            throw new InvalidProtocolBufferException(e2).setUnfinishedMessage(this);
                        }
                    } catch (Throwable th) {
                        this.unknownFields = builderNewBuilder.build();
                        makeExtensionsImmutable();
                        throw th;
                    }
                }
                this.unknownFields = builderNewBuilder.build();
                makeExtensionsImmutable();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_PurRule_descriptor;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_PurRule_fieldAccessorTable.ensureFieldAccessorsInitialized(PurRule.class, Builder.class);
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.Rule.PurRuleOrBuilder
            public boolean hasTag() {
                return this.tag_ != null;
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.Rule.PurRuleOrBuilder
            public StringValue getTag() {
                StringValue stringValue = this.tag_;
                return stringValue == null ? StringValue.getDefaultInstance() : stringValue;
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.Rule.PurRuleOrBuilder
            public StringValueOrBuilder getTagOrBuilder() {
                return getTag();
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.Rule.PurRuleOrBuilder
            public boolean hasPath() {
                return this.path_ != null;
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.Rule.PurRuleOrBuilder
            public StringValue getPath() {
                StringValue stringValue = this.path_;
                return stringValue == null ? StringValue.getDefaultInstance() : stringValue;
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.Rule.PurRuleOrBuilder
            public StringValueOrBuilder getPathOrBuilder() {
                return getPath();
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.Rule.PurRuleOrBuilder
            public boolean hasQuery() {
                return this.query_ != null;
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.Rule.PurRuleOrBuilder
            public StringValue getQuery() {
                StringValue stringValue = this.query_;
                return stringValue == null ? StringValue.getDefaultInstance() : stringValue;
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.Rule.PurRuleOrBuilder
            public StringValueOrBuilder getQueryOrBuilder() {
                return getQuery();
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.Rule.PurRuleOrBuilder
            public boolean hasShouldReport() {
                return this.shouldReport_ != null;
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.Rule.PurRuleOrBuilder
            public BoolValue getShouldReport() {
                BoolValue boolValue = this.shouldReport_;
                return boolValue == null ? BoolValue.getDefaultInstance() : boolValue;
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.Rule.PurRuleOrBuilder
            public BoolValueOrBuilder getShouldReportOrBuilder() {
                return getShouldReport();
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
                if (this.tag_ != null) {
                    codedOutputStream.writeMessage(1, getTag());
                }
                if (this.path_ != null) {
                    codedOutputStream.writeMessage(2, getPath());
                }
                if (this.query_ != null) {
                    codedOutputStream.writeMessage(3, getQuery());
                }
                if (this.shouldReport_ != null) {
                    codedOutputStream.writeMessage(4, getShouldReport());
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public int getSerializedSize() {
                int i = this.memoizedSize;
                if (i != -1) {
                    return i;
                }
                int iComputeMessageSize = this.tag_ != null ? CodedOutputStream.computeMessageSize(1, getTag()) : 0;
                if (this.path_ != null) {
                    iComputeMessageSize += CodedOutputStream.computeMessageSize(2, getPath());
                }
                if (this.query_ != null) {
                    iComputeMessageSize += CodedOutputStream.computeMessageSize(3, getQuery());
                }
                if (this.shouldReport_ != null) {
                    iComputeMessageSize += CodedOutputStream.computeMessageSize(4, getShouldReport());
                }
                int serializedSize = iComputeMessageSize + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof PurRule)) {
                    return super.equals(obj);
                }
                PurRule purRule = (PurRule) obj;
                if (hasTag() != purRule.hasTag()) {
                    return false;
                }
                if ((hasTag() && !getTag().equals(purRule.getTag())) || hasPath() != purRule.hasPath()) {
                    return false;
                }
                if ((hasPath() && !getPath().equals(purRule.getPath())) || hasQuery() != purRule.hasQuery()) {
                    return false;
                }
                if ((!hasQuery() || getQuery().equals(purRule.getQuery())) && hasShouldReport() == purRule.hasShouldReport()) {
                    return (!hasShouldReport() || getShouldReport().equals(purRule.getShouldReport())) && this.unknownFields.equals(purRule.unknownFields);
                }
                return false;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public int hashCode() {
                int i = this.memoizedHashCode;
                if (i != 0) {
                    return i;
                }
                int iHashCode = 779 + getDescriptor().hashCode();
                if (hasTag()) {
                    iHashCode = (((iHashCode * 37) + 1) * 53) + getTag().hashCode();
                }
                if (hasPath()) {
                    iHashCode = (((iHashCode * 37) + 2) * 53) + getPath().hashCode();
                }
                if (hasQuery()) {
                    iHashCode = (((iHashCode * 37) + 3) * 53) + getQuery().hashCode();
                }
                if (hasShouldReport()) {
                    iHashCode = (((iHashCode * 37) + 4) * 53) + getShouldReport().hashCode();
                }
                int iHashCode2 = (iHashCode * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = iHashCode2;
                return iHashCode2;
            }

            public static PurRule parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static PurRule parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
            }

            public static PurRule parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            public static PurRule parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, extensionRegistryLite);
            }

            public static PurRule parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            public static PurRule parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, extensionRegistryLite);
            }

            public static PurRule parseFrom(InputStream inputStream) throws IOException {
                return (PurRule) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            public static PurRule parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (PurRule) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static PurRule parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (PurRule) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static PurRule parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (PurRule) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static PurRule parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (PurRule) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
            }

            public static PurRule parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (PurRule) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Builder newBuilder(PurRule purRule) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(purRule);
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
                return new Builder(builderParent);
            }

            public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements PurRuleOrBuilder {
                private SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> pathBuilder_;
                private StringValue path_;
                private SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> queryBuilder_;
                private StringValue query_;
                private SingleFieldBuilderV3<BoolValue, BoolValue.Builder, BoolValueOrBuilder> shouldReportBuilder_;
                private BoolValue shouldReport_;
                private SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> tagBuilder_;
                private StringValue tag_;

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_PurRule_descriptor;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
                public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                    return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_PurRule_fieldAccessorTable.ensureFieldAccessorsInitialized(PurRule.class, Builder.class);
                }

                private Builder() {
                    maybeForceBuilderInitialization();
                }

                private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                    super(builderParent);
                    maybeForceBuilderInitialization();
                }

                private void maybeForceBuilderInitialization() {
                    boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public Builder clear() {
                    super.clear();
                    if (this.tagBuilder_ == null) {
                        this.tag_ = null;
                    } else {
                        this.tag_ = null;
                        this.tagBuilder_ = null;
                    }
                    if (this.pathBuilder_ == null) {
                        this.path_ = null;
                    } else {
                        this.path_ = null;
                        this.pathBuilder_ = null;
                    }
                    if (this.queryBuilder_ == null) {
                        this.query_ = null;
                    } else {
                        this.query_ = null;
                        this.queryBuilder_ = null;
                    }
                    if (this.shouldReportBuilder_ == null) {
                        this.shouldReport_ = null;
                        return this;
                    }
                    this.shouldReport_ = null;
                    this.shouldReportBuilder_ = null;
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_PurRule_descriptor;
                }

                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                /* JADX INFO: renamed from: getDefaultInstanceForType */
                public PurRule mo687getDefaultInstanceForType() {
                    return PurRule.getDefaultInstance();
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public PurRule build() {
                    PurRule purRuleBuildPartial = buildPartial();
                    if (purRuleBuildPartial.isInitialized()) {
                        return purRuleBuildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) purRuleBuildPartial);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public PurRule buildPartial() {
                    PurRule purRule = new PurRule(this);
                    SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.tagBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        purRule.tag_ = this.tag_;
                    } else {
                        purRule.tag_ = (StringValue) singleFieldBuilderV3.build();
                    }
                    SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV32 = this.pathBuilder_;
                    if (singleFieldBuilderV32 == null) {
                        purRule.path_ = this.path_;
                    } else {
                        purRule.path_ = (StringValue) singleFieldBuilderV32.build();
                    }
                    SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV33 = this.queryBuilder_;
                    if (singleFieldBuilderV33 == null) {
                        purRule.query_ = this.query_;
                    } else {
                        purRule.query_ = (StringValue) singleFieldBuilderV33.build();
                    }
                    SingleFieldBuilderV3<BoolValue, BoolValue.Builder, BoolValueOrBuilder> singleFieldBuilderV34 = this.shouldReportBuilder_;
                    if (singleFieldBuilderV34 == null) {
                        purRule.shouldReport_ = this.shouldReport_;
                    } else {
                        purRule.shouldReport_ = (BoolValue) singleFieldBuilderV34.build();
                    }
                    onBuilt();
                    return purRule;
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
                    if (message instanceof PurRule) {
                        return mergeFrom((PurRule) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public Builder mergeFrom(PurRule purRule) {
                    if (purRule == PurRule.getDefaultInstance()) {
                        return this;
                    }
                    if (purRule.hasTag()) {
                        mergeTag(purRule.getTag());
                    }
                    if (purRule.hasPath()) {
                        mergePath(purRule.getPath());
                    }
                    if (purRule.hasQuery()) {
                        mergeQuery(purRule.getQuery());
                    }
                    if (purRule.hasShouldReport()) {
                        mergeShouldReport(purRule.getShouldReport());
                    }
                    mergeUnknownFields(((GeneratedMessageV3) purRule).unknownFields);
                    onChanged();
                    return this;
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public io.bidmachine.protobuf.sdk.Reader.Rule.PurRule.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r3, com.explorestack.protobuf.ExtensionRegistryLite r4) throws java.lang.Throwable {
                    /*
                        r2 = this;
                        r0 = 0
                        com.explorestack.protobuf.Parser r1 = io.bidmachine.protobuf.sdk.Reader.Rule.PurRule.access$4300()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                        io.bidmachine.protobuf.sdk.Reader$Rule$PurRule r3 = (io.bidmachine.protobuf.sdk.Reader.Rule.PurRule) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                        io.bidmachine.protobuf.sdk.Reader$Rule$PurRule r4 = (io.bidmachine.protobuf.sdk.Reader.Rule.PurRule) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.sdk.Reader.Rule.PurRule.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):io.bidmachine.protobuf.sdk.Reader$Rule$PurRule$Builder");
                }

                @Override // io.bidmachine.protobuf.sdk.Reader.Rule.PurRuleOrBuilder
                public boolean hasTag() {
                    return (this.tagBuilder_ == null && this.tag_ == null) ? false : true;
                }

                @Override // io.bidmachine.protobuf.sdk.Reader.Rule.PurRuleOrBuilder
                public StringValue getTag() {
                    SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.tagBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        StringValue stringValue = this.tag_;
                        return stringValue == null ? StringValue.getDefaultInstance() : stringValue;
                    }
                    return (StringValue) singleFieldBuilderV3.getMessage();
                }

                public Builder setTag(StringValue stringValue) {
                    SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.tagBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        stringValue.getClass();
                        this.tag_ = stringValue;
                        onChanged();
                        return this;
                    }
                    singleFieldBuilderV3.setMessage(stringValue);
                    return this;
                }

                public Builder setTag(StringValue.Builder builder) {
                    SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.tagBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        this.tag_ = builder.build();
                        onChanged();
                        return this;
                    }
                    singleFieldBuilderV3.setMessage(builder.build());
                    return this;
                }

                public Builder mergeTag(StringValue stringValue) {
                    SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.tagBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        StringValue stringValue2 = this.tag_;
                        if (stringValue2 != null) {
                            this.tag_ = StringValue.newBuilder(stringValue2).mergeFrom(stringValue).buildPartial();
                        } else {
                            this.tag_ = stringValue;
                        }
                        onChanged();
                        return this;
                    }
                    singleFieldBuilderV3.mergeFrom(stringValue);
                    return this;
                }

                public Builder clearTag() {
                    if (this.tagBuilder_ == null) {
                        this.tag_ = null;
                        onChanged();
                        return this;
                    }
                    this.tag_ = null;
                    this.tagBuilder_ = null;
                    return this;
                }

                public StringValue.Builder getTagBuilder() {
                    onChanged();
                    return (StringValue.Builder) getTagFieldBuilder().getBuilder();
                }

                @Override // io.bidmachine.protobuf.sdk.Reader.Rule.PurRuleOrBuilder
                public StringValueOrBuilder getTagOrBuilder() {
                    SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.tagBuilder_;
                    if (singleFieldBuilderV3 != null) {
                        return (StringValueOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
                    }
                    StringValue stringValue = this.tag_;
                    return stringValue == null ? StringValue.getDefaultInstance() : stringValue;
                }

                private SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> getTagFieldBuilder() {
                    if (this.tagBuilder_ == null) {
                        this.tagBuilder_ = new SingleFieldBuilderV3<>(getTag(), getParentForChildren(), isClean());
                        this.tag_ = null;
                    }
                    return this.tagBuilder_;
                }

                @Override // io.bidmachine.protobuf.sdk.Reader.Rule.PurRuleOrBuilder
                public boolean hasPath() {
                    return (this.pathBuilder_ == null && this.path_ == null) ? false : true;
                }

                @Override // io.bidmachine.protobuf.sdk.Reader.Rule.PurRuleOrBuilder
                public StringValue getPath() {
                    SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.pathBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        StringValue stringValue = this.path_;
                        return stringValue == null ? StringValue.getDefaultInstance() : stringValue;
                    }
                    return (StringValue) singleFieldBuilderV3.getMessage();
                }

                public Builder setPath(StringValue stringValue) {
                    SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.pathBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        stringValue.getClass();
                        this.path_ = stringValue;
                        onChanged();
                        return this;
                    }
                    singleFieldBuilderV3.setMessage(stringValue);
                    return this;
                }

                public Builder setPath(StringValue.Builder builder) {
                    SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.pathBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        this.path_ = builder.build();
                        onChanged();
                        return this;
                    }
                    singleFieldBuilderV3.setMessage(builder.build());
                    return this;
                }

                public Builder mergePath(StringValue stringValue) {
                    SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.pathBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        StringValue stringValue2 = this.path_;
                        if (stringValue2 != null) {
                            this.path_ = StringValue.newBuilder(stringValue2).mergeFrom(stringValue).buildPartial();
                        } else {
                            this.path_ = stringValue;
                        }
                        onChanged();
                        return this;
                    }
                    singleFieldBuilderV3.mergeFrom(stringValue);
                    return this;
                }

                public Builder clearPath() {
                    if (this.pathBuilder_ == null) {
                        this.path_ = null;
                        onChanged();
                        return this;
                    }
                    this.path_ = null;
                    this.pathBuilder_ = null;
                    return this;
                }

                public StringValue.Builder getPathBuilder() {
                    onChanged();
                    return (StringValue.Builder) getPathFieldBuilder().getBuilder();
                }

                @Override // io.bidmachine.protobuf.sdk.Reader.Rule.PurRuleOrBuilder
                public StringValueOrBuilder getPathOrBuilder() {
                    SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.pathBuilder_;
                    if (singleFieldBuilderV3 != null) {
                        return (StringValueOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
                    }
                    StringValue stringValue = this.path_;
                    return stringValue == null ? StringValue.getDefaultInstance() : stringValue;
                }

                private SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> getPathFieldBuilder() {
                    if (this.pathBuilder_ == null) {
                        this.pathBuilder_ = new SingleFieldBuilderV3<>(getPath(), getParentForChildren(), isClean());
                        this.path_ = null;
                    }
                    return this.pathBuilder_;
                }

                @Override // io.bidmachine.protobuf.sdk.Reader.Rule.PurRuleOrBuilder
                public boolean hasQuery() {
                    return (this.queryBuilder_ == null && this.query_ == null) ? false : true;
                }

                @Override // io.bidmachine.protobuf.sdk.Reader.Rule.PurRuleOrBuilder
                public StringValue getQuery() {
                    SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.queryBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        StringValue stringValue = this.query_;
                        return stringValue == null ? StringValue.getDefaultInstance() : stringValue;
                    }
                    return (StringValue) singleFieldBuilderV3.getMessage();
                }

                public Builder setQuery(StringValue stringValue) {
                    SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.queryBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        stringValue.getClass();
                        this.query_ = stringValue;
                        onChanged();
                        return this;
                    }
                    singleFieldBuilderV3.setMessage(stringValue);
                    return this;
                }

                public Builder setQuery(StringValue.Builder builder) {
                    SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.queryBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        this.query_ = builder.build();
                        onChanged();
                        return this;
                    }
                    singleFieldBuilderV3.setMessage(builder.build());
                    return this;
                }

                public Builder mergeQuery(StringValue stringValue) {
                    SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.queryBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        StringValue stringValue2 = this.query_;
                        if (stringValue2 != null) {
                            this.query_ = StringValue.newBuilder(stringValue2).mergeFrom(stringValue).buildPartial();
                        } else {
                            this.query_ = stringValue;
                        }
                        onChanged();
                        return this;
                    }
                    singleFieldBuilderV3.mergeFrom(stringValue);
                    return this;
                }

                public Builder clearQuery() {
                    if (this.queryBuilder_ == null) {
                        this.query_ = null;
                        onChanged();
                        return this;
                    }
                    this.query_ = null;
                    this.queryBuilder_ = null;
                    return this;
                }

                public StringValue.Builder getQueryBuilder() {
                    onChanged();
                    return (StringValue.Builder) getQueryFieldBuilder().getBuilder();
                }

                @Override // io.bidmachine.protobuf.sdk.Reader.Rule.PurRuleOrBuilder
                public StringValueOrBuilder getQueryOrBuilder() {
                    SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.queryBuilder_;
                    if (singleFieldBuilderV3 != null) {
                        return (StringValueOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
                    }
                    StringValue stringValue = this.query_;
                    return stringValue == null ? StringValue.getDefaultInstance() : stringValue;
                }

                private SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> getQueryFieldBuilder() {
                    if (this.queryBuilder_ == null) {
                        this.queryBuilder_ = new SingleFieldBuilderV3<>(getQuery(), getParentForChildren(), isClean());
                        this.query_ = null;
                    }
                    return this.queryBuilder_;
                }

                @Override // io.bidmachine.protobuf.sdk.Reader.Rule.PurRuleOrBuilder
                public boolean hasShouldReport() {
                    return (this.shouldReportBuilder_ == null && this.shouldReport_ == null) ? false : true;
                }

                @Override // io.bidmachine.protobuf.sdk.Reader.Rule.PurRuleOrBuilder
                public BoolValue getShouldReport() {
                    SingleFieldBuilderV3<BoolValue, BoolValue.Builder, BoolValueOrBuilder> singleFieldBuilderV3 = this.shouldReportBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        BoolValue boolValue = this.shouldReport_;
                        return boolValue == null ? BoolValue.getDefaultInstance() : boolValue;
                    }
                    return (BoolValue) singleFieldBuilderV3.getMessage();
                }

                public Builder setShouldReport(BoolValue boolValue) {
                    SingleFieldBuilderV3<BoolValue, BoolValue.Builder, BoolValueOrBuilder> singleFieldBuilderV3 = this.shouldReportBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        boolValue.getClass();
                        this.shouldReport_ = boolValue;
                        onChanged();
                        return this;
                    }
                    singleFieldBuilderV3.setMessage(boolValue);
                    return this;
                }

                public Builder setShouldReport(BoolValue.Builder builder) {
                    SingleFieldBuilderV3<BoolValue, BoolValue.Builder, BoolValueOrBuilder> singleFieldBuilderV3 = this.shouldReportBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        this.shouldReport_ = builder.build();
                        onChanged();
                        return this;
                    }
                    singleFieldBuilderV3.setMessage(builder.build());
                    return this;
                }

                public Builder mergeShouldReport(BoolValue boolValue) {
                    SingleFieldBuilderV3<BoolValue, BoolValue.Builder, BoolValueOrBuilder> singleFieldBuilderV3 = this.shouldReportBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        BoolValue boolValue2 = this.shouldReport_;
                        if (boolValue2 != null) {
                            this.shouldReport_ = BoolValue.newBuilder(boolValue2).mergeFrom(boolValue).buildPartial();
                        } else {
                            this.shouldReport_ = boolValue;
                        }
                        onChanged();
                        return this;
                    }
                    singleFieldBuilderV3.mergeFrom(boolValue);
                    return this;
                }

                public Builder clearShouldReport() {
                    if (this.shouldReportBuilder_ == null) {
                        this.shouldReport_ = null;
                        onChanged();
                        return this;
                    }
                    this.shouldReport_ = null;
                    this.shouldReportBuilder_ = null;
                    return this;
                }

                public BoolValue.Builder getShouldReportBuilder() {
                    onChanged();
                    return (BoolValue.Builder) getShouldReportFieldBuilder().getBuilder();
                }

                @Override // io.bidmachine.protobuf.sdk.Reader.Rule.PurRuleOrBuilder
                public BoolValueOrBuilder getShouldReportOrBuilder() {
                    SingleFieldBuilderV3<BoolValue, BoolValue.Builder, BoolValueOrBuilder> singleFieldBuilderV3 = this.shouldReportBuilder_;
                    if (singleFieldBuilderV3 != null) {
                        return (BoolValueOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
                    }
                    BoolValue boolValue = this.shouldReport_;
                    return boolValue == null ? BoolValue.getDefaultInstance() : boolValue;
                }

                private SingleFieldBuilderV3<BoolValue, BoolValue.Builder, BoolValueOrBuilder> getShouldReportFieldBuilder() {
                    if (this.shouldReportBuilder_ == null) {
                        this.shouldReportBuilder_ = new SingleFieldBuilderV3<>(getShouldReport(), getParentForChildren(), isClean());
                        this.shouldReport_ = null;
                    }
                    return this.shouldReportBuilder_;
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

            public static PurRule getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<PurRule> parser() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public Parser<PurRule> getParserForType() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
            /* JADX INFO: renamed from: getDefaultInstanceForType */
            public PurRule mo687getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }
        }

        public enum RuleOneofCase implements Internal.EnumLite {
            GENERAL_RULE(1),
            IOS_LOG_RULE(2),
            PUR_RULE(3),
            RULEONEOF_NOT_SET(0);

            private final int value;

            RuleOneofCase(int i) {
                this.value = i;
            }

            @Deprecated
            public static RuleOneofCase valueOf(int i) {
                return forNumber(i);
            }

            public static RuleOneofCase forNumber(int i) {
                if (i == 0) {
                    return RULEONEOF_NOT_SET;
                }
                if (i == 1) {
                    return GENERAL_RULE;
                }
                if (i == 2) {
                    return IOS_LOG_RULE;
                }
                if (i != 3) {
                    return null;
                }
                return PUR_RULE;
            }

            @Override // com.explorestack.protobuf.Internal.EnumLite
            public int getNumber() {
                return this.value;
            }
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.RuleOrBuilder
        public RuleOneofCase getRuleOneofCase() {
            return RuleOneofCase.forNumber(this.ruleOneofCase_);
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.RuleOrBuilder
        public boolean hasGeneralRule() {
            return this.ruleOneofCase_ == 1;
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.RuleOrBuilder
        public GeneralRule getGeneralRule() {
            if (this.ruleOneofCase_ == 1) {
                return (GeneralRule) this.ruleOneof_;
            }
            return GeneralRule.getDefaultInstance();
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.RuleOrBuilder
        public GeneralRuleOrBuilder getGeneralRuleOrBuilder() {
            if (this.ruleOneofCase_ == 1) {
                return (GeneralRule) this.ruleOneof_;
            }
            return GeneralRule.getDefaultInstance();
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.RuleOrBuilder
        public boolean hasIosLogRule() {
            return this.ruleOneofCase_ == 2;
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.RuleOrBuilder
        public IOSLogRule getIosLogRule() {
            if (this.ruleOneofCase_ == 2) {
                return (IOSLogRule) this.ruleOneof_;
            }
            return IOSLogRule.getDefaultInstance();
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.RuleOrBuilder
        public IOSLogRuleOrBuilder getIosLogRuleOrBuilder() {
            if (this.ruleOneofCase_ == 2) {
                return (IOSLogRule) this.ruleOneof_;
            }
            return IOSLogRule.getDefaultInstance();
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.RuleOrBuilder
        public boolean hasPurRule() {
            return this.ruleOneofCase_ == 3;
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.RuleOrBuilder
        public PurRule getPurRule() {
            if (this.ruleOneofCase_ == 3) {
                return (PurRule) this.ruleOneof_;
            }
            return PurRule.getDefaultInstance();
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.RuleOrBuilder
        public PurRuleOrBuilder getPurRuleOrBuilder() {
            if (this.ruleOneofCase_ == 3) {
                return (PurRule) this.ruleOneof_;
            }
            return PurRule.getDefaultInstance();
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
            if (this.ruleOneofCase_ == 1) {
                codedOutputStream.writeMessage(1, (GeneralRule) this.ruleOneof_);
            }
            if (this.ruleOneofCase_ == 2) {
                codedOutputStream.writeMessage(2, (IOSLogRule) this.ruleOneof_);
            }
            if (this.ruleOneofCase_ == 3) {
                codedOutputStream.writeMessage(3, (PurRule) this.ruleOneof_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeMessageSize = this.ruleOneofCase_ == 1 ? CodedOutputStream.computeMessageSize(1, (GeneralRule) this.ruleOneof_) : 0;
            if (this.ruleOneofCase_ == 2) {
                iComputeMessageSize += CodedOutputStream.computeMessageSize(2, (IOSLogRule) this.ruleOneof_);
            }
            if (this.ruleOneofCase_ == 3) {
                iComputeMessageSize += CodedOutputStream.computeMessageSize(3, (PurRule) this.ruleOneof_);
            }
            int serializedSize = iComputeMessageSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Rule)) {
                return super.equals(obj);
            }
            Rule rule = (Rule) obj;
            if (!getRuleOneofCase().equals(rule.getRuleOneofCase())) {
                return false;
            }
            int i = this.ruleOneofCase_;
            if (i != 1) {
                if (i == 2) {
                    if (!getIosLogRule().equals(rule.getIosLogRule())) {
                        return false;
                    }
                } else if (i == 3 && !getPurRule().equals(rule.getPurRule())) {
                    return false;
                }
            } else if (!getGeneralRule().equals(rule.getGeneralRule())) {
                return false;
            }
            return this.unknownFields.equals(rule.unknownFields);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public int hashCode() {
            int i;
            int iHashCode;
            int i2 = this.memoizedHashCode;
            if (i2 != 0) {
                return i2;
            }
            int iHashCode2 = 779 + getDescriptor().hashCode();
            int i3 = this.ruleOneofCase_;
            if (i3 == 1) {
                i = ((iHashCode2 * 37) + 1) * 53;
                iHashCode = getGeneralRule().hashCode();
            } else if (i3 == 2) {
                i = ((iHashCode2 * 37) + 2) * 53;
                iHashCode = getIosLogRule().hashCode();
            } else {
                if (i3 == 3) {
                    i = ((iHashCode2 * 37) + 3) * 53;
                    iHashCode = getPurRule().hashCode();
                }
                int iHashCode3 = (iHashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = iHashCode3;
                return iHashCode3;
            }
            iHashCode2 = i + iHashCode;
            int iHashCode32 = (iHashCode2 * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode32;
            return iHashCode32;
        }

        public static Rule parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Rule parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static Rule parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static Rule parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static Rule parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static Rule parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static Rule parseFrom(InputStream inputStream) throws IOException {
            return (Rule) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static Rule parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Rule) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static Rule parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Rule) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Rule parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Rule) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static Rule parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (Rule) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static Rule parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Rule) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(Rule rule) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(rule);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements RuleOrBuilder {
            private SingleFieldBuilderV3<GeneralRule, GeneralRule.Builder, GeneralRuleOrBuilder> generalRuleBuilder_;
            private SingleFieldBuilderV3<IOSLogRule, IOSLogRule.Builder, IOSLogRuleOrBuilder> iosLogRuleBuilder_;
            private SingleFieldBuilderV3<PurRule, PurRule.Builder, PurRuleOrBuilder> purRuleBuilder_;
            private int ruleOneofCase_;
            private Object ruleOneof_;

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_descriptor;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_fieldAccessorTable.ensureFieldAccessorsInitialized(Rule.class, Builder.class);
            }

            private Builder() {
                this.ruleOneofCase_ = 0;
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.ruleOneofCase_ = 0;
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.ruleOneofCase_ = 0;
                this.ruleOneof_ = null;
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_descriptor;
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            /* JADX INFO: renamed from: getDefaultInstanceForType */
            public Rule mo687getDefaultInstanceForType() {
                return Rule.getDefaultInstance();
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Rule build() {
                Rule ruleBuildPartial = buildPartial();
                if (ruleBuildPartial.isInitialized()) {
                    return ruleBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) ruleBuildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Rule buildPartial() {
                Rule rule = new Rule(this);
                if (this.ruleOneofCase_ == 1) {
                    SingleFieldBuilderV3<GeneralRule, GeneralRule.Builder, GeneralRuleOrBuilder> singleFieldBuilderV3 = this.generalRuleBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        rule.ruleOneof_ = this.ruleOneof_;
                    } else {
                        rule.ruleOneof_ = singleFieldBuilderV3.build();
                    }
                }
                if (this.ruleOneofCase_ == 2) {
                    SingleFieldBuilderV3<IOSLogRule, IOSLogRule.Builder, IOSLogRuleOrBuilder> singleFieldBuilderV32 = this.iosLogRuleBuilder_;
                    if (singleFieldBuilderV32 == null) {
                        rule.ruleOneof_ = this.ruleOneof_;
                    } else {
                        rule.ruleOneof_ = singleFieldBuilderV32.build();
                    }
                }
                if (this.ruleOneofCase_ == 3) {
                    SingleFieldBuilderV3<PurRule, PurRule.Builder, PurRuleOrBuilder> singleFieldBuilderV33 = this.purRuleBuilder_;
                    if (singleFieldBuilderV33 == null) {
                        rule.ruleOneof_ = this.ruleOneof_;
                    } else {
                        rule.ruleOneof_ = singleFieldBuilderV33.build();
                    }
                }
                rule.ruleOneofCase_ = this.ruleOneofCase_;
                onBuilt();
                return rule;
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
                if (message instanceof Rule) {
                    return mergeFrom((Rule) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(Rule rule) {
                if (rule == Rule.getDefaultInstance()) {
                    return this;
                }
                int i = AnonymousClass2.$SwitchMap$io$bidmachine$protobuf$sdk$Reader$Rule$RuleOneofCase[rule.getRuleOneofCase().ordinal()];
                if (i == 1) {
                    mergeGeneralRule(rule.getGeneralRule());
                } else if (i == 2) {
                    mergeIosLogRule(rule.getIosLogRule());
                } else if (i == 3) {
                    mergePurRule(rule.getPurRule());
                }
                mergeUnknownFields(((GeneratedMessageV3) rule).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public io.bidmachine.protobuf.sdk.Reader.Rule.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r3, com.explorestack.protobuf.ExtensionRegistryLite r4) throws java.lang.Throwable {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.Parser r1 = io.bidmachine.protobuf.sdk.Reader.Rule.access$5200()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    io.bidmachine.protobuf.sdk.Reader$Rule r3 = (io.bidmachine.protobuf.sdk.Reader.Rule) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                    io.bidmachine.protobuf.sdk.Reader$Rule r4 = (io.bidmachine.protobuf.sdk.Reader.Rule) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.sdk.Reader.Rule.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):io.bidmachine.protobuf.sdk.Reader$Rule$Builder");
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.RuleOrBuilder
            public RuleOneofCase getRuleOneofCase() {
                return RuleOneofCase.forNumber(this.ruleOneofCase_);
            }

            public Builder clearRuleOneof() {
                this.ruleOneofCase_ = 0;
                this.ruleOneof_ = null;
                onChanged();
                return this;
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.RuleOrBuilder
            public boolean hasGeneralRule() {
                return this.ruleOneofCase_ == 1;
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.RuleOrBuilder
            public GeneralRule getGeneralRule() {
                SingleFieldBuilderV3<GeneralRule, GeneralRule.Builder, GeneralRuleOrBuilder> singleFieldBuilderV3 = this.generalRuleBuilder_;
                if (singleFieldBuilderV3 == null) {
                    if (this.ruleOneofCase_ == 1) {
                        return (GeneralRule) this.ruleOneof_;
                    }
                    return GeneralRule.getDefaultInstance();
                }
                if (this.ruleOneofCase_ == 1) {
                    return (GeneralRule) singleFieldBuilderV3.getMessage();
                }
                return GeneralRule.getDefaultInstance();
            }

            public Builder setGeneralRule(GeneralRule generalRule) {
                SingleFieldBuilderV3<GeneralRule, GeneralRule.Builder, GeneralRuleOrBuilder> singleFieldBuilderV3 = this.generalRuleBuilder_;
                if (singleFieldBuilderV3 == null) {
                    generalRule.getClass();
                    this.ruleOneof_ = generalRule;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(generalRule);
                }
                this.ruleOneofCase_ = 1;
                return this;
            }

            public Builder setGeneralRule(GeneralRule.Builder builder) {
                SingleFieldBuilderV3<GeneralRule, GeneralRule.Builder, GeneralRuleOrBuilder> singleFieldBuilderV3 = this.generalRuleBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.ruleOneof_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builder.build());
                }
                this.ruleOneofCase_ = 1;
                return this;
            }

            public Builder mergeGeneralRule(GeneralRule generalRule) {
                SingleFieldBuilderV3<GeneralRule, GeneralRule.Builder, GeneralRuleOrBuilder> singleFieldBuilderV3 = this.generalRuleBuilder_;
                if (singleFieldBuilderV3 == null) {
                    if (this.ruleOneofCase_ == 1 && this.ruleOneof_ != GeneralRule.getDefaultInstance()) {
                        this.ruleOneof_ = GeneralRule.newBuilder((GeneralRule) this.ruleOneof_).mergeFrom(generalRule).buildPartial();
                    } else {
                        this.ruleOneof_ = generalRule;
                    }
                    onChanged();
                } else {
                    if (this.ruleOneofCase_ == 1) {
                        singleFieldBuilderV3.mergeFrom(generalRule);
                    }
                    this.generalRuleBuilder_.setMessage(generalRule);
                }
                this.ruleOneofCase_ = 1;
                return this;
            }

            public Builder clearGeneralRule() {
                SingleFieldBuilderV3<GeneralRule, GeneralRule.Builder, GeneralRuleOrBuilder> singleFieldBuilderV3 = this.generalRuleBuilder_;
                if (singleFieldBuilderV3 == null) {
                    if (this.ruleOneofCase_ == 1) {
                        this.ruleOneofCase_ = 0;
                        this.ruleOneof_ = null;
                        onChanged();
                    }
                    return this;
                }
                if (this.ruleOneofCase_ == 1) {
                    this.ruleOneofCase_ = 0;
                    this.ruleOneof_ = null;
                }
                singleFieldBuilderV3.clear();
                return this;
            }

            public GeneralRule.Builder getGeneralRuleBuilder() {
                return (GeneralRule.Builder) getGeneralRuleFieldBuilder().getBuilder();
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.RuleOrBuilder
            public GeneralRuleOrBuilder getGeneralRuleOrBuilder() {
                SingleFieldBuilderV3<GeneralRule, GeneralRule.Builder, GeneralRuleOrBuilder> singleFieldBuilderV3;
                int i = this.ruleOneofCase_;
                if (i == 1 && (singleFieldBuilderV3 = this.generalRuleBuilder_) != null) {
                    return (GeneralRuleOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
                }
                if (i == 1) {
                    return (GeneralRule) this.ruleOneof_;
                }
                return GeneralRule.getDefaultInstance();
            }

            private SingleFieldBuilderV3<GeneralRule, GeneralRule.Builder, GeneralRuleOrBuilder> getGeneralRuleFieldBuilder() {
                if (this.generalRuleBuilder_ == null) {
                    if (this.ruleOneofCase_ != 1) {
                        this.ruleOneof_ = GeneralRule.getDefaultInstance();
                    }
                    this.generalRuleBuilder_ = new SingleFieldBuilderV3<>((GeneralRule) this.ruleOneof_, getParentForChildren(), isClean());
                    this.ruleOneof_ = null;
                }
                this.ruleOneofCase_ = 1;
                onChanged();
                return this.generalRuleBuilder_;
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.RuleOrBuilder
            public boolean hasIosLogRule() {
                return this.ruleOneofCase_ == 2;
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.RuleOrBuilder
            public IOSLogRule getIosLogRule() {
                SingleFieldBuilderV3<IOSLogRule, IOSLogRule.Builder, IOSLogRuleOrBuilder> singleFieldBuilderV3 = this.iosLogRuleBuilder_;
                if (singleFieldBuilderV3 == null) {
                    if (this.ruleOneofCase_ == 2) {
                        return (IOSLogRule) this.ruleOneof_;
                    }
                    return IOSLogRule.getDefaultInstance();
                }
                if (this.ruleOneofCase_ == 2) {
                    return (IOSLogRule) singleFieldBuilderV3.getMessage();
                }
                return IOSLogRule.getDefaultInstance();
            }

            public Builder setIosLogRule(IOSLogRule iOSLogRule) {
                SingleFieldBuilderV3<IOSLogRule, IOSLogRule.Builder, IOSLogRuleOrBuilder> singleFieldBuilderV3 = this.iosLogRuleBuilder_;
                if (singleFieldBuilderV3 == null) {
                    iOSLogRule.getClass();
                    this.ruleOneof_ = iOSLogRule;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(iOSLogRule);
                }
                this.ruleOneofCase_ = 2;
                return this;
            }

            public Builder setIosLogRule(IOSLogRule.Builder builder) {
                SingleFieldBuilderV3<IOSLogRule, IOSLogRule.Builder, IOSLogRuleOrBuilder> singleFieldBuilderV3 = this.iosLogRuleBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.ruleOneof_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builder.build());
                }
                this.ruleOneofCase_ = 2;
                return this;
            }

            public Builder mergeIosLogRule(IOSLogRule iOSLogRule) {
                SingleFieldBuilderV3<IOSLogRule, IOSLogRule.Builder, IOSLogRuleOrBuilder> singleFieldBuilderV3 = this.iosLogRuleBuilder_;
                if (singleFieldBuilderV3 == null) {
                    if (this.ruleOneofCase_ == 2 && this.ruleOneof_ != IOSLogRule.getDefaultInstance()) {
                        this.ruleOneof_ = IOSLogRule.newBuilder((IOSLogRule) this.ruleOneof_).mergeFrom(iOSLogRule).buildPartial();
                    } else {
                        this.ruleOneof_ = iOSLogRule;
                    }
                    onChanged();
                } else {
                    if (this.ruleOneofCase_ == 2) {
                        singleFieldBuilderV3.mergeFrom(iOSLogRule);
                    }
                    this.iosLogRuleBuilder_.setMessage(iOSLogRule);
                }
                this.ruleOneofCase_ = 2;
                return this;
            }

            public Builder clearIosLogRule() {
                SingleFieldBuilderV3<IOSLogRule, IOSLogRule.Builder, IOSLogRuleOrBuilder> singleFieldBuilderV3 = this.iosLogRuleBuilder_;
                if (singleFieldBuilderV3 == null) {
                    if (this.ruleOneofCase_ == 2) {
                        this.ruleOneofCase_ = 0;
                        this.ruleOneof_ = null;
                        onChanged();
                    }
                    return this;
                }
                if (this.ruleOneofCase_ == 2) {
                    this.ruleOneofCase_ = 0;
                    this.ruleOneof_ = null;
                }
                singleFieldBuilderV3.clear();
                return this;
            }

            public IOSLogRule.Builder getIosLogRuleBuilder() {
                return (IOSLogRule.Builder) getIosLogRuleFieldBuilder().getBuilder();
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.RuleOrBuilder
            public IOSLogRuleOrBuilder getIosLogRuleOrBuilder() {
                SingleFieldBuilderV3<IOSLogRule, IOSLogRule.Builder, IOSLogRuleOrBuilder> singleFieldBuilderV3;
                int i = this.ruleOneofCase_;
                if (i == 2 && (singleFieldBuilderV3 = this.iosLogRuleBuilder_) != null) {
                    return (IOSLogRuleOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
                }
                if (i == 2) {
                    return (IOSLogRule) this.ruleOneof_;
                }
                return IOSLogRule.getDefaultInstance();
            }

            private SingleFieldBuilderV3<IOSLogRule, IOSLogRule.Builder, IOSLogRuleOrBuilder> getIosLogRuleFieldBuilder() {
                if (this.iosLogRuleBuilder_ == null) {
                    if (this.ruleOneofCase_ != 2) {
                        this.ruleOneof_ = IOSLogRule.getDefaultInstance();
                    }
                    this.iosLogRuleBuilder_ = new SingleFieldBuilderV3<>((IOSLogRule) this.ruleOneof_, getParentForChildren(), isClean());
                    this.ruleOneof_ = null;
                }
                this.ruleOneofCase_ = 2;
                onChanged();
                return this.iosLogRuleBuilder_;
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.RuleOrBuilder
            public boolean hasPurRule() {
                return this.ruleOneofCase_ == 3;
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.RuleOrBuilder
            public PurRule getPurRule() {
                SingleFieldBuilderV3<PurRule, PurRule.Builder, PurRuleOrBuilder> singleFieldBuilderV3 = this.purRuleBuilder_;
                if (singleFieldBuilderV3 == null) {
                    if (this.ruleOneofCase_ == 3) {
                        return (PurRule) this.ruleOneof_;
                    }
                    return PurRule.getDefaultInstance();
                }
                if (this.ruleOneofCase_ == 3) {
                    return (PurRule) singleFieldBuilderV3.getMessage();
                }
                return PurRule.getDefaultInstance();
            }

            public Builder setPurRule(PurRule purRule) {
                SingleFieldBuilderV3<PurRule, PurRule.Builder, PurRuleOrBuilder> singleFieldBuilderV3 = this.purRuleBuilder_;
                if (singleFieldBuilderV3 == null) {
                    purRule.getClass();
                    this.ruleOneof_ = purRule;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(purRule);
                }
                this.ruleOneofCase_ = 3;
                return this;
            }

            public Builder setPurRule(PurRule.Builder builder) {
                SingleFieldBuilderV3<PurRule, PurRule.Builder, PurRuleOrBuilder> singleFieldBuilderV3 = this.purRuleBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.ruleOneof_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builder.build());
                }
                this.ruleOneofCase_ = 3;
                return this;
            }

            public Builder mergePurRule(PurRule purRule) {
                SingleFieldBuilderV3<PurRule, PurRule.Builder, PurRuleOrBuilder> singleFieldBuilderV3 = this.purRuleBuilder_;
                if (singleFieldBuilderV3 == null) {
                    if (this.ruleOneofCase_ == 3 && this.ruleOneof_ != PurRule.getDefaultInstance()) {
                        this.ruleOneof_ = PurRule.newBuilder((PurRule) this.ruleOneof_).mergeFrom(purRule).buildPartial();
                    } else {
                        this.ruleOneof_ = purRule;
                    }
                    onChanged();
                } else {
                    if (this.ruleOneofCase_ == 3) {
                        singleFieldBuilderV3.mergeFrom(purRule);
                    }
                    this.purRuleBuilder_.setMessage(purRule);
                }
                this.ruleOneofCase_ = 3;
                return this;
            }

            public Builder clearPurRule() {
                SingleFieldBuilderV3<PurRule, PurRule.Builder, PurRuleOrBuilder> singleFieldBuilderV3 = this.purRuleBuilder_;
                if (singleFieldBuilderV3 == null) {
                    if (this.ruleOneofCase_ == 3) {
                        this.ruleOneofCase_ = 0;
                        this.ruleOneof_ = null;
                        onChanged();
                    }
                    return this;
                }
                if (this.ruleOneofCase_ == 3) {
                    this.ruleOneofCase_ = 0;
                    this.ruleOneof_ = null;
                }
                singleFieldBuilderV3.clear();
                return this;
            }

            public PurRule.Builder getPurRuleBuilder() {
                return (PurRule.Builder) getPurRuleFieldBuilder().getBuilder();
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.RuleOrBuilder
            public PurRuleOrBuilder getPurRuleOrBuilder() {
                SingleFieldBuilderV3<PurRule, PurRule.Builder, PurRuleOrBuilder> singleFieldBuilderV3;
                int i = this.ruleOneofCase_;
                if (i == 3 && (singleFieldBuilderV3 = this.purRuleBuilder_) != null) {
                    return (PurRuleOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
                }
                if (i == 3) {
                    return (PurRule) this.ruleOneof_;
                }
                return PurRule.getDefaultInstance();
            }

            private SingleFieldBuilderV3<PurRule, PurRule.Builder, PurRuleOrBuilder> getPurRuleFieldBuilder() {
                if (this.purRuleBuilder_ == null) {
                    if (this.ruleOneofCase_ != 3) {
                        this.ruleOneof_ = PurRule.getDefaultInstance();
                    }
                    this.purRuleBuilder_ = new SingleFieldBuilderV3<>((PurRule) this.ruleOneof_, getParentForChildren(), isClean());
                    this.ruleOneof_ = null;
                }
                this.ruleOneofCase_ = 3;
                onChanged();
                return this.purRuleBuilder_;
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

        public static Rule getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<Rule> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Parser<Rule> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        /* JADX INFO: renamed from: getDefaultInstanceForType */
        public Rule mo687getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.protobuf.sdk.Reader$2, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$io$bidmachine$protobuf$sdk$Reader$Rule$RuleOneofCase;

        static {
            int[] iArr = new int[Rule.RuleOneofCase.values().length];
            $SwitchMap$io$bidmachine$protobuf$sdk$Reader$Rule$RuleOneofCase = iArr;
            try {
                iArr[Rule.RuleOneofCase.GENERAL_RULE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$bidmachine$protobuf$sdk$Reader$Rule$RuleOneofCase[Rule.RuleOneofCase.IOS_LOG_RULE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$io$bidmachine$protobuf$sdk$Reader$Rule$RuleOneofCase[Rule.RuleOneofCase.PUR_RULE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$io$bidmachine$protobuf$sdk$Reader$Rule$RuleOneofCase[Rule.RuleOneofCase.RULEONEOF_NOT_SET.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static final class Record extends GeneratedMessageV3 implements RecordOrBuilder {
        public static final int ERROR_FIELD_NUMBER = 3;
        public static final int RAW_DATA_FIELD_NUMBER = 2;
        public static final int RULE_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private Error error_;
        private byte memoizedIsInitialized;
        private BytesValue rawData_;
        private Rule rule_;
        private static final Record DEFAULT_INSTANCE = new Record();
        private static final Parser<Record> PARSER = new AbstractParser<Record>() { // from class: io.bidmachine.protobuf.sdk.Reader.Record.1
            @Override // com.explorestack.protobuf.Parser
            public Record parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new Record(codedInputStream, extensionRegistryLite);
            }
        };

        private Record(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private Record() {
            this.memoizedIsInitialized = (byte) -1;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
            return new Record();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private Record(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this();
            extensionRegistryLite.getClass();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag != 0) {
                                if (tag == 10) {
                                    Rule rule = this.rule_;
                                    Rule.Builder builder = rule != null ? rule.toBuilder() : null;
                                    Rule rule2 = (Rule) codedInputStream.readMessage(Rule.parser(), extensionRegistryLite);
                                    this.rule_ = rule2;
                                    if (builder != null) {
                                        builder.mergeFrom(rule2);
                                        this.rule_ = builder.buildPartial();
                                    }
                                } else if (tag == 18) {
                                    BytesValue bytesValue = this.rawData_;
                                    BytesValue.Builder builder2 = bytesValue != null ? bytesValue.toBuilder() : null;
                                    BytesValue bytesValue2 = (BytesValue) codedInputStream.readMessage(BytesValue.parser(), extensionRegistryLite);
                                    this.rawData_ = bytesValue2;
                                    if (builder2 != null) {
                                        builder2.mergeFrom(bytesValue2);
                                        this.rawData_ = builder2.buildPartial();
                                    }
                                } else if (tag == 26) {
                                    Error error = this.error_;
                                    Error.Builder builder3 = error != null ? error.toBuilder() : null;
                                    Error error2 = (Error) codedInputStream.readMessage(Error.parser(), extensionRegistryLite);
                                    this.error_ = error2;
                                    if (builder3 != null) {
                                        builder3.mergeFrom(error2);
                                        this.error_ = builder3.buildPartial();
                                    }
                                } else if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            throw e.setUnfinishedMessage(this);
                        }
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2).setUnfinishedMessage(this);
                    }
                } catch (Throwable th) {
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            this.unknownFields = builderNewBuilder.build();
            makeExtensionsImmutable();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Record_descriptor;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Record_fieldAccessorTable.ensureFieldAccessorsInitialized(Record.class, Builder.class);
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.RecordOrBuilder
        public boolean hasRule() {
            return this.rule_ != null;
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.RecordOrBuilder
        public Rule getRule() {
            Rule rule = this.rule_;
            return rule == null ? Rule.getDefaultInstance() : rule;
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.RecordOrBuilder
        public RuleOrBuilder getRuleOrBuilder() {
            return getRule();
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.RecordOrBuilder
        public boolean hasRawData() {
            return this.rawData_ != null;
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.RecordOrBuilder
        public BytesValue getRawData() {
            BytesValue bytesValue = this.rawData_;
            return bytesValue == null ? BytesValue.getDefaultInstance() : bytesValue;
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.RecordOrBuilder
        public BytesValueOrBuilder getRawDataOrBuilder() {
            return getRawData();
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.RecordOrBuilder
        public boolean hasError() {
            return this.error_ != null;
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.RecordOrBuilder
        public Error getError() {
            Error error = this.error_;
            return error == null ? Error.getDefaultInstance() : error;
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.RecordOrBuilder
        public ErrorOrBuilder getErrorOrBuilder() {
            return getError();
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
            if (this.rule_ != null) {
                codedOutputStream.writeMessage(1, getRule());
            }
            if (this.rawData_ != null) {
                codedOutputStream.writeMessage(2, getRawData());
            }
            if (this.error_ != null) {
                codedOutputStream.writeMessage(3, getError());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeMessageSize = this.rule_ != null ? CodedOutputStream.computeMessageSize(1, getRule()) : 0;
            if (this.rawData_ != null) {
                iComputeMessageSize += CodedOutputStream.computeMessageSize(2, getRawData());
            }
            if (this.error_ != null) {
                iComputeMessageSize += CodedOutputStream.computeMessageSize(3, getError());
            }
            int serializedSize = iComputeMessageSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Record)) {
                return super.equals(obj);
            }
            Record record = (Record) obj;
            if (hasRule() != record.hasRule()) {
                return false;
            }
            if ((hasRule() && !getRule().equals(record.getRule())) || hasRawData() != record.hasRawData()) {
                return false;
            }
            if ((!hasRawData() || getRawData().equals(record.getRawData())) && hasError() == record.hasError()) {
                return (!hasError() || getError().equals(record.getError())) && this.unknownFields.equals(record.unknownFields);
            }
            return false;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasRule()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getRule().hashCode();
            }
            if (hasRawData()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getRawData().hashCode();
            }
            if (hasError()) {
                iHashCode = (((iHashCode * 37) + 3) * 53) + getError().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static Record parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Record parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static Record parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static Record parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static Record parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static Record parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static Record parseFrom(InputStream inputStream) throws IOException {
            return (Record) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static Record parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Record) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static Record parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Record) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Record parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Record) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static Record parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (Record) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static Record parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Record) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(Record record) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(record);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements RecordOrBuilder {
            private SingleFieldBuilderV3<Error, Error.Builder, ErrorOrBuilder> errorBuilder_;
            private Error error_;
            private SingleFieldBuilderV3<BytesValue, BytesValue.Builder, BytesValueOrBuilder> rawDataBuilder_;
            private BytesValue rawData_;
            private SingleFieldBuilderV3<Rule, Rule.Builder, RuleOrBuilder> ruleBuilder_;
            private Rule rule_;

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Record_descriptor;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Record_fieldAccessorTable.ensureFieldAccessorsInitialized(Record.class, Builder.class);
            }

            private Builder() {
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                if (this.ruleBuilder_ == null) {
                    this.rule_ = null;
                } else {
                    this.rule_ = null;
                    this.ruleBuilder_ = null;
                }
                if (this.rawDataBuilder_ == null) {
                    this.rawData_ = null;
                } else {
                    this.rawData_ = null;
                    this.rawDataBuilder_ = null;
                }
                if (this.errorBuilder_ == null) {
                    this.error_ = null;
                    return this;
                }
                this.error_ = null;
                this.errorBuilder_ = null;
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Record_descriptor;
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            /* JADX INFO: renamed from: getDefaultInstanceForType */
            public Record mo687getDefaultInstanceForType() {
                return Record.getDefaultInstance();
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Record build() {
                Record recordBuildPartial = buildPartial();
                if (recordBuildPartial.isInitialized()) {
                    return recordBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) recordBuildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Record buildPartial() {
                Record record = new Record(this);
                SingleFieldBuilderV3<Rule, Rule.Builder, RuleOrBuilder> singleFieldBuilderV3 = this.ruleBuilder_;
                if (singleFieldBuilderV3 == null) {
                    record.rule_ = this.rule_;
                } else {
                    record.rule_ = (Rule) singleFieldBuilderV3.build();
                }
                SingleFieldBuilderV3<BytesValue, BytesValue.Builder, BytesValueOrBuilder> singleFieldBuilderV32 = this.rawDataBuilder_;
                if (singleFieldBuilderV32 == null) {
                    record.rawData_ = this.rawData_;
                } else {
                    record.rawData_ = (BytesValue) singleFieldBuilderV32.build();
                }
                SingleFieldBuilderV3<Error, Error.Builder, ErrorOrBuilder> singleFieldBuilderV33 = this.errorBuilder_;
                if (singleFieldBuilderV33 == null) {
                    record.error_ = this.error_;
                } else {
                    record.error_ = (Error) singleFieldBuilderV33.build();
                }
                onBuilt();
                return record;
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
                if (message instanceof Record) {
                    return mergeFrom((Record) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(Record record) {
                if (record == Record.getDefaultInstance()) {
                    return this;
                }
                if (record.hasRule()) {
                    mergeRule(record.getRule());
                }
                if (record.hasRawData()) {
                    mergeRawData(record.getRawData());
                }
                if (record.hasError()) {
                    mergeError(record.getError());
                }
                mergeUnknownFields(((GeneratedMessageV3) record).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public io.bidmachine.protobuf.sdk.Reader.Record.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r3, com.explorestack.protobuf.ExtensionRegistryLite r4) throws java.lang.Throwable {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.Parser r1 = io.bidmachine.protobuf.sdk.Reader.Record.access$6200()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    io.bidmachine.protobuf.sdk.Reader$Record r3 = (io.bidmachine.protobuf.sdk.Reader.Record) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                    io.bidmachine.protobuf.sdk.Reader$Record r4 = (io.bidmachine.protobuf.sdk.Reader.Record) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.sdk.Reader.Record.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):io.bidmachine.protobuf.sdk.Reader$Record$Builder");
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.RecordOrBuilder
            public boolean hasRule() {
                return (this.ruleBuilder_ == null && this.rule_ == null) ? false : true;
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.RecordOrBuilder
            public Rule getRule() {
                SingleFieldBuilderV3<Rule, Rule.Builder, RuleOrBuilder> singleFieldBuilderV3 = this.ruleBuilder_;
                if (singleFieldBuilderV3 == null) {
                    Rule rule = this.rule_;
                    return rule == null ? Rule.getDefaultInstance() : rule;
                }
                return (Rule) singleFieldBuilderV3.getMessage();
            }

            public Builder setRule(Rule rule) {
                SingleFieldBuilderV3<Rule, Rule.Builder, RuleOrBuilder> singleFieldBuilderV3 = this.ruleBuilder_;
                if (singleFieldBuilderV3 == null) {
                    rule.getClass();
                    this.rule_ = rule;
                    onChanged();
                    return this;
                }
                singleFieldBuilderV3.setMessage(rule);
                return this;
            }

            public Builder setRule(Rule.Builder builder) {
                SingleFieldBuilderV3<Rule, Rule.Builder, RuleOrBuilder> singleFieldBuilderV3 = this.ruleBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.rule_ = builder.build();
                    onChanged();
                    return this;
                }
                singleFieldBuilderV3.setMessage(builder.build());
                return this;
            }

            public Builder mergeRule(Rule rule) {
                SingleFieldBuilderV3<Rule, Rule.Builder, RuleOrBuilder> singleFieldBuilderV3 = this.ruleBuilder_;
                if (singleFieldBuilderV3 == null) {
                    Rule rule2 = this.rule_;
                    if (rule2 != null) {
                        this.rule_ = Rule.newBuilder(rule2).mergeFrom(rule).buildPartial();
                    } else {
                        this.rule_ = rule;
                    }
                    onChanged();
                    return this;
                }
                singleFieldBuilderV3.mergeFrom(rule);
                return this;
            }

            public Builder clearRule() {
                if (this.ruleBuilder_ == null) {
                    this.rule_ = null;
                    onChanged();
                    return this;
                }
                this.rule_ = null;
                this.ruleBuilder_ = null;
                return this;
            }

            public Rule.Builder getRuleBuilder() {
                onChanged();
                return (Rule.Builder) getRuleFieldBuilder().getBuilder();
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.RecordOrBuilder
            public RuleOrBuilder getRuleOrBuilder() {
                SingleFieldBuilderV3<Rule, Rule.Builder, RuleOrBuilder> singleFieldBuilderV3 = this.ruleBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (RuleOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
                }
                Rule rule = this.rule_;
                return rule == null ? Rule.getDefaultInstance() : rule;
            }

            private SingleFieldBuilderV3<Rule, Rule.Builder, RuleOrBuilder> getRuleFieldBuilder() {
                if (this.ruleBuilder_ == null) {
                    this.ruleBuilder_ = new SingleFieldBuilderV3<>(getRule(), getParentForChildren(), isClean());
                    this.rule_ = null;
                }
                return this.ruleBuilder_;
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.RecordOrBuilder
            public boolean hasRawData() {
                return (this.rawDataBuilder_ == null && this.rawData_ == null) ? false : true;
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.RecordOrBuilder
            public BytesValue getRawData() {
                SingleFieldBuilderV3<BytesValue, BytesValue.Builder, BytesValueOrBuilder> singleFieldBuilderV3 = this.rawDataBuilder_;
                if (singleFieldBuilderV3 == null) {
                    BytesValue bytesValue = this.rawData_;
                    return bytesValue == null ? BytesValue.getDefaultInstance() : bytesValue;
                }
                return (BytesValue) singleFieldBuilderV3.getMessage();
            }

            public Builder setRawData(BytesValue bytesValue) {
                SingleFieldBuilderV3<BytesValue, BytesValue.Builder, BytesValueOrBuilder> singleFieldBuilderV3 = this.rawDataBuilder_;
                if (singleFieldBuilderV3 == null) {
                    bytesValue.getClass();
                    this.rawData_ = bytesValue;
                    onChanged();
                    return this;
                }
                singleFieldBuilderV3.setMessage(bytesValue);
                return this;
            }

            public Builder setRawData(BytesValue.Builder builder) {
                SingleFieldBuilderV3<BytesValue, BytesValue.Builder, BytesValueOrBuilder> singleFieldBuilderV3 = this.rawDataBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.rawData_ = builder.build();
                    onChanged();
                    return this;
                }
                singleFieldBuilderV3.setMessage(builder.build());
                return this;
            }

            public Builder mergeRawData(BytesValue bytesValue) {
                SingleFieldBuilderV3<BytesValue, BytesValue.Builder, BytesValueOrBuilder> singleFieldBuilderV3 = this.rawDataBuilder_;
                if (singleFieldBuilderV3 == null) {
                    BytesValue bytesValue2 = this.rawData_;
                    if (bytesValue2 != null) {
                        this.rawData_ = BytesValue.newBuilder(bytesValue2).mergeFrom(bytesValue).buildPartial();
                    } else {
                        this.rawData_ = bytesValue;
                    }
                    onChanged();
                    return this;
                }
                singleFieldBuilderV3.mergeFrom(bytesValue);
                return this;
            }

            public Builder clearRawData() {
                if (this.rawDataBuilder_ == null) {
                    this.rawData_ = null;
                    onChanged();
                    return this;
                }
                this.rawData_ = null;
                this.rawDataBuilder_ = null;
                return this;
            }

            public BytesValue.Builder getRawDataBuilder() {
                onChanged();
                return (BytesValue.Builder) getRawDataFieldBuilder().getBuilder();
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.RecordOrBuilder
            public BytesValueOrBuilder getRawDataOrBuilder() {
                SingleFieldBuilderV3<BytesValue, BytesValue.Builder, BytesValueOrBuilder> singleFieldBuilderV3 = this.rawDataBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (BytesValueOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
                }
                BytesValue bytesValue = this.rawData_;
                return bytesValue == null ? BytesValue.getDefaultInstance() : bytesValue;
            }

            private SingleFieldBuilderV3<BytesValue, BytesValue.Builder, BytesValueOrBuilder> getRawDataFieldBuilder() {
                if (this.rawDataBuilder_ == null) {
                    this.rawDataBuilder_ = new SingleFieldBuilderV3<>(getRawData(), getParentForChildren(), isClean());
                    this.rawData_ = null;
                }
                return this.rawDataBuilder_;
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.RecordOrBuilder
            public boolean hasError() {
                return (this.errorBuilder_ == null && this.error_ == null) ? false : true;
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.RecordOrBuilder
            public Error getError() {
                SingleFieldBuilderV3<Error, Error.Builder, ErrorOrBuilder> singleFieldBuilderV3 = this.errorBuilder_;
                if (singleFieldBuilderV3 == null) {
                    Error error = this.error_;
                    return error == null ? Error.getDefaultInstance() : error;
                }
                return (Error) singleFieldBuilderV3.getMessage();
            }

            public Builder setError(Error error) {
                SingleFieldBuilderV3<Error, Error.Builder, ErrorOrBuilder> singleFieldBuilderV3 = this.errorBuilder_;
                if (singleFieldBuilderV3 == null) {
                    error.getClass();
                    this.error_ = error;
                    onChanged();
                    return this;
                }
                singleFieldBuilderV3.setMessage(error);
                return this;
            }

            public Builder setError(Error.Builder builder) {
                SingleFieldBuilderV3<Error, Error.Builder, ErrorOrBuilder> singleFieldBuilderV3 = this.errorBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.error_ = builder.build();
                    onChanged();
                    return this;
                }
                singleFieldBuilderV3.setMessage(builder.build());
                return this;
            }

            public Builder mergeError(Error error) {
                SingleFieldBuilderV3<Error, Error.Builder, ErrorOrBuilder> singleFieldBuilderV3 = this.errorBuilder_;
                if (singleFieldBuilderV3 == null) {
                    Error error2 = this.error_;
                    if (error2 != null) {
                        this.error_ = Error.newBuilder(error2).mergeFrom(error).buildPartial();
                    } else {
                        this.error_ = error;
                    }
                    onChanged();
                    return this;
                }
                singleFieldBuilderV3.mergeFrom(error);
                return this;
            }

            public Builder clearError() {
                if (this.errorBuilder_ == null) {
                    this.error_ = null;
                    onChanged();
                    return this;
                }
                this.error_ = null;
                this.errorBuilder_ = null;
                return this;
            }

            public Error.Builder getErrorBuilder() {
                onChanged();
                return (Error.Builder) getErrorFieldBuilder().getBuilder();
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.RecordOrBuilder
            public ErrorOrBuilder getErrorOrBuilder() {
                SingleFieldBuilderV3<Error, Error.Builder, ErrorOrBuilder> singleFieldBuilderV3 = this.errorBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (ErrorOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
                }
                Error error = this.error_;
                return error == null ? Error.getDefaultInstance() : error;
            }

            private SingleFieldBuilderV3<Error, Error.Builder, ErrorOrBuilder> getErrorFieldBuilder() {
                if (this.errorBuilder_ == null) {
                    this.errorBuilder_ = new SingleFieldBuilderV3<>(getError(), getParentForChildren(), isClean());
                    this.error_ = null;
                }
                return this.errorBuilder_;
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

        public static Record getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<Record> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Parser<Record> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        /* JADX INFO: renamed from: getDefaultInstanceForType */
        public Record mo687getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    @Override // io.bidmachine.protobuf.sdk.ReaderOrBuilder
    public String getName() {
        Object obj = this.name_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.name_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.sdk.ReaderOrBuilder
    public ByteString getNameBytes() {
        Object obj = this.name_;
        if (obj instanceof String) {
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.name_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // io.bidmachine.protobuf.sdk.ReaderOrBuilder
    public boolean hasTimestamp() {
        return this.timestamp_ != null;
    }

    @Override // io.bidmachine.protobuf.sdk.ReaderOrBuilder
    public Timestamp getTimestamp() {
        Timestamp timestamp = this.timestamp_;
        return timestamp == null ? Timestamp.getDefaultInstance() : timestamp;
    }

    @Override // io.bidmachine.protobuf.sdk.ReaderOrBuilder
    public TimestampOrBuilder getTimestampOrBuilder() {
        return getTimestamp();
    }

    @Override // io.bidmachine.protobuf.sdk.ReaderOrBuilder
    public List<Record> getRecordsList() {
        return this.records_;
    }

    @Override // io.bidmachine.protobuf.sdk.ReaderOrBuilder
    public List<? extends RecordOrBuilder> getRecordsOrBuilderList() {
        return this.records_;
    }

    @Override // io.bidmachine.protobuf.sdk.ReaderOrBuilder
    public int getRecordsCount() {
        return this.records_.size();
    }

    @Override // io.bidmachine.protobuf.sdk.ReaderOrBuilder
    public Record getRecords(int i) {
        return this.records_.get(i);
    }

    @Override // io.bidmachine.protobuf.sdk.ReaderOrBuilder
    public RecordOrBuilder getRecordsOrBuilder(int i) {
        return this.records_.get(i);
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
        if (!getNameBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
        }
        if (this.timestamp_ != null) {
            codedOutputStream.writeMessage(2, getTimestamp());
        }
        for (int i = 0; i < this.records_.size(); i++) {
            codedOutputStream.writeMessage(3, this.records_.get(i));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        int iComputeStringSize = !getNameBytes().isEmpty() ? GeneratedMessageV3.computeStringSize(1, this.name_) : 0;
        if (this.timestamp_ != null) {
            iComputeStringSize += CodedOutputStream.computeMessageSize(2, getTimestamp());
        }
        for (int i2 = 0; i2 < this.records_.size(); i2++) {
            iComputeStringSize += CodedOutputStream.computeMessageSize(3, this.records_.get(i2));
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
        if (!(obj instanceof Reader)) {
            return super.equals(obj);
        }
        Reader reader = (Reader) obj;
        if (getName().equals(reader.getName()) && hasTimestamp() == reader.hasTimestamp()) {
            return (!hasTimestamp() || getTimestamp().equals(reader.getTimestamp())) && getRecordsList().equals(reader.getRecordsList()) && this.unknownFields.equals(reader.unknownFields);
        }
        return false;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public int hashCode() {
        int i = this.memoizedHashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode();
        if (hasTimestamp()) {
            iHashCode = (((iHashCode * 37) + 2) * 53) + getTimestamp().hashCode();
        }
        if (getRecordsCount() > 0) {
            iHashCode = (((iHashCode * 37) + 3) * 53) + getRecordsList().hashCode();
        }
        int iHashCode2 = (iHashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode2;
        return iHashCode2;
    }

    public static Reader parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static Reader parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
    }

    public static Reader parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    public static Reader parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, extensionRegistryLite);
    }

    public static Reader parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    public static Reader parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, extensionRegistryLite);
    }

    public static Reader parseFrom(InputStream inputStream) throws IOException {
        return (Reader) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Reader parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Reader) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static Reader parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Reader) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Reader parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Reader) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static Reader parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (Reader) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
    }

    public static Reader parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Reader) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Builder newBuilder(Reader reader) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(reader);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
        return new Builder(builderParent);
    }

    public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements ReaderOrBuilder {
        private int bitField0_;
        private Object name_;
        private RepeatedFieldBuilderV3<Record, Record.Builder, RecordOrBuilder> recordsBuilder_;
        private List<Record> records_;
        private SingleFieldBuilderV3<Timestamp, Timestamp.Builder, TimestampOrBuilder> timestampBuilder_;
        private Timestamp timestamp_;

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_descriptor;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_fieldAccessorTable.ensureFieldAccessorsInitialized(Reader.class, Builder.class);
        }

        private Builder() {
            this.name_ = "";
            this.records_ = Collections.EMPTY_LIST;
            maybeForceBuilderInitialization();
        }

        private Builder(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            this.name_ = "";
            this.records_ = Collections.EMPTY_LIST;
            maybeForceBuilderInitialization();
        }

        private void maybeForceBuilderInitialization() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                getRecordsFieldBuilder();
            }
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Builder clear() {
            super.clear();
            this.name_ = "";
            if (this.timestampBuilder_ == null) {
                this.timestamp_ = null;
            } else {
                this.timestamp_ = null;
                this.timestampBuilder_ = null;
            }
            RepeatedFieldBuilderV3<Record, Record.Builder, RecordOrBuilder> repeatedFieldBuilderV3 = this.recordsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                this.records_ = Collections.EMPTY_LIST;
                this.bitField0_ &= -2;
                return this;
            }
            repeatedFieldBuilderV3.clear();
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_descriptor;
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        /* JADX INFO: renamed from: getDefaultInstanceForType */
        public Reader mo687getDefaultInstanceForType() {
            return Reader.getDefaultInstance();
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Reader build() {
            Reader readerBuildPartial = buildPartial();
            if (readerBuildPartial.isInitialized()) {
                return readerBuildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) readerBuildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Reader buildPartial() {
            Reader reader = new Reader(this);
            reader.name_ = this.name_;
            SingleFieldBuilderV3<Timestamp, Timestamp.Builder, TimestampOrBuilder> singleFieldBuilderV3 = this.timestampBuilder_;
            if (singleFieldBuilderV3 == null) {
                reader.timestamp_ = this.timestamp_;
            } else {
                reader.timestamp_ = (Timestamp) singleFieldBuilderV3.build();
            }
            RepeatedFieldBuilderV3<Record, Record.Builder, RecordOrBuilder> repeatedFieldBuilderV3 = this.recordsBuilder_;
            if (repeatedFieldBuilderV3 != null) {
                reader.records_ = repeatedFieldBuilderV3.build();
            } else {
                if ((this.bitField0_ & 1) != 0) {
                    this.records_ = Collections.unmodifiableList(this.records_);
                    this.bitField0_ &= -2;
                }
                reader.records_ = this.records_;
            }
            onBuilt();
            return reader;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder
        /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
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
            if (message instanceof Reader) {
                return mergeFrom((Reader) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public Builder mergeFrom(Reader reader) {
            if (reader == Reader.getDefaultInstance()) {
                return this;
            }
            if (!reader.getName().isEmpty()) {
                this.name_ = reader.name_;
                onChanged();
            }
            if (reader.hasTimestamp()) {
                mergeTimestamp(reader.getTimestamp());
            }
            if (this.recordsBuilder_ == null) {
                if (!reader.records_.isEmpty()) {
                    if (this.records_.isEmpty()) {
                        this.records_ = reader.records_;
                        this.bitField0_ &= -2;
                    } else {
                        ensureRecordsIsMutable();
                        this.records_.addAll(reader.records_);
                    }
                    onChanged();
                }
            } else if (!reader.records_.isEmpty()) {
                if (!this.recordsBuilder_.isEmpty()) {
                    this.recordsBuilder_.addAllMessages(reader.records_);
                } else {
                    this.recordsBuilder_.dispose();
                    this.recordsBuilder_ = null;
                    this.records_ = reader.records_;
                    this.bitField0_ &= -2;
                    this.recordsBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getRecordsFieldBuilder() : null;
                }
            }
            mergeUnknownFields(((GeneratedMessageV3) reader).unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public io.bidmachine.protobuf.sdk.Reader.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r3, com.explorestack.protobuf.ExtensionRegistryLite r4) throws java.lang.Throwable {
            /*
                r2 = this;
                r0 = 0
                com.explorestack.protobuf.Parser r1 = io.bidmachine.protobuf.sdk.Reader.access$7300()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                io.bidmachine.protobuf.sdk.Reader r3 = (io.bidmachine.protobuf.sdk.Reader) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                io.bidmachine.protobuf.sdk.Reader r4 = (io.bidmachine.protobuf.sdk.Reader) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.sdk.Reader.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):io.bidmachine.protobuf.sdk.Reader$Builder");
        }

        @Override // io.bidmachine.protobuf.sdk.ReaderOrBuilder
        public String getName() {
            Object obj = this.name_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.name_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.sdk.ReaderOrBuilder
        public ByteString getNameBytes() {
            Object obj = this.name_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.name_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        public Builder setName(String str) {
            str.getClass();
            this.name_ = str;
            onChanged();
            return this;
        }

        public Builder clearName() {
            this.name_ = Reader.getDefaultInstance().getName();
            onChanged();
            return this;
        }

        public Builder setNameBytes(ByteString byteString) {
            byteString.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.name_ = byteString;
            onChanged();
            return this;
        }

        @Override // io.bidmachine.protobuf.sdk.ReaderOrBuilder
        public boolean hasTimestamp() {
            return (this.timestampBuilder_ == null && this.timestamp_ == null) ? false : true;
        }

        @Override // io.bidmachine.protobuf.sdk.ReaderOrBuilder
        public Timestamp getTimestamp() {
            SingleFieldBuilderV3<Timestamp, Timestamp.Builder, TimestampOrBuilder> singleFieldBuilderV3 = this.timestampBuilder_;
            if (singleFieldBuilderV3 == null) {
                Timestamp timestamp = this.timestamp_;
                return timestamp == null ? Timestamp.getDefaultInstance() : timestamp;
            }
            return (Timestamp) singleFieldBuilderV3.getMessage();
        }

        public Builder setTimestamp(Timestamp timestamp) {
            SingleFieldBuilderV3<Timestamp, Timestamp.Builder, TimestampOrBuilder> singleFieldBuilderV3 = this.timestampBuilder_;
            if (singleFieldBuilderV3 == null) {
                timestamp.getClass();
                this.timestamp_ = timestamp;
                onChanged();
                return this;
            }
            singleFieldBuilderV3.setMessage(timestamp);
            return this;
        }

        public Builder setTimestamp(Timestamp.Builder builder) {
            SingleFieldBuilderV3<Timestamp, Timestamp.Builder, TimestampOrBuilder> singleFieldBuilderV3 = this.timestampBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.timestamp_ = builder.build();
                onChanged();
                return this;
            }
            singleFieldBuilderV3.setMessage(builder.build());
            return this;
        }

        public Builder mergeTimestamp(Timestamp timestamp) {
            SingleFieldBuilderV3<Timestamp, Timestamp.Builder, TimestampOrBuilder> singleFieldBuilderV3 = this.timestampBuilder_;
            if (singleFieldBuilderV3 == null) {
                Timestamp timestamp2 = this.timestamp_;
                if (timestamp2 != null) {
                    this.timestamp_ = Timestamp.newBuilder(timestamp2).mergeFrom(timestamp).buildPartial();
                } else {
                    this.timestamp_ = timestamp;
                }
                onChanged();
                return this;
            }
            singleFieldBuilderV3.mergeFrom(timestamp);
            return this;
        }

        public Builder clearTimestamp() {
            if (this.timestampBuilder_ == null) {
                this.timestamp_ = null;
                onChanged();
                return this;
            }
            this.timestamp_ = null;
            this.timestampBuilder_ = null;
            return this;
        }

        public Timestamp.Builder getTimestampBuilder() {
            onChanged();
            return (Timestamp.Builder) getTimestampFieldBuilder().getBuilder();
        }

        @Override // io.bidmachine.protobuf.sdk.ReaderOrBuilder
        public TimestampOrBuilder getTimestampOrBuilder() {
            SingleFieldBuilderV3<Timestamp, Timestamp.Builder, TimestampOrBuilder> singleFieldBuilderV3 = this.timestampBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (TimestampOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
            }
            Timestamp timestamp = this.timestamp_;
            return timestamp == null ? Timestamp.getDefaultInstance() : timestamp;
        }

        private SingleFieldBuilderV3<Timestamp, Timestamp.Builder, TimestampOrBuilder> getTimestampFieldBuilder() {
            if (this.timestampBuilder_ == null) {
                this.timestampBuilder_ = new SingleFieldBuilderV3<>(getTimestamp(), getParentForChildren(), isClean());
                this.timestamp_ = null;
            }
            return this.timestampBuilder_;
        }

        private void ensureRecordsIsMutable() {
            if ((this.bitField0_ & 1) == 0) {
                this.records_ = new ArrayList(this.records_);
                this.bitField0_ |= 1;
            }
        }

        @Override // io.bidmachine.protobuf.sdk.ReaderOrBuilder
        public List<Record> getRecordsList() {
            RepeatedFieldBuilderV3<Record, Record.Builder, RecordOrBuilder> repeatedFieldBuilderV3 = this.recordsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                return Collections.unmodifiableList(this.records_);
            }
            return repeatedFieldBuilderV3.getMessageList();
        }

        @Override // io.bidmachine.protobuf.sdk.ReaderOrBuilder
        public int getRecordsCount() {
            RepeatedFieldBuilderV3<Record, Record.Builder, RecordOrBuilder> repeatedFieldBuilderV3 = this.recordsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                return this.records_.size();
            }
            return repeatedFieldBuilderV3.getCount();
        }

        @Override // io.bidmachine.protobuf.sdk.ReaderOrBuilder
        public Record getRecords(int i) {
            RepeatedFieldBuilderV3<Record, Record.Builder, RecordOrBuilder> repeatedFieldBuilderV3 = this.recordsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                return this.records_.get(i);
            }
            return (Record) repeatedFieldBuilderV3.getMessage(i);
        }

        public Builder setRecords(int i, Record record) {
            RepeatedFieldBuilderV3<Record, Record.Builder, RecordOrBuilder> repeatedFieldBuilderV3 = this.recordsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                record.getClass();
                ensureRecordsIsMutable();
                this.records_.set(i, record);
                onChanged();
                return this;
            }
            repeatedFieldBuilderV3.setMessage(i, record);
            return this;
        }

        public Builder setRecords(int i, Record.Builder builder) {
            RepeatedFieldBuilderV3<Record, Record.Builder, RecordOrBuilder> repeatedFieldBuilderV3 = this.recordsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureRecordsIsMutable();
                this.records_.set(i, builder.build());
                onChanged();
                return this;
            }
            repeatedFieldBuilderV3.setMessage(i, builder.build());
            return this;
        }

        public Builder addRecords(Record record) {
            RepeatedFieldBuilderV3<Record, Record.Builder, RecordOrBuilder> repeatedFieldBuilderV3 = this.recordsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                record.getClass();
                ensureRecordsIsMutable();
                this.records_.add(record);
                onChanged();
                return this;
            }
            repeatedFieldBuilderV3.addMessage(record);
            return this;
        }

        public Builder addRecords(int i, Record record) {
            RepeatedFieldBuilderV3<Record, Record.Builder, RecordOrBuilder> repeatedFieldBuilderV3 = this.recordsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                record.getClass();
                ensureRecordsIsMutable();
                this.records_.add(i, record);
                onChanged();
                return this;
            }
            repeatedFieldBuilderV3.addMessage(i, record);
            return this;
        }

        public Builder addRecords(Record.Builder builder) {
            RepeatedFieldBuilderV3<Record, Record.Builder, RecordOrBuilder> repeatedFieldBuilderV3 = this.recordsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureRecordsIsMutable();
                this.records_.add(builder.build());
                onChanged();
                return this;
            }
            repeatedFieldBuilderV3.addMessage(builder.build());
            return this;
        }

        public Builder addRecords(int i, Record.Builder builder) {
            RepeatedFieldBuilderV3<Record, Record.Builder, RecordOrBuilder> repeatedFieldBuilderV3 = this.recordsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureRecordsIsMutable();
                this.records_.add(i, builder.build());
                onChanged();
                return this;
            }
            repeatedFieldBuilderV3.addMessage(i, builder.build());
            return this;
        }

        public Builder addAllRecords(Iterable<? extends Record> iterable) {
            RepeatedFieldBuilderV3<Record, Record.Builder, RecordOrBuilder> repeatedFieldBuilderV3 = this.recordsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureRecordsIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.records_);
                onChanged();
                return this;
            }
            repeatedFieldBuilderV3.addAllMessages(iterable);
            return this;
        }

        public Builder clearRecords() {
            RepeatedFieldBuilderV3<Record, Record.Builder, RecordOrBuilder> repeatedFieldBuilderV3 = this.recordsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                this.records_ = Collections.EMPTY_LIST;
                this.bitField0_ &= -2;
                onChanged();
                return this;
            }
            repeatedFieldBuilderV3.clear();
            return this;
        }

        public Builder removeRecords(int i) {
            RepeatedFieldBuilderV3<Record, Record.Builder, RecordOrBuilder> repeatedFieldBuilderV3 = this.recordsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureRecordsIsMutable();
                this.records_.remove(i);
                onChanged();
                return this;
            }
            repeatedFieldBuilderV3.remove(i);
            return this;
        }

        public Record.Builder getRecordsBuilder(int i) {
            return (Record.Builder) getRecordsFieldBuilder().getBuilder(i);
        }

        @Override // io.bidmachine.protobuf.sdk.ReaderOrBuilder
        public RecordOrBuilder getRecordsOrBuilder(int i) {
            RepeatedFieldBuilderV3<Record, Record.Builder, RecordOrBuilder> repeatedFieldBuilderV3 = this.recordsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                return this.records_.get(i);
            }
            return (RecordOrBuilder) repeatedFieldBuilderV3.getMessageOrBuilder(i);
        }

        @Override // io.bidmachine.protobuf.sdk.ReaderOrBuilder
        public List<? extends RecordOrBuilder> getRecordsOrBuilderList() {
            RepeatedFieldBuilderV3<Record, Record.Builder, RecordOrBuilder> repeatedFieldBuilderV3 = this.recordsBuilder_;
            if (repeatedFieldBuilderV3 != null) {
                return repeatedFieldBuilderV3.getMessageOrBuilderList();
            }
            return Collections.unmodifiableList(this.records_);
        }

        public Record.Builder addRecordsBuilder() {
            return (Record.Builder) getRecordsFieldBuilder().addBuilder(Record.getDefaultInstance());
        }

        public Record.Builder addRecordsBuilder(int i) {
            return (Record.Builder) getRecordsFieldBuilder().addBuilder(i, Record.getDefaultInstance());
        }

        public List<Record.Builder> getRecordsBuilderList() {
            return getRecordsFieldBuilder().getBuilderList();
        }

        private RepeatedFieldBuilderV3<Record, Record.Builder, RecordOrBuilder> getRecordsFieldBuilder() {
            if (this.recordsBuilder_ == null) {
                this.recordsBuilder_ = new RepeatedFieldBuilderV3<>(this.records_, (this.bitField0_ & 1) != 0, getParentForChildren(), isClean());
                this.records_ = null;
            }
            return this.recordsBuilder_;
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

    public static Reader getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static Parser<Reader> parser() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Parser<Reader> getParserForType() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
    /* JADX INFO: renamed from: getDefaultInstanceForType */
    public Reader mo687getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }
}
