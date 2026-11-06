package io.bidmachine.protobuf.sdk;

import com.explorestack.protobuf.AbstractMessage;
import com.explorestack.protobuf.AbstractMessageLite;
import com.explorestack.protobuf.AbstractParser;
import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.CodedInputStream;
import com.explorestack.protobuf.CodedOutputStream;
import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.ExtensionRegistryLite;
import com.explorestack.protobuf.GeneratedMessageV3;
import com.explorestack.protobuf.InvalidProtocolBufferException;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.Parser;
import com.explorestack.protobuf.RepeatedFieldBuilderV3;
import com.explorestack.protobuf.SingleFieldBuilderV3;
import com.explorestack.protobuf.StringValue;
import com.explorestack.protobuf.StringValueOrBuilder;
import com.explorestack.protobuf.UnknownFieldSet;
import io.bidmachine.protobuf.sdk.Monitor;
import io.bidmachine.protobuf.sdk.Reader;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class Configuration extends GeneratedMessageV3 implements ConfigurationOrBuilder {
    public static final int BPK_FIELD_NUMBER = 3;
    public static final int MONITORS_FIELD_NUMBER = 1;
    public static final int READERS_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private StringValue bpk_;
    private byte memoizedIsInitialized;
    private List<Monitor.Configuration> monitors_;
    private List<Reader.Configuration> readers_;
    private static final Configuration DEFAULT_INSTANCE = new Configuration();
    private static final Parser<Configuration> PARSER = new AbstractParser<Configuration>() { // from class: io.bidmachine.protobuf.sdk.Configuration.1
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
        List list = Collections.EMPTY_LIST;
        this.monitors_ = list;
        this.readers_ = list;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
        return new Configuration();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
    public final UnknownFieldSet getUnknownFields() {
        return this.unknownFields;
    }

    private Configuration(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                if ((i & 1) == 0) {
                                    this.monitors_ = new ArrayList();
                                    i |= 1;
                                }
                                this.monitors_.add((Monitor.Configuration) codedInputStream.readMessage(Monitor.Configuration.parser(), extensionRegistryLite));
                            } else if (tag == 18) {
                                if ((i & 2) == 0) {
                                    this.readers_ = new ArrayList();
                                    i |= 2;
                                }
                                this.readers_.add((Reader.Configuration) codedInputStream.readMessage(Reader.Configuration.parser(), extensionRegistryLite));
                            } else if (tag == 26) {
                                StringValue stringValue = this.bpk_;
                                StringValue.Builder builder = stringValue != null ? stringValue.toBuilder() : null;
                                StringValue stringValue2 = (StringValue) codedInputStream.readMessage(StringValue.parser(), extensionRegistryLite);
                                this.bpk_ = stringValue2;
                                if (builder != null) {
                                    builder.mergeFrom(stringValue2);
                                    this.bpk_ = builder.buildPartial();
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
                if ((i & 1) != 0) {
                    this.monitors_ = Collections.unmodifiableList(this.monitors_);
                }
                if ((i & 2) != 0) {
                    this.readers_ = Collections.unmodifiableList(this.readers_);
                }
                this.unknownFields = builderNewBuilder.build();
                makeExtensionsImmutable();
                throw th;
            }
        }
        if ((i & 1) != 0) {
            this.monitors_ = Collections.unmodifiableList(this.monitors_);
        }
        if ((i & 2) != 0) {
            this.readers_ = Collections.unmodifiableList(this.readers_);
        }
        this.unknownFields = builderNewBuilder.build();
        makeExtensionsImmutable();
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Configuration_descriptor;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Configuration_fieldAccessorTable.ensureFieldAccessorsInitialized(Configuration.class, Builder.class);
    }

    @Override // io.bidmachine.protobuf.sdk.ConfigurationOrBuilder
    public List<Monitor.Configuration> getMonitorsList() {
        return this.monitors_;
    }

    @Override // io.bidmachine.protobuf.sdk.ConfigurationOrBuilder
    public List<? extends Monitor.ConfigurationOrBuilder> getMonitorsOrBuilderList() {
        return this.monitors_;
    }

    @Override // io.bidmachine.protobuf.sdk.ConfigurationOrBuilder
    public int getMonitorsCount() {
        return this.monitors_.size();
    }

    @Override // io.bidmachine.protobuf.sdk.ConfigurationOrBuilder
    public Monitor.Configuration getMonitors(int i) {
        return this.monitors_.get(i);
    }

    @Override // io.bidmachine.protobuf.sdk.ConfigurationOrBuilder
    public Monitor.ConfigurationOrBuilder getMonitorsOrBuilder(int i) {
        return this.monitors_.get(i);
    }

    @Override // io.bidmachine.protobuf.sdk.ConfigurationOrBuilder
    public List<Reader.Configuration> getReadersList() {
        return this.readers_;
    }

    @Override // io.bidmachine.protobuf.sdk.ConfigurationOrBuilder
    public List<? extends Reader.ConfigurationOrBuilder> getReadersOrBuilderList() {
        return this.readers_;
    }

    @Override // io.bidmachine.protobuf.sdk.ConfigurationOrBuilder
    public int getReadersCount() {
        return this.readers_.size();
    }

    @Override // io.bidmachine.protobuf.sdk.ConfigurationOrBuilder
    public Reader.Configuration getReaders(int i) {
        return this.readers_.get(i);
    }

    @Override // io.bidmachine.protobuf.sdk.ConfigurationOrBuilder
    public Reader.ConfigurationOrBuilder getReadersOrBuilder(int i) {
        return this.readers_.get(i);
    }

    @Override // io.bidmachine.protobuf.sdk.ConfigurationOrBuilder
    public boolean hasBpk() {
        return this.bpk_ != null;
    }

    @Override // io.bidmachine.protobuf.sdk.ConfigurationOrBuilder
    public StringValue getBpk() {
        StringValue stringValue = this.bpk_;
        return stringValue == null ? StringValue.getDefaultInstance() : stringValue;
    }

    @Override // io.bidmachine.protobuf.sdk.ConfigurationOrBuilder
    public StringValueOrBuilder getBpkOrBuilder() {
        return getBpk();
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
        for (int i = 0; i < this.monitors_.size(); i++) {
            codedOutputStream.writeMessage(1, this.monitors_.get(i));
        }
        for (int i2 = 0; i2 < this.readers_.size(); i2++) {
            codedOutputStream.writeMessage(2, this.readers_.get(i2));
        }
        if (this.bpk_ != null) {
            codedOutputStream.writeMessage(3, getBpk());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        int iComputeMessageSize = 0;
        for (int i2 = 0; i2 < this.monitors_.size(); i2++) {
            iComputeMessageSize += CodedOutputStream.computeMessageSize(1, this.monitors_.get(i2));
        }
        for (int i3 = 0; i3 < this.readers_.size(); i3++) {
            iComputeMessageSize += CodedOutputStream.computeMessageSize(2, this.readers_.get(i3));
        }
        if (this.bpk_ != null) {
            iComputeMessageSize += CodedOutputStream.computeMessageSize(3, getBpk());
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
        if (getMonitorsList().equals(configuration.getMonitorsList()) && getReadersList().equals(configuration.getReadersList()) && hasBpk() == configuration.hasBpk()) {
            return (!hasBpk() || getBpk().equals(configuration.getBpk())) && this.unknownFields.equals(configuration.unknownFields);
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
        if (getMonitorsCount() > 0) {
            iHashCode = (((iHashCode * 37) + 1) * 53) + getMonitorsList().hashCode();
        }
        if (getReadersCount() > 0) {
            iHashCode = (((iHashCode * 37) + 2) * 53) + getReadersList().hashCode();
        }
        if (hasBpk()) {
            iHashCode = (((iHashCode * 37) + 3) * 53) + getBpk().hashCode();
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
        private SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> bpkBuilder_;
        private StringValue bpk_;
        private RepeatedFieldBuilderV3<Monitor.Configuration, Monitor.Configuration.Builder, Monitor.ConfigurationOrBuilder> monitorsBuilder_;
        private List<Monitor.Configuration> monitors_;
        private RepeatedFieldBuilderV3<Reader.Configuration, Reader.Configuration.Builder, Reader.ConfigurationOrBuilder> readersBuilder_;
        private List<Reader.Configuration> readers_;

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Configuration_descriptor;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Configuration_fieldAccessorTable.ensureFieldAccessorsInitialized(Configuration.class, Builder.class);
        }

        private Builder() {
            List list = Collections.EMPTY_LIST;
            this.monitors_ = list;
            this.readers_ = list;
            maybeForceBuilderInitialization();
        }

        private Builder(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            List list = Collections.EMPTY_LIST;
            this.monitors_ = list;
            this.readers_ = list;
            maybeForceBuilderInitialization();
        }

        private void maybeForceBuilderInitialization() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                getMonitorsFieldBuilder();
                getReadersFieldBuilder();
            }
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Builder clear() {
            super.clear();
            RepeatedFieldBuilderV3<Monitor.Configuration, Monitor.Configuration.Builder, Monitor.ConfigurationOrBuilder> repeatedFieldBuilderV3 = this.monitorsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                this.monitors_ = Collections.EMPTY_LIST;
                this.bitField0_ &= -2;
            } else {
                repeatedFieldBuilderV3.clear();
            }
            RepeatedFieldBuilderV3<Reader.Configuration, Reader.Configuration.Builder, Reader.ConfigurationOrBuilder> repeatedFieldBuilderV32 = this.readersBuilder_;
            if (repeatedFieldBuilderV32 == null) {
                this.readers_ = Collections.EMPTY_LIST;
                this.bitField0_ &= -3;
            } else {
                repeatedFieldBuilderV32.clear();
            }
            if (this.bpkBuilder_ == null) {
                this.bpk_ = null;
                return this;
            }
            this.bpk_ = null;
            this.bpkBuilder_ = null;
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Configuration_descriptor;
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
            int i = this.bitField0_;
            RepeatedFieldBuilderV3<Monitor.Configuration, Monitor.Configuration.Builder, Monitor.ConfigurationOrBuilder> repeatedFieldBuilderV3 = this.monitorsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                if ((i & 1) != 0) {
                    this.monitors_ = Collections.unmodifiableList(this.monitors_);
                    this.bitField0_ &= -2;
                }
                configuration.monitors_ = this.monitors_;
            } else {
                configuration.monitors_ = repeatedFieldBuilderV3.build();
            }
            RepeatedFieldBuilderV3<Reader.Configuration, Reader.Configuration.Builder, Reader.ConfigurationOrBuilder> repeatedFieldBuilderV32 = this.readersBuilder_;
            if (repeatedFieldBuilderV32 != null) {
                configuration.readers_ = repeatedFieldBuilderV32.build();
            } else {
                if ((this.bitField0_ & 2) != 0) {
                    this.readers_ = Collections.unmodifiableList(this.readers_);
                    this.bitField0_ &= -3;
                }
                configuration.readers_ = this.readers_;
            }
            SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.bpkBuilder_;
            if (singleFieldBuilderV3 == null) {
                configuration.bpk_ = this.bpk_;
            } else {
                configuration.bpk_ = (StringValue) singleFieldBuilderV3.build();
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
            if (this.monitorsBuilder_ == null) {
                if (!configuration.monitors_.isEmpty()) {
                    if (this.monitors_.isEmpty()) {
                        this.monitors_ = configuration.monitors_;
                        this.bitField0_ &= -2;
                    } else {
                        ensureMonitorsIsMutable();
                        this.monitors_.addAll(configuration.monitors_);
                    }
                    onChanged();
                }
            } else if (!configuration.monitors_.isEmpty()) {
                if (!this.monitorsBuilder_.isEmpty()) {
                    this.monitorsBuilder_.addAllMessages(configuration.monitors_);
                } else {
                    this.monitorsBuilder_.dispose();
                    this.monitorsBuilder_ = null;
                    this.monitors_ = configuration.monitors_;
                    this.bitField0_ &= -2;
                    this.monitorsBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getMonitorsFieldBuilder() : null;
                }
            }
            if (this.readersBuilder_ == null) {
                if (!configuration.readers_.isEmpty()) {
                    if (this.readers_.isEmpty()) {
                        this.readers_ = configuration.readers_;
                        this.bitField0_ &= -3;
                    } else {
                        ensureReadersIsMutable();
                        this.readers_.addAll(configuration.readers_);
                    }
                    onChanged();
                }
            } else if (!configuration.readers_.isEmpty()) {
                if (!this.readersBuilder_.isEmpty()) {
                    this.readersBuilder_.addAllMessages(configuration.readers_);
                } else {
                    this.readersBuilder_.dispose();
                    this.readersBuilder_ = null;
                    this.readers_ = configuration.readers_;
                    this.bitField0_ &= -3;
                    this.readersBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getReadersFieldBuilder() : null;
                }
            }
            if (configuration.hasBpk()) {
                mergeBpk(configuration.getBpk());
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
        public io.bidmachine.protobuf.sdk.Configuration.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r3, com.explorestack.protobuf.ExtensionRegistryLite r4) throws java.lang.Throwable {
            /*
                r2 = this;
                r0 = 0
                com.explorestack.protobuf.Parser r1 = io.bidmachine.protobuf.sdk.Configuration.access$1000()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                io.bidmachine.protobuf.sdk.Configuration r3 = (io.bidmachine.protobuf.sdk.Configuration) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                io.bidmachine.protobuf.sdk.Configuration r4 = (io.bidmachine.protobuf.sdk.Configuration) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.sdk.Configuration.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):io.bidmachine.protobuf.sdk.Configuration$Builder");
        }

        private void ensureMonitorsIsMutable() {
            if ((this.bitField0_ & 1) == 0) {
                this.monitors_ = new ArrayList(this.monitors_);
                this.bitField0_ |= 1;
            }
        }

        @Override // io.bidmachine.protobuf.sdk.ConfigurationOrBuilder
        public List<Monitor.Configuration> getMonitorsList() {
            RepeatedFieldBuilderV3<Monitor.Configuration, Monitor.Configuration.Builder, Monitor.ConfigurationOrBuilder> repeatedFieldBuilderV3 = this.monitorsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                return Collections.unmodifiableList(this.monitors_);
            }
            return repeatedFieldBuilderV3.getMessageList();
        }

        @Override // io.bidmachine.protobuf.sdk.ConfigurationOrBuilder
        public int getMonitorsCount() {
            RepeatedFieldBuilderV3<Monitor.Configuration, Monitor.Configuration.Builder, Monitor.ConfigurationOrBuilder> repeatedFieldBuilderV3 = this.monitorsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                return this.monitors_.size();
            }
            return repeatedFieldBuilderV3.getCount();
        }

        @Override // io.bidmachine.protobuf.sdk.ConfigurationOrBuilder
        public Monitor.Configuration getMonitors(int i) {
            RepeatedFieldBuilderV3<Monitor.Configuration, Monitor.Configuration.Builder, Monitor.ConfigurationOrBuilder> repeatedFieldBuilderV3 = this.monitorsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                return this.monitors_.get(i);
            }
            return (Monitor.Configuration) repeatedFieldBuilderV3.getMessage(i);
        }

        public Builder setMonitors(int i, Monitor.Configuration configuration) {
            RepeatedFieldBuilderV3<Monitor.Configuration, Monitor.Configuration.Builder, Monitor.ConfigurationOrBuilder> repeatedFieldBuilderV3 = this.monitorsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                configuration.getClass();
                ensureMonitorsIsMutable();
                this.monitors_.set(i, configuration);
                onChanged();
                return this;
            }
            repeatedFieldBuilderV3.setMessage(i, configuration);
            return this;
        }

        public Builder setMonitors(int i, Monitor.Configuration.Builder builder) {
            RepeatedFieldBuilderV3<Monitor.Configuration, Monitor.Configuration.Builder, Monitor.ConfigurationOrBuilder> repeatedFieldBuilderV3 = this.monitorsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureMonitorsIsMutable();
                this.monitors_.set(i, builder.build());
                onChanged();
                return this;
            }
            repeatedFieldBuilderV3.setMessage(i, builder.build());
            return this;
        }

        public Builder addMonitors(Monitor.Configuration configuration) {
            RepeatedFieldBuilderV3<Monitor.Configuration, Monitor.Configuration.Builder, Monitor.ConfigurationOrBuilder> repeatedFieldBuilderV3 = this.monitorsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                configuration.getClass();
                ensureMonitorsIsMutable();
                this.monitors_.add(configuration);
                onChanged();
                return this;
            }
            repeatedFieldBuilderV3.addMessage(configuration);
            return this;
        }

        public Builder addMonitors(int i, Monitor.Configuration configuration) {
            RepeatedFieldBuilderV3<Monitor.Configuration, Monitor.Configuration.Builder, Monitor.ConfigurationOrBuilder> repeatedFieldBuilderV3 = this.monitorsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                configuration.getClass();
                ensureMonitorsIsMutable();
                this.monitors_.add(i, configuration);
                onChanged();
                return this;
            }
            repeatedFieldBuilderV3.addMessage(i, configuration);
            return this;
        }

        public Builder addMonitors(Monitor.Configuration.Builder builder) {
            RepeatedFieldBuilderV3<Monitor.Configuration, Monitor.Configuration.Builder, Monitor.ConfigurationOrBuilder> repeatedFieldBuilderV3 = this.monitorsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureMonitorsIsMutable();
                this.monitors_.add(builder.build());
                onChanged();
                return this;
            }
            repeatedFieldBuilderV3.addMessage(builder.build());
            return this;
        }

        public Builder addMonitors(int i, Monitor.Configuration.Builder builder) {
            RepeatedFieldBuilderV3<Monitor.Configuration, Monitor.Configuration.Builder, Monitor.ConfigurationOrBuilder> repeatedFieldBuilderV3 = this.monitorsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureMonitorsIsMutable();
                this.monitors_.add(i, builder.build());
                onChanged();
                return this;
            }
            repeatedFieldBuilderV3.addMessage(i, builder.build());
            return this;
        }

        public Builder addAllMonitors(Iterable<? extends Monitor.Configuration> iterable) {
            RepeatedFieldBuilderV3<Monitor.Configuration, Monitor.Configuration.Builder, Monitor.ConfigurationOrBuilder> repeatedFieldBuilderV3 = this.monitorsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureMonitorsIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.monitors_);
                onChanged();
                return this;
            }
            repeatedFieldBuilderV3.addAllMessages(iterable);
            return this;
        }

        public Builder clearMonitors() {
            RepeatedFieldBuilderV3<Monitor.Configuration, Monitor.Configuration.Builder, Monitor.ConfigurationOrBuilder> repeatedFieldBuilderV3 = this.monitorsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                this.monitors_ = Collections.EMPTY_LIST;
                this.bitField0_ &= -2;
                onChanged();
                return this;
            }
            repeatedFieldBuilderV3.clear();
            return this;
        }

        public Builder removeMonitors(int i) {
            RepeatedFieldBuilderV3<Monitor.Configuration, Monitor.Configuration.Builder, Monitor.ConfigurationOrBuilder> repeatedFieldBuilderV3 = this.monitorsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureMonitorsIsMutable();
                this.monitors_.remove(i);
                onChanged();
                return this;
            }
            repeatedFieldBuilderV3.remove(i);
            return this;
        }

        public Monitor.Configuration.Builder getMonitorsBuilder(int i) {
            return (Monitor.Configuration.Builder) getMonitorsFieldBuilder().getBuilder(i);
        }

        @Override // io.bidmachine.protobuf.sdk.ConfigurationOrBuilder
        public Monitor.ConfigurationOrBuilder getMonitorsOrBuilder(int i) {
            RepeatedFieldBuilderV3<Monitor.Configuration, Monitor.Configuration.Builder, Monitor.ConfigurationOrBuilder> repeatedFieldBuilderV3 = this.monitorsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                return this.monitors_.get(i);
            }
            return (Monitor.ConfigurationOrBuilder) repeatedFieldBuilderV3.getMessageOrBuilder(i);
        }

        @Override // io.bidmachine.protobuf.sdk.ConfigurationOrBuilder
        public List<? extends Monitor.ConfigurationOrBuilder> getMonitorsOrBuilderList() {
            RepeatedFieldBuilderV3<Monitor.Configuration, Monitor.Configuration.Builder, Monitor.ConfigurationOrBuilder> repeatedFieldBuilderV3 = this.monitorsBuilder_;
            if (repeatedFieldBuilderV3 != null) {
                return repeatedFieldBuilderV3.getMessageOrBuilderList();
            }
            return Collections.unmodifiableList(this.monitors_);
        }

        public Monitor.Configuration.Builder addMonitorsBuilder() {
            return (Monitor.Configuration.Builder) getMonitorsFieldBuilder().addBuilder(Monitor.Configuration.getDefaultInstance());
        }

        public Monitor.Configuration.Builder addMonitorsBuilder(int i) {
            return (Monitor.Configuration.Builder) getMonitorsFieldBuilder().addBuilder(i, Monitor.Configuration.getDefaultInstance());
        }

        public List<Monitor.Configuration.Builder> getMonitorsBuilderList() {
            return getMonitorsFieldBuilder().getBuilderList();
        }

        private RepeatedFieldBuilderV3<Monitor.Configuration, Monitor.Configuration.Builder, Monitor.ConfigurationOrBuilder> getMonitorsFieldBuilder() {
            if (this.monitorsBuilder_ == null) {
                this.monitorsBuilder_ = new RepeatedFieldBuilderV3<>(this.monitors_, (this.bitField0_ & 1) != 0, getParentForChildren(), isClean());
                this.monitors_ = null;
            }
            return this.monitorsBuilder_;
        }

        private void ensureReadersIsMutable() {
            if ((this.bitField0_ & 2) == 0) {
                this.readers_ = new ArrayList(this.readers_);
                this.bitField0_ |= 2;
            }
        }

        @Override // io.bidmachine.protobuf.sdk.ConfigurationOrBuilder
        public List<Reader.Configuration> getReadersList() {
            RepeatedFieldBuilderV3<Reader.Configuration, Reader.Configuration.Builder, Reader.ConfigurationOrBuilder> repeatedFieldBuilderV3 = this.readersBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                return Collections.unmodifiableList(this.readers_);
            }
            return repeatedFieldBuilderV3.getMessageList();
        }

        @Override // io.bidmachine.protobuf.sdk.ConfigurationOrBuilder
        public int getReadersCount() {
            RepeatedFieldBuilderV3<Reader.Configuration, Reader.Configuration.Builder, Reader.ConfigurationOrBuilder> repeatedFieldBuilderV3 = this.readersBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                return this.readers_.size();
            }
            return repeatedFieldBuilderV3.getCount();
        }

        @Override // io.bidmachine.protobuf.sdk.ConfigurationOrBuilder
        public Reader.Configuration getReaders(int i) {
            RepeatedFieldBuilderV3<Reader.Configuration, Reader.Configuration.Builder, Reader.ConfigurationOrBuilder> repeatedFieldBuilderV3 = this.readersBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                return this.readers_.get(i);
            }
            return (Reader.Configuration) repeatedFieldBuilderV3.getMessage(i);
        }

        public Builder setReaders(int i, Reader.Configuration configuration) {
            RepeatedFieldBuilderV3<Reader.Configuration, Reader.Configuration.Builder, Reader.ConfigurationOrBuilder> repeatedFieldBuilderV3 = this.readersBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                configuration.getClass();
                ensureReadersIsMutable();
                this.readers_.set(i, configuration);
                onChanged();
                return this;
            }
            repeatedFieldBuilderV3.setMessage(i, configuration);
            return this;
        }

        public Builder setReaders(int i, Reader.Configuration.Builder builder) {
            RepeatedFieldBuilderV3<Reader.Configuration, Reader.Configuration.Builder, Reader.ConfigurationOrBuilder> repeatedFieldBuilderV3 = this.readersBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureReadersIsMutable();
                this.readers_.set(i, builder.build());
                onChanged();
                return this;
            }
            repeatedFieldBuilderV3.setMessage(i, builder.build());
            return this;
        }

        public Builder addReaders(Reader.Configuration configuration) {
            RepeatedFieldBuilderV3<Reader.Configuration, Reader.Configuration.Builder, Reader.ConfigurationOrBuilder> repeatedFieldBuilderV3 = this.readersBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                configuration.getClass();
                ensureReadersIsMutable();
                this.readers_.add(configuration);
                onChanged();
                return this;
            }
            repeatedFieldBuilderV3.addMessage(configuration);
            return this;
        }

        public Builder addReaders(int i, Reader.Configuration configuration) {
            RepeatedFieldBuilderV3<Reader.Configuration, Reader.Configuration.Builder, Reader.ConfigurationOrBuilder> repeatedFieldBuilderV3 = this.readersBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                configuration.getClass();
                ensureReadersIsMutable();
                this.readers_.add(i, configuration);
                onChanged();
                return this;
            }
            repeatedFieldBuilderV3.addMessage(i, configuration);
            return this;
        }

        public Builder addReaders(Reader.Configuration.Builder builder) {
            RepeatedFieldBuilderV3<Reader.Configuration, Reader.Configuration.Builder, Reader.ConfigurationOrBuilder> repeatedFieldBuilderV3 = this.readersBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureReadersIsMutable();
                this.readers_.add(builder.build());
                onChanged();
                return this;
            }
            repeatedFieldBuilderV3.addMessage(builder.build());
            return this;
        }

        public Builder addReaders(int i, Reader.Configuration.Builder builder) {
            RepeatedFieldBuilderV3<Reader.Configuration, Reader.Configuration.Builder, Reader.ConfigurationOrBuilder> repeatedFieldBuilderV3 = this.readersBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureReadersIsMutable();
                this.readers_.add(i, builder.build());
                onChanged();
                return this;
            }
            repeatedFieldBuilderV3.addMessage(i, builder.build());
            return this;
        }

        public Builder addAllReaders(Iterable<? extends Reader.Configuration> iterable) {
            RepeatedFieldBuilderV3<Reader.Configuration, Reader.Configuration.Builder, Reader.ConfigurationOrBuilder> repeatedFieldBuilderV3 = this.readersBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureReadersIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.readers_);
                onChanged();
                return this;
            }
            repeatedFieldBuilderV3.addAllMessages(iterable);
            return this;
        }

        public Builder clearReaders() {
            RepeatedFieldBuilderV3<Reader.Configuration, Reader.Configuration.Builder, Reader.ConfigurationOrBuilder> repeatedFieldBuilderV3 = this.readersBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                this.readers_ = Collections.EMPTY_LIST;
                this.bitField0_ &= -3;
                onChanged();
                return this;
            }
            repeatedFieldBuilderV3.clear();
            return this;
        }

        public Builder removeReaders(int i) {
            RepeatedFieldBuilderV3<Reader.Configuration, Reader.Configuration.Builder, Reader.ConfigurationOrBuilder> repeatedFieldBuilderV3 = this.readersBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureReadersIsMutable();
                this.readers_.remove(i);
                onChanged();
                return this;
            }
            repeatedFieldBuilderV3.remove(i);
            return this;
        }

        public Reader.Configuration.Builder getReadersBuilder(int i) {
            return (Reader.Configuration.Builder) getReadersFieldBuilder().getBuilder(i);
        }

        @Override // io.bidmachine.protobuf.sdk.ConfigurationOrBuilder
        public Reader.ConfigurationOrBuilder getReadersOrBuilder(int i) {
            RepeatedFieldBuilderV3<Reader.Configuration, Reader.Configuration.Builder, Reader.ConfigurationOrBuilder> repeatedFieldBuilderV3 = this.readersBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                return this.readers_.get(i);
            }
            return (Reader.ConfigurationOrBuilder) repeatedFieldBuilderV3.getMessageOrBuilder(i);
        }

        @Override // io.bidmachine.protobuf.sdk.ConfigurationOrBuilder
        public List<? extends Reader.ConfigurationOrBuilder> getReadersOrBuilderList() {
            RepeatedFieldBuilderV3<Reader.Configuration, Reader.Configuration.Builder, Reader.ConfigurationOrBuilder> repeatedFieldBuilderV3 = this.readersBuilder_;
            if (repeatedFieldBuilderV3 != null) {
                return repeatedFieldBuilderV3.getMessageOrBuilderList();
            }
            return Collections.unmodifiableList(this.readers_);
        }

        public Reader.Configuration.Builder addReadersBuilder() {
            return (Reader.Configuration.Builder) getReadersFieldBuilder().addBuilder(Reader.Configuration.getDefaultInstance());
        }

        public Reader.Configuration.Builder addReadersBuilder(int i) {
            return (Reader.Configuration.Builder) getReadersFieldBuilder().addBuilder(i, Reader.Configuration.getDefaultInstance());
        }

        public List<Reader.Configuration.Builder> getReadersBuilderList() {
            return getReadersFieldBuilder().getBuilderList();
        }

        private RepeatedFieldBuilderV3<Reader.Configuration, Reader.Configuration.Builder, Reader.ConfigurationOrBuilder> getReadersFieldBuilder() {
            if (this.readersBuilder_ == null) {
                this.readersBuilder_ = new RepeatedFieldBuilderV3<>(this.readers_, (this.bitField0_ & 2) != 0, getParentForChildren(), isClean());
                this.readers_ = null;
            }
            return this.readersBuilder_;
        }

        @Override // io.bidmachine.protobuf.sdk.ConfigurationOrBuilder
        public boolean hasBpk() {
            return (this.bpkBuilder_ == null && this.bpk_ == null) ? false : true;
        }

        @Override // io.bidmachine.protobuf.sdk.ConfigurationOrBuilder
        public StringValue getBpk() {
            SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.bpkBuilder_;
            if (singleFieldBuilderV3 == null) {
                StringValue stringValue = this.bpk_;
                return stringValue == null ? StringValue.getDefaultInstance() : stringValue;
            }
            return (StringValue) singleFieldBuilderV3.getMessage();
        }

        public Builder setBpk(StringValue stringValue) {
            SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.bpkBuilder_;
            if (singleFieldBuilderV3 == null) {
                stringValue.getClass();
                this.bpk_ = stringValue;
                onChanged();
                return this;
            }
            singleFieldBuilderV3.setMessage(stringValue);
            return this;
        }

        public Builder setBpk(StringValue.Builder builder) {
            SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.bpkBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.bpk_ = builder.build();
                onChanged();
                return this;
            }
            singleFieldBuilderV3.setMessage(builder.build());
            return this;
        }

        public Builder mergeBpk(StringValue stringValue) {
            SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.bpkBuilder_;
            if (singleFieldBuilderV3 == null) {
                StringValue stringValue2 = this.bpk_;
                if (stringValue2 != null) {
                    this.bpk_ = StringValue.newBuilder(stringValue2).mergeFrom(stringValue).buildPartial();
                } else {
                    this.bpk_ = stringValue;
                }
                onChanged();
                return this;
            }
            singleFieldBuilderV3.mergeFrom(stringValue);
            return this;
        }

        public Builder clearBpk() {
            if (this.bpkBuilder_ == null) {
                this.bpk_ = null;
                onChanged();
                return this;
            }
            this.bpk_ = null;
            this.bpkBuilder_ = null;
            return this;
        }

        public StringValue.Builder getBpkBuilder() {
            onChanged();
            return (StringValue.Builder) getBpkFieldBuilder().getBuilder();
        }

        @Override // io.bidmachine.protobuf.sdk.ConfigurationOrBuilder
        public StringValueOrBuilder getBpkOrBuilder() {
            SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.bpkBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (StringValueOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
            }
            StringValue stringValue = this.bpk_;
            return stringValue == null ? StringValue.getDefaultInstance() : stringValue;
        }

        private SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> getBpkFieldBuilder() {
            if (this.bpkBuilder_ == null) {
                this.bpkBuilder_ = new SingleFieldBuilderV3<>(getBpk(), getParentForChildren(), isClean());
                this.bpk_ = null;
            }
            return this.bpkBuilder_;
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
