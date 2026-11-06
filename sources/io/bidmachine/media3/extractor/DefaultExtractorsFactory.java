package io.bidmachine.media3.extractor;

import android.net.Uri;
import com.google.common.collect.ImmutableList;
import io.bidmachine.media3.common.FileTypes;
import io.bidmachine.media3.common.Format;
import io.bidmachine.media3.common.util.TimestampAdjuster;
import io.bidmachine.media3.extractor.amr.AmrExtractor;
import io.bidmachine.media3.extractor.avi.AviExtractor;
import io.bidmachine.media3.extractor.avif.AvifExtractor;
import io.bidmachine.media3.extractor.bmp.BmpExtractor;
import io.bidmachine.media3.extractor.flac.FlacExtractor;
import io.bidmachine.media3.extractor.flv.FlvExtractor;
import io.bidmachine.media3.extractor.heif.HeifExtractor;
import io.bidmachine.media3.extractor.jpeg.JpegExtractor;
import io.bidmachine.media3.extractor.mkv.MatroskaExtractor;
import io.bidmachine.media3.extractor.mp3.Mp3Extractor;
import io.bidmachine.media3.extractor.mp4.FragmentedMp4Extractor;
import io.bidmachine.media3.extractor.mp4.Mp4Extractor;
import io.bidmachine.media3.extractor.ogg.OggExtractor;
import io.bidmachine.media3.extractor.png.PngExtractor;
import io.bidmachine.media3.extractor.text.DefaultSubtitleParserFactory;
import io.bidmachine.media3.extractor.text.SubtitleParser;
import io.bidmachine.media3.extractor.ts.Ac3Extractor;
import io.bidmachine.media3.extractor.ts.Ac4Extractor;
import io.bidmachine.media3.extractor.ts.AdtsExtractor;
import io.bidmachine.media3.extractor.ts.DefaultTsPayloadReaderFactory;
import io.bidmachine.media3.extractor.ts.PsExtractor;
import io.bidmachine.media3.extractor.ts.TsExtractor;
import io.bidmachine.media3.extractor.wav.WavExtractor;
import io.bidmachine.media3.extractor.webp.WebpExtractor;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes5.dex */
public final class DefaultExtractorsFactory implements ExtractorsFactory {
    public static final int[] DEFAULT_EXTRACTOR_ORDER = {5, 4, 12, 8, 3, 10, 9, 11, 6, 2, 0, 1, 7, 16, 15, 14, 17, 18, 19, 20, 21};
    public static final ExtensionLoader FLAC_EXTENSION_LOADER = new ExtensionLoader(new ExtensionLoader.ConstructorSupplier() { // from class: io.bidmachine.media3.extractor.DefaultExtractorsFactory$$ExternalSyntheticLambda0
        @Override // io.bidmachine.media3.extractor.DefaultExtractorsFactory.ExtensionLoader.ConstructorSupplier
        public final Constructor getConstructor() {
            return DefaultExtractorsFactory.getFlacExtractorConstructor();
        }
    });
    public static final ExtensionLoader MIDI_EXTENSION_LOADER = new ExtensionLoader(new ExtensionLoader.ConstructorSupplier() { // from class: io.bidmachine.media3.extractor.DefaultExtractorsFactory$$ExternalSyntheticLambda1
        @Override // io.bidmachine.media3.extractor.DefaultExtractorsFactory.ExtensionLoader.ConstructorSupplier
        public final Constructor getConstructor() {
            return DefaultExtractorsFactory.getMidiExtractorConstructor();
        }
    });
    public int adtsFlags;
    public int amrFlags;
    public int codecsToParseWithinGopSampleDependencies;
    public boolean constantBitrateSeekingAlwaysEnabled;
    public boolean constantBitrateSeekingEnabled;
    public int flacFlags;
    public int fragmentedMp4Flags;
    public int jpegFlags;
    public int matroskaFlags;
    public int mp3Flags;
    public int mp4Flags;
    public int tsFlags;
    public ImmutableList<Format> tsSubtitleFormats;
    public int tsMode = 1;
    public int tsTimestampSearchBytes = 112800;
    public SubtitleParser.Factory subtitleParserFactory = new DefaultSubtitleParserFactory();
    public boolean textTrackTranscodingEnabled = true;

