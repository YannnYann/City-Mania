package io.bidmachine.protobuf.sdk;

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
import com.explorestack.protobuf.MessageLite;
import com.explorestack.protobuf.MessageOrBuilder;
import com.explorestack.protobuf.Parser;
import com.explorestack.protobuf.ProtocolStringList;
import com.explorestack.protobuf.RepeatedFieldBuilderV3;
import com.explorestack.protobuf.SingleFieldBuilderV3;
import com.explorestack.protobuf.StringValue;
import com.explorestack.protobuf.StringValueOrBuilder;
import com.explorestack.protobuf.Struct;
import com.explorestack.protobuf.StructOrBuilder;
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
public final class Monitor extends GeneratedMessageV3 implements MonitorOrBuilder {
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int RECORDS_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private volatile Object name_;
    private List<Record> records_;
    private static final Monitor DEFAULT_INSTANCE = new Monitor();
    private static final Parser<Monitor> PARSER = new AbstractParser<Monitor>() { // from class: io.bidmachine.protobuf.sdk.Monitor.1
        @Override // com.explorestack.protobuf.Parser
        public Monitor parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return new Monitor(codedInputStream, extensionRegistryLite);
        }
    };

    public interface AllOrBuilder extends MessageOrBuilder {
        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* JADX INFO: renamed from: getDefaultInstanceForType */
        /* synthetic */ MessageLite mo687getDefaultInstanceForType();

        FilterExpression getItems(int i);

        int getItemsCount();

        List<FilterExpression> getItemsList();

        FilterExpressionOrBuilder getItemsOrBuilder(int i);

        List<? extends FilterExpressionOrBuilder> getItemsOrBuilderList();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    public interface AnyOrBuilder extends MessageOrBuilder {
        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* JADX INFO: renamed from: getDefaultInstanceForType */
        /* synthetic */ MessageLite mo687getDefaultInstanceForType();

        FilterExpression getItems(int i);

        int getItemsCount();

        List<FilterExpression> getItemsList();

        FilterExpressionOrBuilder getItemsOrBuilder(int i);

        List<? extends FilterExpressionOrBuilder> getItemsOrBuilderList();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    public interface ConfigurationOrBuilder extends MessageOrBuilder {
        UInt32Value getBatchSize();

        UInt32ValueOrBuilder getBatchSizeOrBuilder();

        Configuration.ConfigExtensionCase getConfigExtensionCase();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* JADX INFO: renamed from: getDefaultInstanceForType */
        /* synthetic */ MessageLite mo687getDefaultInstanceForType();

        EventFilter getFilter();

        EventFilterOrBuilder getFilterOrBuilder();

        Configuration.GenericExtension getGenExtension();

        Configuration.GenericExtensionOrBuilder getGenExtensionOrBuilder();

        Configuration.ImpExtension getImpExtension();

        Configuration.ImpExtensionOrBuilder getImpExtensionOrBuilder();

        UInt32Value getInterval();

        UInt32ValueOrBuilder getIntervalOrBuilder();

        StringValue getName();

        StringValueOrBuilder getNameOrBuilder();

        BoolValue getShouldReport();

        BoolValueOrBuilder getShouldReportOrBuilder();

        StringValue getUrl();

        StringValueOrBuilder getUrlOrBuilder();

        boolean hasBatchSize();

        boolean hasFilter();

        boolean hasGenExtension();

        boolean hasImpExtension();

        boolean hasInterval();

        boolean hasName();

        boolean hasShouldReport();

        boolean hasUrl();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    public interface EventFilterOrBuilder extends MessageOrBuilder {
        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* JADX INFO: renamed from: getDefaultInstanceForType */
        /* synthetic */ MessageLite mo687getDefaultInstanceForType();

        FilterExpression getExpr();

        FilterExpressionOrBuilder getExprOrBuilder();

        boolean hasExpr();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    public interface FilterExpressionOrBuilder extends MessageOrBuilder {
        All getAll();

        AllOrBuilder getAllOrBuilder();

        Any getAny();

        AnyOrBuilder getAnyOrBuilder();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* JADX INFO: renamed from: getDefaultInstanceForType */
        /* synthetic */ MessageLite mo687getDefaultInstanceForType();

        FilterExpression.NodeCase getNodeCase();

        Rule getRule();

        RuleOrBuilder getRuleOrBuilder();

        boolean hasAll();

        boolean hasAny();

        boolean hasRule();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    public interface RecordOrBuilder extends MessageOrBuilder {
        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* JADX INFO: renamed from: getDefaultInstanceForType */
        /* synthetic */ MessageLite mo687getDefaultInstanceForType();

        Error getError();

        ErrorOrBuilder getErrorOrBuilder();

        Struct getFields();

        StructOrBuilder getFieldsOrBuilder();

        Timestamp getTimestamp();

        TimestampOrBuilder getTimestampOrBuilder();

        boolean hasError();

        boolean hasFields();

        boolean hasTimestamp();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    public interface RuleOrBuilder extends MessageOrBuilder {
        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* JADX INFO: renamed from: getDefaultInstanceForType */
        /* synthetic */ MessageLite mo687getDefaultInstanceForType();

        MissingBehavior getMissing();

        int getMissingValue();

        Operator getOp();

        int getOpValue();

        String getPath(int i);

        ByteString getPathBytes(int i);

        int getPathCount();

        List<String> getPathList();

        Value getValues(int i);

        int getValuesCount();

        List<Value> getValuesList();

        ValueOrBuilder getValuesOrBuilder(int i);

        List<? extends ValueOrBuilder> getValuesOrBuilderList();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    public interface ValueOrBuilder extends MessageOrBuilder {
        boolean getBoolValue();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* JADX INFO: renamed from: getDefaultInstanceForType */
        /* synthetic */ MessageLite mo687getDefaultInstanceForType();

        double getDoubleValue();

        long getIntValue();

        Value.KindCase getKindCase();

        String getStringValue();

        ByteString getStringValueBytes();

        boolean hasBoolValue();

        boolean hasDoubleValue();

        boolean hasIntValue();

        boolean hasStringValue();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    private Monitor(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    private Monitor() {
        this.memoizedIsInitialized = (byte) -1;
        this.name_ = "";
        this.records_ = Collections.EMPTY_LIST;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
        return new Monitor();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
    public final UnknownFieldSet getUnknownFields() {
        return this.unknownFields;
    }

    private Monitor(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        this();
        extensionRegistryLite.getClass();
        UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
        boolean z = false;
        boolean z2 = false;
        while (!z) {
            try {
                try {
                    int tag = codedInputStream.readTag();
                    if (tag != 0) {
                        if (tag == 10) {
                            this.name_ = codedInputStream.readStringRequireUtf8();
                        } else if (tag == 18) {
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
        return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_descriptor;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_fieldAccessorTable.ensureFieldAccessorsInitialized(Monitor.class, Builder.class);
    }

    public enum Operator implements Internal.EnumLite {
        OP_UNSPECIFIED(0),
        IN(1),
        NOT_IN(2),
        EQ(3),
        NEQ(4),
        EXISTS(5),
        NOT_EXISTS(6),
        GREATER_THAN(7),
        GREATER_THAN_OR_EQUAL(8),
        LESS_THAN(9),
        LESS_THAN_OR_EQUAL(10),
        UNRECOGNIZED(-1);

        public static final int EQ_VALUE = 3;
        public static final int EXISTS_VALUE = 5;
        public static final int GREATER_THAN_OR_EQUAL_VALUE = 8;
        public static final int GREATER_THAN_VALUE = 7;
        public static final int IN_VALUE = 1;
        public static final int LESS_THAN_OR_EQUAL_VALUE = 10;
        public static final int LESS_THAN_VALUE = 9;
        public static final int NEQ_VALUE = 4;
        public static final int NOT_EXISTS_VALUE = 6;
        public static final int NOT_IN_VALUE = 2;
        public static final int OP_UNSPECIFIED_VALUE = 0;
        private final int value;
        private static final Internal.EnumLiteMap<Operator> internalValueMap = new Internal.EnumLiteMap<Operator>() { // from class: io.bidmachine.protobuf.sdk.Monitor.Operator.1
            @Override // com.explorestack.protobuf.Internal.EnumLiteMap
            public Operator findValueByNumber(int i) {
                return Operator.forNumber(i);
            }
        };
        private static final Operator[] VALUES = values();

        @Override // com.explorestack.protobuf.Internal.EnumLite
        public final int getNumber() {
            if (this == UNRECOGNIZED) {
                throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
            }
            return this.value;
        }

        @Deprecated
        public static Operator valueOf(int i) {
            return forNumber(i);
        }

        public static Operator forNumber(int i) {
            switch (i) {
                case 0:
                    return OP_UNSPECIFIED;
                case 1:
                    return IN;
                case 2:
                    return NOT_IN;
                case 3:
                    return EQ;
                case 4:
                    return NEQ;
                case 5:
                    return EXISTS;
                case 6:
                    return NOT_EXISTS;
                case 7:
                    return GREATER_THAN;
                case 8:
                    return GREATER_THAN_OR_EQUAL;
                case 9:
                    return LESS_THAN;
                case 10:
                    return LESS_THAN_OR_EQUAL;
                default:
                    return null;
            }
        }

        public static Internal.EnumLiteMap<Operator> internalGetValueMap() {
            return internalValueMap;
        }

        public final Descriptors.EnumValueDescriptor getValueDescriptor() {
            if (this == UNRECOGNIZED) {
                throw new IllegalStateException("Can't get the descriptor of an unrecognized enum value.");
            }
            return getDescriptor().getValues().get(ordinal());
        }

        public final Descriptors.EnumDescriptor getDescriptorForType() {
            return getDescriptor();
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return Monitor.getDescriptor().getEnumTypes().get(0);
        }

        public static Operator valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() != getDescriptor()) {
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
            if (enumValueDescriptor.getIndex() == -1) {
                return UNRECOGNIZED;
            }
            return VALUES[enumValueDescriptor.getIndex()];
        }

        Operator(int i) {
            this.value = i;
        }
    }

    public enum MissingBehavior implements Internal.EnumLite {
        MISSING_UNSPECIFIED(0),
        FAIL(1),
        PASS(2),
        UNRECOGNIZED(-1);

        public static final int FAIL_VALUE = 1;
        public static final int MISSING_UNSPECIFIED_VALUE = 0;
        public static final int PASS_VALUE = 2;
        private final int value;
        private static final Internal.EnumLiteMap<MissingBehavior> internalValueMap = new Internal.EnumLiteMap<MissingBehavior>() { // from class: io.bidmachine.protobuf.sdk.Monitor.MissingBehavior.1
            @Override // com.explorestack.protobuf.Internal.EnumLiteMap
            public MissingBehavior findValueByNumber(int i) {
                return MissingBehavior.forNumber(i);
            }
        };
        private static final MissingBehavior[] VALUES = values();

        @Override // com.explorestack.protobuf.Internal.EnumLite
        public final int getNumber() {
            if (this == UNRECOGNIZED) {
                throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
            }
            return this.value;
        }

        @Deprecated
        public static MissingBehavior valueOf(int i) {
            return forNumber(i);
        }

        public static MissingBehavior forNumber(int i) {
            if (i == 0) {
                return MISSING_UNSPECIFIED;
            }
            if (i == 1) {
                return FAIL;
            }
            if (i != 2) {
                return null;
            }
            return PASS;
        }

        public static Internal.EnumLiteMap<MissingBehavior> internalGetValueMap() {
            return internalValueMap;
        }

        public final Descriptors.EnumValueDescriptor getValueDescriptor() {
            if (this == UNRECOGNIZED) {
                throw new IllegalStateException("Can't get the descriptor of an unrecognized enum value.");
            }
            return getDescriptor().getValues().get(ordinal());
        }

        public final Descriptors.EnumDescriptor getDescriptorForType() {
            return getDescriptor();
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return Monitor.getDescriptor().getEnumTypes().get(1);
        }

        public static MissingBehavior valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() != getDescriptor()) {
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
            if (enumValueDescriptor.getIndex() == -1) {
                return UNRECOGNIZED;
            }
            return VALUES[enumValueDescriptor.getIndex()];
        }

        MissingBehavior(int i) {
            this.value = i;
        }
    }

    public static final class Configuration extends GeneratedMessageV3 implements ConfigurationOrBuilder {
        public static final int BATCH_SIZE_FIELD_NUMBER = 3;
        public static final int FILTER_FIELD_NUMBER = 7;
        public static final int GEN_EXTENSION_FIELD_NUMBER = 8;
        public static final int IMP_EXTENSION_FIELD_NUMBER = 6;
        public static final int INTERVAL_FIELD_NUMBER = 4;
        public static final int NAME_FIELD_NUMBER = 1;
        public static final int SHOULD_REPORT_FIELD_NUMBER = 5;
        public static final int URL_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private UInt32Value batchSize_;
        private int configExtensionCase_;
        private Object configExtension_;
        private EventFilter filter_;
        private UInt32Value interval_;
        private byte memoizedIsInitialized;
        private StringValue name_;
        private BoolValue shouldReport_;
        private StringValue url_;
        private static final Configuration DEFAULT_INSTANCE = new Configuration();
        private static final Parser<Configuration> PARSER = new AbstractParser<Configuration>() { // from class: io.bidmachine.protobuf.sdk.Monitor.Configuration.1
            @Override // com.explorestack.protobuf.Parser
            public Configuration parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new Configuration(codedInputStream, extensionRegistryLite);
            }
        };

        public interface GenericExtensionOrBuilder extends MessageOrBuilder {
            StringValue getConfig();

            StringValueOrBuilder getConfigOrBuilder();

            @Override // com.explorestack.protobuf.MessageOrBuilder
            /* JADX INFO: renamed from: getDefaultInstanceForType */
            /* synthetic */ MessageLite mo687getDefaultInstanceForType();

            boolean hasConfig();

            @Override // com.explorestack.protobuf.MessageOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        public interface ImpExtensionOrBuilder extends MessageOrBuilder {
            @Override // com.explorestack.protobuf.MessageOrBuilder
            /* JADX INFO: renamed from: getDefaultInstanceForType */
            /* synthetic */ MessageLite mo687getDefaultInstanceForType();

            StringValue getIaaQuery();

            StringValueOrBuilder getIaaQueryOrBuilder();

            UInt32Value getTtlSeconds();

            UInt32ValueOrBuilder getTtlSecondsOrBuilder();

            boolean hasIaaQuery();

            boolean hasTtlSeconds();

            @Override // com.explorestack.protobuf.MessageOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        private Configuration(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.configExtensionCase_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private Configuration() {
            this.configExtensionCase_ = 0;
            this.memoizedIsInitialized = (byte) -1;
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
                                UInt32Value uInt32Value = this.batchSize_;
                                UInt32Value.Builder builder3 = uInt32Value != null ? uInt32Value.toBuilder() : null;
                                UInt32Value uInt32Value2 = (UInt32Value) codedInputStream.readMessage(UInt32Value.parser(), extensionRegistryLite);
                                this.batchSize_ = uInt32Value2;
                                if (builder3 != null) {
                                    builder3.mergeFrom(uInt32Value2);
                                    this.batchSize_ = builder3.buildPartial();
                                }
                            } else if (tag == 34) {
                                UInt32Value uInt32Value3 = this.interval_;
                                UInt32Value.Builder builder4 = uInt32Value3 != null ? uInt32Value3.toBuilder() : null;
                                UInt32Value uInt32Value4 = (UInt32Value) codedInputStream.readMessage(UInt32Value.parser(), extensionRegistryLite);
                                this.interval_ = uInt32Value4;
                                if (builder4 != null) {
                                    builder4.mergeFrom(uInt32Value4);
                                    this.interval_ = builder4.buildPartial();
                                }
                            } else if (tag == 42) {
                                BoolValue boolValue = this.shouldReport_;
                                BoolValue.Builder builder5 = boolValue != null ? boolValue.toBuilder() : null;
                                BoolValue boolValue2 = (BoolValue) codedInputStream.readMessage(BoolValue.parser(), extensionRegistryLite);
                                this.shouldReport_ = boolValue2;
                                if (builder5 != null) {
                                    builder5.mergeFrom(boolValue2);
                                    this.shouldReport_ = builder5.buildPartial();
                                }
                            } else if (tag == 50) {
                                ImpExtension.Builder builder6 = this.configExtensionCase_ == 6 ? ((ImpExtension) this.configExtension_).toBuilder() : null;
                                MessageLite message = codedInputStream.readMessage(ImpExtension.parser(), extensionRegistryLite);
                                this.configExtension_ = message;
                                if (builder6 != null) {
                                    builder6.mergeFrom((ImpExtension) message);
                                    this.configExtension_ = builder6.buildPartial();
                                }
                                this.configExtensionCase_ = 6;
                            } else if (tag == 58) {
                                EventFilter eventFilter = this.filter_;
                                EventFilter.Builder builder7 = eventFilter != null ? eventFilter.toBuilder() : null;
                                EventFilter eventFilter2 = (EventFilter) codedInputStream.readMessage(EventFilter.parser(), extensionRegistryLite);
                                this.filter_ = eventFilter2;
                                if (builder7 != null) {
                                    builder7.mergeFrom(eventFilter2);
                                    this.filter_ = builder7.buildPartial();
                                }
                            } else if (tag == 66) {
                                GenericExtension.Builder builder8 = this.configExtensionCase_ == 8 ? ((GenericExtension) this.configExtension_).toBuilder() : null;
                                MessageLite message2 = codedInputStream.readMessage(GenericExtension.parser(), extensionRegistryLite);
                                this.configExtension_ = message2;
                                if (builder8 != null) {
                                    builder8.mergeFrom((GenericExtension) message2);
                                    this.configExtension_ = builder8.buildPartial();
                                }
                                this.configExtensionCase_ = 8;
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
            return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_Configuration_descriptor;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_Configuration_fieldAccessorTable.ensureFieldAccessorsInitialized(Configuration.class, Builder.class);
        }

        public static final class ImpExtension extends GeneratedMessageV3 implements ImpExtensionOrBuilder {
            public static final int IAA_QUERY_FIELD_NUMBER = 1;
            public static final int TTL_SECONDS_FIELD_NUMBER = 2;
            private static final long serialVersionUID = 0;
            private StringValue iaaQuery_;
            private byte memoizedIsInitialized;
            private UInt32Value ttlSeconds_;
            private static final ImpExtension DEFAULT_INSTANCE = new ImpExtension();
            private static final Parser<ImpExtension> PARSER = new AbstractParser<ImpExtension>() { // from class: io.bidmachine.protobuf.sdk.Monitor.Configuration.ImpExtension.1
                @Override // com.explorestack.protobuf.Parser
                public ImpExtension parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return new ImpExtension(codedInputStream, extensionRegistryLite);
                }
            };

            private ImpExtension(GeneratedMessageV3.Builder<?> builder) {
                super(builder);
                this.memoizedIsInitialized = (byte) -1;
            }

            private ImpExtension() {
                this.memoizedIsInitialized = (byte) -1;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
                return new ImpExtension();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
            public final UnknownFieldSet getUnknownFields() {
                return this.unknownFields;
            }

            private ImpExtension(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                    StringValue stringValue = this.iaaQuery_;
                                    StringValue.Builder builder = stringValue != null ? stringValue.toBuilder() : null;
                                    StringValue stringValue2 = (StringValue) codedInputStream.readMessage(StringValue.parser(), extensionRegistryLite);
                                    this.iaaQuery_ = stringValue2;
                                    if (builder != null) {
                                        builder.mergeFrom(stringValue2);
                                        this.iaaQuery_ = builder.buildPartial();
                                    }
                                } else if (tag == 18) {
                                    UInt32Value uInt32Value = this.ttlSeconds_;
                                    UInt32Value.Builder builder2 = uInt32Value != null ? uInt32Value.toBuilder() : null;
                                    UInt32Value uInt32Value2 = (UInt32Value) codedInputStream.readMessage(UInt32Value.parser(), extensionRegistryLite);
                                    this.ttlSeconds_ = uInt32Value2;
                                    if (builder2 != null) {
                                        builder2.mergeFrom(uInt32Value2);
                                        this.ttlSeconds_ = builder2.buildPartial();
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
                return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_Configuration_ImpExtension_descriptor;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_Configuration_ImpExtension_fieldAccessorTable.ensureFieldAccessorsInitialized(ImpExtension.class, Builder.class);
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.Configuration.ImpExtensionOrBuilder
            public boolean hasIaaQuery() {
                return this.iaaQuery_ != null;
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.Configuration.ImpExtensionOrBuilder
            public StringValue getIaaQuery() {
                StringValue stringValue = this.iaaQuery_;
                return stringValue == null ? StringValue.getDefaultInstance() : stringValue;
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.Configuration.ImpExtensionOrBuilder
            public StringValueOrBuilder getIaaQueryOrBuilder() {
                return getIaaQuery();
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.Configuration.ImpExtensionOrBuilder
            public boolean hasTtlSeconds() {
                return this.ttlSeconds_ != null;
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.Configuration.ImpExtensionOrBuilder
            public UInt32Value getTtlSeconds() {
                UInt32Value uInt32Value = this.ttlSeconds_;
                return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.Configuration.ImpExtensionOrBuilder
            public UInt32ValueOrBuilder getTtlSecondsOrBuilder() {
                return getTtlSeconds();
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
                if (this.iaaQuery_ != null) {
                    codedOutputStream.writeMessage(1, getIaaQuery());
                }
                if (this.ttlSeconds_ != null) {
                    codedOutputStream.writeMessage(2, getTtlSeconds());
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public int getSerializedSize() {
                int i = this.memoizedSize;
                if (i != -1) {
                    return i;
                }
                int iComputeMessageSize = this.iaaQuery_ != null ? CodedOutputStream.computeMessageSize(1, getIaaQuery()) : 0;
                if (this.ttlSeconds_ != null) {
                    iComputeMessageSize += CodedOutputStream.computeMessageSize(2, getTtlSeconds());
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
                if (!(obj instanceof ImpExtension)) {
                    return super.equals(obj);
                }
                ImpExtension impExtension = (ImpExtension) obj;
                if (hasIaaQuery() != impExtension.hasIaaQuery()) {
                    return false;
                }
                if ((!hasIaaQuery() || getIaaQuery().equals(impExtension.getIaaQuery())) && hasTtlSeconds() == impExtension.hasTtlSeconds()) {
                    return (!hasTtlSeconds() || getTtlSeconds().equals(impExtension.getTtlSeconds())) && this.unknownFields.equals(impExtension.unknownFields);
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
                if (hasIaaQuery()) {
                    iHashCode = (((iHashCode * 37) + 1) * 53) + getIaaQuery().hashCode();
                }
                if (hasTtlSeconds()) {
                    iHashCode = (((iHashCode * 37) + 2) * 53) + getTtlSeconds().hashCode();
                }
                int iHashCode2 = (iHashCode * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = iHashCode2;
                return iHashCode2;
            }

            public static ImpExtension parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static ImpExtension parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
            }

            public static ImpExtension parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            public static ImpExtension parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, extensionRegistryLite);
            }

            public static ImpExtension parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            public static ImpExtension parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, extensionRegistryLite);
            }

            public static ImpExtension parseFrom(InputStream inputStream) throws IOException {
                return (ImpExtension) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            public static ImpExtension parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (ImpExtension) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static ImpExtension parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (ImpExtension) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static ImpExtension parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (ImpExtension) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static ImpExtension parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (ImpExtension) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
            }

            public static ImpExtension parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (ImpExtension) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Builder newBuilder(ImpExtension impExtension) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(impExtension);
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
                return new Builder(builderParent);
            }

            public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements ImpExtensionOrBuilder {
                private SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> iaaQueryBuilder_;
                private StringValue iaaQuery_;
                private SingleFieldBuilderV3<UInt32Value, UInt32Value.Builder, UInt32ValueOrBuilder> ttlSecondsBuilder_;
                private UInt32Value ttlSeconds_;

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_Configuration_ImpExtension_descriptor;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
                public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                    return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_Configuration_ImpExtension_fieldAccessorTable.ensureFieldAccessorsInitialized(ImpExtension.class, Builder.class);
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
                    if (this.iaaQueryBuilder_ == null) {
                        this.iaaQuery_ = null;
                    } else {
                        this.iaaQuery_ = null;
                        this.iaaQueryBuilder_ = null;
                    }
                    if (this.ttlSecondsBuilder_ == null) {
                        this.ttlSeconds_ = null;
                        return this;
                    }
                    this.ttlSeconds_ = null;
                    this.ttlSecondsBuilder_ = null;
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_Configuration_ImpExtension_descriptor;
                }

                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                /* JADX INFO: renamed from: getDefaultInstanceForType */
                public ImpExtension mo687getDefaultInstanceForType() {
                    return ImpExtension.getDefaultInstance();
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public ImpExtension build() {
                    ImpExtension impExtensionBuildPartial = buildPartial();
                    if (impExtensionBuildPartial.isInitialized()) {
                        return impExtensionBuildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) impExtensionBuildPartial);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public ImpExtension buildPartial() {
                    ImpExtension impExtension = new ImpExtension(this);
                    SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.iaaQueryBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        impExtension.iaaQuery_ = this.iaaQuery_;
                    } else {
                        impExtension.iaaQuery_ = (StringValue) singleFieldBuilderV3.build();
                    }
                    SingleFieldBuilderV3<UInt32Value, UInt32Value.Builder, UInt32ValueOrBuilder> singleFieldBuilderV32 = this.ttlSecondsBuilder_;
                    if (singleFieldBuilderV32 == null) {
                        impExtension.ttlSeconds_ = this.ttlSeconds_;
                    } else {
                        impExtension.ttlSeconds_ = (UInt32Value) singleFieldBuilderV32.build();
                    }
                    onBuilt();
                    return impExtension;
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
                    if (message instanceof ImpExtension) {
                        return mergeFrom((ImpExtension) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public Builder mergeFrom(ImpExtension impExtension) {
                    if (impExtension == ImpExtension.getDefaultInstance()) {
                        return this;
                    }
                    if (impExtension.hasIaaQuery()) {
                        mergeIaaQuery(impExtension.getIaaQuery());
                    }
                    if (impExtension.hasTtlSeconds()) {
                        mergeTtlSeconds(impExtension.getTtlSeconds());
                    }
                    mergeUnknownFields(((GeneratedMessageV3) impExtension).unknownFields);
                    onChanged();
                    return this;
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public io.bidmachine.protobuf.sdk.Monitor.Configuration.ImpExtension.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r3, com.explorestack.protobuf.ExtensionRegistryLite r4) throws java.lang.Throwable {
                    /*
                        r2 = this;
                        r0 = 0
                        com.explorestack.protobuf.Parser r1 = io.bidmachine.protobuf.sdk.Monitor.Configuration.ImpExtension.access$700()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                        io.bidmachine.protobuf.sdk.Monitor$Configuration$ImpExtension r3 = (io.bidmachine.protobuf.sdk.Monitor.Configuration.ImpExtension) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                        io.bidmachine.protobuf.sdk.Monitor$Configuration$ImpExtension r4 = (io.bidmachine.protobuf.sdk.Monitor.Configuration.ImpExtension) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.sdk.Monitor.Configuration.ImpExtension.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):io.bidmachine.protobuf.sdk.Monitor$Configuration$ImpExtension$Builder");
                }

                @Override // io.bidmachine.protobuf.sdk.Monitor.Configuration.ImpExtensionOrBuilder
                public boolean hasIaaQuery() {
                    return (this.iaaQueryBuilder_ == null && this.iaaQuery_ == null) ? false : true;
                }

                @Override // io.bidmachine.protobuf.sdk.Monitor.Configuration.ImpExtensionOrBuilder
                public StringValue getIaaQuery() {
                    SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.iaaQueryBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        StringValue stringValue = this.iaaQuery_;
                        return stringValue == null ? StringValue.getDefaultInstance() : stringValue;
                    }
                    return (StringValue) singleFieldBuilderV3.getMessage();
                }

                public Builder setIaaQuery(StringValue stringValue) {
                    SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.iaaQueryBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        stringValue.getClass();
                        this.iaaQuery_ = stringValue;
                        onChanged();
                        return this;
                    }
                    singleFieldBuilderV3.setMessage(stringValue);
                    return this;
                }

                public Builder setIaaQuery(StringValue.Builder builder) {
                    SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.iaaQueryBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        this.iaaQuery_ = builder.build();
                        onChanged();
                        return this;
                    }
                    singleFieldBuilderV3.setMessage(builder.build());
                    return this;
                }

                public Builder mergeIaaQuery(StringValue stringValue) {
                    SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.iaaQueryBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        StringValue stringValue2 = this.iaaQuery_;
                        if (stringValue2 != null) {
                            this.iaaQuery_ = StringValue.newBuilder(stringValue2).mergeFrom(stringValue).buildPartial();
                        } else {
                            this.iaaQuery_ = stringValue;
                        }
                        onChanged();
                        return this;
                    }
                    singleFieldBuilderV3.mergeFrom(stringValue);
                    return this;
                }

                public Builder clearIaaQuery() {
                    if (this.iaaQueryBuilder_ == null) {
                        this.iaaQuery_ = null;
                        onChanged();
                        return this;
                    }
                    this.iaaQuery_ = null;
                    this.iaaQueryBuilder_ = null;
                    return this;
                }

                public StringValue.Builder getIaaQueryBuilder() {
                    onChanged();
                    return (StringValue.Builder) getIaaQueryFieldBuilder().getBuilder();
                }

                @Override // io.bidmachine.protobuf.sdk.Monitor.Configuration.ImpExtensionOrBuilder
                public StringValueOrBuilder getIaaQueryOrBuilder() {
                    SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.iaaQueryBuilder_;
                    if (singleFieldBuilderV3 != null) {
                        return (StringValueOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
                    }
                    StringValue stringValue = this.iaaQuery_;
                    return stringValue == null ? StringValue.getDefaultInstance() : stringValue;
                }

                private SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> getIaaQueryFieldBuilder() {
                    if (this.iaaQueryBuilder_ == null) {
                        this.iaaQueryBuilder_ = new SingleFieldBuilderV3<>(getIaaQuery(), getParentForChildren(), isClean());
                        this.iaaQuery_ = null;
                    }
                    return this.iaaQueryBuilder_;
                }

                @Override // io.bidmachine.protobuf.sdk.Monitor.Configuration.ImpExtensionOrBuilder
                public boolean hasTtlSeconds() {
                    return (this.ttlSecondsBuilder_ == null && this.ttlSeconds_ == null) ? false : true;
                }

                @Override // io.bidmachine.protobuf.sdk.Monitor.Configuration.ImpExtensionOrBuilder
                public UInt32Value getTtlSeconds() {
                    SingleFieldBuilderV3<UInt32Value, UInt32Value.Builder, UInt32ValueOrBuilder> singleFieldBuilderV3 = this.ttlSecondsBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        UInt32Value uInt32Value = this.ttlSeconds_;
                        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
                    }
                    return (UInt32Value) singleFieldBuilderV3.getMessage();
                }

                public Builder setTtlSeconds(UInt32Value uInt32Value) {
                    SingleFieldBuilderV3<UInt32Value, UInt32Value.Builder, UInt32ValueOrBuilder> singleFieldBuilderV3 = this.ttlSecondsBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        uInt32Value.getClass();
                        this.ttlSeconds_ = uInt32Value;
                        onChanged();
                        return this;
                    }
                    singleFieldBuilderV3.setMessage(uInt32Value);
                    return this;
                }

                public Builder setTtlSeconds(UInt32Value.Builder builder) {
                    SingleFieldBuilderV3<UInt32Value, UInt32Value.Builder, UInt32ValueOrBuilder> singleFieldBuilderV3 = this.ttlSecondsBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        this.ttlSeconds_ = builder.build();
                        onChanged();
                        return this;
                    }
                    singleFieldBuilderV3.setMessage(builder.build());
                    return this;
                }

                public Builder mergeTtlSeconds(UInt32Value uInt32Value) {
                    SingleFieldBuilderV3<UInt32Value, UInt32Value.Builder, UInt32ValueOrBuilder> singleFieldBuilderV3 = this.ttlSecondsBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        UInt32Value uInt32Value2 = this.ttlSeconds_;
                        if (uInt32Value2 != null) {
                            this.ttlSeconds_ = UInt32Value.newBuilder(uInt32Value2).mergeFrom(uInt32Value).buildPartial();
                        } else {
                            this.ttlSeconds_ = uInt32Value;
                        }
                        onChanged();
                        return this;
                    }
                    singleFieldBuilderV3.mergeFrom(uInt32Value);
                    return this;
                }

                public Builder clearTtlSeconds() {
                    if (this.ttlSecondsBuilder_ == null) {
                        this.ttlSeconds_ = null;
                        onChanged();
                        return this;
                    }
                    this.ttlSeconds_ = null;
                    this.ttlSecondsBuilder_ = null;
                    return this;
                }

                public UInt32Value.Builder getTtlSecondsBuilder() {
                    onChanged();
                    return (UInt32Value.Builder) getTtlSecondsFieldBuilder().getBuilder();
                }

                @Override // io.bidmachine.protobuf.sdk.Monitor.Configuration.ImpExtensionOrBuilder
                public UInt32ValueOrBuilder getTtlSecondsOrBuilder() {
                    SingleFieldBuilderV3<UInt32Value, UInt32Value.Builder, UInt32ValueOrBuilder> singleFieldBuilderV3 = this.ttlSecondsBuilder_;
                    if (singleFieldBuilderV3 != null) {
                        return (UInt32ValueOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
                    }
                    UInt32Value uInt32Value = this.ttlSeconds_;
                    return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
                }

                private SingleFieldBuilderV3<UInt32Value, UInt32Value.Builder, UInt32ValueOrBuilder> getTtlSecondsFieldBuilder() {
                    if (this.ttlSecondsBuilder_ == null) {
                        this.ttlSecondsBuilder_ = new SingleFieldBuilderV3<>(getTtlSeconds(), getParentForChildren(), isClean());
                        this.ttlSeconds_ = null;
                    }
                    return this.ttlSecondsBuilder_;
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

            public static ImpExtension getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<ImpExtension> parser() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public Parser<ImpExtension> getParserForType() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
            /* JADX INFO: renamed from: getDefaultInstanceForType */
            public ImpExtension mo687getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }
        }

        public static final class GenericExtension extends GeneratedMessageV3 implements GenericExtensionOrBuilder {
            public static final int CONFIG_FIELD_NUMBER = 1;
            private static final GenericExtension DEFAULT_INSTANCE = new GenericExtension();
            private static final Parser<GenericExtension> PARSER = new AbstractParser<GenericExtension>() { // from class: io.bidmachine.protobuf.sdk.Monitor.Configuration.GenericExtension.1
                @Override // com.explorestack.protobuf.Parser
                public GenericExtension parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return new GenericExtension(codedInputStream, extensionRegistryLite);
                }
            };
            private static final long serialVersionUID = 0;
            private StringValue config_;
            private byte memoizedIsInitialized;

            private GenericExtension(GeneratedMessageV3.Builder<?> builder) {
                super(builder);
                this.memoizedIsInitialized = (byte) -1;
            }

            private GenericExtension() {
                this.memoizedIsInitialized = (byte) -1;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
                return new GenericExtension();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
            public final UnknownFieldSet getUnknownFields() {
                return this.unknownFields;
            }

            private GenericExtension(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                        StringValue stringValue = this.config_;
                                        StringValue.Builder builder = stringValue != null ? stringValue.toBuilder() : null;
                                        StringValue stringValue2 = (StringValue) codedInputStream.readMessage(StringValue.parser(), extensionRegistryLite);
                                        this.config_ = stringValue2;
                                        if (builder != null) {
                                            builder.mergeFrom(stringValue2);
                                            this.config_ = builder.buildPartial();
                                        }
                                    } else if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                                    }
                                }
                                z = true;
                            } catch (IOException e) {
                                throw new InvalidProtocolBufferException(e).setUnfinishedMessage(this);
                            }
                        } catch (InvalidProtocolBufferException e2) {
                            throw e2.setUnfinishedMessage(this);
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
                return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_Configuration_GenericExtension_descriptor;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_Configuration_GenericExtension_fieldAccessorTable.ensureFieldAccessorsInitialized(GenericExtension.class, Builder.class);
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.Configuration.GenericExtensionOrBuilder
            public boolean hasConfig() {
                return this.config_ != null;
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.Configuration.GenericExtensionOrBuilder
            public StringValue getConfig() {
                StringValue stringValue = this.config_;
                return stringValue == null ? StringValue.getDefaultInstance() : stringValue;
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.Configuration.GenericExtensionOrBuilder
            public StringValueOrBuilder getConfigOrBuilder() {
                return getConfig();
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
                if (this.config_ != null) {
                    codedOutputStream.writeMessage(1, getConfig());
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public int getSerializedSize() {
                int i = this.memoizedSize;
                if (i != -1) {
                    return i;
                }
                int iComputeMessageSize = (this.config_ != null ? CodedOutputStream.computeMessageSize(1, getConfig()) : 0) + this.unknownFields.getSerializedSize();
                this.memoizedSize = iComputeMessageSize;
                return iComputeMessageSize;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof GenericExtension)) {
                    return super.equals(obj);
                }
                GenericExtension genericExtension = (GenericExtension) obj;
                if (hasConfig() != genericExtension.hasConfig()) {
                    return false;
                }
                return (!hasConfig() || getConfig().equals(genericExtension.getConfig())) && this.unknownFields.equals(genericExtension.unknownFields);
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public int hashCode() {
                int i = this.memoizedHashCode;
                if (i != 0) {
                    return i;
                }
                int iHashCode = 779 + getDescriptor().hashCode();
                if (hasConfig()) {
                    iHashCode = (((iHashCode * 37) + 1) * 53) + getConfig().hashCode();
                }
                int iHashCode2 = (iHashCode * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = iHashCode2;
                return iHashCode2;
            }

            public static GenericExtension parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static GenericExtension parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
            }

            public static GenericExtension parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            public static GenericExtension parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, extensionRegistryLite);
            }

            public static GenericExtension parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            public static GenericExtension parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, extensionRegistryLite);
            }

            public static GenericExtension parseFrom(InputStream inputStream) throws IOException {
                return (GenericExtension) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            public static GenericExtension parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (GenericExtension) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static GenericExtension parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (GenericExtension) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static GenericExtension parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (GenericExtension) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static GenericExtension parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (GenericExtension) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
            }

            public static GenericExtension parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (GenericExtension) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Builder newBuilder(GenericExtension genericExtension) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(genericExtension);
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
                return new Builder(builderParent);
            }

            public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements GenericExtensionOrBuilder {
                private SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> configBuilder_;
                private StringValue config_;

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_Configuration_GenericExtension_descriptor;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
                public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                    return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_Configuration_GenericExtension_fieldAccessorTable.ensureFieldAccessorsInitialized(GenericExtension.class, Builder.class);
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
                    if (this.configBuilder_ == null) {
                        this.config_ = null;
                        return this;
                    }
                    this.config_ = null;
                    this.configBuilder_ = null;
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_Configuration_GenericExtension_descriptor;
                }

                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                /* JADX INFO: renamed from: getDefaultInstanceForType */
                public GenericExtension mo687getDefaultInstanceForType() {
                    return GenericExtension.getDefaultInstance();
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public GenericExtension build() {
                    GenericExtension genericExtensionBuildPartial = buildPartial();
                    if (genericExtensionBuildPartial.isInitialized()) {
                        return genericExtensionBuildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) genericExtensionBuildPartial);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public GenericExtension buildPartial() {
                    GenericExtension genericExtension = new GenericExtension(this);
                    SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.configBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        genericExtension.config_ = this.config_;
                    } else {
                        genericExtension.config_ = (StringValue) singleFieldBuilderV3.build();
                    }
                    onBuilt();
                    return genericExtension;
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
                    if (message instanceof GenericExtension) {
                        return mergeFrom((GenericExtension) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public Builder mergeFrom(GenericExtension genericExtension) {
                    if (genericExtension == GenericExtension.getDefaultInstance()) {
                        return this;
                    }
                    if (genericExtension.hasConfig()) {
                        mergeConfig(genericExtension.getConfig());
                    }
                    mergeUnknownFields(((GeneratedMessageV3) genericExtension).unknownFields);
                    onChanged();
                    return this;
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public io.bidmachine.protobuf.sdk.Monitor.Configuration.GenericExtension.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r3, com.explorestack.protobuf.ExtensionRegistryLite r4) throws java.lang.Throwable {
                    /*
                        r2 = this;
                        r0 = 0
                        com.explorestack.protobuf.Parser r1 = io.bidmachine.protobuf.sdk.Monitor.Configuration.GenericExtension.access$1500()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                        io.bidmachine.protobuf.sdk.Monitor$Configuration$GenericExtension r3 = (io.bidmachine.protobuf.sdk.Monitor.Configuration.GenericExtension) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                        io.bidmachine.protobuf.sdk.Monitor$Configuration$GenericExtension r4 = (io.bidmachine.protobuf.sdk.Monitor.Configuration.GenericExtension) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.sdk.Monitor.Configuration.GenericExtension.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):io.bidmachine.protobuf.sdk.Monitor$Configuration$GenericExtension$Builder");
                }

                @Override // io.bidmachine.protobuf.sdk.Monitor.Configuration.GenericExtensionOrBuilder
                public boolean hasConfig() {
                    return (this.configBuilder_ == null && this.config_ == null) ? false : true;
                }

                @Override // io.bidmachine.protobuf.sdk.Monitor.Configuration.GenericExtensionOrBuilder
                public StringValue getConfig() {
                    SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.configBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        StringValue stringValue = this.config_;
                        return stringValue == null ? StringValue.getDefaultInstance() : stringValue;
                    }
                    return (StringValue) singleFieldBuilderV3.getMessage();
                }

                public Builder setConfig(StringValue stringValue) {
                    SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.configBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        stringValue.getClass();
                        this.config_ = stringValue;
                        onChanged();
                        return this;
                    }
                    singleFieldBuilderV3.setMessage(stringValue);
                    return this;
                }

                public Builder setConfig(StringValue.Builder builder) {
                    SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.configBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        this.config_ = builder.build();
                        onChanged();
                        return this;
                    }
                    singleFieldBuilderV3.setMessage(builder.build());
                    return this;
                }

                public Builder mergeConfig(StringValue stringValue) {
                    SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.configBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        StringValue stringValue2 = this.config_;
                        if (stringValue2 != null) {
                            this.config_ = StringValue.newBuilder(stringValue2).mergeFrom(stringValue).buildPartial();
                        } else {
                            this.config_ = stringValue;
                        }
                        onChanged();
                        return this;
                    }
                    singleFieldBuilderV3.mergeFrom(stringValue);
                    return this;
                }

                public Builder clearConfig() {
                    if (this.configBuilder_ == null) {
                        this.config_ = null;
                        onChanged();
                        return this;
                    }
                    this.config_ = null;
                    this.configBuilder_ = null;
                    return this;
                }

                public StringValue.Builder getConfigBuilder() {
                    onChanged();
                    return (StringValue.Builder) getConfigFieldBuilder().getBuilder();
                }

                @Override // io.bidmachine.protobuf.sdk.Monitor.Configuration.GenericExtensionOrBuilder
                public StringValueOrBuilder getConfigOrBuilder() {
                    SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> singleFieldBuilderV3 = this.configBuilder_;
                    if (singleFieldBuilderV3 != null) {
                        return (StringValueOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
                    }
                    StringValue stringValue = this.config_;
                    return stringValue == null ? StringValue.getDefaultInstance() : stringValue;
                }

                private SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> getConfigFieldBuilder() {
                    if (this.configBuilder_ == null) {
                        this.configBuilder_ = new SingleFieldBuilderV3<>(getConfig(), getParentForChildren(), isClean());
                        this.config_ = null;
                    }
                    return this.configBuilder_;
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

            public static GenericExtension getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<GenericExtension> parser() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public Parser<GenericExtension> getParserForType() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
            /* JADX INFO: renamed from: getDefaultInstanceForType */
            public GenericExtension mo687getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }
        }

        public enum ConfigExtensionCase implements Internal.EnumLite {
            IMP_EXTENSION(6),
            GEN_EXTENSION(8),
            CONFIGEXTENSION_NOT_SET(0);

            private final int value;

            ConfigExtensionCase(int i) {
                this.value = i;
            }

            @Deprecated
            public static ConfigExtensionCase valueOf(int i) {
                return forNumber(i);
            }

            public static ConfigExtensionCase forNumber(int i) {
                if (i == 0) {
                    return CONFIGEXTENSION_NOT_SET;
                }
                if (i == 6) {
                    return IMP_EXTENSION;
                }
                if (i != 8) {
                    return null;
                }
                return GEN_EXTENSION;
            }

            @Override // com.explorestack.protobuf.Internal.EnumLite
            public int getNumber() {
                return this.value;
            }
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
        public ConfigExtensionCase getConfigExtensionCase() {
            return ConfigExtensionCase.forNumber(this.configExtensionCase_);
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
        public boolean hasName() {
            return this.name_ != null;
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
        public StringValue getName() {
            StringValue stringValue = this.name_;
            return stringValue == null ? StringValue.getDefaultInstance() : stringValue;
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
        public StringValueOrBuilder getNameOrBuilder() {
            return getName();
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
        public boolean hasUrl() {
            return this.url_ != null;
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
        public StringValue getUrl() {
            StringValue stringValue = this.url_;
            return stringValue == null ? StringValue.getDefaultInstance() : stringValue;
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
        public StringValueOrBuilder getUrlOrBuilder() {
            return getUrl();
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
        public boolean hasBatchSize() {
            return this.batchSize_ != null;
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
        public UInt32Value getBatchSize() {
            UInt32Value uInt32Value = this.batchSize_;
            return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
        public UInt32ValueOrBuilder getBatchSizeOrBuilder() {
            return getBatchSize();
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
        public boolean hasInterval() {
            return this.interval_ != null;
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
        public UInt32Value getInterval() {
            UInt32Value uInt32Value = this.interval_;
            return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
        public UInt32ValueOrBuilder getIntervalOrBuilder() {
            return getInterval();
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
        public boolean hasShouldReport() {
            return this.shouldReport_ != null;
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
        public BoolValue getShouldReport() {
            BoolValue boolValue = this.shouldReport_;
            return boolValue == null ? BoolValue.getDefaultInstance() : boolValue;
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
        public BoolValueOrBuilder getShouldReportOrBuilder() {
            return getShouldReport();
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
        public boolean hasImpExtension() {
            return this.configExtensionCase_ == 6;
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
        public ImpExtension getImpExtension() {
            if (this.configExtensionCase_ == 6) {
                return (ImpExtension) this.configExtension_;
            }
            return ImpExtension.getDefaultInstance();
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
        public ImpExtensionOrBuilder getImpExtensionOrBuilder() {
            if (this.configExtensionCase_ == 6) {
                return (ImpExtension) this.configExtension_;
            }
            return ImpExtension.getDefaultInstance();
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
        public boolean hasGenExtension() {
            return this.configExtensionCase_ == 8;
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
        public GenericExtension getGenExtension() {
            if (this.configExtensionCase_ == 8) {
                return (GenericExtension) this.configExtension_;
            }
            return GenericExtension.getDefaultInstance();
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
        public GenericExtensionOrBuilder getGenExtensionOrBuilder() {
            if (this.configExtensionCase_ == 8) {
                return (GenericExtension) this.configExtension_;
            }
            return GenericExtension.getDefaultInstance();
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
        public boolean hasFilter() {
            return this.filter_ != null;
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
        public EventFilter getFilter() {
            EventFilter eventFilter = this.filter_;
            return eventFilter == null ? EventFilter.getDefaultInstance() : eventFilter;
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
        public EventFilterOrBuilder getFilterOrBuilder() {
            return getFilter();
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
            if (this.batchSize_ != null) {
                codedOutputStream.writeMessage(3, getBatchSize());
            }
            if (this.interval_ != null) {
                codedOutputStream.writeMessage(4, getInterval());
            }
            if (this.shouldReport_ != null) {
                codedOutputStream.writeMessage(5, getShouldReport());
            }
            if (this.configExtensionCase_ == 6) {
                codedOutputStream.writeMessage(6, (ImpExtension) this.configExtension_);
            }
            if (this.filter_ != null) {
                codedOutputStream.writeMessage(7, getFilter());
            }
            if (this.configExtensionCase_ == 8) {
                codedOutputStream.writeMessage(8, (GenericExtension) this.configExtension_);
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
            if (this.batchSize_ != null) {
                iComputeMessageSize += CodedOutputStream.computeMessageSize(3, getBatchSize());
            }
            if (this.interval_ != null) {
                iComputeMessageSize += CodedOutputStream.computeMessageSize(4, getInterval());
            }
            if (this.shouldReport_ != null) {
                iComputeMessageSize += CodedOutputStream.computeMessageSize(5, getShouldReport());
            }
            if (this.configExtensionCase_ == 6) {
                iComputeMessageSize += CodedOutputStream.computeMessageSize(6, (ImpExtension) this.configExtension_);
            }
            if (this.filter_ != null) {
                iComputeMessageSize += CodedOutputStream.computeMessageSize(7, getFilter());
            }
            if (this.configExtensionCase_ == 8) {
                iComputeMessageSize += CodedOutputStream.computeMessageSize(8, (GenericExtension) this.configExtension_);
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
            if ((hasUrl() && !getUrl().equals(configuration.getUrl())) || hasBatchSize() != configuration.hasBatchSize()) {
                return false;
            }
            if ((hasBatchSize() && !getBatchSize().equals(configuration.getBatchSize())) || hasInterval() != configuration.hasInterval()) {
                return false;
            }
            if ((hasInterval() && !getInterval().equals(configuration.getInterval())) || hasShouldReport() != configuration.hasShouldReport()) {
                return false;
            }
            if ((hasShouldReport() && !getShouldReport().equals(configuration.getShouldReport())) || hasFilter() != configuration.hasFilter()) {
                return false;
            }
            if ((hasFilter() && !getFilter().equals(configuration.getFilter())) || !getConfigExtensionCase().equals(configuration.getConfigExtensionCase())) {
                return false;
            }
            int i = this.configExtensionCase_;
            if (i == 6) {
                if (!getImpExtension().equals(configuration.getImpExtension())) {
                    return false;
                }
            } else if (i == 8 && !getGenExtension().equals(configuration.getGenExtension())) {
                return false;
            }
            return this.unknownFields.equals(configuration.unknownFields);
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
            if (hasName()) {
                iHashCode2 = (((iHashCode2 * 37) + 1) * 53) + getName().hashCode();
            }
            if (hasUrl()) {
                iHashCode2 = (((iHashCode2 * 37) + 2) * 53) + getUrl().hashCode();
            }
            if (hasBatchSize()) {
                iHashCode2 = (((iHashCode2 * 37) + 3) * 53) + getBatchSize().hashCode();
            }
            if (hasInterval()) {
                iHashCode2 = (((iHashCode2 * 37) + 4) * 53) + getInterval().hashCode();
            }
            if (hasShouldReport()) {
                iHashCode2 = (((iHashCode2 * 37) + 5) * 53) + getShouldReport().hashCode();
            }
            if (hasFilter()) {
                iHashCode2 = (((iHashCode2 * 37) + 7) * 53) + getFilter().hashCode();
            }
            int i3 = this.configExtensionCase_;
            if (i3 == 6) {
                i = ((iHashCode2 * 37) + 6) * 53;
                iHashCode = getImpExtension().hashCode();
            } else {
                if (i3 == 8) {
                    i = ((iHashCode2 * 37) + 8) * 53;
                    iHashCode = getGenExtension().hashCode();
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
            private SingleFieldBuilderV3<UInt32Value, UInt32Value.Builder, UInt32ValueOrBuilder> batchSizeBuilder_;
            private UInt32Value batchSize_;
            private int configExtensionCase_;
            private Object configExtension_;
            private SingleFieldBuilderV3<EventFilter, EventFilter.Builder, EventFilterOrBuilder> filterBuilder_;
            private EventFilter filter_;
            private SingleFieldBuilderV3<GenericExtension, GenericExtension.Builder, GenericExtensionOrBuilder> genExtensionBuilder_;
            private SingleFieldBuilderV3<ImpExtension, ImpExtension.Builder, ImpExtensionOrBuilder> impExtensionBuilder_;
            private SingleFieldBuilderV3<UInt32Value, UInt32Value.Builder, UInt32ValueOrBuilder> intervalBuilder_;
            private UInt32Value interval_;
            private SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> nameBuilder_;
            private StringValue name_;
            private SingleFieldBuilderV3<BoolValue, BoolValue.Builder, BoolValueOrBuilder> shouldReportBuilder_;
            private BoolValue shouldReport_;
            private SingleFieldBuilderV3<StringValue, StringValue.Builder, StringValueOrBuilder> urlBuilder_;
            private StringValue url_;

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_Configuration_descriptor;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_Configuration_fieldAccessorTable.ensureFieldAccessorsInitialized(Configuration.class, Builder.class);
            }

            private Builder() {
                this.configExtensionCase_ = 0;
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.configExtensionCase_ = 0;
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
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
                if (this.batchSizeBuilder_ == null) {
                    this.batchSize_ = null;
                } else {
                    this.batchSize_ = null;
                    this.batchSizeBuilder_ = null;
                }
                if (this.intervalBuilder_ == null) {
                    this.interval_ = null;
                } else {
                    this.interval_ = null;
                    this.intervalBuilder_ = null;
                }
                if (this.shouldReportBuilder_ == null) {
                    this.shouldReport_ = null;
                } else {
                    this.shouldReport_ = null;
                    this.shouldReportBuilder_ = null;
                }
                if (this.filterBuilder_ == null) {
                    this.filter_ = null;
                } else {
                    this.filter_ = null;
                    this.filterBuilder_ = null;
                }
                this.configExtensionCase_ = 0;
                this.configExtension_ = null;
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_Configuration_descriptor;
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
                SingleFieldBuilderV3<UInt32Value, UInt32Value.Builder, UInt32ValueOrBuilder> singleFieldBuilderV33 = this.batchSizeBuilder_;
                if (singleFieldBuilderV33 == null) {
                    configuration.batchSize_ = this.batchSize_;
                } else {
                    configuration.batchSize_ = (UInt32Value) singleFieldBuilderV33.build();
                }
                SingleFieldBuilderV3<UInt32Value, UInt32Value.Builder, UInt32ValueOrBuilder> singleFieldBuilderV34 = this.intervalBuilder_;
                if (singleFieldBuilderV34 == null) {
                    configuration.interval_ = this.interval_;
                } else {
                    configuration.interval_ = (UInt32Value) singleFieldBuilderV34.build();
                }
                SingleFieldBuilderV3<BoolValue, BoolValue.Builder, BoolValueOrBuilder> singleFieldBuilderV35 = this.shouldReportBuilder_;
                if (singleFieldBuilderV35 == null) {
                    configuration.shouldReport_ = this.shouldReport_;
                } else {
                    configuration.shouldReport_ = (BoolValue) singleFieldBuilderV35.build();
                }
                if (this.configExtensionCase_ == 6) {
                    SingleFieldBuilderV3<ImpExtension, ImpExtension.Builder, ImpExtensionOrBuilder> singleFieldBuilderV36 = this.impExtensionBuilder_;
                    if (singleFieldBuilderV36 == null) {
                        configuration.configExtension_ = this.configExtension_;
                    } else {
                        configuration.configExtension_ = singleFieldBuilderV36.build();
                    }
                }
                if (this.configExtensionCase_ == 8) {
                    SingleFieldBuilderV3<GenericExtension, GenericExtension.Builder, GenericExtensionOrBuilder> singleFieldBuilderV37 = this.genExtensionBuilder_;
                    if (singleFieldBuilderV37 == null) {
                        configuration.configExtension_ = this.configExtension_;
                    } else {
                        configuration.configExtension_ = singleFieldBuilderV37.build();
                    }
                }
                SingleFieldBuilderV3<EventFilter, EventFilter.Builder, EventFilterOrBuilder> singleFieldBuilderV38 = this.filterBuilder_;
                if (singleFieldBuilderV38 == null) {
                    configuration.filter_ = this.filter_;
                } else {
                    configuration.filter_ = (EventFilter) singleFieldBuilderV38.build();
                }
                configuration.configExtensionCase_ = this.configExtensionCase_;
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
                if (configuration.hasBatchSize()) {
                    mergeBatchSize(configuration.getBatchSize());
                }
                if (configuration.hasInterval()) {
                    mergeInterval(configuration.getInterval());
                }
                if (configuration.hasShouldReport()) {
                    mergeShouldReport(configuration.getShouldReport());
                }
                if (configuration.hasFilter()) {
                    mergeFilter(configuration.getFilter());
                }
                int i = AnonymousClass2.$SwitchMap$io$bidmachine$protobuf$sdk$Monitor$Configuration$ConfigExtensionCase[configuration.getConfigExtensionCase().ordinal()];
                if (i == 1) {
                    mergeImpExtension(configuration.getImpExtension());
                } else if (i == 2) {
                    mergeGenExtension(configuration.getGenExtension());
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
            public io.bidmachine.protobuf.sdk.Monitor.Configuration.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r3, com.explorestack.protobuf.ExtensionRegistryLite r4) throws java.lang.Throwable {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.Parser r1 = io.bidmachine.protobuf.sdk.Monitor.Configuration.access$3000()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    io.bidmachine.protobuf.sdk.Monitor$Configuration r3 = (io.bidmachine.protobuf.sdk.Monitor.Configuration) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                    io.bidmachine.protobuf.sdk.Monitor$Configuration r4 = (io.bidmachine.protobuf.sdk.Monitor.Configuration) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.sdk.Monitor.Configuration.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):io.bidmachine.protobuf.sdk.Monitor$Configuration$Builder");
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
            public ConfigExtensionCase getConfigExtensionCase() {
                return ConfigExtensionCase.forNumber(this.configExtensionCase_);
            }

            public Builder clearConfigExtension() {
                this.configExtensionCase_ = 0;
                this.configExtension_ = null;
                onChanged();
                return this;
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
            public boolean hasName() {
                return (this.nameBuilder_ == null && this.name_ == null) ? false : true;
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
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

            @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
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

            @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
            public boolean hasUrl() {
                return (this.urlBuilder_ == null && this.url_ == null) ? false : true;
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
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

            @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
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

            @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
            public boolean hasBatchSize() {
                return (this.batchSizeBuilder_ == null && this.batchSize_ == null) ? false : true;
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
            public UInt32Value getBatchSize() {
                SingleFieldBuilderV3<UInt32Value, UInt32Value.Builder, UInt32ValueOrBuilder> singleFieldBuilderV3 = this.batchSizeBuilder_;
                if (singleFieldBuilderV3 == null) {
                    UInt32Value uInt32Value = this.batchSize_;
                    return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
                }
                return (UInt32Value) singleFieldBuilderV3.getMessage();
            }

            public Builder setBatchSize(UInt32Value uInt32Value) {
                SingleFieldBuilderV3<UInt32Value, UInt32Value.Builder, UInt32ValueOrBuilder> singleFieldBuilderV3 = this.batchSizeBuilder_;
                if (singleFieldBuilderV3 == null) {
                    uInt32Value.getClass();
                    this.batchSize_ = uInt32Value;
                    onChanged();
                    return this;
                }
                singleFieldBuilderV3.setMessage(uInt32Value);
                return this;
            }

            public Builder setBatchSize(UInt32Value.Builder builder) {
                SingleFieldBuilderV3<UInt32Value, UInt32Value.Builder, UInt32ValueOrBuilder> singleFieldBuilderV3 = this.batchSizeBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.batchSize_ = builder.build();
                    onChanged();
                    return this;
                }
                singleFieldBuilderV3.setMessage(builder.build());
                return this;
            }

            public Builder mergeBatchSize(UInt32Value uInt32Value) {
                SingleFieldBuilderV3<UInt32Value, UInt32Value.Builder, UInt32ValueOrBuilder> singleFieldBuilderV3 = this.batchSizeBuilder_;
                if (singleFieldBuilderV3 == null) {
                    UInt32Value uInt32Value2 = this.batchSize_;
                    if (uInt32Value2 != null) {
                        this.batchSize_ = UInt32Value.newBuilder(uInt32Value2).mergeFrom(uInt32Value).buildPartial();
                    } else {
                        this.batchSize_ = uInt32Value;
                    }
                    onChanged();
                    return this;
                }
                singleFieldBuilderV3.mergeFrom(uInt32Value);
                return this;
            }

            public Builder clearBatchSize() {
                if (this.batchSizeBuilder_ == null) {
                    this.batchSize_ = null;
                    onChanged();
                    return this;
                }
                this.batchSize_ = null;
                this.batchSizeBuilder_ = null;
                return this;
            }

            public UInt32Value.Builder getBatchSizeBuilder() {
                onChanged();
                return (UInt32Value.Builder) getBatchSizeFieldBuilder().getBuilder();
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
            public UInt32ValueOrBuilder getBatchSizeOrBuilder() {
                SingleFieldBuilderV3<UInt32Value, UInt32Value.Builder, UInt32ValueOrBuilder> singleFieldBuilderV3 = this.batchSizeBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (UInt32ValueOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
                }
                UInt32Value uInt32Value = this.batchSize_;
                return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
            }

            private SingleFieldBuilderV3<UInt32Value, UInt32Value.Builder, UInt32ValueOrBuilder> getBatchSizeFieldBuilder() {
                if (this.batchSizeBuilder_ == null) {
                    this.batchSizeBuilder_ = new SingleFieldBuilderV3<>(getBatchSize(), getParentForChildren(), isClean());
                    this.batchSize_ = null;
                }
                return this.batchSizeBuilder_;
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
            public boolean hasInterval() {
                return (this.intervalBuilder_ == null && this.interval_ == null) ? false : true;
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
            public UInt32Value getInterval() {
                SingleFieldBuilderV3<UInt32Value, UInt32Value.Builder, UInt32ValueOrBuilder> singleFieldBuilderV3 = this.intervalBuilder_;
                if (singleFieldBuilderV3 == null) {
                    UInt32Value uInt32Value = this.interval_;
                    return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
                }
                return (UInt32Value) singleFieldBuilderV3.getMessage();
            }

            public Builder setInterval(UInt32Value uInt32Value) {
                SingleFieldBuilderV3<UInt32Value, UInt32Value.Builder, UInt32ValueOrBuilder> singleFieldBuilderV3 = this.intervalBuilder_;
                if (singleFieldBuilderV3 == null) {
                    uInt32Value.getClass();
                    this.interval_ = uInt32Value;
                    onChanged();
                    return this;
                }
                singleFieldBuilderV3.setMessage(uInt32Value);
                return this;
            }

            public Builder setInterval(UInt32Value.Builder builder) {
                SingleFieldBuilderV3<UInt32Value, UInt32Value.Builder, UInt32ValueOrBuilder> singleFieldBuilderV3 = this.intervalBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.interval_ = builder.build();
                    onChanged();
                    return this;
                }
                singleFieldBuilderV3.setMessage(builder.build());
                return this;
            }

            public Builder mergeInterval(UInt32Value uInt32Value) {
                SingleFieldBuilderV3<UInt32Value, UInt32Value.Builder, UInt32ValueOrBuilder> singleFieldBuilderV3 = this.intervalBuilder_;
                if (singleFieldBuilderV3 == null) {
                    UInt32Value uInt32Value2 = this.interval_;
                    if (uInt32Value2 != null) {
                        this.interval_ = UInt32Value.newBuilder(uInt32Value2).mergeFrom(uInt32Value).buildPartial();
                    } else {
                        this.interval_ = uInt32Value;
                    }
                    onChanged();
                    return this;
                }
                singleFieldBuilderV3.mergeFrom(uInt32Value);
                return this;
            }

            public Builder clearInterval() {
                if (this.intervalBuilder_ == null) {
                    this.interval_ = null;
                    onChanged();
                    return this;
                }
                this.interval_ = null;
                this.intervalBuilder_ = null;
                return this;
            }

            public UInt32Value.Builder getIntervalBuilder() {
                onChanged();
                return (UInt32Value.Builder) getIntervalFieldBuilder().getBuilder();
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
            public UInt32ValueOrBuilder getIntervalOrBuilder() {
                SingleFieldBuilderV3<UInt32Value, UInt32Value.Builder, UInt32ValueOrBuilder> singleFieldBuilderV3 = this.intervalBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (UInt32ValueOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
                }
                UInt32Value uInt32Value = this.interval_;
                return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
            }

            private SingleFieldBuilderV3<UInt32Value, UInt32Value.Builder, UInt32ValueOrBuilder> getIntervalFieldBuilder() {
                if (this.intervalBuilder_ == null) {
                    this.intervalBuilder_ = new SingleFieldBuilderV3<>(getInterval(), getParentForChildren(), isClean());
                    this.interval_ = null;
                }
                return this.intervalBuilder_;
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
            public boolean hasShouldReport() {
                return (this.shouldReportBuilder_ == null && this.shouldReport_ == null) ? false : true;
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
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

            @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
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

            @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
            public boolean hasImpExtension() {
                return this.configExtensionCase_ == 6;
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
            public ImpExtension getImpExtension() {
                SingleFieldBuilderV3<ImpExtension, ImpExtension.Builder, ImpExtensionOrBuilder> singleFieldBuilderV3 = this.impExtensionBuilder_;
                if (singleFieldBuilderV3 == null) {
                    if (this.configExtensionCase_ == 6) {
                        return (ImpExtension) this.configExtension_;
                    }
                    return ImpExtension.getDefaultInstance();
                }
                if (this.configExtensionCase_ == 6) {
                    return (ImpExtension) singleFieldBuilderV3.getMessage();
                }
                return ImpExtension.getDefaultInstance();
            }

            public Builder setImpExtension(ImpExtension impExtension) {
                SingleFieldBuilderV3<ImpExtension, ImpExtension.Builder, ImpExtensionOrBuilder> singleFieldBuilderV3 = this.impExtensionBuilder_;
                if (singleFieldBuilderV3 == null) {
                    impExtension.getClass();
                    this.configExtension_ = impExtension;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(impExtension);
                }
                this.configExtensionCase_ = 6;
                return this;
            }

            public Builder setImpExtension(ImpExtension.Builder builder) {
                SingleFieldBuilderV3<ImpExtension, ImpExtension.Builder, ImpExtensionOrBuilder> singleFieldBuilderV3 = this.impExtensionBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.configExtension_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builder.build());
                }
                this.configExtensionCase_ = 6;
                return this;
            }

            public Builder mergeImpExtension(ImpExtension impExtension) {
                SingleFieldBuilderV3<ImpExtension, ImpExtension.Builder, ImpExtensionOrBuilder> singleFieldBuilderV3 = this.impExtensionBuilder_;
                if (singleFieldBuilderV3 == null) {
                    if (this.configExtensionCase_ == 6 && this.configExtension_ != ImpExtension.getDefaultInstance()) {
                        this.configExtension_ = ImpExtension.newBuilder((ImpExtension) this.configExtension_).mergeFrom(impExtension).buildPartial();
                    } else {
                        this.configExtension_ = impExtension;
                    }
                    onChanged();
                } else {
                    if (this.configExtensionCase_ == 6) {
                        singleFieldBuilderV3.mergeFrom(impExtension);
                    }
                    this.impExtensionBuilder_.setMessage(impExtension);
                }
                this.configExtensionCase_ = 6;
                return this;
            }

            public Builder clearImpExtension() {
                SingleFieldBuilderV3<ImpExtension, ImpExtension.Builder, ImpExtensionOrBuilder> singleFieldBuilderV3 = this.impExtensionBuilder_;
                if (singleFieldBuilderV3 == null) {
                    if (this.configExtensionCase_ == 6) {
                        this.configExtensionCase_ = 0;
                        this.configExtension_ = null;
                        onChanged();
                    }
                    return this;
                }
                if (this.configExtensionCase_ == 6) {
                    this.configExtensionCase_ = 0;
                    this.configExtension_ = null;
                }
                singleFieldBuilderV3.clear();
                return this;
            }

            public ImpExtension.Builder getImpExtensionBuilder() {
                return (ImpExtension.Builder) getImpExtensionFieldBuilder().getBuilder();
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
            public ImpExtensionOrBuilder getImpExtensionOrBuilder() {
                SingleFieldBuilderV3<ImpExtension, ImpExtension.Builder, ImpExtensionOrBuilder> singleFieldBuilderV3;
                int i = this.configExtensionCase_;
                if (i == 6 && (singleFieldBuilderV3 = this.impExtensionBuilder_) != null) {
                    return (ImpExtensionOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
                }
                if (i == 6) {
                    return (ImpExtension) this.configExtension_;
                }
                return ImpExtension.getDefaultInstance();
            }

            private SingleFieldBuilderV3<ImpExtension, ImpExtension.Builder, ImpExtensionOrBuilder> getImpExtensionFieldBuilder() {
                if (this.impExtensionBuilder_ == null) {
                    if (this.configExtensionCase_ != 6) {
                        this.configExtension_ = ImpExtension.getDefaultInstance();
                    }
                    this.impExtensionBuilder_ = new SingleFieldBuilderV3<>((ImpExtension) this.configExtension_, getParentForChildren(), isClean());
                    this.configExtension_ = null;
                }
                this.configExtensionCase_ = 6;
                onChanged();
                return this.impExtensionBuilder_;
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
            public boolean hasGenExtension() {
                return this.configExtensionCase_ == 8;
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
            public GenericExtension getGenExtension() {
                SingleFieldBuilderV3<GenericExtension, GenericExtension.Builder, GenericExtensionOrBuilder> singleFieldBuilderV3 = this.genExtensionBuilder_;
                if (singleFieldBuilderV3 == null) {
                    if (this.configExtensionCase_ == 8) {
                        return (GenericExtension) this.configExtension_;
                    }
                    return GenericExtension.getDefaultInstance();
                }
                if (this.configExtensionCase_ == 8) {
                    return (GenericExtension) singleFieldBuilderV3.getMessage();
                }
                return GenericExtension.getDefaultInstance();
            }

            public Builder setGenExtension(GenericExtension genericExtension) {
                SingleFieldBuilderV3<GenericExtension, GenericExtension.Builder, GenericExtensionOrBuilder> singleFieldBuilderV3 = this.genExtensionBuilder_;
                if (singleFieldBuilderV3 == null) {
                    genericExtension.getClass();
                    this.configExtension_ = genericExtension;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(genericExtension);
                }
                this.configExtensionCase_ = 8;
                return this;
            }

            public Builder setGenExtension(GenericExtension.Builder builder) {
                SingleFieldBuilderV3<GenericExtension, GenericExtension.Builder, GenericExtensionOrBuilder> singleFieldBuilderV3 = this.genExtensionBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.configExtension_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builder.build());
                }
                this.configExtensionCase_ = 8;
                return this;
            }

            public Builder mergeGenExtension(GenericExtension genericExtension) {
                SingleFieldBuilderV3<GenericExtension, GenericExtension.Builder, GenericExtensionOrBuilder> singleFieldBuilderV3 = this.genExtensionBuilder_;
                if (singleFieldBuilderV3 == null) {
                    if (this.configExtensionCase_ == 8 && this.configExtension_ != GenericExtension.getDefaultInstance()) {
                        this.configExtension_ = GenericExtension.newBuilder((GenericExtension) this.configExtension_).mergeFrom(genericExtension).buildPartial();
                    } else {
                        this.configExtension_ = genericExtension;
                    }
                    onChanged();
                } else {
                    if (this.configExtensionCase_ == 8) {
                        singleFieldBuilderV3.mergeFrom(genericExtension);
                    }
                    this.genExtensionBuilder_.setMessage(genericExtension);
                }
                this.configExtensionCase_ = 8;
                return this;
            }

            public Builder clearGenExtension() {
                SingleFieldBuilderV3<GenericExtension, GenericExtension.Builder, GenericExtensionOrBuilder> singleFieldBuilderV3 = this.genExtensionBuilder_;
                if (singleFieldBuilderV3 == null) {
                    if (this.configExtensionCase_ == 8) {
                        this.configExtensionCase_ = 0;
                        this.configExtension_ = null;
                        onChanged();
                    }
                    return this;
                }
                if (this.configExtensionCase_ == 8) {
                    this.configExtensionCase_ = 0;
                    this.configExtension_ = null;
                }
                singleFieldBuilderV3.clear();
                return this;
            }

            public GenericExtension.Builder getGenExtensionBuilder() {
                return (GenericExtension.Builder) getGenExtensionFieldBuilder().getBuilder();
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
            public GenericExtensionOrBuilder getGenExtensionOrBuilder() {
                SingleFieldBuilderV3<GenericExtension, GenericExtension.Builder, GenericExtensionOrBuilder> singleFieldBuilderV3;
                int i = this.configExtensionCase_;
                if (i == 8 && (singleFieldBuilderV3 = this.genExtensionBuilder_) != null) {
                    return (GenericExtensionOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
                }
                if (i == 8) {
                    return (GenericExtension) this.configExtension_;
                }
                return GenericExtension.getDefaultInstance();
            }

            private SingleFieldBuilderV3<GenericExtension, GenericExtension.Builder, GenericExtensionOrBuilder> getGenExtensionFieldBuilder() {
                if (this.genExtensionBuilder_ == null) {
                    if (this.configExtensionCase_ != 8) {
                        this.configExtension_ = GenericExtension.getDefaultInstance();
                    }
                    this.genExtensionBuilder_ = new SingleFieldBuilderV3<>((GenericExtension) this.configExtension_, getParentForChildren(), isClean());
                    this.configExtension_ = null;
                }
                this.configExtensionCase_ = 8;
                onChanged();
                return this.genExtensionBuilder_;
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
            public boolean hasFilter() {
                return (this.filterBuilder_ == null && this.filter_ == null) ? false : true;
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
            public EventFilter getFilter() {
                SingleFieldBuilderV3<EventFilter, EventFilter.Builder, EventFilterOrBuilder> singleFieldBuilderV3 = this.filterBuilder_;
                if (singleFieldBuilderV3 == null) {
                    EventFilter eventFilter = this.filter_;
                    return eventFilter == null ? EventFilter.getDefaultInstance() : eventFilter;
                }
                return (EventFilter) singleFieldBuilderV3.getMessage();
            }

            public Builder setFilter(EventFilter eventFilter) {
                SingleFieldBuilderV3<EventFilter, EventFilter.Builder, EventFilterOrBuilder> singleFieldBuilderV3 = this.filterBuilder_;
                if (singleFieldBuilderV3 == null) {
                    eventFilter.getClass();
                    this.filter_ = eventFilter;
                    onChanged();
                    return this;
                }
                singleFieldBuilderV3.setMessage(eventFilter);
                return this;
            }

            public Builder setFilter(EventFilter.Builder builder) {
                SingleFieldBuilderV3<EventFilter, EventFilter.Builder, EventFilterOrBuilder> singleFieldBuilderV3 = this.filterBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.filter_ = builder.build();
                    onChanged();
                    return this;
                }
                singleFieldBuilderV3.setMessage(builder.build());
                return this;
            }

            public Builder mergeFilter(EventFilter eventFilter) {
                SingleFieldBuilderV3<EventFilter, EventFilter.Builder, EventFilterOrBuilder> singleFieldBuilderV3 = this.filterBuilder_;
                if (singleFieldBuilderV3 == null) {
                    EventFilter eventFilter2 = this.filter_;
                    if (eventFilter2 != null) {
                        this.filter_ = EventFilter.newBuilder(eventFilter2).mergeFrom(eventFilter).buildPartial();
                    } else {
                        this.filter_ = eventFilter;
                    }
                    onChanged();
                    return this;
                }
                singleFieldBuilderV3.mergeFrom(eventFilter);
                return this;
            }

            public Builder clearFilter() {
                if (this.filterBuilder_ == null) {
                    this.filter_ = null;
                    onChanged();
                    return this;
                }
                this.filter_ = null;
                this.filterBuilder_ = null;
                return this;
            }

            public EventFilter.Builder getFilterBuilder() {
                onChanged();
                return (EventFilter.Builder) getFilterFieldBuilder().getBuilder();
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
            public EventFilterOrBuilder getFilterOrBuilder() {
                SingleFieldBuilderV3<EventFilter, EventFilter.Builder, EventFilterOrBuilder> singleFieldBuilderV3 = this.filterBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (EventFilterOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
                }
                EventFilter eventFilter = this.filter_;
                return eventFilter == null ? EventFilter.getDefaultInstance() : eventFilter;
            }

            private SingleFieldBuilderV3<EventFilter, EventFilter.Builder, EventFilterOrBuilder> getFilterFieldBuilder() {
                if (this.filterBuilder_ == null) {
                    this.filterBuilder_ = new SingleFieldBuilderV3<>(getFilter(), getParentForChildren(), isClean());
                    this.filter_ = null;
                }
                return this.filterBuilder_;
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

    public static final class Record extends GeneratedMessageV3 implements RecordOrBuilder {
        public static final int ERROR_FIELD_NUMBER = 3;
        public static final int FIELDS_FIELD_NUMBER = 2;
        public static final int TIMESTAMP_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private Error error_;
        private Struct fields_;
        private byte memoizedIsInitialized;
        private Timestamp timestamp_;
        private static final Record DEFAULT_INSTANCE = new Record();
        private static final Parser<Record> PARSER = new AbstractParser<Record>() { // from class: io.bidmachine.protobuf.sdk.Monitor.Record.1
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
                                    Timestamp timestamp = this.timestamp_;
                                    Timestamp.Builder builder = timestamp != null ? timestamp.toBuilder() : null;
                                    Timestamp timestamp2 = (Timestamp) codedInputStream.readMessage(Timestamp.parser(), extensionRegistryLite);
                                    this.timestamp_ = timestamp2;
                                    if (builder != null) {
                                        builder.mergeFrom(timestamp2);
                                        this.timestamp_ = builder.buildPartial();
                                    }
                                } else if (tag == 18) {
                                    Struct struct = this.fields_;
                                    Struct.Builder builder2 = struct != null ? struct.toBuilder() : null;
                                    Struct struct2 = (Struct) codedInputStream.readMessage(Struct.parser(), extensionRegistryLite);
                                    this.fields_ = struct2;
                                    if (builder2 != null) {
                                        builder2.mergeFrom(struct2);
                                        this.fields_ = builder2.buildPartial();
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
            return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_Record_descriptor;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_Record_fieldAccessorTable.ensureFieldAccessorsInitialized(Record.class, Builder.class);
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.RecordOrBuilder
        public boolean hasTimestamp() {
            return this.timestamp_ != null;
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.RecordOrBuilder
        public Timestamp getTimestamp() {
            Timestamp timestamp = this.timestamp_;
            return timestamp == null ? Timestamp.getDefaultInstance() : timestamp;
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.RecordOrBuilder
        public TimestampOrBuilder getTimestampOrBuilder() {
            return getTimestamp();
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.RecordOrBuilder
        public boolean hasFields() {
            return this.fields_ != null;
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.RecordOrBuilder
        public Struct getFields() {
            Struct struct = this.fields_;
            return struct == null ? Struct.getDefaultInstance() : struct;
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.RecordOrBuilder
        public StructOrBuilder getFieldsOrBuilder() {
            return getFields();
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.RecordOrBuilder
        public boolean hasError() {
            return this.error_ != null;
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.RecordOrBuilder
        public Error getError() {
            Error error = this.error_;
            return error == null ? Error.getDefaultInstance() : error;
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.RecordOrBuilder
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
            if (this.timestamp_ != null) {
                codedOutputStream.writeMessage(1, getTimestamp());
            }
            if (this.fields_ != null) {
                codedOutputStream.writeMessage(2, getFields());
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
            int iComputeMessageSize = this.timestamp_ != null ? CodedOutputStream.computeMessageSize(1, getTimestamp()) : 0;
            if (this.fields_ != null) {
                iComputeMessageSize += CodedOutputStream.computeMessageSize(2, getFields());
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
            if (hasTimestamp() != record.hasTimestamp()) {
                return false;
            }
            if ((hasTimestamp() && !getTimestamp().equals(record.getTimestamp())) || hasFields() != record.hasFields()) {
                return false;
            }
            if ((!hasFields() || getFields().equals(record.getFields())) && hasError() == record.hasError()) {
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
            if (hasTimestamp()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getTimestamp().hashCode();
            }
            if (hasFields()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getFields().hashCode();
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
            private SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> fieldsBuilder_;
            private Struct fields_;
            private SingleFieldBuilderV3<Timestamp, Timestamp.Builder, TimestampOrBuilder> timestampBuilder_;
            private Timestamp timestamp_;

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_Record_descriptor;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_Record_fieldAccessorTable.ensureFieldAccessorsInitialized(Record.class, Builder.class);
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
                if (this.timestampBuilder_ == null) {
                    this.timestamp_ = null;
                } else {
                    this.timestamp_ = null;
                    this.timestampBuilder_ = null;
                }
                if (this.fieldsBuilder_ == null) {
                    this.fields_ = null;
                } else {
                    this.fields_ = null;
                    this.fieldsBuilder_ = null;
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
                return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_Record_descriptor;
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
                SingleFieldBuilderV3<Timestamp, Timestamp.Builder, TimestampOrBuilder> singleFieldBuilderV3 = this.timestampBuilder_;
                if (singleFieldBuilderV3 == null) {
                    record.timestamp_ = this.timestamp_;
                } else {
                    record.timestamp_ = (Timestamp) singleFieldBuilderV3.build();
                }
                SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV32 = this.fieldsBuilder_;
                if (singleFieldBuilderV32 == null) {
                    record.fields_ = this.fields_;
                } else {
                    record.fields_ = (Struct) singleFieldBuilderV32.build();
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
                if (record.hasTimestamp()) {
                    mergeTimestamp(record.getTimestamp());
                }
                if (record.hasFields()) {
                    mergeFields(record.getFields());
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
            public io.bidmachine.protobuf.sdk.Monitor.Record.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r3, com.explorestack.protobuf.ExtensionRegistryLite r4) throws java.lang.Throwable {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.Parser r1 = io.bidmachine.protobuf.sdk.Monitor.Record.access$4000()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    io.bidmachine.protobuf.sdk.Monitor$Record r3 = (io.bidmachine.protobuf.sdk.Monitor.Record) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                    io.bidmachine.protobuf.sdk.Monitor$Record r4 = (io.bidmachine.protobuf.sdk.Monitor.Record) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.sdk.Monitor.Record.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):io.bidmachine.protobuf.sdk.Monitor$Record$Builder");
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.RecordOrBuilder
            public boolean hasTimestamp() {
                return (this.timestampBuilder_ == null && this.timestamp_ == null) ? false : true;
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.RecordOrBuilder
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

            @Override // io.bidmachine.protobuf.sdk.Monitor.RecordOrBuilder
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

            @Override // io.bidmachine.protobuf.sdk.Monitor.RecordOrBuilder
            public boolean hasFields() {
                return (this.fieldsBuilder_ == null && this.fields_ == null) ? false : true;
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.RecordOrBuilder
            public Struct getFields() {
                SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.fieldsBuilder_;
                if (singleFieldBuilderV3 == null) {
                    Struct struct = this.fields_;
                    return struct == null ? Struct.getDefaultInstance() : struct;
                }
                return (Struct) singleFieldBuilderV3.getMessage();
            }

            public Builder setFields(Struct struct) {
                SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.fieldsBuilder_;
                if (singleFieldBuilderV3 == null) {
                    struct.getClass();
                    this.fields_ = struct;
                    onChanged();
                    return this;
                }
                singleFieldBuilderV3.setMessage(struct);
                return this;
            }

            public Builder setFields(Struct.Builder builder) {
                SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.fieldsBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.fields_ = builder.build();
                    onChanged();
                    return this;
                }
                singleFieldBuilderV3.setMessage(builder.build());
                return this;
            }

            public Builder mergeFields(Struct struct) {
                SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.fieldsBuilder_;
                if (singleFieldBuilderV3 == null) {
                    Struct struct2 = this.fields_;
                    if (struct2 != null) {
                        this.fields_ = Struct.newBuilder(struct2).mergeFrom(struct).buildPartial();
                    } else {
                        this.fields_ = struct;
                    }
                    onChanged();
                    return this;
                }
                singleFieldBuilderV3.mergeFrom(struct);
                return this;
            }

            public Builder clearFields() {
                if (this.fieldsBuilder_ == null) {
                    this.fields_ = null;
                    onChanged();
                    return this;
                }
                this.fields_ = null;
                this.fieldsBuilder_ = null;
                return this;
            }

            public Struct.Builder getFieldsBuilder() {
                onChanged();
                return (Struct.Builder) getFieldsFieldBuilder().getBuilder();
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.RecordOrBuilder
            public StructOrBuilder getFieldsOrBuilder() {
                SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.fieldsBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (StructOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
                }
                Struct struct = this.fields_;
                return struct == null ? Struct.getDefaultInstance() : struct;
            }

            private SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> getFieldsFieldBuilder() {
                if (this.fieldsBuilder_ == null) {
                    this.fieldsBuilder_ = new SingleFieldBuilderV3<>(getFields(), getParentForChildren(), isClean());
                    this.fields_ = null;
                }
                return this.fieldsBuilder_;
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.RecordOrBuilder
            public boolean hasError() {
                return (this.errorBuilder_ == null && this.error_ == null) ? false : true;
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.RecordOrBuilder
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

            @Override // io.bidmachine.protobuf.sdk.Monitor.RecordOrBuilder
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

    public static final class EventFilter extends GeneratedMessageV3 implements EventFilterOrBuilder {
        public static final int EXPR_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private FilterExpression expr_;
        private byte memoizedIsInitialized;
        private static final EventFilter DEFAULT_INSTANCE = new EventFilter();
        private static final Parser<EventFilter> PARSER = new AbstractParser<EventFilter>() { // from class: io.bidmachine.protobuf.sdk.Monitor.EventFilter.1
            @Override // com.explorestack.protobuf.Parser
            public EventFilter parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new EventFilter(codedInputStream, extensionRegistryLite);
            }
        };

        private EventFilter(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private EventFilter() {
            this.memoizedIsInitialized = (byte) -1;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
            return new EventFilter();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private EventFilter(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                    FilterExpression filterExpression = this.expr_;
                                    FilterExpression.Builder builder = filterExpression != null ? filterExpression.toBuilder() : null;
                                    FilterExpression filterExpression2 = (FilterExpression) codedInputStream.readMessage(FilterExpression.parser(), extensionRegistryLite);
                                    this.expr_ = filterExpression2;
                                    if (builder != null) {
                                        builder.mergeFrom(filterExpression2);
                                        this.expr_ = builder.buildPartial();
                                    }
                                } else if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                                }
                            }
                            z = true;
                        } catch (IOException e) {
                            throw new InvalidProtocolBufferException(e).setUnfinishedMessage(this);
                        }
                    } catch (InvalidProtocolBufferException e2) {
                        throw e2.setUnfinishedMessage(this);
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
            return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_EventFilter_descriptor;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_EventFilter_fieldAccessorTable.ensureFieldAccessorsInitialized(EventFilter.class, Builder.class);
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.EventFilterOrBuilder
        public boolean hasExpr() {
            return this.expr_ != null;
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.EventFilterOrBuilder
        public FilterExpression getExpr() {
            FilterExpression filterExpression = this.expr_;
            return filterExpression == null ? FilterExpression.getDefaultInstance() : filterExpression;
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.EventFilterOrBuilder
        public FilterExpressionOrBuilder getExprOrBuilder() {
            return getExpr();
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
            if (this.expr_ != null) {
                codedOutputStream.writeMessage(1, getExpr());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeMessageSize = (this.expr_ != null ? CodedOutputStream.computeMessageSize(1, getExpr()) : 0) + this.unknownFields.getSerializedSize();
            this.memoizedSize = iComputeMessageSize;
            return iComputeMessageSize;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof EventFilter)) {
                return super.equals(obj);
            }
            EventFilter eventFilter = (EventFilter) obj;
            if (hasExpr() != eventFilter.hasExpr()) {
                return false;
            }
            return (!hasExpr() || getExpr().equals(eventFilter.getExpr())) && this.unknownFields.equals(eventFilter.unknownFields);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (hasExpr()) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getExpr().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static EventFilter parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static EventFilter parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static EventFilter parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static EventFilter parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static EventFilter parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static EventFilter parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static EventFilter parseFrom(InputStream inputStream) throws IOException {
            return (EventFilter) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static EventFilter parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (EventFilter) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static EventFilter parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (EventFilter) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static EventFilter parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (EventFilter) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static EventFilter parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (EventFilter) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static EventFilter parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (EventFilter) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(EventFilter eventFilter) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(eventFilter);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements EventFilterOrBuilder {
            private SingleFieldBuilderV3<FilterExpression, FilterExpression.Builder, FilterExpressionOrBuilder> exprBuilder_;
            private FilterExpression expr_;

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_EventFilter_descriptor;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_EventFilter_fieldAccessorTable.ensureFieldAccessorsInitialized(EventFilter.class, Builder.class);
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
                if (this.exprBuilder_ == null) {
                    this.expr_ = null;
                    return this;
                }
                this.expr_ = null;
                this.exprBuilder_ = null;
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_EventFilter_descriptor;
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            /* JADX INFO: renamed from: getDefaultInstanceForType */
            public EventFilter mo687getDefaultInstanceForType() {
                return EventFilter.getDefaultInstance();
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public EventFilter build() {
                EventFilter eventFilterBuildPartial = buildPartial();
                if (eventFilterBuildPartial.isInitialized()) {
                    return eventFilterBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) eventFilterBuildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public EventFilter buildPartial() {
                EventFilter eventFilter = new EventFilter(this);
                SingleFieldBuilderV3<FilterExpression, FilterExpression.Builder, FilterExpressionOrBuilder> singleFieldBuilderV3 = this.exprBuilder_;
                if (singleFieldBuilderV3 == null) {
                    eventFilter.expr_ = this.expr_;
                } else {
                    eventFilter.expr_ = (FilterExpression) singleFieldBuilderV3.build();
                }
                onBuilt();
                return eventFilter;
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
                if (message instanceof EventFilter) {
                    return mergeFrom((EventFilter) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(EventFilter eventFilter) {
                if (eventFilter == EventFilter.getDefaultInstance()) {
                    return this;
                }
                if (eventFilter.hasExpr()) {
                    mergeExpr(eventFilter.getExpr());
                }
                mergeUnknownFields(((GeneratedMessageV3) eventFilter).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public io.bidmachine.protobuf.sdk.Monitor.EventFilter.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r3, com.explorestack.protobuf.ExtensionRegistryLite r4) throws java.lang.Throwable {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.Parser r1 = io.bidmachine.protobuf.sdk.Monitor.EventFilter.access$4800()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    io.bidmachine.protobuf.sdk.Monitor$EventFilter r3 = (io.bidmachine.protobuf.sdk.Monitor.EventFilter) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                    io.bidmachine.protobuf.sdk.Monitor$EventFilter r4 = (io.bidmachine.protobuf.sdk.Monitor.EventFilter) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.sdk.Monitor.EventFilter.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):io.bidmachine.protobuf.sdk.Monitor$EventFilter$Builder");
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.EventFilterOrBuilder
            public boolean hasExpr() {
                return (this.exprBuilder_ == null && this.expr_ == null) ? false : true;
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.EventFilterOrBuilder
            public FilterExpression getExpr() {
                SingleFieldBuilderV3<FilterExpression, FilterExpression.Builder, FilterExpressionOrBuilder> singleFieldBuilderV3 = this.exprBuilder_;
                if (singleFieldBuilderV3 == null) {
                    FilterExpression filterExpression = this.expr_;
                    return filterExpression == null ? FilterExpression.getDefaultInstance() : filterExpression;
                }
                return (FilterExpression) singleFieldBuilderV3.getMessage();
            }

            public Builder setExpr(FilterExpression filterExpression) {
                SingleFieldBuilderV3<FilterExpression, FilterExpression.Builder, FilterExpressionOrBuilder> singleFieldBuilderV3 = this.exprBuilder_;
                if (singleFieldBuilderV3 == null) {
                    filterExpression.getClass();
                    this.expr_ = filterExpression;
                    onChanged();
                    return this;
                }
                singleFieldBuilderV3.setMessage(filterExpression);
                return this;
            }

            public Builder setExpr(FilterExpression.Builder builder) {
                SingleFieldBuilderV3<FilterExpression, FilterExpression.Builder, FilterExpressionOrBuilder> singleFieldBuilderV3 = this.exprBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.expr_ = builder.build();
                    onChanged();
                    return this;
                }
                singleFieldBuilderV3.setMessage(builder.build());
                return this;
            }

            public Builder mergeExpr(FilterExpression filterExpression) {
                SingleFieldBuilderV3<FilterExpression, FilterExpression.Builder, FilterExpressionOrBuilder> singleFieldBuilderV3 = this.exprBuilder_;
                if (singleFieldBuilderV3 == null) {
                    FilterExpression filterExpression2 = this.expr_;
                    if (filterExpression2 != null) {
                        this.expr_ = FilterExpression.newBuilder(filterExpression2).mergeFrom(filterExpression).buildPartial();
                    } else {
                        this.expr_ = filterExpression;
                    }
                    onChanged();
                    return this;
                }
                singleFieldBuilderV3.mergeFrom(filterExpression);
                return this;
            }

            public Builder clearExpr() {
                if (this.exprBuilder_ == null) {
                    this.expr_ = null;
                    onChanged();
                    return this;
                }
                this.expr_ = null;
                this.exprBuilder_ = null;
                return this;
            }

            public FilterExpression.Builder getExprBuilder() {
                onChanged();
                return (FilterExpression.Builder) getExprFieldBuilder().getBuilder();
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.EventFilterOrBuilder
            public FilterExpressionOrBuilder getExprOrBuilder() {
                SingleFieldBuilderV3<FilterExpression, FilterExpression.Builder, FilterExpressionOrBuilder> singleFieldBuilderV3 = this.exprBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (FilterExpressionOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
                }
                FilterExpression filterExpression = this.expr_;
                return filterExpression == null ? FilterExpression.getDefaultInstance() : filterExpression;
            }

            private SingleFieldBuilderV3<FilterExpression, FilterExpression.Builder, FilterExpressionOrBuilder> getExprFieldBuilder() {
                if (this.exprBuilder_ == null) {
                    this.exprBuilder_ = new SingleFieldBuilderV3<>(getExpr(), getParentForChildren(), isClean());
                    this.expr_ = null;
                }
                return this.exprBuilder_;
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

        public static EventFilter getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<EventFilter> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Parser<EventFilter> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        /* JADX INFO: renamed from: getDefaultInstanceForType */
        public EventFilter mo687getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class FilterExpression extends GeneratedMessageV3 implements FilterExpressionOrBuilder {
        public static final int ALL_FIELD_NUMBER = 1;
        public static final int ANY_FIELD_NUMBER = 2;
        private static final FilterExpression DEFAULT_INSTANCE = new FilterExpression();
        private static final Parser<FilterExpression> PARSER = new AbstractParser<FilterExpression>() { // from class: io.bidmachine.protobuf.sdk.Monitor.FilterExpression.1
            @Override // com.explorestack.protobuf.Parser
            public FilterExpression parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new FilterExpression(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int RULE_FIELD_NUMBER = 3;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private int nodeCase_;
        private Object node_;

        private FilterExpression(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.nodeCase_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private FilterExpression() {
            this.nodeCase_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
            return new FilterExpression();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private FilterExpression(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                All.Builder builder = this.nodeCase_ == 1 ? ((All) this.node_).toBuilder() : null;
                                MessageLite message = codedInputStream.readMessage(All.parser(), extensionRegistryLite);
                                this.node_ = message;
                                if (builder != null) {
                                    builder.mergeFrom((All) message);
                                    this.node_ = builder.buildPartial();
                                }
                                this.nodeCase_ = 1;
                            } else if (tag == 18) {
                                Any.Builder builder2 = this.nodeCase_ == 2 ? ((Any) this.node_).toBuilder() : null;
                                MessageLite message2 = codedInputStream.readMessage(Any.parser(), extensionRegistryLite);
                                this.node_ = message2;
                                if (builder2 != null) {
                                    builder2.mergeFrom((Any) message2);
                                    this.node_ = builder2.buildPartial();
                                }
                                this.nodeCase_ = 2;
                            } else if (tag == 26) {
                                Rule.Builder builder3 = this.nodeCase_ == 3 ? ((Rule) this.node_).toBuilder() : null;
                                MessageLite message3 = codedInputStream.readMessage(Rule.parser(), extensionRegistryLite);
                                this.node_ = message3;
                                if (builder3 != null) {
                                    builder3.mergeFrom((Rule) message3);
                                    this.node_ = builder3.buildPartial();
                                }
                                this.nodeCase_ = 3;
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
            return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_FilterExpression_descriptor;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_FilterExpression_fieldAccessorTable.ensureFieldAccessorsInitialized(FilterExpression.class, Builder.class);
        }

        public enum NodeCase implements Internal.EnumLite {
            ALL(1),
            ANY(2),
            RULE(3),
            NODE_NOT_SET(0);

            private final int value;

            NodeCase(int i) {
                this.value = i;
            }

            @Deprecated
            public static NodeCase valueOf(int i) {
                return forNumber(i);
            }

            public static NodeCase forNumber(int i) {
                if (i == 0) {
                    return NODE_NOT_SET;
                }
                if (i == 1) {
                    return ALL;
                }
                if (i == 2) {
                    return ANY;
                }
                if (i != 3) {
                    return null;
                }
                return RULE;
            }

            @Override // com.explorestack.protobuf.Internal.EnumLite
            public int getNumber() {
                return this.value;
            }
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.FilterExpressionOrBuilder
        public NodeCase getNodeCase() {
            return NodeCase.forNumber(this.nodeCase_);
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.FilterExpressionOrBuilder
        public boolean hasAll() {
            return this.nodeCase_ == 1;
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.FilterExpressionOrBuilder
        public All getAll() {
            if (this.nodeCase_ == 1) {
                return (All) this.node_;
            }
            return All.getDefaultInstance();
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.FilterExpressionOrBuilder
        public AllOrBuilder getAllOrBuilder() {
            if (this.nodeCase_ == 1) {
                return (All) this.node_;
            }
            return All.getDefaultInstance();
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.FilterExpressionOrBuilder
        public boolean hasAny() {
            return this.nodeCase_ == 2;
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.FilterExpressionOrBuilder
        public Any getAny() {
            if (this.nodeCase_ == 2) {
                return (Any) this.node_;
            }
            return Any.getDefaultInstance();
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.FilterExpressionOrBuilder
        public AnyOrBuilder getAnyOrBuilder() {
            if (this.nodeCase_ == 2) {
                return (Any) this.node_;
            }
            return Any.getDefaultInstance();
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.FilterExpressionOrBuilder
        public boolean hasRule() {
            return this.nodeCase_ == 3;
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.FilterExpressionOrBuilder
        public Rule getRule() {
            if (this.nodeCase_ == 3) {
                return (Rule) this.node_;
            }
            return Rule.getDefaultInstance();
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.FilterExpressionOrBuilder
        public RuleOrBuilder getRuleOrBuilder() {
            if (this.nodeCase_ == 3) {
                return (Rule) this.node_;
            }
            return Rule.getDefaultInstance();
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
            if (this.nodeCase_ == 1) {
                codedOutputStream.writeMessage(1, (All) this.node_);
            }
            if (this.nodeCase_ == 2) {
                codedOutputStream.writeMessage(2, (Any) this.node_);
            }
            if (this.nodeCase_ == 3) {
                codedOutputStream.writeMessage(3, (Rule) this.node_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeMessageSize = this.nodeCase_ == 1 ? CodedOutputStream.computeMessageSize(1, (All) this.node_) : 0;
            if (this.nodeCase_ == 2) {
                iComputeMessageSize += CodedOutputStream.computeMessageSize(2, (Any) this.node_);
            }
            if (this.nodeCase_ == 3) {
                iComputeMessageSize += CodedOutputStream.computeMessageSize(3, (Rule) this.node_);
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
            if (!(obj instanceof FilterExpression)) {
                return super.equals(obj);
            }
            FilterExpression filterExpression = (FilterExpression) obj;
            if (!getNodeCase().equals(filterExpression.getNodeCase())) {
                return false;
            }
            int i = this.nodeCase_;
            if (i != 1) {
                if (i == 2) {
                    if (!getAny().equals(filterExpression.getAny())) {
                        return false;
                    }
                } else if (i == 3 && !getRule().equals(filterExpression.getRule())) {
                    return false;
                }
            } else if (!getAll().equals(filterExpression.getAll())) {
                return false;
            }
            return this.unknownFields.equals(filterExpression.unknownFields);
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
            int i3 = this.nodeCase_;
            if (i3 == 1) {
                i = ((iHashCode2 * 37) + 1) * 53;
                iHashCode = getAll().hashCode();
            } else if (i3 == 2) {
                i = ((iHashCode2 * 37) + 2) * 53;
                iHashCode = getAny().hashCode();
            } else {
                if (i3 == 3) {
                    i = ((iHashCode2 * 37) + 3) * 53;
                    iHashCode = getRule().hashCode();
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

        public static FilterExpression parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static FilterExpression parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static FilterExpression parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static FilterExpression parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static FilterExpression parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static FilterExpression parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static FilterExpression parseFrom(InputStream inputStream) throws IOException {
            return (FilterExpression) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static FilterExpression parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (FilterExpression) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static FilterExpression parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (FilterExpression) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static FilterExpression parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (FilterExpression) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static FilterExpression parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (FilterExpression) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static FilterExpression parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (FilterExpression) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(FilterExpression filterExpression) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(filterExpression);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements FilterExpressionOrBuilder {
            private SingleFieldBuilderV3<All, All.Builder, AllOrBuilder> allBuilder_;
            private SingleFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> anyBuilder_;
            private int nodeCase_;
            private Object node_;
            private SingleFieldBuilderV3<Rule, Rule.Builder, RuleOrBuilder> ruleBuilder_;

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_FilterExpression_descriptor;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_FilterExpression_fieldAccessorTable.ensureFieldAccessorsInitialized(FilterExpression.class, Builder.class);
            }

            private Builder() {
                this.nodeCase_ = 0;
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.nodeCase_ = 0;
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.nodeCase_ = 0;
                this.node_ = null;
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_FilterExpression_descriptor;
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            /* JADX INFO: renamed from: getDefaultInstanceForType */
            public FilterExpression mo687getDefaultInstanceForType() {
                return FilterExpression.getDefaultInstance();
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public FilterExpression build() {
                FilterExpression filterExpressionBuildPartial = buildPartial();
                if (filterExpressionBuildPartial.isInitialized()) {
                    return filterExpressionBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) filterExpressionBuildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public FilterExpression buildPartial() {
                FilterExpression filterExpression = new FilterExpression(this);
                if (this.nodeCase_ == 1) {
                    SingleFieldBuilderV3<All, All.Builder, AllOrBuilder> singleFieldBuilderV3 = this.allBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        filterExpression.node_ = this.node_;
                    } else {
                        filterExpression.node_ = singleFieldBuilderV3.build();
                    }
                }
                if (this.nodeCase_ == 2) {
                    SingleFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> singleFieldBuilderV32 = this.anyBuilder_;
                    if (singleFieldBuilderV32 == null) {
                        filterExpression.node_ = this.node_;
                    } else {
                        filterExpression.node_ = singleFieldBuilderV32.build();
                    }
                }
                if (this.nodeCase_ == 3) {
                    SingleFieldBuilderV3<Rule, Rule.Builder, RuleOrBuilder> singleFieldBuilderV33 = this.ruleBuilder_;
                    if (singleFieldBuilderV33 == null) {
                        filterExpression.node_ = this.node_;
                    } else {
                        filterExpression.node_ = singleFieldBuilderV33.build();
                    }
                }
                filterExpression.nodeCase_ = this.nodeCase_;
                onBuilt();
                return filterExpression;
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
                if (message instanceof FilterExpression) {
                    return mergeFrom((FilterExpression) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(FilterExpression filterExpression) {
                if (filterExpression == FilterExpression.getDefaultInstance()) {
                    return this;
                }
                int i = AnonymousClass2.$SwitchMap$io$bidmachine$protobuf$sdk$Monitor$FilterExpression$NodeCase[filterExpression.getNodeCase().ordinal()];
                if (i == 1) {
                    mergeAll(filterExpression.getAll());
                } else if (i == 2) {
                    mergeAny(filterExpression.getAny());
                } else if (i == 3) {
                    mergeRule(filterExpression.getRule());
                }
                mergeUnknownFields(((GeneratedMessageV3) filterExpression).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public io.bidmachine.protobuf.sdk.Monitor.FilterExpression.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r3, com.explorestack.protobuf.ExtensionRegistryLite r4) throws java.lang.Throwable {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.Parser r1 = io.bidmachine.protobuf.sdk.Monitor.FilterExpression.access$5700()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    io.bidmachine.protobuf.sdk.Monitor$FilterExpression r3 = (io.bidmachine.protobuf.sdk.Monitor.FilterExpression) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                    io.bidmachine.protobuf.sdk.Monitor$FilterExpression r4 = (io.bidmachine.protobuf.sdk.Monitor.FilterExpression) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.sdk.Monitor.FilterExpression.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):io.bidmachine.protobuf.sdk.Monitor$FilterExpression$Builder");
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.FilterExpressionOrBuilder
            public NodeCase getNodeCase() {
                return NodeCase.forNumber(this.nodeCase_);
            }

            public Builder clearNode() {
                this.nodeCase_ = 0;
                this.node_ = null;
                onChanged();
                return this;
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.FilterExpressionOrBuilder
            public boolean hasAll() {
                return this.nodeCase_ == 1;
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.FilterExpressionOrBuilder
            public All getAll() {
                SingleFieldBuilderV3<All, All.Builder, AllOrBuilder> singleFieldBuilderV3 = this.allBuilder_;
                if (singleFieldBuilderV3 == null) {
                    if (this.nodeCase_ == 1) {
                        return (All) this.node_;
                    }
                    return All.getDefaultInstance();
                }
                if (this.nodeCase_ == 1) {
                    return (All) singleFieldBuilderV3.getMessage();
                }
                return All.getDefaultInstance();
            }

            public Builder setAll(All all) {
                SingleFieldBuilderV3<All, All.Builder, AllOrBuilder> singleFieldBuilderV3 = this.allBuilder_;
                if (singleFieldBuilderV3 == null) {
                    all.getClass();
                    this.node_ = all;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(all);
                }
                this.nodeCase_ = 1;
                return this;
            }

            public Builder setAll(All.Builder builder) {
                SingleFieldBuilderV3<All, All.Builder, AllOrBuilder> singleFieldBuilderV3 = this.allBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.node_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builder.build());
                }
                this.nodeCase_ = 1;
                return this;
            }

            public Builder mergeAll(All all) {
                SingleFieldBuilderV3<All, All.Builder, AllOrBuilder> singleFieldBuilderV3 = this.allBuilder_;
                if (singleFieldBuilderV3 == null) {
                    if (this.nodeCase_ == 1 && this.node_ != All.getDefaultInstance()) {
                        this.node_ = All.newBuilder((All) this.node_).mergeFrom(all).buildPartial();
                    } else {
                        this.node_ = all;
                    }
                    onChanged();
                } else {
                    if (this.nodeCase_ == 1) {
                        singleFieldBuilderV3.mergeFrom(all);
                    }
                    this.allBuilder_.setMessage(all);
                }
                this.nodeCase_ = 1;
                return this;
            }

            public Builder clearAll() {
                SingleFieldBuilderV3<All, All.Builder, AllOrBuilder> singleFieldBuilderV3 = this.allBuilder_;
                if (singleFieldBuilderV3 == null) {
                    if (this.nodeCase_ == 1) {
                        this.nodeCase_ = 0;
                        this.node_ = null;
                        onChanged();
                    }
                    return this;
                }
                if (this.nodeCase_ == 1) {
                    this.nodeCase_ = 0;
                    this.node_ = null;
                }
                singleFieldBuilderV3.clear();
                return this;
            }

            public All.Builder getAllBuilder() {
                return (All.Builder) getAllFieldBuilder().getBuilder();
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.FilterExpressionOrBuilder
            public AllOrBuilder getAllOrBuilder() {
                SingleFieldBuilderV3<All, All.Builder, AllOrBuilder> singleFieldBuilderV3;
                int i = this.nodeCase_;
                if (i == 1 && (singleFieldBuilderV3 = this.allBuilder_) != null) {
                    return (AllOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
                }
                if (i == 1) {
                    return (All) this.node_;
                }
                return All.getDefaultInstance();
            }

            private SingleFieldBuilderV3<All, All.Builder, AllOrBuilder> getAllFieldBuilder() {
                if (this.allBuilder_ == null) {
                    if (this.nodeCase_ != 1) {
                        this.node_ = All.getDefaultInstance();
                    }
                    this.allBuilder_ = new SingleFieldBuilderV3<>((All) this.node_, getParentForChildren(), isClean());
                    this.node_ = null;
                }
                this.nodeCase_ = 1;
                onChanged();
                return this.allBuilder_;
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.FilterExpressionOrBuilder
            public boolean hasAny() {
                return this.nodeCase_ == 2;
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.FilterExpressionOrBuilder
            public Any getAny() {
                SingleFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> singleFieldBuilderV3 = this.anyBuilder_;
                if (singleFieldBuilderV3 == null) {
                    if (this.nodeCase_ == 2) {
                        return (Any) this.node_;
                    }
                    return Any.getDefaultInstance();
                }
                if (this.nodeCase_ == 2) {
                    return (Any) singleFieldBuilderV3.getMessage();
                }
                return Any.getDefaultInstance();
            }

            public Builder setAny(Any any) {
                SingleFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> singleFieldBuilderV3 = this.anyBuilder_;
                if (singleFieldBuilderV3 == null) {
                    any.getClass();
                    this.node_ = any;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(any);
                }
                this.nodeCase_ = 2;
                return this;
            }

            public Builder setAny(Any.Builder builder) {
                SingleFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> singleFieldBuilderV3 = this.anyBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.node_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builder.build());
                }
                this.nodeCase_ = 2;
                return this;
            }

            public Builder mergeAny(Any any) {
                SingleFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> singleFieldBuilderV3 = this.anyBuilder_;
                if (singleFieldBuilderV3 == null) {
                    if (this.nodeCase_ == 2 && this.node_ != Any.getDefaultInstance()) {
                        this.node_ = Any.newBuilder((Any) this.node_).mergeFrom(any).buildPartial();
                    } else {
                        this.node_ = any;
                    }
                    onChanged();
                } else {
                    if (this.nodeCase_ == 2) {
                        singleFieldBuilderV3.mergeFrom(any);
                    }
                    this.anyBuilder_.setMessage(any);
                }
                this.nodeCase_ = 2;
                return this;
            }

            public Builder clearAny() {
                SingleFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> singleFieldBuilderV3 = this.anyBuilder_;
                if (singleFieldBuilderV3 == null) {
                    if (this.nodeCase_ == 2) {
                        this.nodeCase_ = 0;
                        this.node_ = null;
                        onChanged();
                    }
                    return this;
                }
                if (this.nodeCase_ == 2) {
                    this.nodeCase_ = 0;
                    this.node_ = null;
                }
                singleFieldBuilderV3.clear();
                return this;
            }

            public Any.Builder getAnyBuilder() {
                return (Any.Builder) getAnyFieldBuilder().getBuilder();
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.FilterExpressionOrBuilder
            public AnyOrBuilder getAnyOrBuilder() {
                SingleFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> singleFieldBuilderV3;
                int i = this.nodeCase_;
                if (i == 2 && (singleFieldBuilderV3 = this.anyBuilder_) != null) {
                    return (AnyOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
                }
                if (i == 2) {
                    return (Any) this.node_;
                }
                return Any.getDefaultInstance();
            }

            private SingleFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> getAnyFieldBuilder() {
                if (this.anyBuilder_ == null) {
                    if (this.nodeCase_ != 2) {
                        this.node_ = Any.getDefaultInstance();
                    }
                    this.anyBuilder_ = new SingleFieldBuilderV3<>((Any) this.node_, getParentForChildren(), isClean());
                    this.node_ = null;
                }
                this.nodeCase_ = 2;
                onChanged();
                return this.anyBuilder_;
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.FilterExpressionOrBuilder
            public boolean hasRule() {
                return this.nodeCase_ == 3;
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.FilterExpressionOrBuilder
            public Rule getRule() {
                SingleFieldBuilderV3<Rule, Rule.Builder, RuleOrBuilder> singleFieldBuilderV3 = this.ruleBuilder_;
                if (singleFieldBuilderV3 == null) {
                    if (this.nodeCase_ == 3) {
                        return (Rule) this.node_;
                    }
                    return Rule.getDefaultInstance();
                }
                if (this.nodeCase_ == 3) {
                    return (Rule) singleFieldBuilderV3.getMessage();
                }
                return Rule.getDefaultInstance();
            }

            public Builder setRule(Rule rule) {
                SingleFieldBuilderV3<Rule, Rule.Builder, RuleOrBuilder> singleFieldBuilderV3 = this.ruleBuilder_;
                if (singleFieldBuilderV3 == null) {
                    rule.getClass();
                    this.node_ = rule;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(rule);
                }
                this.nodeCase_ = 3;
                return this;
            }

            public Builder setRule(Rule.Builder builder) {
                SingleFieldBuilderV3<Rule, Rule.Builder, RuleOrBuilder> singleFieldBuilderV3 = this.ruleBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.node_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builder.build());
                }
                this.nodeCase_ = 3;
                return this;
            }

            public Builder mergeRule(Rule rule) {
                SingleFieldBuilderV3<Rule, Rule.Builder, RuleOrBuilder> singleFieldBuilderV3 = this.ruleBuilder_;
                if (singleFieldBuilderV3 == null) {
                    if (this.nodeCase_ == 3 && this.node_ != Rule.getDefaultInstance()) {
                        this.node_ = Rule.newBuilder((Rule) this.node_).mergeFrom(rule).buildPartial();
                    } else {
                        this.node_ = rule;
                    }
                    onChanged();
                } else {
                    if (this.nodeCase_ == 3) {
                        singleFieldBuilderV3.mergeFrom(rule);
                    }
                    this.ruleBuilder_.setMessage(rule);
                }
                this.nodeCase_ = 3;
                return this;
            }

            public Builder clearRule() {
                SingleFieldBuilderV3<Rule, Rule.Builder, RuleOrBuilder> singleFieldBuilderV3 = this.ruleBuilder_;
                if (singleFieldBuilderV3 == null) {
                    if (this.nodeCase_ == 3) {
                        this.nodeCase_ = 0;
                        this.node_ = null;
                        onChanged();
                    }
                    return this;
                }
                if (this.nodeCase_ == 3) {
                    this.nodeCase_ = 0;
                    this.node_ = null;
                }
                singleFieldBuilderV3.clear();
                return this;
            }

            public Rule.Builder getRuleBuilder() {
                return (Rule.Builder) getRuleFieldBuilder().getBuilder();
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.FilterExpressionOrBuilder
            public RuleOrBuilder getRuleOrBuilder() {
                SingleFieldBuilderV3<Rule, Rule.Builder, RuleOrBuilder> singleFieldBuilderV3;
                int i = this.nodeCase_;
                if (i == 3 && (singleFieldBuilderV3 = this.ruleBuilder_) != null) {
                    return (RuleOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
                }
                if (i == 3) {
                    return (Rule) this.node_;
                }
                return Rule.getDefaultInstance();
            }

            private SingleFieldBuilderV3<Rule, Rule.Builder, RuleOrBuilder> getRuleFieldBuilder() {
                if (this.ruleBuilder_ == null) {
                    if (this.nodeCase_ != 3) {
                        this.node_ = Rule.getDefaultInstance();
                    }
                    this.ruleBuilder_ = new SingleFieldBuilderV3<>((Rule) this.node_, getParentForChildren(), isClean());
                    this.node_ = null;
                }
                this.nodeCase_ = 3;
                onChanged();
                return this.ruleBuilder_;
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

        public static FilterExpression getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<FilterExpression> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Parser<FilterExpression> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        /* JADX INFO: renamed from: getDefaultInstanceForType */
        public FilterExpression mo687getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class All extends GeneratedMessageV3 implements AllOrBuilder {
        public static final int ITEMS_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private List<FilterExpression> items_;
        private byte memoizedIsInitialized;
        private static final All DEFAULT_INSTANCE = new All();
        private static final Parser<All> PARSER = new AbstractParser<All>() { // from class: io.bidmachine.protobuf.sdk.Monitor.All.1
            @Override // com.explorestack.protobuf.Parser
            public All parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new All(codedInputStream, extensionRegistryLite);
            }
        };

        private All(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private All() {
            this.memoizedIsInitialized = (byte) -1;
            this.items_ = Collections.EMPTY_LIST;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
            return new All();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private All(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                    if (!z2) {
                                        this.items_ = new ArrayList();
                                        z2 = true;
                                    }
                                    this.items_.add((FilterExpression) codedInputStream.readMessage(FilterExpression.parser(), extensionRegistryLite));
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
                        this.items_ = Collections.unmodifiableList(this.items_);
                    }
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            if (z2) {
                this.items_ = Collections.unmodifiableList(this.items_);
            }
            this.unknownFields = builderNewBuilder.build();
            makeExtensionsImmutable();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_All_descriptor;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_All_fieldAccessorTable.ensureFieldAccessorsInitialized(All.class, Builder.class);
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.AllOrBuilder
        public List<FilterExpression> getItemsList() {
            return this.items_;
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.AllOrBuilder
        public List<? extends FilterExpressionOrBuilder> getItemsOrBuilderList() {
            return this.items_;
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.AllOrBuilder
        public int getItemsCount() {
            return this.items_.size();
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.AllOrBuilder
        public FilterExpression getItems(int i) {
            return this.items_.get(i);
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.AllOrBuilder
        public FilterExpressionOrBuilder getItemsOrBuilder(int i) {
            return this.items_.get(i);
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
            for (int i = 0; i < this.items_.size(); i++) {
                codedOutputStream.writeMessage(1, this.items_.get(i));
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
            for (int i2 = 0; i2 < this.items_.size(); i2++) {
                iComputeMessageSize += CodedOutputStream.computeMessageSize(1, this.items_.get(i2));
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
            if (!(obj instanceof All)) {
                return super.equals(obj);
            }
            All all = (All) obj;
            return getItemsList().equals(all.getItemsList()) && this.unknownFields.equals(all.unknownFields);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (getItemsCount() > 0) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getItemsList().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static All parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static All parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static All parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static All parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static All parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static All parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static All parseFrom(InputStream inputStream) throws IOException {
            return (All) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static All parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (All) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static All parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (All) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static All parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (All) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static All parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (All) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static All parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (All) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(All all) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(all);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements AllOrBuilder {
            private int bitField0_;
            private RepeatedFieldBuilderV3<FilterExpression, FilterExpression.Builder, FilterExpressionOrBuilder> itemsBuilder_;
            private List<FilterExpression> items_;

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_All_descriptor;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_All_fieldAccessorTable.ensureFieldAccessorsInitialized(All.class, Builder.class);
            }

            private Builder() {
                this.items_ = Collections.EMPTY_LIST;
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.items_ = Collections.EMPTY_LIST;
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    getItemsFieldBuilder();
                }
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                RepeatedFieldBuilderV3<FilterExpression, FilterExpression.Builder, FilterExpressionOrBuilder> repeatedFieldBuilderV3 = this.itemsBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.items_ = Collections.EMPTY_LIST;
                    this.bitField0_ &= -2;
                    return this;
                }
                repeatedFieldBuilderV3.clear();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_All_descriptor;
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            /* JADX INFO: renamed from: getDefaultInstanceForType */
            public All mo687getDefaultInstanceForType() {
                return All.getDefaultInstance();
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public All build() {
                All allBuildPartial = buildPartial();
                if (allBuildPartial.isInitialized()) {
                    return allBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) allBuildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public All buildPartial() {
                All all = new All(this);
                int i = this.bitField0_;
                RepeatedFieldBuilderV3<FilterExpression, FilterExpression.Builder, FilterExpressionOrBuilder> repeatedFieldBuilderV3 = this.itemsBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    if ((i & 1) != 0) {
                        this.items_ = Collections.unmodifiableList(this.items_);
                        this.bitField0_ &= -2;
                    }
                    all.items_ = this.items_;
                } else {
                    all.items_ = repeatedFieldBuilderV3.build();
                }
                onBuilt();
                return all;
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
                if (message instanceof All) {
                    return mergeFrom((All) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(All all) {
                if (all == All.getDefaultInstance()) {
                    return this;
                }
                if (this.itemsBuilder_ == null) {
                    if (!all.items_.isEmpty()) {
                        if (this.items_.isEmpty()) {
                            this.items_ = all.items_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureItemsIsMutable();
                            this.items_.addAll(all.items_);
                        }
                        onChanged();
                    }
                } else if (!all.items_.isEmpty()) {
                    if (!this.itemsBuilder_.isEmpty()) {
                        this.itemsBuilder_.addAllMessages(all.items_);
                    } else {
                        this.itemsBuilder_.dispose();
                        this.itemsBuilder_ = null;
                        this.items_ = all.items_;
                        this.bitField0_ &= -2;
                        this.itemsBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getItemsFieldBuilder() : null;
                    }
                }
                mergeUnknownFields(((GeneratedMessageV3) all).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public io.bidmachine.protobuf.sdk.Monitor.All.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r3, com.explorestack.protobuf.ExtensionRegistryLite r4) throws java.lang.Throwable {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.Parser r1 = io.bidmachine.protobuf.sdk.Monitor.All.access$6600()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    io.bidmachine.protobuf.sdk.Monitor$All r3 = (io.bidmachine.protobuf.sdk.Monitor.All) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                    io.bidmachine.protobuf.sdk.Monitor$All r4 = (io.bidmachine.protobuf.sdk.Monitor.All) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.sdk.Monitor.All.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):io.bidmachine.protobuf.sdk.Monitor$All$Builder");
            }

            private void ensureItemsIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.items_ = new ArrayList(this.items_);
                    this.bitField0_ |= 1;
                }
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.AllOrBuilder
            public List<FilterExpression> getItemsList() {
                RepeatedFieldBuilderV3<FilterExpression, FilterExpression.Builder, FilterExpressionOrBuilder> repeatedFieldBuilderV3 = this.itemsBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    return Collections.unmodifiableList(this.items_);
                }
                return repeatedFieldBuilderV3.getMessageList();
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.AllOrBuilder
            public int getItemsCount() {
                RepeatedFieldBuilderV3<FilterExpression, FilterExpression.Builder, FilterExpressionOrBuilder> repeatedFieldBuilderV3 = this.itemsBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    return this.items_.size();
                }
                return repeatedFieldBuilderV3.getCount();
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.AllOrBuilder
            public FilterExpression getItems(int i) {
                RepeatedFieldBuilderV3<FilterExpression, FilterExpression.Builder, FilterExpressionOrBuilder> repeatedFieldBuilderV3 = this.itemsBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    return this.items_.get(i);
                }
                return (FilterExpression) repeatedFieldBuilderV3.getMessage(i);
            }

            public Builder setItems(int i, FilterExpression filterExpression) {
                RepeatedFieldBuilderV3<FilterExpression, FilterExpression.Builder, FilterExpressionOrBuilder> repeatedFieldBuilderV3 = this.itemsBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    filterExpression.getClass();
                    ensureItemsIsMutable();
                    this.items_.set(i, filterExpression);
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.setMessage(i, filterExpression);
                return this;
            }

            public Builder setItems(int i, FilterExpression.Builder builder) {
                RepeatedFieldBuilderV3<FilterExpression, FilterExpression.Builder, FilterExpressionOrBuilder> repeatedFieldBuilderV3 = this.itemsBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureItemsIsMutable();
                    this.items_.set(i, builder.build());
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.setMessage(i, builder.build());
                return this;
            }

            public Builder addItems(FilterExpression filterExpression) {
                RepeatedFieldBuilderV3<FilterExpression, FilterExpression.Builder, FilterExpressionOrBuilder> repeatedFieldBuilderV3 = this.itemsBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    filterExpression.getClass();
                    ensureItemsIsMutable();
                    this.items_.add(filterExpression);
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.addMessage(filterExpression);
                return this;
            }

            public Builder addItems(int i, FilterExpression filterExpression) {
                RepeatedFieldBuilderV3<FilterExpression, FilterExpression.Builder, FilterExpressionOrBuilder> repeatedFieldBuilderV3 = this.itemsBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    filterExpression.getClass();
                    ensureItemsIsMutable();
                    this.items_.add(i, filterExpression);
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.addMessage(i, filterExpression);
                return this;
            }

            public Builder addItems(FilterExpression.Builder builder) {
                RepeatedFieldBuilderV3<FilterExpression, FilterExpression.Builder, FilterExpressionOrBuilder> repeatedFieldBuilderV3 = this.itemsBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureItemsIsMutable();
                    this.items_.add(builder.build());
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.addMessage(builder.build());
                return this;
            }

            public Builder addItems(int i, FilterExpression.Builder builder) {
                RepeatedFieldBuilderV3<FilterExpression, FilterExpression.Builder, FilterExpressionOrBuilder> repeatedFieldBuilderV3 = this.itemsBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureItemsIsMutable();
                    this.items_.add(i, builder.build());
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.addMessage(i, builder.build());
                return this;
            }

            public Builder addAllItems(Iterable<? extends FilterExpression> iterable) {
                RepeatedFieldBuilderV3<FilterExpression, FilterExpression.Builder, FilterExpressionOrBuilder> repeatedFieldBuilderV3 = this.itemsBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureItemsIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.items_);
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.addAllMessages(iterable);
                return this;
            }

            public Builder clearItems() {
                RepeatedFieldBuilderV3<FilterExpression, FilterExpression.Builder, FilterExpressionOrBuilder> repeatedFieldBuilderV3 = this.itemsBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.items_ = Collections.EMPTY_LIST;
                    this.bitField0_ &= -2;
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.clear();
                return this;
            }

            public Builder removeItems(int i) {
                RepeatedFieldBuilderV3<FilterExpression, FilterExpression.Builder, FilterExpressionOrBuilder> repeatedFieldBuilderV3 = this.itemsBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureItemsIsMutable();
                    this.items_.remove(i);
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.remove(i);
                return this;
            }

            public FilterExpression.Builder getItemsBuilder(int i) {
                return (FilterExpression.Builder) getItemsFieldBuilder().getBuilder(i);
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.AllOrBuilder
            public FilterExpressionOrBuilder getItemsOrBuilder(int i) {
                RepeatedFieldBuilderV3<FilterExpression, FilterExpression.Builder, FilterExpressionOrBuilder> repeatedFieldBuilderV3 = this.itemsBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    return this.items_.get(i);
                }
                return (FilterExpressionOrBuilder) repeatedFieldBuilderV3.getMessageOrBuilder(i);
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.AllOrBuilder
            public List<? extends FilterExpressionOrBuilder> getItemsOrBuilderList() {
                RepeatedFieldBuilderV3<FilterExpression, FilterExpression.Builder, FilterExpressionOrBuilder> repeatedFieldBuilderV3 = this.itemsBuilder_;
                if (repeatedFieldBuilderV3 != null) {
                    return repeatedFieldBuilderV3.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.items_);
            }

            public FilterExpression.Builder addItemsBuilder() {
                return (FilterExpression.Builder) getItemsFieldBuilder().addBuilder(FilterExpression.getDefaultInstance());
            }

            public FilterExpression.Builder addItemsBuilder(int i) {
                return (FilterExpression.Builder) getItemsFieldBuilder().addBuilder(i, FilterExpression.getDefaultInstance());
            }

            public List<FilterExpression.Builder> getItemsBuilderList() {
                return getItemsFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilderV3<FilterExpression, FilterExpression.Builder, FilterExpressionOrBuilder> getItemsFieldBuilder() {
                if (this.itemsBuilder_ == null) {
                    this.itemsBuilder_ = new RepeatedFieldBuilderV3<>(this.items_, (this.bitField0_ & 1) != 0, getParentForChildren(), isClean());
                    this.items_ = null;
                }
                return this.itemsBuilder_;
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

        public static All getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<All> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Parser<All> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        /* JADX INFO: renamed from: getDefaultInstanceForType */
        public All mo687getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class Any extends GeneratedMessageV3 implements AnyOrBuilder {
        public static final int ITEMS_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private List<FilterExpression> items_;
        private byte memoizedIsInitialized;
        private static final Any DEFAULT_INSTANCE = new Any();
        private static final Parser<Any> PARSER = new AbstractParser<Any>() { // from class: io.bidmachine.protobuf.sdk.Monitor.Any.1
            @Override // com.explorestack.protobuf.Parser
            public Any parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new Any(codedInputStream, extensionRegistryLite);
            }
        };

        private Any(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private Any() {
            this.memoizedIsInitialized = (byte) -1;
            this.items_ = Collections.EMPTY_LIST;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
            return new Any();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private Any(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                    if (!z2) {
                                        this.items_ = new ArrayList();
                                        z2 = true;
                                    }
                                    this.items_.add((FilterExpression) codedInputStream.readMessage(FilterExpression.parser(), extensionRegistryLite));
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
                        this.items_ = Collections.unmodifiableList(this.items_);
                    }
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            if (z2) {
                this.items_ = Collections.unmodifiableList(this.items_);
            }
            this.unknownFields = builderNewBuilder.build();
            makeExtensionsImmutable();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_Any_descriptor;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_Any_fieldAccessorTable.ensureFieldAccessorsInitialized(Any.class, Builder.class);
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.AnyOrBuilder
        public List<FilterExpression> getItemsList() {
            return this.items_;
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.AnyOrBuilder
        public List<? extends FilterExpressionOrBuilder> getItemsOrBuilderList() {
            return this.items_;
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.AnyOrBuilder
        public int getItemsCount() {
            return this.items_.size();
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.AnyOrBuilder
        public FilterExpression getItems(int i) {
            return this.items_.get(i);
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.AnyOrBuilder
        public FilterExpressionOrBuilder getItemsOrBuilder(int i) {
            return this.items_.get(i);
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
            for (int i = 0; i < this.items_.size(); i++) {
                codedOutputStream.writeMessage(1, this.items_.get(i));
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
            for (int i2 = 0; i2 < this.items_.size(); i2++) {
                iComputeMessageSize += CodedOutputStream.computeMessageSize(1, this.items_.get(i2));
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
            if (!(obj instanceof Any)) {
                return super.equals(obj);
            }
            Any any = (Any) obj;
            return getItemsList().equals(any.getItemsList()) && this.unknownFields.equals(any.unknownFields);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (getItemsCount() > 0) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getItemsList().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static Any parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Any parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static Any parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static Any parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static Any parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static Any parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static Any parseFrom(InputStream inputStream) throws IOException {
            return (Any) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static Any parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Any) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static Any parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Any) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Any parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Any) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static Any parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (Any) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static Any parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Any) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(Any any) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(any);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements AnyOrBuilder {
            private int bitField0_;
            private RepeatedFieldBuilderV3<FilterExpression, FilterExpression.Builder, FilterExpressionOrBuilder> itemsBuilder_;
            private List<FilterExpression> items_;

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_Any_descriptor;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_Any_fieldAccessorTable.ensureFieldAccessorsInitialized(Any.class, Builder.class);
            }

            private Builder() {
                this.items_ = Collections.EMPTY_LIST;
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.items_ = Collections.EMPTY_LIST;
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    getItemsFieldBuilder();
                }
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                RepeatedFieldBuilderV3<FilterExpression, FilterExpression.Builder, FilterExpressionOrBuilder> repeatedFieldBuilderV3 = this.itemsBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.items_ = Collections.EMPTY_LIST;
                    this.bitField0_ &= -2;
                    return this;
                }
                repeatedFieldBuilderV3.clear();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_Any_descriptor;
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            /* JADX INFO: renamed from: getDefaultInstanceForType */
            public Any mo687getDefaultInstanceForType() {
                return Any.getDefaultInstance();
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Any build() {
                Any anyBuildPartial = buildPartial();
                if (anyBuildPartial.isInitialized()) {
                    return anyBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) anyBuildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Any buildPartial() {
                Any any = new Any(this);
                int i = this.bitField0_;
                RepeatedFieldBuilderV3<FilterExpression, FilterExpression.Builder, FilterExpressionOrBuilder> repeatedFieldBuilderV3 = this.itemsBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    if ((i & 1) != 0) {
                        this.items_ = Collections.unmodifiableList(this.items_);
                        this.bitField0_ &= -2;
                    }
                    any.items_ = this.items_;
                } else {
                    any.items_ = repeatedFieldBuilderV3.build();
                }
                onBuilt();
                return any;
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
                if (message instanceof Any) {
                    return mergeFrom((Any) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(Any any) {
                if (any == Any.getDefaultInstance()) {
                    return this;
                }
                if (this.itemsBuilder_ == null) {
                    if (!any.items_.isEmpty()) {
                        if (this.items_.isEmpty()) {
                            this.items_ = any.items_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureItemsIsMutable();
                            this.items_.addAll(any.items_);
                        }
                        onChanged();
                    }
                } else if (!any.items_.isEmpty()) {
                    if (!this.itemsBuilder_.isEmpty()) {
                        this.itemsBuilder_.addAllMessages(any.items_);
                    } else {
                        this.itemsBuilder_.dispose();
                        this.itemsBuilder_ = null;
                        this.items_ = any.items_;
                        this.bitField0_ &= -2;
                        this.itemsBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getItemsFieldBuilder() : null;
                    }
                }
                mergeUnknownFields(((GeneratedMessageV3) any).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public io.bidmachine.protobuf.sdk.Monitor.Any.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r3, com.explorestack.protobuf.ExtensionRegistryLite r4) throws java.lang.Throwable {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.Parser r1 = io.bidmachine.protobuf.sdk.Monitor.Any.access$7500()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    io.bidmachine.protobuf.sdk.Monitor$Any r3 = (io.bidmachine.protobuf.sdk.Monitor.Any) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                    io.bidmachine.protobuf.sdk.Monitor$Any r4 = (io.bidmachine.protobuf.sdk.Monitor.Any) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.sdk.Monitor.Any.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):io.bidmachine.protobuf.sdk.Monitor$Any$Builder");
            }

            private void ensureItemsIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.items_ = new ArrayList(this.items_);
                    this.bitField0_ |= 1;
                }
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.AnyOrBuilder
            public List<FilterExpression> getItemsList() {
                RepeatedFieldBuilderV3<FilterExpression, FilterExpression.Builder, FilterExpressionOrBuilder> repeatedFieldBuilderV3 = this.itemsBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    return Collections.unmodifiableList(this.items_);
                }
                return repeatedFieldBuilderV3.getMessageList();
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.AnyOrBuilder
            public int getItemsCount() {
                RepeatedFieldBuilderV3<FilterExpression, FilterExpression.Builder, FilterExpressionOrBuilder> repeatedFieldBuilderV3 = this.itemsBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    return this.items_.size();
                }
                return repeatedFieldBuilderV3.getCount();
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.AnyOrBuilder
            public FilterExpression getItems(int i) {
                RepeatedFieldBuilderV3<FilterExpression, FilterExpression.Builder, FilterExpressionOrBuilder> repeatedFieldBuilderV3 = this.itemsBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    return this.items_.get(i);
                }
                return (FilterExpression) repeatedFieldBuilderV3.getMessage(i);
            }

            public Builder setItems(int i, FilterExpression filterExpression) {
                RepeatedFieldBuilderV3<FilterExpression, FilterExpression.Builder, FilterExpressionOrBuilder> repeatedFieldBuilderV3 = this.itemsBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    filterExpression.getClass();
                    ensureItemsIsMutable();
                    this.items_.set(i, filterExpression);
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.setMessage(i, filterExpression);
                return this;
            }

            public Builder setItems(int i, FilterExpression.Builder builder) {
                RepeatedFieldBuilderV3<FilterExpression, FilterExpression.Builder, FilterExpressionOrBuilder> repeatedFieldBuilderV3 = this.itemsBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureItemsIsMutable();
                    this.items_.set(i, builder.build());
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.setMessage(i, builder.build());
                return this;
            }

            public Builder addItems(FilterExpression filterExpression) {
                RepeatedFieldBuilderV3<FilterExpression, FilterExpression.Builder, FilterExpressionOrBuilder> repeatedFieldBuilderV3 = this.itemsBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    filterExpression.getClass();
                    ensureItemsIsMutable();
                    this.items_.add(filterExpression);
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.addMessage(filterExpression);
                return this;
            }

            public Builder addItems(int i, FilterExpression filterExpression) {
                RepeatedFieldBuilderV3<FilterExpression, FilterExpression.Builder, FilterExpressionOrBuilder> repeatedFieldBuilderV3 = this.itemsBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    filterExpression.getClass();
                    ensureItemsIsMutable();
                    this.items_.add(i, filterExpression);
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.addMessage(i, filterExpression);
                return this;
            }

            public Builder addItems(FilterExpression.Builder builder) {
                RepeatedFieldBuilderV3<FilterExpression, FilterExpression.Builder, FilterExpressionOrBuilder> repeatedFieldBuilderV3 = this.itemsBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureItemsIsMutable();
                    this.items_.add(builder.build());
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.addMessage(builder.build());
                return this;
            }

            public Builder addItems(int i, FilterExpression.Builder builder) {
                RepeatedFieldBuilderV3<FilterExpression, FilterExpression.Builder, FilterExpressionOrBuilder> repeatedFieldBuilderV3 = this.itemsBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureItemsIsMutable();
                    this.items_.add(i, builder.build());
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.addMessage(i, builder.build());
                return this;
            }

            public Builder addAllItems(Iterable<? extends FilterExpression> iterable) {
                RepeatedFieldBuilderV3<FilterExpression, FilterExpression.Builder, FilterExpressionOrBuilder> repeatedFieldBuilderV3 = this.itemsBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureItemsIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.items_);
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.addAllMessages(iterable);
                return this;
            }

            public Builder clearItems() {
                RepeatedFieldBuilderV3<FilterExpression, FilterExpression.Builder, FilterExpressionOrBuilder> repeatedFieldBuilderV3 = this.itemsBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.items_ = Collections.EMPTY_LIST;
                    this.bitField0_ &= -2;
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.clear();
                return this;
            }

            public Builder removeItems(int i) {
                RepeatedFieldBuilderV3<FilterExpression, FilterExpression.Builder, FilterExpressionOrBuilder> repeatedFieldBuilderV3 = this.itemsBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureItemsIsMutable();
                    this.items_.remove(i);
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.remove(i);
                return this;
            }

            public FilterExpression.Builder getItemsBuilder(int i) {
                return (FilterExpression.Builder) getItemsFieldBuilder().getBuilder(i);
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.AnyOrBuilder
            public FilterExpressionOrBuilder getItemsOrBuilder(int i) {
                RepeatedFieldBuilderV3<FilterExpression, FilterExpression.Builder, FilterExpressionOrBuilder> repeatedFieldBuilderV3 = this.itemsBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    return this.items_.get(i);
                }
                return (FilterExpressionOrBuilder) repeatedFieldBuilderV3.getMessageOrBuilder(i);
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.AnyOrBuilder
            public List<? extends FilterExpressionOrBuilder> getItemsOrBuilderList() {
                RepeatedFieldBuilderV3<FilterExpression, FilterExpression.Builder, FilterExpressionOrBuilder> repeatedFieldBuilderV3 = this.itemsBuilder_;
                if (repeatedFieldBuilderV3 != null) {
                    return repeatedFieldBuilderV3.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.items_);
            }

            public FilterExpression.Builder addItemsBuilder() {
                return (FilterExpression.Builder) getItemsFieldBuilder().addBuilder(FilterExpression.getDefaultInstance());
            }

            public FilterExpression.Builder addItemsBuilder(int i) {
                return (FilterExpression.Builder) getItemsFieldBuilder().addBuilder(i, FilterExpression.getDefaultInstance());
            }

            public List<FilterExpression.Builder> getItemsBuilderList() {
                return getItemsFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilderV3<FilterExpression, FilterExpression.Builder, FilterExpressionOrBuilder> getItemsFieldBuilder() {
                if (this.itemsBuilder_ == null) {
                    this.itemsBuilder_ = new RepeatedFieldBuilderV3<>(this.items_, (this.bitField0_ & 1) != 0, getParentForChildren(), isClean());
                    this.items_ = null;
                }
                return this.itemsBuilder_;
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

        public static Any getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<Any> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Parser<Any> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        /* JADX INFO: renamed from: getDefaultInstanceForType */
        public Any mo687getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class Rule extends GeneratedMessageV3 implements RuleOrBuilder {
        public static final int MISSING_FIELD_NUMBER = 4;
        public static final int OP_FIELD_NUMBER = 2;
        public static final int PATH_FIELD_NUMBER = 1;
        public static final int VALUES_FIELD_NUMBER = 3;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private int missing_;
        private int op_;
        private LazyStringList path_;
        private List<Value> values_;
        private static final Rule DEFAULT_INSTANCE = new Rule();
        private static final Parser<Rule> PARSER = new AbstractParser<Rule>() { // from class: io.bidmachine.protobuf.sdk.Monitor.Rule.1
            @Override // com.explorestack.protobuf.Parser
            public Rule parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new Rule(codedInputStream, extensionRegistryLite);
            }
        };

        private Rule(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private Rule() {
            this.memoizedIsInitialized = (byte) -1;
            this.path_ = LazyStringArrayList.EMPTY;
            this.op_ = 0;
            this.values_ = Collections.EMPTY_LIST;
            this.missing_ = 0;
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
            int i = 0;
            while (!z) {
                try {
                    try {
                        int tag = codedInputStream.readTag();
                        if (tag != 0) {
                            if (tag == 10) {
                                String stringRequireUtf8 = codedInputStream.readStringRequireUtf8();
                                if ((i & 1) == 0) {
                                    this.path_ = new LazyStringArrayList();
                                    i |= 1;
                                }
                                this.path_.add(stringRequireUtf8);
                            } else if (tag == 16) {
                                this.op_ = codedInputStream.readEnum();
                            } else if (tag == 26) {
                                if ((i & 2) == 0) {
                                    this.values_ = new ArrayList();
                                    i |= 2;
                                }
                                this.values_.add((Value) codedInputStream.readMessage(Value.parser(), extensionRegistryLite));
                            } else if (tag == 32) {
                                this.missing_ = codedInputStream.readEnum();
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
                    if ((i & 1) != 0) {
                        this.path_ = this.path_.getUnmodifiableView();
                    }
                    if ((i & 2) != 0) {
                        this.values_ = Collections.unmodifiableList(this.values_);
                    }
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            if ((i & 1) != 0) {
                this.path_ = this.path_.getUnmodifiableView();
            }
            if ((i & 2) != 0) {
                this.values_ = Collections.unmodifiableList(this.values_);
            }
            this.unknownFields = builderNewBuilder.build();
            makeExtensionsImmutable();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_Rule_descriptor;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_Rule_fieldAccessorTable.ensureFieldAccessorsInitialized(Rule.class, Builder.class);
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.RuleOrBuilder
        public ProtocolStringList getPathList() {
            return this.path_;
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.RuleOrBuilder
        public int getPathCount() {
            return this.path_.size();
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.RuleOrBuilder
        public String getPath(int i) {
            return this.path_.get(i);
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.RuleOrBuilder
        public ByteString getPathBytes(int i) {
            return this.path_.getByteString(i);
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.RuleOrBuilder
        public int getOpValue() {
            return this.op_;
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.RuleOrBuilder
        public Operator getOp() {
            Operator operatorValueOf = Operator.valueOf(this.op_);
            return operatorValueOf == null ? Operator.UNRECOGNIZED : operatorValueOf;
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.RuleOrBuilder
        public List<Value> getValuesList() {
            return this.values_;
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.RuleOrBuilder
        public List<? extends ValueOrBuilder> getValuesOrBuilderList() {
            return this.values_;
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.RuleOrBuilder
        public int getValuesCount() {
            return this.values_.size();
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.RuleOrBuilder
        public Value getValues(int i) {
            return this.values_.get(i);
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.RuleOrBuilder
        public ValueOrBuilder getValuesOrBuilder(int i) {
            return this.values_.get(i);
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.RuleOrBuilder
        public int getMissingValue() {
            return this.missing_;
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.RuleOrBuilder
        public MissingBehavior getMissing() {
            MissingBehavior missingBehaviorValueOf = MissingBehavior.valueOf(this.missing_);
            return missingBehaviorValueOf == null ? MissingBehavior.UNRECOGNIZED : missingBehaviorValueOf;
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
            for (int i = 0; i < this.path_.size(); i++) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.path_.getRaw(i));
            }
            if (this.op_ != Operator.OP_UNSPECIFIED.getNumber()) {
                codedOutputStream.writeEnum(2, this.op_);
            }
            for (int i2 = 0; i2 < this.values_.size(); i2++) {
                codedOutputStream.writeMessage(3, this.values_.get(i2));
            }
            if (this.missing_ != MissingBehavior.MISSING_UNSPECIFIED.getNumber()) {
                codedOutputStream.writeEnum(4, this.missing_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeStringSizeNoTag = 0;
            for (int i2 = 0; i2 < this.path_.size(); i2++) {
                iComputeStringSizeNoTag += GeneratedMessageV3.computeStringSizeNoTag(this.path_.getRaw(i2));
            }
            int size = iComputeStringSizeNoTag + getPathList().size();
            if (this.op_ != Operator.OP_UNSPECIFIED.getNumber()) {
                size += CodedOutputStream.computeEnumSize(2, this.op_);
            }
            for (int i3 = 0; i3 < this.values_.size(); i3++) {
                size += CodedOutputStream.computeMessageSize(3, this.values_.get(i3));
            }
            if (this.missing_ != MissingBehavior.MISSING_UNSPECIFIED.getNumber()) {
                size += CodedOutputStream.computeEnumSize(4, this.missing_);
            }
            int serializedSize = size + this.unknownFields.getSerializedSize();
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
            return getPathList().equals(rule.getPathList()) && this.op_ == rule.op_ && getValuesList().equals(rule.getValuesList()) && this.missing_ == rule.missing_ && this.unknownFields.equals(rule.unknownFields);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public int hashCode() {
            int i = this.memoizedHashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = 779 + getDescriptor().hashCode();
            if (getPathCount() > 0) {
                iHashCode = (((iHashCode * 37) + 1) * 53) + getPathList().hashCode();
            }
            int iHashCode2 = (((iHashCode * 37) + 2) * 53) + this.op_;
            if (getValuesCount() > 0) {
                iHashCode2 = (((iHashCode2 * 37) + 3) * 53) + getValuesList().hashCode();
            }
            int iHashCode3 = (((((iHashCode2 * 37) + 4) * 53) + this.missing_) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode3;
            return iHashCode3;
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
            private int bitField0_;
            private int missing_;
            private int op_;
            private LazyStringList path_;
            private RepeatedFieldBuilderV3<Value, Value.Builder, ValueOrBuilder> valuesBuilder_;
            private List<Value> values_;

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_Rule_descriptor;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_Rule_fieldAccessorTable.ensureFieldAccessorsInitialized(Rule.class, Builder.class);
            }

            private Builder() {
                this.path_ = LazyStringArrayList.EMPTY;
                this.op_ = 0;
                this.values_ = Collections.EMPTY_LIST;
                this.missing_ = 0;
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.path_ = LazyStringArrayList.EMPTY;
                this.op_ = 0;
                this.values_ = Collections.EMPTY_LIST;
                this.missing_ = 0;
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    getValuesFieldBuilder();
                }
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.path_ = LazyStringArrayList.EMPTY;
                int i = this.bitField0_;
                this.bitField0_ = i & (-2);
                this.op_ = 0;
                RepeatedFieldBuilderV3<Value, Value.Builder, ValueOrBuilder> repeatedFieldBuilderV3 = this.valuesBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.values_ = Collections.EMPTY_LIST;
                    this.bitField0_ = i & (-4);
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                this.missing_ = 0;
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_Rule_descriptor;
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
                if ((this.bitField0_ & 1) != 0) {
                    this.path_ = this.path_.getUnmodifiableView();
                    this.bitField0_ &= -2;
                }
                rule.path_ = this.path_;
                rule.op_ = this.op_;
                RepeatedFieldBuilderV3<Value, Value.Builder, ValueOrBuilder> repeatedFieldBuilderV3 = this.valuesBuilder_;
                if (repeatedFieldBuilderV3 != null) {
                    rule.values_ = repeatedFieldBuilderV3.build();
                } else {
                    if ((this.bitField0_ & 2) != 0) {
                        this.values_ = Collections.unmodifiableList(this.values_);
                        this.bitField0_ &= -3;
                    }
                    rule.values_ = this.values_;
                }
                rule.missing_ = this.missing_;
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
                if (!rule.path_.isEmpty()) {
                    if (this.path_.isEmpty()) {
                        this.path_ = rule.path_;
                        this.bitField0_ &= -2;
                    } else {
                        ensurePathIsMutable();
                        this.path_.addAll(rule.path_);
                    }
                    onChanged();
                }
                if (rule.op_ != 0) {
                    setOpValue(rule.getOpValue());
                }
                if (this.valuesBuilder_ == null) {
                    if (!rule.values_.isEmpty()) {
                        if (this.values_.isEmpty()) {
                            this.values_ = rule.values_;
                            this.bitField0_ &= -3;
                        } else {
                            ensureValuesIsMutable();
                            this.values_.addAll(rule.values_);
                        }
                        onChanged();
                    }
                } else if (!rule.values_.isEmpty()) {
                    if (!this.valuesBuilder_.isEmpty()) {
                        this.valuesBuilder_.addAllMessages(rule.values_);
                    } else {
                        this.valuesBuilder_.dispose();
                        this.valuesBuilder_ = null;
                        this.values_ = rule.values_;
                        this.bitField0_ &= -3;
                        this.valuesBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getValuesFieldBuilder() : null;
                    }
                }
                if (rule.missing_ != 0) {
                    setMissingValue(rule.getMissingValue());
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
            public io.bidmachine.protobuf.sdk.Monitor.Rule.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r3, com.explorestack.protobuf.ExtensionRegistryLite r4) throws java.lang.Throwable {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.Parser r1 = io.bidmachine.protobuf.sdk.Monitor.Rule.access$8700()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    io.bidmachine.protobuf.sdk.Monitor$Rule r3 = (io.bidmachine.protobuf.sdk.Monitor.Rule) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                    io.bidmachine.protobuf.sdk.Monitor$Rule r4 = (io.bidmachine.protobuf.sdk.Monitor.Rule) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.sdk.Monitor.Rule.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):io.bidmachine.protobuf.sdk.Monitor$Rule$Builder");
            }

            private void ensurePathIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.path_ = new LazyStringArrayList(this.path_);
                    this.bitField0_ |= 1;
                }
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.RuleOrBuilder
            public ProtocolStringList getPathList() {
                return this.path_.getUnmodifiableView();
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.RuleOrBuilder
            public int getPathCount() {
                return this.path_.size();
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.RuleOrBuilder
            public String getPath(int i) {
                return this.path_.get(i);
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.RuleOrBuilder
            public ByteString getPathBytes(int i) {
                return this.path_.getByteString(i);
            }

            public Builder setPath(int i, String str) {
                str.getClass();
                ensurePathIsMutable();
                this.path_.set(i, str);
                onChanged();
                return this;
            }

            public Builder addPath(String str) {
                str.getClass();
                ensurePathIsMutable();
                this.path_.add(str);
                onChanged();
                return this;
            }

            public Builder addAllPath(Iterable<String> iterable) {
                ensurePathIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.path_);
                onChanged();
                return this;
            }

            public Builder clearPath() {
                this.path_ = LazyStringArrayList.EMPTY;
                this.bitField0_ &= -2;
                onChanged();
                return this;
            }

            public Builder addPathBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                ensurePathIsMutable();
                this.path_.add(byteString);
                onChanged();
                return this;
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.RuleOrBuilder
            public int getOpValue() {
                return this.op_;
            }

            public Builder setOpValue(int i) {
                this.op_ = i;
                onChanged();
                return this;
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.RuleOrBuilder
            public Operator getOp() {
                Operator operatorValueOf = Operator.valueOf(this.op_);
                return operatorValueOf == null ? Operator.UNRECOGNIZED : operatorValueOf;
            }

            public Builder setOp(Operator operator) {
                operator.getClass();
                this.op_ = operator.getNumber();
                onChanged();
                return this;
            }

            public Builder clearOp() {
                this.op_ = 0;
                onChanged();
                return this;
            }

            private void ensureValuesIsMutable() {
                if ((this.bitField0_ & 2) == 0) {
                    this.values_ = new ArrayList(this.values_);
                    this.bitField0_ |= 2;
                }
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.RuleOrBuilder
            public List<Value> getValuesList() {
                RepeatedFieldBuilderV3<Value, Value.Builder, ValueOrBuilder> repeatedFieldBuilderV3 = this.valuesBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    return Collections.unmodifiableList(this.values_);
                }
                return repeatedFieldBuilderV3.getMessageList();
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.RuleOrBuilder
            public int getValuesCount() {
                RepeatedFieldBuilderV3<Value, Value.Builder, ValueOrBuilder> repeatedFieldBuilderV3 = this.valuesBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    return this.values_.size();
                }
                return repeatedFieldBuilderV3.getCount();
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.RuleOrBuilder
            public Value getValues(int i) {
                RepeatedFieldBuilderV3<Value, Value.Builder, ValueOrBuilder> repeatedFieldBuilderV3 = this.valuesBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    return this.values_.get(i);
                }
                return (Value) repeatedFieldBuilderV3.getMessage(i);
            }

            public Builder setValues(int i, Value value) {
                RepeatedFieldBuilderV3<Value, Value.Builder, ValueOrBuilder> repeatedFieldBuilderV3 = this.valuesBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    value.getClass();
                    ensureValuesIsMutable();
                    this.values_.set(i, value);
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.setMessage(i, value);
                return this;
            }

            public Builder setValues(int i, Value.Builder builder) {
                RepeatedFieldBuilderV3<Value, Value.Builder, ValueOrBuilder> repeatedFieldBuilderV3 = this.valuesBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureValuesIsMutable();
                    this.values_.set(i, builder.build());
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.setMessage(i, builder.build());
                return this;
            }

            public Builder addValues(Value value) {
                RepeatedFieldBuilderV3<Value, Value.Builder, ValueOrBuilder> repeatedFieldBuilderV3 = this.valuesBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    value.getClass();
                    ensureValuesIsMutable();
                    this.values_.add(value);
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.addMessage(value);
                return this;
            }

            public Builder addValues(int i, Value value) {
                RepeatedFieldBuilderV3<Value, Value.Builder, ValueOrBuilder> repeatedFieldBuilderV3 = this.valuesBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    value.getClass();
                    ensureValuesIsMutable();
                    this.values_.add(i, value);
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.addMessage(i, value);
                return this;
            }

            public Builder addValues(Value.Builder builder) {
                RepeatedFieldBuilderV3<Value, Value.Builder, ValueOrBuilder> repeatedFieldBuilderV3 = this.valuesBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureValuesIsMutable();
                    this.values_.add(builder.build());
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.addMessage(builder.build());
                return this;
            }

            public Builder addValues(int i, Value.Builder builder) {
                RepeatedFieldBuilderV3<Value, Value.Builder, ValueOrBuilder> repeatedFieldBuilderV3 = this.valuesBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureValuesIsMutable();
                    this.values_.add(i, builder.build());
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.addMessage(i, builder.build());
                return this;
            }

            public Builder addAllValues(Iterable<? extends Value> iterable) {
                RepeatedFieldBuilderV3<Value, Value.Builder, ValueOrBuilder> repeatedFieldBuilderV3 = this.valuesBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureValuesIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.values_);
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.addAllMessages(iterable);
                return this;
            }

            public Builder clearValues() {
                RepeatedFieldBuilderV3<Value, Value.Builder, ValueOrBuilder> repeatedFieldBuilderV3 = this.valuesBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.values_ = Collections.EMPTY_LIST;
                    this.bitField0_ &= -3;
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.clear();
                return this;
            }

            public Builder removeValues(int i) {
                RepeatedFieldBuilderV3<Value, Value.Builder, ValueOrBuilder> repeatedFieldBuilderV3 = this.valuesBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureValuesIsMutable();
                    this.values_.remove(i);
                    onChanged();
                    return this;
                }
                repeatedFieldBuilderV3.remove(i);
                return this;
            }

            public Value.Builder getValuesBuilder(int i) {
                return (Value.Builder) getValuesFieldBuilder().getBuilder(i);
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.RuleOrBuilder
            public ValueOrBuilder getValuesOrBuilder(int i) {
                RepeatedFieldBuilderV3<Value, Value.Builder, ValueOrBuilder> repeatedFieldBuilderV3 = this.valuesBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    return this.values_.get(i);
                }
                return (ValueOrBuilder) repeatedFieldBuilderV3.getMessageOrBuilder(i);
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.RuleOrBuilder
            public List<? extends ValueOrBuilder> getValuesOrBuilderList() {
                RepeatedFieldBuilderV3<Value, Value.Builder, ValueOrBuilder> repeatedFieldBuilderV3 = this.valuesBuilder_;
                if (repeatedFieldBuilderV3 != null) {
                    return repeatedFieldBuilderV3.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.values_);
            }

            public Value.Builder addValuesBuilder() {
                return (Value.Builder) getValuesFieldBuilder().addBuilder(Value.getDefaultInstance());
            }

            public Value.Builder addValuesBuilder(int i) {
                return (Value.Builder) getValuesFieldBuilder().addBuilder(i, Value.getDefaultInstance());
            }

            public List<Value.Builder> getValuesBuilderList() {
                return getValuesFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilderV3<Value, Value.Builder, ValueOrBuilder> getValuesFieldBuilder() {
                if (this.valuesBuilder_ == null) {
                    this.valuesBuilder_ = new RepeatedFieldBuilderV3<>(this.values_, (this.bitField0_ & 2) != 0, getParentForChildren(), isClean());
                    this.values_ = null;
                }
                return this.valuesBuilder_;
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.RuleOrBuilder
            public int getMissingValue() {
                return this.missing_;
            }

            public Builder setMissingValue(int i) {
                this.missing_ = i;
                onChanged();
                return this;
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.RuleOrBuilder
            public MissingBehavior getMissing() {
                MissingBehavior missingBehaviorValueOf = MissingBehavior.valueOf(this.missing_);
                return missingBehaviorValueOf == null ? MissingBehavior.UNRECOGNIZED : missingBehaviorValueOf;
            }

            public Builder setMissing(MissingBehavior missingBehavior) {
                missingBehavior.getClass();
                this.missing_ = missingBehavior.getNumber();
                onChanged();
                return this;
            }

            public Builder clearMissing() {
                this.missing_ = 0;
                onChanged();
                return this;
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

    public static final class Value extends GeneratedMessageV3 implements ValueOrBuilder {
        public static final int BOOL_VALUE_FIELD_NUMBER = 3;
        public static final int DOUBLE_VALUE_FIELD_NUMBER = 4;
        public static final int INT_VALUE_FIELD_NUMBER = 2;
        public static final int STRING_VALUE_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int kindCase_;
        private Object kind_;
        private byte memoizedIsInitialized;
        private static final Value DEFAULT_INSTANCE = new Value();
        private static final Parser<Value> PARSER = new AbstractParser<Value>() { // from class: io.bidmachine.protobuf.sdk.Monitor.Value.1
            @Override // com.explorestack.protobuf.Parser
            public Value parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new Value(codedInputStream, extensionRegistryLite);
            }
        };

        private Value(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.kindCase_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        private Value() {
            this.kindCase_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
            return new Value();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private Value(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                String stringRequireUtf8 = codedInputStream.readStringRequireUtf8();
                                this.kindCase_ = 1;
                                this.kind_ = stringRequireUtf8;
                            } else if (tag == 16) {
                                this.kindCase_ = 2;
                                this.kind_ = Long.valueOf(codedInputStream.readInt64());
                            } else if (tag == 24) {
                                this.kindCase_ = 3;
                                this.kind_ = Boolean.valueOf(codedInputStream.readBool());
                            } else if (tag == 33) {
                                this.kindCase_ = 4;
                                this.kind_ = Double.valueOf(codedInputStream.readDouble());
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
            return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_Value_descriptor;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_Value_fieldAccessorTable.ensureFieldAccessorsInitialized(Value.class, Builder.class);
        }

        public enum KindCase implements Internal.EnumLite {
            STRING_VALUE(1),
            INT_VALUE(2),
            BOOL_VALUE(3),
            DOUBLE_VALUE(4),
            KIND_NOT_SET(0);

            private final int value;

            KindCase(int i) {
                this.value = i;
            }

            @Deprecated
            public static KindCase valueOf(int i) {
                return forNumber(i);
            }

            public static KindCase forNumber(int i) {
                if (i == 0) {
                    return KIND_NOT_SET;
                }
                if (i == 1) {
                    return STRING_VALUE;
                }
                if (i == 2) {
                    return INT_VALUE;
                }
                if (i == 3) {
                    return BOOL_VALUE;
                }
                if (i != 4) {
                    return null;
                }
                return DOUBLE_VALUE;
            }

            @Override // com.explorestack.protobuf.Internal.EnumLite
            public int getNumber() {
                return this.value;
            }
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.ValueOrBuilder
        public KindCase getKindCase() {
            return KindCase.forNumber(this.kindCase_);
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.ValueOrBuilder
        public boolean hasStringValue() {
            return this.kindCase_ == 1;
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.ValueOrBuilder
        public String getStringValue() {
            Object obj;
            if (this.kindCase_ != 1) {
                obj = "";
            } else {
                obj = this.kind_;
            }
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            if (this.kindCase_ == 1) {
                this.kind_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.ValueOrBuilder
        public ByteString getStringValueBytes() {
            Object obj;
            if (this.kindCase_ != 1) {
                obj = "";
            } else {
                obj = this.kind_;
            }
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                if (this.kindCase_ == 1) {
                    this.kind_ = byteStringCopyFromUtf8;
                }
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.ValueOrBuilder
        public boolean hasIntValue() {
            return this.kindCase_ == 2;
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.ValueOrBuilder
        public long getIntValue() {
            if (this.kindCase_ == 2) {
                return ((Long) this.kind_).longValue();
            }
            return 0L;
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.ValueOrBuilder
        public boolean hasBoolValue() {
            return this.kindCase_ == 3;
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.ValueOrBuilder
        public boolean getBoolValue() {
            if (this.kindCase_ == 3) {
                return ((Boolean) this.kind_).booleanValue();
            }
            return false;
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.ValueOrBuilder
        public boolean hasDoubleValue() {
            return this.kindCase_ == 4;
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.ValueOrBuilder
        public double getDoubleValue() {
            if (this.kindCase_ == 4) {
                return ((Double) this.kind_).doubleValue();
            }
            return 0.0d;
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
            if (this.kindCase_ == 1) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.kind_);
            }
            if (this.kindCase_ == 2) {
                codedOutputStream.writeInt64(2, ((Long) this.kind_).longValue());
            }
            if (this.kindCase_ == 3) {
                codedOutputStream.writeBool(3, ((Boolean) this.kind_).booleanValue());
            }
            if (this.kindCase_ == 4) {
                codedOutputStream.writeDouble(4, ((Double) this.kind_).doubleValue());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeStringSize = this.kindCase_ == 1 ? GeneratedMessageV3.computeStringSize(1, this.kind_) : 0;
            if (this.kindCase_ == 2) {
                iComputeStringSize += CodedOutputStream.computeInt64Size(2, ((Long) this.kind_).longValue());
            }
            if (this.kindCase_ == 3) {
                iComputeStringSize += CodedOutputStream.computeBoolSize(3, ((Boolean) this.kind_).booleanValue());
            }
            if (this.kindCase_ == 4) {
                iComputeStringSize += CodedOutputStream.computeDoubleSize(4, ((Double) this.kind_).doubleValue());
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
            if (!(obj instanceof Value)) {
                return super.equals(obj);
            }
            Value value = (Value) obj;
            if (!getKindCase().equals(value.getKindCase())) {
                return false;
            }
            int i = this.kindCase_;
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i == 4 && Double.doubleToLongBits(getDoubleValue()) != Double.doubleToLongBits(value.getDoubleValue())) {
                            return false;
                        }
                    } else if (getBoolValue() != value.getBoolValue()) {
                        return false;
                    }
                } else if (getIntValue() != value.getIntValue()) {
                    return false;
                }
            } else if (!getStringValue().equals(value.getStringValue())) {
                return false;
            }
            return this.unknownFields.equals(value.unknownFields);
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
            int i3 = this.kindCase_;
            if (i3 == 1) {
                i = ((iHashCode2 * 37) + 1) * 53;
                iHashCode = getStringValue().hashCode();
            } else if (i3 == 2) {
                i = ((iHashCode2 * 37) + 2) * 53;
                iHashCode = Internal.hashLong(getIntValue());
            } else if (i3 == 3) {
                i = ((iHashCode2 * 37) + 3) * 53;
                iHashCode = Internal.hashBoolean(getBoolValue());
            } else {
                if (i3 == 4) {
                    i = ((iHashCode2 * 37) + 4) * 53;
                    iHashCode = Internal.hashLong(Double.doubleToLongBits(getDoubleValue()));
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

        public static Value parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Value parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static Value parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static Value parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static Value parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static Value parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static Value parseFrom(InputStream inputStream) throws IOException {
            return (Value) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static Value parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Value) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static Value parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Value) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Value parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Value) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static Value parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (Value) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static Value parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Value) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(Value value) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(value);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements ValueOrBuilder {
            private int kindCase_;
            private Object kind_;

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_Value_descriptor;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_Value_fieldAccessorTable.ensureFieldAccessorsInitialized(Value.class, Builder.class);
            }

            private Builder() {
                this.kindCase_ = 0;
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.kindCase_ = 0;
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.kindCase_ = 0;
                this.kind_ = null;
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_Value_descriptor;
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            /* JADX INFO: renamed from: getDefaultInstanceForType */
            public Value mo687getDefaultInstanceForType() {
                return Value.getDefaultInstance();
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Value build() {
                Value valueBuildPartial = buildPartial();
                if (valueBuildPartial.isInitialized()) {
                    return valueBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) valueBuildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Value buildPartial() {
                Value value = new Value(this);
                if (this.kindCase_ == 1) {
                    value.kind_ = this.kind_;
                }
                if (this.kindCase_ == 2) {
                    value.kind_ = this.kind_;
                }
                if (this.kindCase_ == 3) {
                    value.kind_ = this.kind_;
                }
                if (this.kindCase_ == 4) {
                    value.kind_ = this.kind_;
                }
                value.kindCase_ = this.kindCase_;
                onBuilt();
                return value;
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
                if (message instanceof Value) {
                    return mergeFrom((Value) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(Value value) {
                if (value == Value.getDefaultInstance()) {
                    return this;
                }
                int i = AnonymousClass2.$SwitchMap$io$bidmachine$protobuf$sdk$Monitor$Value$KindCase[value.getKindCase().ordinal()];
                if (i == 1) {
                    this.kindCase_ = 1;
                    this.kind_ = value.kind_;
                    onChanged();
                } else if (i == 2) {
                    setIntValue(value.getIntValue());
                } else if (i == 3) {
                    setBoolValue(value.getBoolValue());
                } else if (i == 4) {
                    setDoubleValue(value.getDoubleValue());
                }
                mergeUnknownFields(((GeneratedMessageV3) value).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public io.bidmachine.protobuf.sdk.Monitor.Value.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r3, com.explorestack.protobuf.ExtensionRegistryLite r4) throws java.lang.Throwable {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.Parser r1 = io.bidmachine.protobuf.sdk.Monitor.Value.access$9700()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    io.bidmachine.protobuf.sdk.Monitor$Value r3 = (io.bidmachine.protobuf.sdk.Monitor.Value) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                    io.bidmachine.protobuf.sdk.Monitor$Value r4 = (io.bidmachine.protobuf.sdk.Monitor.Value) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.sdk.Monitor.Value.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):io.bidmachine.protobuf.sdk.Monitor$Value$Builder");
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.ValueOrBuilder
            public KindCase getKindCase() {
                return KindCase.forNumber(this.kindCase_);
            }

            public Builder clearKind() {
                this.kindCase_ = 0;
                this.kind_ = null;
                onChanged();
                return this;
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.ValueOrBuilder
            public boolean hasStringValue() {
                return this.kindCase_ == 1;
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.ValueOrBuilder
            public String getStringValue() {
                Object obj;
                if (this.kindCase_ != 1) {
                    obj = "";
                } else {
                    obj = this.kind_;
                }
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    if (this.kindCase_ == 1) {
                        this.kind_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.ValueOrBuilder
            public ByteString getStringValueBytes() {
                Object obj;
                if (this.kindCase_ != 1) {
                    obj = "";
                } else {
                    obj = this.kind_;
                }
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    if (this.kindCase_ == 1) {
                        this.kind_ = byteStringCopyFromUtf8;
                    }
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setStringValue(String str) {
                str.getClass();
                this.kindCase_ = 1;
                this.kind_ = str;
                onChanged();
                return this;
            }

            public Builder clearStringValue() {
                if (this.kindCase_ == 1) {
                    this.kindCase_ = 0;
                    this.kind_ = null;
                    onChanged();
                }
                return this;
            }

            public Builder setStringValueBytes(ByteString byteString) {
                byteString.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.kindCase_ = 1;
                this.kind_ = byteString;
                onChanged();
                return this;
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.ValueOrBuilder
            public boolean hasIntValue() {
                return this.kindCase_ == 2;
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.ValueOrBuilder
            public long getIntValue() {
                if (this.kindCase_ == 2) {
                    return ((Long) this.kind_).longValue();
                }
                return 0L;
            }

            public Builder setIntValue(long j) {
                this.kindCase_ = 2;
                this.kind_ = Long.valueOf(j);
                onChanged();
                return this;
            }

            public Builder clearIntValue() {
                if (this.kindCase_ == 2) {
                    this.kindCase_ = 0;
                    this.kind_ = null;
                    onChanged();
                }
                return this;
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.ValueOrBuilder
            public boolean hasBoolValue() {
                return this.kindCase_ == 3;
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.ValueOrBuilder
            public boolean getBoolValue() {
                if (this.kindCase_ == 3) {
                    return ((Boolean) this.kind_).booleanValue();
                }
                return false;
            }

            public Builder setBoolValue(boolean z) {
                this.kindCase_ = 3;
                this.kind_ = Boolean.valueOf(z);
                onChanged();
                return this;
            }

            public Builder clearBoolValue() {
                if (this.kindCase_ == 3) {
                    this.kindCase_ = 0;
                    this.kind_ = null;
                    onChanged();
                }
                return this;
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.ValueOrBuilder
            public boolean hasDoubleValue() {
                return this.kindCase_ == 4;
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.ValueOrBuilder
            public double getDoubleValue() {
                if (this.kindCase_ == 4) {
                    return ((Double) this.kind_).doubleValue();
                }
                return 0.0d;
            }

            public Builder setDoubleValue(double d) {
                this.kindCase_ = 4;
                this.kind_ = Double.valueOf(d);
                onChanged();
                return this;
            }

            public Builder clearDoubleValue() {
                if (this.kindCase_ == 4) {
                    this.kindCase_ = 0;
                    this.kind_ = null;
                    onChanged();
                }
                return this;
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

        public static Value getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<Value> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Parser<Value> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        /* JADX INFO: renamed from: getDefaultInstanceForType */
        public Value mo687getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.protobuf.sdk.Monitor$2, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$io$bidmachine$protobuf$sdk$Monitor$Configuration$ConfigExtensionCase;
        static final /* synthetic */ int[] $SwitchMap$io$bidmachine$protobuf$sdk$Monitor$FilterExpression$NodeCase;
        static final /* synthetic */ int[] $SwitchMap$io$bidmachine$protobuf$sdk$Monitor$Value$KindCase;

        static {
            int[] iArr = new int[Value.KindCase.values().length];
            $SwitchMap$io$bidmachine$protobuf$sdk$Monitor$Value$KindCase = iArr;
            try {
                iArr[Value.KindCase.STRING_VALUE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$bidmachine$protobuf$sdk$Monitor$Value$KindCase[Value.KindCase.INT_VALUE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$io$bidmachine$protobuf$sdk$Monitor$Value$KindCase[Value.KindCase.BOOL_VALUE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$io$bidmachine$protobuf$sdk$Monitor$Value$KindCase[Value.KindCase.DOUBLE_VALUE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$io$bidmachine$protobuf$sdk$Monitor$Value$KindCase[Value.KindCase.KIND_NOT_SET.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            int[] iArr2 = new int[FilterExpression.NodeCase.values().length];
            $SwitchMap$io$bidmachine$protobuf$sdk$Monitor$FilterExpression$NodeCase = iArr2;
            try {
                iArr2[FilterExpression.NodeCase.ALL.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$io$bidmachine$protobuf$sdk$Monitor$FilterExpression$NodeCase[FilterExpression.NodeCase.ANY.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$io$bidmachine$protobuf$sdk$Monitor$FilterExpression$NodeCase[FilterExpression.NodeCase.RULE.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$io$bidmachine$protobuf$sdk$Monitor$FilterExpression$NodeCase[FilterExpression.NodeCase.NODE_NOT_SET.ordinal()] = 4;
            } catch (NoSuchFieldError unused9) {
            }
            int[] iArr3 = new int[Configuration.ConfigExtensionCase.values().length];
            $SwitchMap$io$bidmachine$protobuf$sdk$Monitor$Configuration$ConfigExtensionCase = iArr3;
            try {
                iArr3[Configuration.ConfigExtensionCase.IMP_EXTENSION.ordinal()] = 1;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$io$bidmachine$protobuf$sdk$Monitor$Configuration$ConfigExtensionCase[Configuration.ConfigExtensionCase.GEN_EXTENSION.ordinal()] = 2;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$io$bidmachine$protobuf$sdk$Monitor$Configuration$ConfigExtensionCase[Configuration.ConfigExtensionCase.CONFIGEXTENSION_NOT_SET.ordinal()] = 3;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    @Override // io.bidmachine.protobuf.sdk.MonitorOrBuilder
    public String getName() {
        Object obj = this.name_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.name_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.sdk.MonitorOrBuilder
    public ByteString getNameBytes() {
        Object obj = this.name_;
        if (obj instanceof String) {
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.name_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // io.bidmachine.protobuf.sdk.MonitorOrBuilder
    public List<Record> getRecordsList() {
        return this.records_;
    }

    @Override // io.bidmachine.protobuf.sdk.MonitorOrBuilder
    public List<? extends RecordOrBuilder> getRecordsOrBuilderList() {
        return this.records_;
    }

    @Override // io.bidmachine.protobuf.sdk.MonitorOrBuilder
    public int getRecordsCount() {
        return this.records_.size();
    }

    @Override // io.bidmachine.protobuf.sdk.MonitorOrBuilder
    public Record getRecords(int i) {
        return this.records_.get(i);
    }

    @Override // io.bidmachine.protobuf.sdk.MonitorOrBuilder
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
        for (int i = 0; i < this.records_.size(); i++) {
            codedOutputStream.writeMessage(2, this.records_.get(i));
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
        for (int i2 = 0; i2 < this.records_.size(); i2++) {
            iComputeStringSize += CodedOutputStream.computeMessageSize(2, this.records_.get(i2));
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
        if (!(obj instanceof Monitor)) {
            return super.equals(obj);
        }
        Monitor monitor = (Monitor) obj;
        return getName().equals(monitor.getName()) && getRecordsList().equals(monitor.getRecordsList()) && this.unknownFields.equals(monitor.unknownFields);
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public int hashCode() {
        int i = this.memoizedHashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode();
        if (getRecordsCount() > 0) {
            iHashCode = (((iHashCode * 37) + 2) * 53) + getRecordsList().hashCode();
        }
        int iHashCode2 = (iHashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode2;
        return iHashCode2;
    }

    public static Monitor parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static Monitor parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
    }

    public static Monitor parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    public static Monitor parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, extensionRegistryLite);
    }

    public static Monitor parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    public static Monitor parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, extensionRegistryLite);
    }

    public static Monitor parseFrom(InputStream inputStream) throws IOException {
        return (Monitor) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Monitor parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Monitor) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static Monitor parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Monitor) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Monitor parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Monitor) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static Monitor parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (Monitor) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
    }

    public static Monitor parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Monitor) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Builder newBuilder(Monitor monitor) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(monitor);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
        return new Builder(builderParent);
    }

    public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements MonitorOrBuilder {
        private int bitField0_;
        private Object name_;
        private RepeatedFieldBuilderV3<Record, Record.Builder, RecordOrBuilder> recordsBuilder_;
        private List<Record> records_;

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_descriptor;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_fieldAccessorTable.ensureFieldAccessorsInitialized(Monitor.class, Builder.class);
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
            return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_descriptor;
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        /* JADX INFO: renamed from: getDefaultInstanceForType */
        public Monitor mo687getDefaultInstanceForType() {
            return Monitor.getDefaultInstance();
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Monitor build() {
            Monitor monitorBuildPartial = buildPartial();
            if (monitorBuildPartial.isInitialized()) {
                return monitorBuildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) monitorBuildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Monitor buildPartial() {
            Monitor monitor = new Monitor(this);
            monitor.name_ = this.name_;
            RepeatedFieldBuilderV3<Record, Record.Builder, RecordOrBuilder> repeatedFieldBuilderV3 = this.recordsBuilder_;
            if (repeatedFieldBuilderV3 != null) {
                monitor.records_ = repeatedFieldBuilderV3.build();
            } else {
                if ((this.bitField0_ & 1) != 0) {
                    this.records_ = Collections.unmodifiableList(this.records_);
                    this.bitField0_ &= -2;
                }
                monitor.records_ = this.records_;
            }
            onBuilt();
            return monitor;
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
            if (message instanceof Monitor) {
                return mergeFrom((Monitor) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public Builder mergeFrom(Monitor monitor) {
            if (monitor == Monitor.getDefaultInstance()) {
                return this;
            }
            if (!monitor.getName().isEmpty()) {
                this.name_ = monitor.name_;
                onChanged();
            }
            if (this.recordsBuilder_ == null) {
                if (!monitor.records_.isEmpty()) {
                    if (this.records_.isEmpty()) {
                        this.records_ = monitor.records_;
                        this.bitField0_ &= -2;
                    } else {
                        ensureRecordsIsMutable();
                        this.records_.addAll(monitor.records_);
                    }
                    onChanged();
                }
            } else if (!monitor.records_.isEmpty()) {
                if (!this.recordsBuilder_.isEmpty()) {
                    this.recordsBuilder_.addAllMessages(monitor.records_);
                } else {
                    this.recordsBuilder_.dispose();
                    this.recordsBuilder_ = null;
                    this.records_ = monitor.records_;
                    this.bitField0_ &= -2;
                    this.recordsBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getRecordsFieldBuilder() : null;
                }
            }
            mergeUnknownFields(((GeneratedMessageV3) monitor).unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public io.bidmachine.protobuf.sdk.Monitor.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r3, com.explorestack.protobuf.ExtensionRegistryLite r4) throws java.lang.Throwable {
            /*
                r2 = this;
                r0 = 0
                com.explorestack.protobuf.Parser r1 = io.bidmachine.protobuf.sdk.Monitor.access$10800()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                io.bidmachine.protobuf.sdk.Monitor r3 = (io.bidmachine.protobuf.sdk.Monitor) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                io.bidmachine.protobuf.sdk.Monitor r4 = (io.bidmachine.protobuf.sdk.Monitor) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.sdk.Monitor.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):io.bidmachine.protobuf.sdk.Monitor$Builder");
        }

        @Override // io.bidmachine.protobuf.sdk.MonitorOrBuilder
        public String getName() {
            Object obj = this.name_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.name_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.sdk.MonitorOrBuilder
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
            this.name_ = Monitor.getDefaultInstance().getName();
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

        private void ensureRecordsIsMutable() {
            if ((this.bitField0_ & 1) == 0) {
                this.records_ = new ArrayList(this.records_);
                this.bitField0_ |= 1;
            }
        }

        @Override // io.bidmachine.protobuf.sdk.MonitorOrBuilder
        public List<Record> getRecordsList() {
            RepeatedFieldBuilderV3<Record, Record.Builder, RecordOrBuilder> repeatedFieldBuilderV3 = this.recordsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                return Collections.unmodifiableList(this.records_);
            }
            return repeatedFieldBuilderV3.getMessageList();
        }

        @Override // io.bidmachine.protobuf.sdk.MonitorOrBuilder
        public int getRecordsCount() {
            RepeatedFieldBuilderV3<Record, Record.Builder, RecordOrBuilder> repeatedFieldBuilderV3 = this.recordsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                return this.records_.size();
            }
            return repeatedFieldBuilderV3.getCount();
        }

        @Override // io.bidmachine.protobuf.sdk.MonitorOrBuilder
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

        @Override // io.bidmachine.protobuf.sdk.MonitorOrBuilder
        public RecordOrBuilder getRecordsOrBuilder(int i) {
            RepeatedFieldBuilderV3<Record, Record.Builder, RecordOrBuilder> repeatedFieldBuilderV3 = this.recordsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                return this.records_.get(i);
            }
            return (RecordOrBuilder) repeatedFieldBuilderV3.getMessageOrBuilder(i);
        }

        @Override // io.bidmachine.protobuf.sdk.MonitorOrBuilder
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

    public static Monitor getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static Parser<Monitor> parser() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Parser<Monitor> getParserForType() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
    /* JADX INFO: renamed from: getDefaultInstanceForType */
    public Monitor mo687getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }
}
