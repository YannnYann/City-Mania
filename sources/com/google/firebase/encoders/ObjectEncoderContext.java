package com.google.firebase.encoders;

import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public interface ObjectEncoderContext {
    ObjectEncoderContext add(FieldDescriptor fieldDescriptor, long j) throws IOException;

    ObjectEncoderContext add(FieldDescriptor fieldDescriptor, Object obj) throws IOException;
}
