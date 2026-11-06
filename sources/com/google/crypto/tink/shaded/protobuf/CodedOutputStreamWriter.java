package com.google.crypto.tink.shaded.protobuf;

import com.google.crypto.tink.shaded.protobuf.MapEntryLite;
import com.google.crypto.tink.shaded.protobuf.WireFormat;
import com.google.crypto.tink.shaded.protobuf.Writer;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class CodedOutputStreamWriter implements Writer {
    public final CodedOutputStream output;

    public static CodedOutputStreamWriter forCodedOutput(CodedOutputStream output) {
        CodedOutputStreamWriter codedOutputStreamWriter = output.wrapper;
        return codedOutputStreamWriter != null ? codedOutputStreamWriter : new CodedOutputStreamWriter(output);
    }

    public CodedOutputStreamWriter(CodedOutputStream output) {
        CodedOutputStream codedOutputStream = (CodedOutputStream) Internal.checkNotNull(output, "output");
        this.output = codedOutputStream;
        codedOutputStream.wrapper = this;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public Writer.FieldOrder fieldOrder() {
        return Writer.FieldOrder.ASCENDING;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public void writeSFixed32(int fieldNumber, int value) throws IOException {
        this.output.writeSFixed32(fieldNumber, value);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public void writeInt64(int fieldNumber, long value) throws IOException {
        this.output.writeInt64(fieldNumber, value);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public void writeSFixed64(int fieldNumber, long value) throws IOException {
        this.output.writeSFixed64(fieldNumber, value);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public void writeFloat(int fieldNumber, float value) throws IOException {
        this.output.writeFloat(fieldNumber, value);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public void writeDouble(int fieldNumber, double value) throws IOException {
        this.output.writeDouble(fieldNumber, value);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public void writeEnum(int fieldNumber, int value) throws IOException {
        this.output.writeEnum(fieldNumber, value);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public void writeUInt64(int fieldNumber, long value) throws IOException {
        this.output.writeUInt64(fieldNumber, value);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public void writeInt32(int fieldNumber, int value) throws IOException {
        this.output.writeInt32(fieldNumber, value);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public void writeFixed64(int fieldNumber, long value) throws IOException {
        this.output.writeFixed64(fieldNumber, value);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public void writeFixed32(int fieldNumber, int value) throws IOException {
        this.output.writeFixed32(fieldNumber, value);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public void writeBool(int fieldNumber, boolean value) throws IOException {
        this.output.writeBool(fieldNumber, value);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public void writeString(int fieldNumber, String value) throws IOException {
        this.output.writeString(fieldNumber, value);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public void writeBytes(int fieldNumber, ByteString value) throws IOException {
        this.output.writeBytes(fieldNumber, value);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public void writeUInt32(int fieldNumber, int value) throws IOException {
        this.output.writeUInt32(fieldNumber, value);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public void writeSInt32(int fieldNumber, int value) throws IOException {
        this.output.writeSInt32(fieldNumber, value);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public void writeSInt64(int fieldNumber, long value) throws IOException {
        this.output.writeSInt64(fieldNumber, value);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public void writeMessage(int fieldNumber, Object value, Schema schema) throws IOException {
        AbstractMessageLite abstractMessageLite = (AbstractMessageLite) value;
        this.output.writeTag(fieldNumber, 2);
        this.output.writeUInt32NoTag(abstractMessageLite.getSerializedSize(schema));
        schema.writeTo(abstractMessageLite, this);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public void writeGroup(int fieldNumber, Object value, Schema schema) throws IOException {
        this.output.writeGroup(fieldNumber, (MessageLite) value, schema);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    @Deprecated
    public void writeStartGroup(int fieldNumber) throws IOException {
        this.output.writeTag(fieldNumber, 3);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    @Deprecated
    public void writeEndGroup(int fieldNumber) throws IOException {
        this.output.writeTag(fieldNumber, 4);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public final void writeMessageSetItem(int fieldNumber, Object value) throws IOException {
        if (value instanceof ByteString) {
            this.output.writeRawMessageSetExtension(fieldNumber, (ByteString) value);
        } else {
            this.output.writeMessageSetExtension(fieldNumber, (MessageLite) value);
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public void writeInt32List(int fieldNumber, List<Integer> value, boolean packed) throws IOException {
        if (value instanceof IntArrayList) {
            writeInt32ListInternal(fieldNumber, (IntArrayList) value, packed);
        } else {
            writeInt32ListInternal(fieldNumber, value, packed);
        }
    }

    public final void writeInt32ListInternal(int fieldNumber, IntArrayList value, boolean packed) throws IOException {
        int i = 0;
        if (packed) {
            this.output.writeTag(fieldNumber, 2);
            int iComputeInt32SizeNoTag = 0;
            for (int i2 = 0; i2 < value.size(); i2++) {
                iComputeInt32SizeNoTag += CodedOutputStream.computeInt32SizeNoTag(value.getInt(i2));
            }
            this.output.writeUInt32NoTag(iComputeInt32SizeNoTag);
            while (i < value.size()) {
                this.output.writeInt32NoTag(value.getInt(i));
                i++;
            }
            return;
        }
        while (i < value.size()) {
            this.output.writeInt32(fieldNumber, value.getInt(i));
            i++;
        }
    }

    public final void writeInt32ListInternal(int fieldNumber, List<Integer> value, boolean packed) throws IOException {
        int i = 0;
        if (packed) {
            this.output.writeTag(fieldNumber, 2);
            int iComputeInt32SizeNoTag = 0;
            for (int i2 = 0; i2 < value.size(); i2++) {
                iComputeInt32SizeNoTag += CodedOutputStream.computeInt32SizeNoTag(value.get(i2).intValue());
            }
            this.output.writeUInt32NoTag(iComputeInt32SizeNoTag);
            while (i < value.size()) {
                this.output.writeInt32NoTag(value.get(i).intValue());
                i++;
            }
            return;
        }
        while (i < value.size()) {
            this.output.writeInt32(fieldNumber, value.get(i).intValue());
            i++;
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public void writeFixed32List(int fieldNumber, List<Integer> value, boolean packed) throws IOException {
        if (value instanceof IntArrayList) {
            writeFixed32ListInternal(fieldNumber, (IntArrayList) value, packed);
        } else {
            writeFixed32ListInternal(fieldNumber, value, packed);
        }
    }

    public final void writeFixed32ListInternal(int fieldNumber, IntArrayList value, boolean packed) throws IOException {
        int i = 0;
        if (packed) {
            this.output.writeTag(fieldNumber, 2);
            int iComputeFixed32SizeNoTag = 0;
            for (int i2 = 0; i2 < value.size(); i2++) {
                iComputeFixed32SizeNoTag += CodedOutputStream.computeFixed32SizeNoTag(value.getInt(i2));
            }
            this.output.writeUInt32NoTag(iComputeFixed32SizeNoTag);
            while (i < value.size()) {
                this.output.writeFixed32NoTag(value.getInt(i));
                i++;
            }
            return;
        }
        while (i < value.size()) {
            this.output.writeFixed32(fieldNumber, value.getInt(i));
            i++;
        }
    }

    public final void writeFixed32ListInternal(int fieldNumber, List<Integer> value, boolean packed) throws IOException {
        int i = 0;
        if (packed) {
            this.output.writeTag(fieldNumber, 2);
            int iComputeFixed32SizeNoTag = 0;
            for (int i2 = 0; i2 < value.size(); i2++) {
                iComputeFixed32SizeNoTag += CodedOutputStream.computeFixed32SizeNoTag(value.get(i2).intValue());
            }
            this.output.writeUInt32NoTag(iComputeFixed32SizeNoTag);
            while (i < value.size()) {
                this.output.writeFixed32NoTag(value.get(i).intValue());
                i++;
            }
            return;
        }
        while (i < value.size()) {
            this.output.writeFixed32(fieldNumber, value.get(i).intValue());
            i++;
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public void writeInt64List(int fieldNumber, List<Long> value, boolean packed) throws IOException {
        if (value instanceof LongArrayList) {
            writeInt64ListInternal(fieldNumber, (LongArrayList) value, packed);
        } else {
            writeInt64ListInternal(fieldNumber, value, packed);
        }
    }

    public final void writeInt64ListInternal(int fieldNumber, LongArrayList value, boolean packed) throws IOException {
        int i = 0;
        if (packed) {
            this.output.writeTag(fieldNumber, 2);
            int iComputeInt64SizeNoTag = 0;
            for (int i2 = 0; i2 < value.size(); i2++) {
                iComputeInt64SizeNoTag += CodedOutputStream.computeInt64SizeNoTag(value.getLong(i2));
            }
            this.output.writeUInt32NoTag(iComputeInt64SizeNoTag);
            while (i < value.size()) {
                this.output.writeInt64NoTag(value.getLong(i));
                i++;
            }
            return;
        }
        while (i < value.size()) {
            this.output.writeInt64(fieldNumber, value.getLong(i));
            i++;
        }
    }

    public final void writeInt64ListInternal(int fieldNumber, List<Long> value, boolean packed) throws IOException {
        int i = 0;
        if (packed) {
            this.output.writeTag(fieldNumber, 2);
            int iComputeInt64SizeNoTag = 0;
            for (int i2 = 0; i2 < value.size(); i2++) {
                iComputeInt64SizeNoTag += CodedOutputStream.computeInt64SizeNoTag(value.get(i2).longValue());
            }
            this.output.writeUInt32NoTag(iComputeInt64SizeNoTag);
            while (i < value.size()) {
                this.output.writeInt64NoTag(value.get(i).longValue());
                i++;
            }
            return;
        }
        while (i < value.size()) {
            this.output.writeInt64(fieldNumber, value.get(i).longValue());
            i++;
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public void writeUInt64List(int fieldNumber, List<Long> value, boolean packed) throws IOException {
        if (value instanceof LongArrayList) {
            writeUInt64ListInternal(fieldNumber, (LongArrayList) value, packed);
        } else {
            writeUInt64ListInternal(fieldNumber, value, packed);
        }
    }

    public final void writeUInt64ListInternal(int fieldNumber, LongArrayList value, boolean packed) throws IOException {
        int i = 0;
        if (packed) {
            this.output.writeTag(fieldNumber, 2);
            int iComputeUInt64SizeNoTag = 0;
            for (int i2 = 0; i2 < value.size(); i2++) {
                iComputeUInt64SizeNoTag += CodedOutputStream.computeUInt64SizeNoTag(value.getLong(i2));
            }
            this.output.writeUInt32NoTag(iComputeUInt64SizeNoTag);
            while (i < value.size()) {
                this.output.writeUInt64NoTag(value.getLong(i));
                i++;
            }
            return;
        }
        while (i < value.size()) {
            this.output.writeUInt64(fieldNumber, value.getLong(i));
            i++;
        }
    }

    public final void writeUInt64ListInternal(int fieldNumber, List<Long> value, boolean packed) throws IOException {
        int i = 0;
        if (packed) {
            this.output.writeTag(fieldNumber, 2);
            int iComputeUInt64SizeNoTag = 0;
            for (int i2 = 0; i2 < value.size(); i2++) {
                iComputeUInt64SizeNoTag += CodedOutputStream.computeUInt64SizeNoTag(value.get(i2).longValue());
            }
            this.output.writeUInt32NoTag(iComputeUInt64SizeNoTag);
            while (i < value.size()) {
                this.output.writeUInt64NoTag(value.get(i).longValue());
                i++;
            }
            return;
        }
        while (i < value.size()) {
            this.output.writeUInt64(fieldNumber, value.get(i).longValue());
            i++;
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public void writeFixed64List(int fieldNumber, List<Long> value, boolean packed) throws IOException {
        if (value instanceof LongArrayList) {
            writeFixed64ListInternal(fieldNumber, (LongArrayList) value, packed);
        } else {
            writeFixed64ListInternal(fieldNumber, value, packed);
        }
    }

    public final void writeFixed64ListInternal(int fieldNumber, LongArrayList value, boolean packed) throws IOException {
        int i = 0;
        if (packed) {
            this.output.writeTag(fieldNumber, 2);
            int iComputeFixed64SizeNoTag = 0;
            for (int i2 = 0; i2 < value.size(); i2++) {
                iComputeFixed64SizeNoTag += CodedOutputStream.computeFixed64SizeNoTag(value.getLong(i2));
            }
            this.output.writeUInt32NoTag(iComputeFixed64SizeNoTag);
            while (i < value.size()) {
                this.output.writeFixed64NoTag(value.getLong(i));
                i++;
            }
            return;
        }
        while (i < value.size()) {
            this.output.writeFixed64(fieldNumber, value.getLong(i));
            i++;
        }
    }

    public final void writeFixed64ListInternal(int fieldNumber, List<Long> value, boolean packed) throws IOException {
        int i = 0;
        if (packed) {
            this.output.writeTag(fieldNumber, 2);
            int iComputeFixed64SizeNoTag = 0;
            for (int i2 = 0; i2 < value.size(); i2++) {
                iComputeFixed64SizeNoTag += CodedOutputStream.computeFixed64SizeNoTag(value.get(i2).longValue());
            }
            this.output.writeUInt32NoTag(iComputeFixed64SizeNoTag);
            while (i < value.size()) {
                this.output.writeFixed64NoTag(value.get(i).longValue());
                i++;
            }
            return;
        }
        while (i < value.size()) {
            this.output.writeFixed64(fieldNumber, value.get(i).longValue());
            i++;
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public void writeFloatList(int fieldNumber, List<Float> value, boolean packed) throws IOException {
        if (value instanceof FloatArrayList) {
            writeFloatListInternal(fieldNumber, (FloatArrayList) value, packed);
        } else {
            writeFloatListInternal(fieldNumber, value, packed);
        }
    }

    public final void writeFloatListInternal(int fieldNumber, FloatArrayList value, boolean packed) throws IOException {
        int i = 0;
        if (packed) {
            this.output.writeTag(fieldNumber, 2);
            int iComputeFloatSizeNoTag = 0;
            for (int i2 = 0; i2 < value.size(); i2++) {
                iComputeFloatSizeNoTag += CodedOutputStream.computeFloatSizeNoTag(value.getFloat(i2));
            }
            this.output.writeUInt32NoTag(iComputeFloatSizeNoTag);
            while (i < value.size()) {
                this.output.writeFloatNoTag(value.getFloat(i));
                i++;
            }
            return;
        }
        while (i < value.size()) {
            this.output.writeFloat(fieldNumber, value.getFloat(i));
            i++;
        }
    }

    public final void writeFloatListInternal(int fieldNumber, List<Float> value, boolean packed) throws IOException {
        int i = 0;
        if (packed) {
            this.output.writeTag(fieldNumber, 2);
            int iComputeFloatSizeNoTag = 0;
            for (int i2 = 0; i2 < value.size(); i2++) {
                iComputeFloatSizeNoTag += CodedOutputStream.computeFloatSizeNoTag(value.get(i2).floatValue());
            }
            this.output.writeUInt32NoTag(iComputeFloatSizeNoTag);
            while (i < value.size()) {
                this.output.writeFloatNoTag(value.get(i).floatValue());
                i++;
            }
            return;
        }
        while (i < value.size()) {
            this.output.writeFloat(fieldNumber, value.get(i).floatValue());
            i++;
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public void writeDoubleList(int fieldNumber, List<Double> value, boolean packed) throws IOException {
        if (value instanceof DoubleArrayList) {
            writeDoubleListInternal(fieldNumber, (DoubleArrayList) value, packed);
        } else {
            writeDoubleListInternal(fieldNumber, value, packed);
        }
    }

    public final void writeDoubleListInternal(int fieldNumber, DoubleArrayList value, boolean packed) throws IOException {
        int i = 0;
        if (packed) {
            this.output.writeTag(fieldNumber, 2);
            int iComputeDoubleSizeNoTag = 0;
            for (int i2 = 0; i2 < value.size(); i2++) {
                iComputeDoubleSizeNoTag += CodedOutputStream.computeDoubleSizeNoTag(value.getDouble(i2));
            }
            this.output.writeUInt32NoTag(iComputeDoubleSizeNoTag);
            while (i < value.size()) {
                this.output.writeDoubleNoTag(value.getDouble(i));
                i++;
            }
            return;
        }
        while (i < value.size()) {
            this.output.writeDouble(fieldNumber, value.getDouble(i));
            i++;
        }
    }

    public final void writeDoubleListInternal(int fieldNumber, List<Double> value, boolean packed) throws IOException {
        int i = 0;
        if (packed) {
            this.output.writeTag(fieldNumber, 2);
            int iComputeDoubleSizeNoTag = 0;
            for (int i2 = 0; i2 < value.size(); i2++) {
                iComputeDoubleSizeNoTag += CodedOutputStream.computeDoubleSizeNoTag(value.get(i2).doubleValue());
            }
            this.output.writeUInt32NoTag(iComputeDoubleSizeNoTag);
            while (i < value.size()) {
                this.output.writeDoubleNoTag(value.get(i).doubleValue());
                i++;
            }
            return;
        }
        while (i < value.size()) {
            this.output.writeDouble(fieldNumber, value.get(i).doubleValue());
            i++;
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public void writeEnumList(int fieldNumber, List<Integer> value, boolean packed) throws IOException {
        if (value instanceof IntArrayList) {
            writeEnumListInternal(fieldNumber, (IntArrayList) value, packed);
        } else {
            writeEnumListInternal(fieldNumber, value, packed);
        }
    }

    public final void writeEnumListInternal(int fieldNumber, IntArrayList value, boolean packed) throws IOException {
        int i = 0;
        if (packed) {
            this.output.writeTag(fieldNumber, 2);
            int iComputeEnumSizeNoTag = 0;
            for (int i2 = 0; i2 < value.size(); i2++) {
                iComputeEnumSizeNoTag += CodedOutputStream.computeEnumSizeNoTag(value.getInt(i2));
            }
            this.output.writeUInt32NoTag(iComputeEnumSizeNoTag);
            while (i < value.size()) {
                this.output.writeEnumNoTag(value.getInt(i));
                i++;
            }
            return;
        }
        while (i < value.size()) {
            this.output.writeEnum(fieldNumber, value.getInt(i));
            i++;
        }
    }

    public final void writeEnumListInternal(int fieldNumber, List<Integer> value, boolean packed) throws IOException {
        int i = 0;
        if (packed) {
            this.output.writeTag(fieldNumber, 2);
            int iComputeEnumSizeNoTag = 0;
            for (int i2 = 0; i2 < value.size(); i2++) {
                iComputeEnumSizeNoTag += CodedOutputStream.computeEnumSizeNoTag(value.get(i2).intValue());
            }
            this.output.writeUInt32NoTag(iComputeEnumSizeNoTag);
            while (i < value.size()) {
                this.output.writeEnumNoTag(value.get(i).intValue());
                i++;
            }
            return;
        }
        while (i < value.size()) {
            this.output.writeEnum(fieldNumber, value.get(i).intValue());
            i++;
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public void writeBoolList(int fieldNumber, List<Boolean> value, boolean packed) throws IOException {
        if (value instanceof BooleanArrayList) {
            writeBoolListInternal(fieldNumber, (BooleanArrayList) value, packed);
        } else {
            writeBoolListInternal(fieldNumber, value, packed);
        }
    }

    public final void writeBoolListInternal(int fieldNumber, BooleanArrayList value, boolean packed) throws IOException {
        int i = 0;
        if (packed) {
            this.output.writeTag(fieldNumber, 2);
            int iComputeBoolSizeNoTag = 0;
            for (int i2 = 0; i2 < value.size(); i2++) {
                iComputeBoolSizeNoTag += CodedOutputStream.computeBoolSizeNoTag(value.getBoolean(i2));
            }
            this.output.writeUInt32NoTag(iComputeBoolSizeNoTag);
            while (i < value.size()) {
                this.output.writeBoolNoTag(value.getBoolean(i));
                i++;
            }
            return;
        }
        while (i < value.size()) {
            this.output.writeBool(fieldNumber, value.getBoolean(i));
            i++;
        }
    }

    public final void writeBoolListInternal(int fieldNumber, List<Boolean> value, boolean packed) throws IOException {
        int i = 0;
        if (packed) {
            this.output.writeTag(fieldNumber, 2);
            int iComputeBoolSizeNoTag = 0;
            for (int i2 = 0; i2 < value.size(); i2++) {
                iComputeBoolSizeNoTag += CodedOutputStream.computeBoolSizeNoTag(value.get(i2).booleanValue());
            }
            this.output.writeUInt32NoTag(iComputeBoolSizeNoTag);
            while (i < value.size()) {
                this.output.writeBoolNoTag(value.get(i).booleanValue());
                i++;
            }
            return;
        }
        while (i < value.size()) {
            this.output.writeBool(fieldNumber, value.get(i).booleanValue());
            i++;
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public void writeStringList(int fieldNumber, List<String> value) throws IOException {
        int i = 0;
        if (value instanceof LazyStringList) {
            LazyStringList lazyStringList = (LazyStringList) value;
            while (i < value.size()) {
                writeLazyString(fieldNumber, lazyStringList.getRaw(i));
                i++;
            }
            return;
        }
        while (i < value.size()) {
            this.output.writeString(fieldNumber, value.get(i));
            i++;
        }
    }

    public final void writeLazyString(int fieldNumber, Object value) throws IOException {
        if (value instanceof String) {
            this.output.writeString(fieldNumber, (String) value);
        } else {
            this.output.writeBytes(fieldNumber, (ByteString) value);
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public void writeBytesList(int fieldNumber, List<ByteString> value) throws IOException {
        for (int i = 0; i < value.size(); i++) {
            this.output.writeBytes(fieldNumber, value.get(i));
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public void writeUInt32List(int fieldNumber, List<Integer> value, boolean packed) throws IOException {
        if (value instanceof IntArrayList) {
            writeUInt32ListInternal(fieldNumber, (IntArrayList) value, packed);
        } else {
            writeUInt32ListInternal(fieldNumber, value, packed);
        }
    }

    public final void writeUInt32ListInternal(int fieldNumber, IntArrayList value, boolean packed) throws IOException {
        int i = 0;
        if (packed) {
            this.output.writeTag(fieldNumber, 2);
            int iComputeUInt32SizeNoTag = 0;
            for (int i2 = 0; i2 < value.size(); i2++) {
                iComputeUInt32SizeNoTag += CodedOutputStream.computeUInt32SizeNoTag(value.getInt(i2));
            }
            this.output.writeUInt32NoTag(iComputeUInt32SizeNoTag);
            while (i < value.size()) {
                this.output.writeUInt32NoTag(value.getInt(i));
                i++;
            }
            return;
        }
        while (i < value.size()) {
            this.output.writeUInt32(fieldNumber, value.getInt(i));
            i++;
        }
    }

    public void writeUInt32ListInternal(int fieldNumber, List<Integer> value, boolean packed) throws IOException {
        int i = 0;
        if (packed) {
            this.output.writeTag(fieldNumber, 2);
            int iComputeUInt32SizeNoTag = 0;
            for (int i2 = 0; i2 < value.size(); i2++) {
                iComputeUInt32SizeNoTag += CodedOutputStream.computeUInt32SizeNoTag(value.get(i2).intValue());
            }
            this.output.writeUInt32NoTag(iComputeUInt32SizeNoTag);
            while (i < value.size()) {
                this.output.writeUInt32NoTag(value.get(i).intValue());
                i++;
            }
            return;
        }
        while (i < value.size()) {
            this.output.writeUInt32(fieldNumber, value.get(i).intValue());
            i++;
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public void writeSFixed32List(int fieldNumber, List<Integer> value, boolean packed) throws IOException {
        if (value instanceof IntArrayList) {
            writeSFixed32ListInternal(fieldNumber, (IntArrayList) value, packed);
        } else {
            writeSFixed32ListInternal(fieldNumber, value, packed);
        }
    }

    public final void writeSFixed32ListInternal(int fieldNumber, IntArrayList value, boolean packed) throws IOException {
        int i = 0;
        if (packed) {
            this.output.writeTag(fieldNumber, 2);
            int iComputeSFixed32SizeNoTag = 0;
            for (int i2 = 0; i2 < value.size(); i2++) {
                iComputeSFixed32SizeNoTag += CodedOutputStream.computeSFixed32SizeNoTag(value.getInt(i2));
            }
            this.output.writeUInt32NoTag(iComputeSFixed32SizeNoTag);
            while (i < value.size()) {
                this.output.writeSFixed32NoTag(value.getInt(i));
                i++;
            }
            return;
        }
        while (i < value.size()) {
            this.output.writeSFixed32(fieldNumber, value.getInt(i));
            i++;
        }
    }

    public final void writeSFixed32ListInternal(int fieldNumber, List<Integer> value, boolean packed) throws IOException {
        int i = 0;
        if (packed) {
            this.output.writeTag(fieldNumber, 2);
            int iComputeSFixed32SizeNoTag = 0;
            for (int i2 = 0; i2 < value.size(); i2++) {
                iComputeSFixed32SizeNoTag += CodedOutputStream.computeSFixed32SizeNoTag(value.get(i2).intValue());
            }
            this.output.writeUInt32NoTag(iComputeSFixed32SizeNoTag);
            while (i < value.size()) {
                this.output.writeSFixed32NoTag(value.get(i).intValue());
                i++;
            }
            return;
        }
        while (i < value.size()) {
            this.output.writeSFixed32(fieldNumber, value.get(i).intValue());
            i++;
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public void writeSFixed64List(int fieldNumber, List<Long> value, boolean packed) throws IOException {
        if (value instanceof LongArrayList) {
            writeSFixed64ListInternal(fieldNumber, (LongArrayList) value, packed);
        } else {
            writeSFixed64ListInternal(fieldNumber, value, packed);
        }
    }

    public final void writeSFixed64ListInternal(int fieldNumber, LongArrayList value, boolean packed) throws IOException {
        int i = 0;
        if (packed) {
            this.output.writeTag(fieldNumber, 2);
            int iComputeSFixed64SizeNoTag = 0;
            for (int i2 = 0; i2 < value.size(); i2++) {
                iComputeSFixed64SizeNoTag += CodedOutputStream.computeSFixed64SizeNoTag(value.getLong(i2));
            }
            this.output.writeUInt32NoTag(iComputeSFixed64SizeNoTag);
            while (i < value.size()) {
                this.output.writeSFixed64NoTag(value.getLong(i));
                i++;
            }
            return;
        }
        while (i < value.size()) {
            this.output.writeSFixed64(fieldNumber, value.getLong(i));
            i++;
        }
    }

    public final void writeSFixed64ListInternal(int fieldNumber, List<Long> value, boolean packed) throws IOException {
        int i = 0;
        if (packed) {
            this.output.writeTag(fieldNumber, 2);
            int iComputeSFixed64SizeNoTag = 0;
            for (int i2 = 0; i2 < value.size(); i2++) {
                iComputeSFixed64SizeNoTag += CodedOutputStream.computeSFixed64SizeNoTag(value.get(i2).longValue());
            }
            this.output.writeUInt32NoTag(iComputeSFixed64SizeNoTag);
            while (i < value.size()) {
                this.output.writeSFixed64NoTag(value.get(i).longValue());
                i++;
            }
            return;
        }
        while (i < value.size()) {
            this.output.writeSFixed64(fieldNumber, value.get(i).longValue());
            i++;
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public void writeSInt32List(int fieldNumber, List<Integer> value, boolean packed) throws IOException {
        if (value instanceof IntArrayList) {
            writeSInt32ListInternal(fieldNumber, (IntArrayList) value, packed);
        } else {
            writeSInt32ListInternal(fieldNumber, value, packed);
        }
    }

    public final void writeSInt32ListInternal(int fieldNumber, IntArrayList value, boolean packed) throws IOException {
        int i = 0;
        if (packed) {
            this.output.writeTag(fieldNumber, 2);
            int iComputeSInt32SizeNoTag = 0;
            for (int i2 = 0; i2 < value.size(); i2++) {
                iComputeSInt32SizeNoTag += CodedOutputStream.computeSInt32SizeNoTag(value.getInt(i2));
            }
            this.output.writeUInt32NoTag(iComputeSInt32SizeNoTag);
            while (i < value.size()) {
                this.output.writeSInt32NoTag(value.getInt(i));
                i++;
            }
            return;
        }
        while (i < value.size()) {
            this.output.writeSInt32(fieldNumber, value.getInt(i));
            i++;
        }
    }

    public void writeSInt32ListInternal(int fieldNumber, List<Integer> value, boolean packed) throws IOException {
        int i = 0;
        if (packed) {
            this.output.writeTag(fieldNumber, 2);
            int iComputeSInt32SizeNoTag = 0;
            for (int i2 = 0; i2 < value.size(); i2++) {
                iComputeSInt32SizeNoTag += CodedOutputStream.computeSInt32SizeNoTag(value.get(i2).intValue());
            }
            this.output.writeUInt32NoTag(iComputeSInt32SizeNoTag);
            while (i < value.size()) {
                this.output.writeSInt32NoTag(value.get(i).intValue());
                i++;
            }
            return;
        }
        while (i < value.size()) {
            this.output.writeSInt32(fieldNumber, value.get(i).intValue());
            i++;
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public void writeSInt64List(int fieldNumber, List<Long> value, boolean packed) throws IOException {
        if (value instanceof LongArrayList) {
            writeSInt64ListInternal(fieldNumber, (LongArrayList) value, packed);
        } else {
            writeSInt64ListInternal(fieldNumber, value, packed);
        }
    }

    public final void writeSInt64ListInternal(int fieldNumber, LongArrayList value, boolean packed) throws IOException {
        int i = 0;
        if (packed) {
            this.output.writeTag(fieldNumber, 2);
            int iComputeSInt64SizeNoTag = 0;
            for (int i2 = 0; i2 < value.size(); i2++) {
                iComputeSInt64SizeNoTag += CodedOutputStream.computeSInt64SizeNoTag(value.getLong(i2));
            }
            this.output.writeUInt32NoTag(iComputeSInt64SizeNoTag);
            while (i < value.size()) {
                this.output.writeSInt64NoTag(value.getLong(i));
                i++;
            }
            return;
        }
        while (i < value.size()) {
            this.output.writeSInt64(fieldNumber, value.getLong(i));
            i++;
        }
    }

    public final void writeSInt64ListInternal(int fieldNumber, List<Long> value, boolean packed) throws IOException {
        int i = 0;
        if (packed) {
            this.output.writeTag(fieldNumber, 2);
            int iComputeSInt64SizeNoTag = 0;
            for (int i2 = 0; i2 < value.size(); i2++) {
                iComputeSInt64SizeNoTag += CodedOutputStream.computeSInt64SizeNoTag(value.get(i2).longValue());
            }
            this.output.writeUInt32NoTag(iComputeSInt64SizeNoTag);
            while (i < value.size()) {
                this.output.writeSInt64NoTag(value.get(i).longValue());
                i++;
            }
            return;
        }
        while (i < value.size()) {
            this.output.writeSInt64(fieldNumber, value.get(i).longValue());
            i++;
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public void writeMessageList(int fieldNumber, List<?> value, Schema schema) throws IOException {
        for (int i = 0; i < value.size(); i++) {
            writeMessage(fieldNumber, value.get(i), schema);
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public void writeGroupList(int fieldNumber, List<?> value, Schema schema) throws IOException {
        for (int i = 0; i < value.size(); i++) {
            writeGroup(fieldNumber, value.get(i), schema);
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Writer
    public <K, V> void writeMap(int fieldNumber, MapEntryLite.Metadata<K, V> metadata, Map<K, V> map) throws IOException {
        if (this.output.isSerializationDeterministic()) {
            writeDeterministicMap(fieldNumber, metadata, map);
            return;
        }
        for (Map.Entry<K, V> entry : map.entrySet()) {
            this.output.writeTag(fieldNumber, 2);
            this.output.writeUInt32NoTag(MapEntryLite.computeSerializedSize(metadata, entry.getKey(), entry.getValue()));
            MapEntryLite.writeTo(this.output, metadata, entry.getKey(), entry.getValue());
        }
    }

    /* JADX INFO: renamed from: com.google.crypto.tink.shaded.protobuf.CodedOutputStreamWriter$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$google$protobuf$WireFormat$FieldType;

        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            $SwitchMap$com$google$protobuf$WireFormat$FieldType = iArr;
            try {
                iArr[WireFormat.FieldType.BOOL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FIXED32.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.INT32.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SFIXED32.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SINT32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.UINT32.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FIXED64.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.INT64.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SFIXED64.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SINT64.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.UINT64.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.STRING.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    public final <K, V> void writeDeterministicMap(int fieldNumber, MapEntryLite.Metadata<K, V> metadata, Map<K, V> map) throws IOException {
        int[] iArr = AnonymousClass1.$SwitchMap$com$google$protobuf$WireFormat$FieldType;
        throw null;
    }
}