    @Override // io.bidmachine.media3.extractor.ExtractorsFactory
    @Deprecated
    public synchronized DefaultExtractorsFactory experimentalSetTextTrackTranscodingEnabled(boolean z) {
        this.textTrackTranscodingEnabled = z;
        return this;
    }

    @Override // io.bidmachine.media3.extractor.ExtractorsFactory
    public synchronized DefaultExtractorsFactory setSubtitleParserFactory(SubtitleParser.Factory factory) {
        this.subtitleParserFactory = factory;
        return this;
    }

    @Override // io.bidmachine.media3.extractor.ExtractorsFactory
    public synchronized DefaultExtractorsFactory experimentalSetCodecsToParseWithinGopSampleDependencies(int i) {
        this.codecsToParseWithinGopSampleDependencies = i;
        return this;
    }

    public synchronized DefaultExtractorsFactory setJpegExtractorFlags(int i) {
        this.jpegFlags = i;
        return this;
    }

    @Override // io.bidmachine.media3.extractor.ExtractorsFactory
    public synchronized Extractor[] createExtractors() {
        return createExtractors(Uri.EMPTY, new HashMap());
    }

    @Override // io.bidmachine.media3.extractor.ExtractorsFactory
    public synchronized Extractor[] createExtractors(Uri uri, Map<String, List<String>> map) {
        ArrayList arrayList;
        try {
            int[] iArr = DEFAULT_EXTRACTOR_ORDER;
            arrayList = new ArrayList(iArr.length);
            int iInferFileTypeFromResponseHeaders = FileTypes.inferFileTypeFromResponseHeaders(map);
            if (iInferFileTypeFromResponseHeaders != -1) {
                addExtractorsForFileType(iInferFileTypeFromResponseHeaders, arrayList);
            }
            int iInferFileTypeFromUri = FileTypes.inferFileTypeFromUri(uri);
            if (iInferFileTypeFromUri != -1 && iInferFileTypeFromUri != iInferFileTypeFromResponseHeaders) {
                addExtractorsForFileType(iInferFileTypeFromUri, arrayList);
            }
            for (int i : iArr) {
                if (i != iInferFileTypeFromResponseHeaders && i != iInferFileTypeFromUri) {
                    addExtractorsForFileType(i, arrayList);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return (Extractor[]) arrayList.toArray(new Extractor[arrayList.size()]);
    }

    public final void addExtractorsForFileType(int i, List<Extractor> list) {
        switch (i) {
            case 0:
                list.add(new Ac3Extractor());
                break;
            case 1:
                list.add(new Ac4Extractor());
                break;
            case 2:
                list.add(new AdtsExtractor((this.constantBitrateSeekingAlwaysEnabled ? 2 : 0) | this.adtsFlags | (this.constantBitrateSeekingEnabled ? 1 : 0)));
                break;
            case 3:
                list.add(new AmrExtractor((this.constantBitrateSeekingAlwaysEnabled ? 2 : 0) | this.amrFlags | (this.constantBitrateSeekingEnabled ? 1 : 0)));
                break;
            case 4:
                Extractor extractor = FLAC_EXTENSION_LOADER.getExtractor(Integer.valueOf(this.flacFlags));
                if (extractor != null) {
                    list.add(extractor);
                } else {
                    list.add(new FlacExtractor(this.flacFlags));
                }
                break;
            case 5:
                list.add(new FlvExtractor());
                break;
            case 6:
                list.add(new MatroskaExtractor(this.subtitleParserFactory, (this.textTrackTranscodingEnabled ? 0 : 2) | this.matroskaFlags));
                break;
            case 7:
                list.add(new Mp3Extractor((this.constantBitrateSeekingAlwaysEnabled ? 2 : 0) | this.mp3Flags | (this.constantBitrateSeekingEnabled ? 1 : 0)));
                break;
            case 8:
                list.add(new FragmentedMp4Extractor(this.subtitleParserFactory, this.fragmentedMp4Flags | FragmentedMp4Extractor.codecsToParseWithinGopSampleDependenciesAsFlags(this.codecsToParseWithinGopSampleDependencies) | (this.textTrackTranscodingEnabled ? 0 : 32)));
                list.add(new Mp4Extractor(this.subtitleParserFactory, (this.textTrackTranscodingEnabled ? 0 : 16) | this.mp4Flags | Mp4Extractor.codecsToParseWithinGopSampleDependenciesAsFlags(this.codecsToParseWithinGopSampleDependencies)));
                break;
            case 9:
                list.add(new OggExtractor());
                break;
            case 10:
                list.add(new PsExtractor());
                break;
            case 11:
                if (this.tsSubtitleFormats == null) {
                    this.tsSubtitleFormats = ImmutableList.of();
                }
                list.add(new TsExtractor(this.tsMode, !this.textTrackTranscodingEnabled ? 1 : 0, this.subtitleParserFactory, new TimestampAdjuster(0L), new DefaultTsPayloadReaderFactory(this.tsFlags, this.tsSubtitleFormats), this.tsTimestampSearchBytes));
                break;
            case 12:
                list.add(new WavExtractor());
                break;
            case 14:
                list.add(new JpegExtractor(this.jpegFlags));
                break;
            case 15:
                Extractor extractor2 = MIDI_EXTENSION_LOADER.getExtractor(new Object[0]);
                if (extractor2 != null) {
                    list.add(extractor2);
                }
                break;
            case 16:
                list.add(new AviExtractor(!this.textTrackTranscodingEnabled ? 1 : 0, this.subtitleParserFactory));
                break;
            case 17:
                list.add(new PngExtractor());
                break;
            case 18:
                list.add(new WebpExtractor());
                break;
            case 19:
                list.add(new BmpExtractor());
                break;
            case 20:
                int i2 = this.mp4Flags;
                if ((i2 & 2) == 0 && (i2 & 4) == 0) {
                    list.add(new HeifExtractor());
                    break;
                }
                break;
            case 21:
                list.add(new AvifExtractor());
                break;
        }
    }

    public static Constructor<? extends Extractor> getMidiExtractorConstructor() throws NoSuchMethodException, ClassNotFoundException {
        return Class.forName("io.bidmachine.media3.decoder.midi.MidiExtractor").asSubclass(Extractor.class).getConstructor(new Class[0]);
    }

    public static Constructor<? extends Extractor> getFlacExtractorConstructor() throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, InvocationTargetException {
        if (Boolean.TRUE.equals(Class.forName("io.bidmachine.media3.decoder.flac.FlacLibrary").getMethod("isAvailable", new Class[0]).invoke(null, new Object[0]))) {
            return Class.forName("io.bidmachine.media3.decoder.flac.FlacExtractor").asSubclass(Extractor.class).getConstructor(Integer.TYPE);
        }
        return null;
    }

    public static final class ExtensionLoader {
        public final ConstructorSupplier constructorSupplier;
        public final AtomicBoolean extensionLoaded = new AtomicBoolean(false);
        public Constructor<? extends Extractor> extractorConstructor;

        public interface ConstructorSupplier {
            Constructor<? extends Extractor> getConstructor() throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, InvocationTargetException;
        }

        public ExtensionLoader(ConstructorSupplier constructorSupplier) {
            this.constructorSupplier = constructorSupplier;
        }

        public Extractor getExtractor(Object... objArr) {
            Constructor<? extends Extractor> constructorMaybeLoadExtractorConstructor = maybeLoadExtractorConstructor();
            if (constructorMaybeLoadExtractorConstructor == null) {
                return null;
            }
            try {
                return constructorMaybeLoadExtractorConstructor.newInstance(objArr);
            } catch (Exception e) {
                throw new IllegalStateException("Unexpected error creating extractor", e);
            }
        }

        public final Constructor<? extends Extractor> maybeLoadExtractorConstructor() {
            synchronized (this.extensionLoaded) {
                if (this.extensionLoaded.get()) {
                    return this.extractorConstructor;
                }
                try {
                    return this.constructorSupplier.getConstructor();
                } catch (ClassNotFoundException unused) {
                    this.extensionLoaded.set(true);
                    return this.extractorConstructor;
                } catch (Exception e) {
                    throw new RuntimeException("Error instantiating extension", e);
                }
            }
        }
    }
}
