/* gstreamer-audio-1.0.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "Gst", gir_namespace = "GstAudio", gir_version = "1.0", lower_case_cprefix = "gst_")]
namespace Gst {
	namespace Audio {
		[CCode (cheader_filename = "gst/audio/audio.h", type_id = "gst_audio_base_sink_get_type ()")]
		[GIR (name = "AudioBaseSink")]
		public class BaseSink : Gst.Base.Sink {
			public bool eos_rendering;
			public uint64 next_sample;
			public Gst.Clock provided_clock;
			public weak Gst.Audio.RingBuffer ringbuffer;
			[CCode (has_construct_function = false)]
			protected BaseSink ();
			public virtual unowned Gst.Audio.RingBuffer create_ringbuffer ();
			public Gst.ClockTime get_alignment_threshold ();
			public Gst.ClockTime get_discont_wait ();
			public int64 get_drift_tolerance ();
			public bool get_provide_clock ();
			public Gst.Audio.BaseSinkSlaveMethod get_slave_method ();
			[NoWrapper]
			public virtual Gst.Buffer payload (Gst.Buffer buffer);
			[Version (since = "1.6")]
			public void report_device_failure ();
			public void set_alignment_threshold (Gst.ClockTime alignment_threshold);
			[Version (since = "1.6")]
			public void set_custom_slaving_callback (owned Gst.Audio.BaseSinkCustomSlavingCallback callback);
			public void set_discont_wait (Gst.ClockTime discont_wait);
			public void set_drift_tolerance (int64 drift_tolerance);
			public void set_provide_clock (bool provide);
			public void set_slave_method (Gst.Audio.BaseSinkSlaveMethod method);
			public uint64 alignment_threshold { get; set; }
			[NoAccessorMethod]
			public int64 buffer_time { get; set; }
			[NoAccessorMethod]
			public bool can_activate_pull { get; set; }
			public uint64 discont_wait { get; set; }
			public int64 drift_tolerance { get; set; }
			[NoAccessorMethod]
			public int64 latency_time { get; set; }
			public bool provide_clock { get; set; }
			public Gst.Audio.BaseSinkSlaveMethod slave_method { get; set; }
		}
		[CCode (cheader_filename = "gst/audio/audio.h", type_id = "gst_audio_base_src_get_type ()")]
		[GIR (name = "AudioBaseSrc")]
		public class BaseSrc : Gst.Base.PushSrc {
			public weak Gst.Clock clock;
			public uint64 next_sample;
			public weak Gst.Audio.RingBuffer ringbuffer;
			[CCode (has_construct_function = false)]
			protected BaseSrc ();
			public virtual unowned Gst.Audio.RingBuffer create_ringbuffer ();
			public bool get_provide_clock ();
			public Gst.Audio.BaseSrcSlaveMethod get_slave_method ();
			public void set_provide_clock (bool provide);
			public void set_slave_method (Gst.Audio.BaseSrcSlaveMethod method);
			[NoAccessorMethod]
			public int64 actual_buffer_time { get; }
			[NoAccessorMethod]
			public int64 actual_latency_time { get; }
			[NoAccessorMethod]
			public int64 buffer_time { get; set; }
			[NoAccessorMethod]
			public int64 latency_time { get; set; }
			public bool provide_clock { get; set; }
			public Gst.Audio.BaseSrcSlaveMethod slave_method { get; set; }
		}
		[CCode (cheader_filename = "gst/audio/audio.h", type_id = "gst_audio_cd_src_get_type ()")]
		[GIR (name = "AudioCdSrc")]
		public class CdSrc : Gst.Base.PushSrc, Gst.URIHandler {
			public weak Gst.TagList tags;
			[CCode (has_construct_function = false)]
			protected CdSrc ();
			public bool add_track (Gst.Audio.CdSrcTrack track);
			[NoWrapper]
			public virtual void close ();
			[NoWrapper]
			public virtual bool open (string device);
			[NoWrapper]
			public virtual Gst.Buffer read_sector (int sector);
			[NoAccessorMethod]
			public string device { owned get; set; }
			[NoAccessorMethod]
			public Gst.Audio.CdSrcMode mode { get; set; }
			[NoAccessorMethod]
			public uint track { get; set; }
		}
		[CCode (cheader_filename = "gst/audio/audio.h", has_type_id = false)]
		[Compact]
		[GIR (name = "AudioChannelMixer")]
		public class ChannelMixer {
			public void free ();
			public bool is_passthrough ();
			public void samples (void* @in, void* @out, int samples);
		}
		[CCode (cheader_filename = "gst/audio/audio.h", type_id = "gst_audio_clock_get_type ()")]
		[GIR (name = "AudioClock")]
		public class Clock : Gst.SystemClock {
			[CCode (has_construct_function = false, type = "GstClock*")]
			public Clock (string name, owned Gst.Audio.ClockGetTimeFunc func);
			public Gst.ClockTime adjust (Gst.ClockTime time);
			public Gst.ClockTime get_time ();
			public void invalidate ();
			public void reset (Gst.ClockTime time);
		}
		[CCode (cheader_filename = "gst/audio/audio.h", has_type_id = false)]
		[Compact]
		[GIR (name = "AudioConverter")]
		public class Converter {
			public void free ();
			public unowned Gst.Structure get_config (int in_rate, int out_rate);
			public size_t get_in_frames (size_t out_frames);
			public size_t get_max_latency ();
			public size_t get_out_frames (size_t in_frames);
			public void reset ();
			public bool samples (Gst.Audio.ConverterFlags flags, void* @in, size_t in_frames, void* @out, size_t out_frames);
			public bool supports_inplace ();
			public bool update_config (int in_rate, int out_rate, owned Gst.Structure? config);
		}
		[CCode (cheader_filename = "gst/audio/audio.h", type_id = "gst_audio_decoder_get_type ()")]
		[GIR (name = "AudioDecoder")]
		public abstract class Decoder : Gst.Element {
			public weak Gst.Segment input_segment;
			public weak Gst.Segment output_segment;
			public weak Gst.Pad sinkpad;
			public weak Gst.Pad srcpad;
			public GLib.RecMutex stream_lock;
			[CCode (has_construct_function = false)]
			protected Decoder ();
			public Gst.Buffer allocate_output_buffer (size_t size);
			[NoWrapper]
			public virtual bool close ();
			[NoWrapper]
			public virtual bool decide_allocation (Gst.Query query);
			public Gst.FlowReturn finish_frame (Gst.Buffer buf, int frames);
			[NoWrapper]
			public virtual void flush (bool hard);
			public void get_allocator (out Gst.Allocator allocator, out Gst.AllocationParams @params);
			public Gst.Audio.Info get_audio_info ();
			public int get_delay ();
			public bool get_drainable ();
			public int get_estimate_rate ();
			public void get_latency (out Gst.ClockTime min, out Gst.ClockTime max);
			public int get_max_errors ();
			public Gst.ClockTime get_min_latency ();
			public bool get_needs_format ();
			public void get_parse_state (bool sync, bool eos);
			public bool get_plc ();
			public int get_plc_aware ();
			public Gst.ClockTime get_tolerance ();
			[NoWrapper]
			public virtual Gst.Caps getcaps (Gst.Caps filter);
			[NoWrapper]
			public virtual Gst.FlowReturn handle_frame (Gst.Buffer buffer);
			public void merge_tags (Gst.TagList? tags, Gst.TagMergeMode mode);
			public virtual bool negotiate ();
			[NoWrapper]
			public virtual bool open ();
			[NoWrapper]
			public virtual Gst.FlowReturn parse (Gst.Base.Adapter adapter, int offset, int length);
			[NoWrapper]
			public virtual Gst.FlowReturn pre_push (Gst.Buffer buffer);
			[NoWrapper]
			public virtual bool propose_allocation (Gst.Query query);
			[Version (since = "1.6")]
			public Gst.Caps proxy_getcaps (Gst.Caps? caps, Gst.Caps? filter);
			[Version (since = "1.10")]
			public void set_allocation_caps (Gst.Caps? allocation_caps);
			public void set_drainable (bool enabled);
			public void set_estimate_rate (bool enabled);
			[NoWrapper]
			public virtual bool set_format (Gst.Caps caps);
			public void set_latency (Gst.ClockTime min, Gst.ClockTime max);
			public void set_max_errors (int num);
			public void set_min_latency (Gst.ClockTime num);
			public void set_needs_format (bool enabled);
			public bool set_output_format (Gst.Audio.Info info);
			public void set_plc (bool enabled);
			public void set_plc_aware (bool plc);
			public void set_tolerance (Gst.ClockTime tolerance);
			[Version (since = "1.6")]
			public void set_use_default_pad_acceptcaps (bool use);
			[NoWrapper]
			public virtual bool sink_event (Gst.Event event);
			[NoWrapper]
			public virtual bool sink_query (Gst.Query query);
			[NoWrapper]
			public virtual bool src_event (Gst.Event event);
			[NoWrapper]
			public virtual bool src_query (Gst.Query query);
			[NoWrapper]
			public virtual bool start ();
			[NoWrapper]
			public virtual bool stop ();
			[NoWrapper]
			public virtual bool transform_meta (Gst.Buffer outbuf, Gst.Meta meta, Gst.Buffer inbuf);
			public int64 min_latency { get; set; }
			public bool plc { get; set; }
			public int64 tolerance { get; set; }
		}
		[CCode (cheader_filename = "gst/audio/audio.h", type_id = "gst_audio_encoder_get_type ()")]
		[GIR (name = "AudioEncoder")]
		public abstract class Encoder : Gst.Element, Gst.Preset {
			public weak Gst.Segment input_segment;
			public weak Gst.Segment output_segment;
			public weak Gst.Pad sinkpad;
			public weak Gst.Pad srcpad;
			public GLib.RecMutex stream_lock;
			[CCode (has_construct_function = false)]
			protected Encoder ();
			public Gst.Buffer allocate_output_buffer (size_t size);
			[NoWrapper]
			public virtual bool close ();
			[NoWrapper]
			public virtual bool decide_allocation (Gst.Query query);
			public Gst.FlowReturn finish_frame (Gst.Buffer buffer, int samples);
			[NoWrapper]
			public virtual void flush ();
			public void get_allocator (out Gst.Allocator allocator, out Gst.AllocationParams @params);
			public Gst.Audio.Info get_audio_info ();
			public bool get_drainable ();
			public int get_frame_max ();
			public int get_frame_samples_max ();
			public int get_frame_samples_min ();
			public bool get_hard_min ();
			public bool get_hard_resync ();
			public void get_latency (out Gst.ClockTime min, out Gst.ClockTime max);
			public int get_lookahead ();
			public bool get_mark_granule ();
			public bool get_perfect_timestamp ();
			public Gst.ClockTime get_tolerance ();
			[NoWrapper]
			public virtual Gst.Caps getcaps (Gst.Caps filter);
			[NoWrapper]
			public virtual Gst.FlowReturn handle_frame (Gst.Buffer buffer);
			public void merge_tags (Gst.TagList? tags, Gst.TagMergeMode mode);
			public virtual bool negotiate ();
			[NoWrapper]
			public virtual bool open ();
			[NoWrapper]
			public virtual Gst.FlowReturn pre_push (Gst.Buffer buffer);
			[NoWrapper]
			public virtual bool propose_allocation (Gst.Query query);
			public Gst.Caps proxy_getcaps (Gst.Caps? caps, Gst.Caps? filter);
			[Version (since = "1.10")]
			public void set_allocation_caps (Gst.Caps? allocation_caps);
			public void set_drainable (bool enabled);
			[NoWrapper]
			public virtual bool set_format (Gst.Audio.Info info);
			public void set_frame_max (int num);
			public void set_frame_samples_max (int num);
			public void set_frame_samples_min (int num);
			public void set_hard_min (bool enabled);
			public void set_hard_resync (bool enabled);
			public void set_headers (owned GLib.List<Gst.Buffer> headers);
			public void set_latency (Gst.ClockTime min, Gst.ClockTime max);
			public void set_lookahead (int num);
			public void set_mark_granule (bool enabled);
			public bool set_output_format (Gst.Caps caps);
			public void set_perfect_timestamp (bool enabled);
			public void set_tolerance (Gst.ClockTime tolerance);
			[NoWrapper]
			public virtual bool sink_event (Gst.Event event);
			[NoWrapper]
			public virtual bool sink_query (Gst.Query query);
			[NoWrapper]
			public virtual bool src_event (Gst.Event event);
			[NoWrapper]
			public virtual bool src_query (Gst.Query query);
			[NoWrapper]
			public virtual bool start ();
			[NoWrapper]
			public virtual bool stop ();
			[NoWrapper]
			public virtual bool transform_meta (Gst.Buffer outbuf, Gst.Meta meta, Gst.Buffer inbuf);
			public bool hard_resync { get; set; }
			public bool mark_granule { get; }
			public bool perfect_timestamp { get; set; }
			public int64 tolerance { get; set; }
		}
		[CCode (cheader_filename = "gst/audio/audio.h", type_id = "gst_audio_filter_get_type ()")]
		[GIR (name = "AudioFilter")]
		public abstract class Filter : Gst.Base.Transform {
			public weak Gst.Audio.Info info;
			[CCode (has_construct_function = false)]
			protected Filter ();
			[NoWrapper]
			public virtual bool setup (Gst.Audio.Info info);
		}
		[CCode (cheader_filename = "gst/audio/audio.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "gst_audio_info_get_type ()")]
		[Compact]
		[GIR (name = "AudioInfo")]
		public class Info {
			public int bpf;
			public int channels;
			public Gst.Audio.FormatInfo finfo;
			public Gst.Audio.Flags flags;
			public Gst.Audio.Layout layout;
			[CCode (array_length = false)]
			public weak Gst.Audio.ChannelPosition position[64];
			public int rate;
			[CCode (has_construct_function = false)]
			public Info ();
			public bool convert (Gst.Format src_fmt, int64 src_val, Gst.Format dest_fmt, int64 dest_val);
			public Gst.Audio.Info copy ();
			public void free ();
			public bool from_caps (Gst.Caps caps);
			public void init ();
			[Version (since = "1.2")]
			public bool is_equal (Gst.Audio.Info other);
			public void set_format (Gst.Audio.Format format, int rate, int channels, Gst.Audio.ChannelPosition position);
			public Gst.Caps to_caps ();
		}
		[CCode (cheader_filename = "gst/audio/audio.h", has_type_id = false)]
		[Compact]
		[GIR (name = "AudioQuantize")]
		public class Quantize {
			public void free ();
			public void reset ();
			public void samples (void* @in, void* @out, uint samples);
		}
		[CCode (cheader_filename = "gst/audio/audio.h", has_type_id = false)]
		[Compact]
		[GIR (name = "AudioResampler")]
		public class Resampler {
			[CCode (has_construct_function = false)]
			public Resampler (Gst.Audio.ResamplerMethod method, Gst.Audio.ResamplerFlags flags, Gst.Audio.Format format, int channels, int in_rate, int out_rate, Gst.Structure options);
			[Version (since = "1.6")]
			public void free ();
			public size_t get_in_frames (size_t out_frames);
			public size_t get_max_latency ();
			public size_t get_out_frames (size_t in_frames);
			public void resample (void* @in, size_t in_frames, void* @out, size_t out_frames);
			public void reset ();
			public bool update (int in_rate, int out_rate, Gst.Structure options);
		}
		[CCode (cheader_filename = "gst/audio/audio.h", type_id = "gst_audio_ring_buffer_get_type ()")]
		[GIR (name = "AudioRingBuffer")]
		public abstract class RingBuffer : Gst.Object {
			public bool acquired;
			public GLib.Cond cond;
			public uint8 empty_seg;
			public uint8 memory;
			public bool open;
			public int samples_per_seg;
			public int segbase;
			public int segdone;
			public size_t size;
			public Gst.Audio.RingBufferSpec spec;
			public int state;
			public Gst.ClockTime timestamps;
			public int waiting;
			[CCode (has_construct_function = false)]
			protected RingBuffer ();
			public virtual bool acquire (Gst.Audio.RingBufferSpec spec);
			public virtual bool activate (bool active);
			public void advance (uint advance);
			public void clear (int segment);
			public virtual void clear_all ();
			public virtual bool close_device ();
			public virtual uint commit (uint64 sample, uint8 data, int in_samples, int out_samples, int accum);
			public bool convert (Gst.Format src_fmt, int64 src_val, Gst.Format dest_fmt, int64 dest_val);
			public static void debug_spec_buff (Gst.Audio.RingBufferSpec spec);
			public static void debug_spec_caps (Gst.Audio.RingBufferSpec spec);
			public virtual uint delay ();
			public bool device_is_open ();
			public bool is_acquired ();
			public bool is_active ();
			public bool is_flushing ();
			public void may_start (bool allowed);
			public virtual bool open_device ();
			public static bool parse_caps (Gst.Audio.RingBufferSpec spec, Gst.Caps caps);
			public virtual bool pause ();
			public bool prepare_read (int segment, uint8 readptr, int len);
			public uint read (uint64 sample, uint8 data, uint len, Gst.ClockTime timestamp);
			public virtual bool release ();
			[NoWrapper]
			public virtual bool resume ();
			public uint64 samples_done ();
			public void set_callback ([CCode (scope = "async")] Gst.Audio.RingBufferCallback cb);
			public void set_channel_positions (Gst.Audio.ChannelPosition position);
			public void set_flushing (bool flushing);
			public void set_sample (uint64 sample);
			public void set_timestamp (int readseg, Gst.ClockTime timestamp);
			public virtual bool start ();
			public virtual bool stop ();
		}
		[CCode (cheader_filename = "gst/audio/audio.h", type_id = "gst_audio_sink_get_type ()")]
		[GIR (name = "AudioSink")]
		public class Sink : Gst.Audio.BaseSink {
			[CCode (has_construct_function = false)]
			protected Sink ();
			[NoWrapper]
			public virtual bool close ();
			[NoWrapper]
			public virtual uint delay ();
			[NoWrapper]
			public virtual bool open ();
			[NoWrapper]
			public virtual bool prepare (Gst.Audio.RingBufferSpec spec);
			[NoWrapper]
			public virtual void reset ();
			[NoWrapper]
			public virtual bool unprepare ();
			[NoWrapper]
			public virtual int write ([CCode (array_length_cname = "length", array_length_pos = 1.1, array_length_type = "guint", type = "gpointer")] uint8[] data);
		}
		[CCode (cheader_filename = "gst/audio/audio.h", type_id = "gst_audio_src_get_type ()")]
		[GIR (name = "AudioSrc")]
		public class Src : Gst.Audio.BaseSrc {
			[CCode (has_construct_function = false)]
			protected Src ();
			[NoWrapper]
			public virtual bool close ();
			[NoWrapper]
			public virtual uint delay ();
			[NoWrapper]
			public virtual bool open ();
			[NoWrapper]
			public virtual bool prepare (Gst.Audio.RingBufferSpec spec);
			[NoWrapper]
			public virtual uint read ([CCode (array_length_cname = "length", array_length_pos = 1.5, array_length_type = "guint", type = "gpointer")] uint8[] data, Gst.ClockTime timestamp);
			[NoWrapper]
			public virtual void reset ();
			[NoWrapper]
			public virtual bool unprepare ();
		}
		[CCode (cheader_filename = "gst/audio/audio.h", cname = "GstStreamVolume", lower_case_cprefix = "gst_stream_volume_", type_cname = "GstStreamVolumeInterface", type_id = "gst_stream_volume_get_type ()")]
		[GIR (name = "StreamVolume")]
		public interface StreamVolume : GLib.Object {
			public static double convert_volume (Gst.Audio.StreamVolumeFormat from, Gst.Audio.StreamVolumeFormat to, double val);
			public bool get_mute ();
			public double get_volume (Gst.Audio.StreamVolumeFormat format);
			public void set_mute (bool mute);
			public void set_volume (Gst.Audio.StreamVolumeFormat format, double val);
			[ConcreteAccessor]
			public abstract bool mute { get; set; }
			[NoAccessorMethod]
			public abstract double volume { get; set; }
		}
		[CCode (cheader_filename = "gst/audio/audio.h", has_type_id = false)]
		[GIR (name = "AudioCdSrcTrack")]
		public struct CdSrcTrack {
			public bool is_audio;
			public uint num;
			public uint start;
			public uint end;
			public weak Gst.TagList tags;
		}
		[CCode (cheader_filename = "gst/audio/audio.h", has_type_id = false)]
		[GIR (name = "AudioClippingMeta")]
		[Version (since = "1.8")]
		public struct ClippingMeta {
			public Gst.Meta meta;
			public Gst.Format format;
			public uint64 start;
			public uint64 end;
		}
		[CCode (cheader_filename = "gst/audio/audio.h", has_type_id = false)]
		[GIR (name = "AudioDownmixMeta")]
		public struct DownmixMeta {
			public Gst.Meta meta;
			public Gst.Audio.ChannelPosition from_position;
			public Gst.Audio.ChannelPosition to_position;
			public int from_channels;
			public int to_channels;
			public float matrix;
		}
		[CCode (cheader_filename = "gst/audio/audio.h", has_type_id = false)]
		[GIR (name = "AudioFormatInfo")]
		public struct FormatInfo {
			public Gst.Audio.Format format;
			public weak string name;
			public weak string description;
			public Gst.Audio.FormatFlags flags;
			public int endianness;
			public int width;
			public int depth;
			[CCode (array_length = false)]
			public weak uint8 silence[8];
			public Gst.Audio.Format unpack_format;
			public weak Gst.Audio.FormatUnpack unpack_func;
			public weak Gst.Audio.FormatPack pack_func;
		}
		[CCode (cheader_filename = "gst/audio/audio.h", has_type_id = false)]
		[GIR (name = "AudioRingBufferSpec")]
		public struct RingBufferSpec {
			public weak Gst.Caps caps;
			public Gst.Audio.RingBufferFormatType type;
			public weak Gst.Audio.Info info;
			public uint64 latency_time;
			public uint64 buffer_time;
			public int segsize;
			public int segtotal;
			public int seglatency;
		}
		[CCode (cheader_filename = "gst/audio/audio.h", cprefix = "GST_AUDIO_BASE_SINK_DISCONT_REASON_", has_type_id = false)]
		[GIR (name = "AudioBaseSinkDiscontReason")]
		[Version (since = "1.6")]
		public enum BaseSinkDiscontReason {
			NO_DISCONT,
			NEW_CAPS,
			FLUSH,
			SYNC_LATENCY,
			ALIGNMENT,
			DEVICE_FAILURE
		}
		[CCode (cheader_filename = "gst/audio/audio.h", cprefix = "GST_AUDIO_BASE_SINK_SLAVE_", type_id = "gst_audio_base_sink_slave_method_get_type ()")]
		[GIR (name = "AudioBaseSinkSlaveMethod")]
		public enum BaseSinkSlaveMethod {
			RESAMPLE,
			SKEW,
			NONE,
			CUSTOM
		}
		[CCode (cheader_filename = "gst/audio/audio.h", cprefix = "GST_AUDIO_BASE_SRC_SLAVE_", type_id = "gst_audio_base_src_slave_method_get_type ()")]
		[GIR (name = "AudioBaseSrcSlaveMethod")]
		public enum BaseSrcSlaveMethod {
			RESAMPLE,
			[CCode (cname = "GST_AUDIO_BASE_SRC_SLAVE_RETIMESTAMP")]
			RE_TIMESTAMP,
			SKEW,
			NONE
		}
		[CCode (cheader_filename = "gst/audio/audio.h", cprefix = "", type_id = "gst_audio_cd_src_mode_get_type ()")]
		[GIR (name = "AudioCdSrcMode")]
		public enum CdSrcMode {
			[CCode (cname = "Stream consists of a single track")]
			NORMAL,
			[CCode (cname = "Stream consists of the whole disc")]
			CONTINUOUS
		}
		[CCode (cheader_filename = "gst/audio/audio.h", cprefix = "GST_AUDIO_CHANNEL_MIXER_FLAGS_", type_id = "gst_audio_channel_mixer_flags_get_type ()")]
		[Flags]
		[GIR (name = "AudioChannelMixerFlags")]
		public enum ChannelMixerFlags {
			NONE,
			NON_INTERLEAVED_IN,
			NON_INTERLEAVED_OUT,
			UNPOSITIONED_IN,
			UNPOSITIONED_OUT
		}
		[CCode (cheader_filename = "gst/audio/audio.h", cprefix = "GST_AUDIO_CHANNEL_POSITION_", type_id = "gst_audio_channel_position_get_type ()")]
		[GIR (name = "AudioChannelPosition")]
		public enum ChannelPosition {
			NONE,
			MONO,
			INVALID,
			FRONT_LEFT,
			FRONT_RIGHT,
			FRONT_CENTER,
			LFE1,
			REAR_LEFT,
			REAR_RIGHT,
			FRONT_LEFT_OF_CENTER,
			FRONT_RIGHT_OF_CENTER,
			REAR_CENTER,
			LFE2,
			SIDE_LEFT,
			SIDE_RIGHT,
			TOP_FRONT_LEFT,
			TOP_FRONT_RIGHT,
			TOP_FRONT_CENTER,
			TOP_CENTER,
			TOP_REAR_LEFT,
			TOP_REAR_RIGHT,
			TOP_SIDE_LEFT,
			TOP_SIDE_RIGHT,
			TOP_REAR_CENTER,
			BOTTOM_FRONT_CENTER,
			BOTTOM_FRONT_LEFT,
			BOTTOM_FRONT_RIGHT,
			WIDE_LEFT,
			WIDE_RIGHT,
			SURROUND_LEFT,
			SURROUND_RIGHT
		}
		[CCode (cheader_filename = "gst/audio/audio.h", cprefix = "GST_AUDIO_CONVERTER_FLAG_", type_id = "gst_audio_converter_flags_get_type ()")]
		[Flags]
		[GIR (name = "AudioConverterFlags")]
		public enum ConverterFlags {
			NONE,
			IN_WRITABLE,
			VARIABLE_RATE
		}
		[CCode (cheader_filename = "gst/audio/audio.h", cprefix = "GST_AUDIO_DITHER_", type_id = "gst_audio_dither_method_get_type ()")]
		[GIR (name = "AudioDitherMethod")]
		public enum DitherMethod {
			NONE,
			RPDF,
			TPDF,
			TPDF_HF
		}
		[CCode (cheader_filename = "gst/audio/audio.h", cprefix = "GST_AUDIO_FLAG_", type_id = "gst_audio_flags_get_type ()")]
		[Flags]
		[GIR (name = "AudioFlags")]
		public enum Flags {
			NONE,
			UNPOSITIONED
		}
		[CCode (cheader_filename = "gst/audio/audio.h", cprefix = "GST_AUDIO_FORMAT_", type_id = "gst_audio_format_get_type ()")]
		[GIR (name = "AudioFormat")]
		public enum Format {
			UNKNOWN,
			ENCODED,
			S8,
			U8,
			S16LE,
			S16BE,
			U16LE,
			U16BE,
			S24_32LE,
			S24_32BE,
			U24_32LE,
			U24_32BE,
			S32LE,
			S32BE,
			U32LE,
			U32BE,
			S24LE,
			S24BE,
			U24LE,
			U24BE,
			S20LE,
			S20BE,
			U20LE,
			U20BE,
			S18LE,
			S18BE,
			U18LE,
			U18BE,
			F32LE,
			F32BE,
			F64LE,
			F64BE,
			S16,
			U16,
			S24_32,
			U24_32,
			S32,
			U32,
			S24,
			U24,
			S20,
			U20,
			S18,
			U18,
			F32,
			F64
		}
		[CCode (cheader_filename = "gst/audio/audio.h", cprefix = "GST_AUDIO_FORMAT_FLAG_", type_id = "gst_audio_format_flags_get_type ()")]
		[Flags]
		[GIR (name = "AudioFormatFlags")]
		public enum FormatFlags {
			INTEGER,
			FLOAT,
			SIGNED,
			COMPLEX,
			UNPACK
		}
		[CCode (cheader_filename = "gst/audio/audio.h", cprefix = "GST_AUDIO_LAYOUT_", type_id = "gst_audio_layout_get_type ()")]
		[GIR (name = "AudioLayout")]
		public enum Layout {
			INTERLEAVED,
			NON_INTERLEAVED
		}
		[CCode (cheader_filename = "gst/audio/audio.h", cprefix = "GST_AUDIO_NOISE_SHAPING_", type_id = "gst_audio_noise_shaping_method_get_type ()")]
		[GIR (name = "AudioNoiseShapingMethod")]
		public enum NoiseShapingMethod {
			NONE,
			ERROR_FEEDBACK,
			SIMPLE,
			MEDIUM,
			HIGH
		}
		[CCode (cheader_filename = "gst/audio/audio.h", cprefix = "GST_AUDIO_PACK_FLAG_", type_id = "gst_audio_pack_flags_get_type ()")]
		[Flags]
		[GIR (name = "AudioPackFlags")]
		public enum PackFlags {
			NONE,
			TRUNCATE_RANGE
		}
		[CCode (cheader_filename = "gst/audio/audio.h", cprefix = "GST_AUDIO_QUANTIZE_FLAG_", type_id = "gst_audio_quantize_flags_get_type ()")]
		[Flags]
		[GIR (name = "AudioQuantizeFlags")]
		public enum QuantizeFlags {
			NONE,
			NON_INTERLEAVED
		}
		[CCode (cheader_filename = "gst/audio/audio.h", cprefix = "GST_AUDIO_RESAMPLER_FILTER_INTERPOLATION_", type_id = "gst_audio_resampler_filter_interpolation_get_type ()")]
		[GIR (name = "AudioResamplerFilterInterpolation")]
		public enum ResamplerFilterInterpolation {
			NONE,
			LINEAR,
			CUBIC
		}
		[CCode (cheader_filename = "gst/audio/audio.h", cprefix = "GST_AUDIO_RESAMPLER_FILTER_MODE_", type_id = "gst_audio_resampler_filter_mode_get_type ()")]
		[GIR (name = "AudioResamplerFilterMode")]
		public enum ResamplerFilterMode {
			INTERPOLATED,
			FULL,
			AUTO
		}
		[CCode (cheader_filename = "gst/audio/audio.h", cprefix = "GST_AUDIO_RESAMPLER_FLAG_", type_id = "gst_audio_resampler_flags_get_type ()")]
		[Flags]
		[GIR (name = "AudioResamplerFlags")]
		public enum ResamplerFlags {
			NONE,
			NON_INTERLEAVED_IN,
			NON_INTERLEAVED_OUT,
			VARIABLE_RATE
		}
		[CCode (cheader_filename = "gst/audio/audio.h", cprefix = "GST_AUDIO_RESAMPLER_METHOD_", type_id = "gst_audio_resampler_method_get_type ()")]
		[GIR (name = "AudioResamplerMethod")]
		[Version (since = "1.6")]
		public enum ResamplerMethod {
			NEAREST,
			LINEAR,
			CUBIC,
			BLACKMAN_NUTTALL,
			KAISER
		}
		[CCode (cheader_filename = "gst/audio/audio.h", cprefix = "GST_AUDIO_RING_BUFFER_FORMAT_TYPE_", type_id = "gst_audio_ring_buffer_format_type_get_type ()")]
		[GIR (name = "AudioRingBufferFormatType")]
		public enum RingBufferFormatType {
			RAW,
			MU_LAW,
			A_LAW,
			IMA_ADPCM,
			MPEG,
			GSM,
			IEC958,
			AC3,
			EAC3,
			DTS,
			MPEG2_AAC,
			MPEG4_AAC
		}
		[CCode (cheader_filename = "gst/audio/audio.h", cprefix = "GST_AUDIO_RING_BUFFER_STATE_", type_id = "gst_audio_ring_buffer_state_get_type ()")]
		[GIR (name = "AudioRingBufferState")]
		public enum RingBufferState {
			STOPPED,
			PAUSED,
			STARTED,
			ERROR
		}
		[CCode (cheader_filename = "gst/audio/audio.h", cname = "GstStreamVolumeFormat", cprefix = "GST_STREAM_VOLUME_FORMAT_", has_type_id = false)]
		[GIR (name = "StreamVolumeFormat")]
		public enum StreamVolumeFormat {
			LINEAR,
			CUBIC,
			DB
		}
		[CCode (cheader_filename = "gst/audio/audio.h", instance_pos = 5.9)]
		[Version (since = "1.6")]
		public delegate void BaseSinkCustomSlavingCallback (Gst.Audio.BaseSink sink, Gst.ClockTime etime, Gst.ClockTime itime, Gst.ClockTimeDiff requested_skew, Gst.Audio.BaseSinkDiscontReason discont_reason);
		[CCode (cheader_filename = "gst/audio/audio.h", instance_pos = 1.9)]
		public delegate Gst.ClockTime ClockGetTimeFunc (Gst.Clock clock);
		[CCode (cheader_filename = "gst/audio/audio.h", has_target = false)]
		public delegate void FormatPack (Gst.Audio.FormatInfo info, Gst.Audio.PackFlags flags, [CCode (array_length = false)] uint8[] src, [CCode (array_length = false)] uint8[] data, int length);
		[CCode (cheader_filename = "gst/audio/audio.h", has_target = false)]
		public delegate void FormatUnpack (Gst.Audio.FormatInfo info, Gst.Audio.PackFlags flags, [CCode (array_length = false)] uint8[] dest, [CCode (array_length = false)] uint8[] data, int length);
		[CCode (cheader_filename = "gst/audio/audio.h", instance_pos = 2.9)]
		public delegate void RingBufferCallback (Gst.Audio.RingBuffer rbuf, [CCode (array_length_cname = "len", array_length_pos = 2.1, array_length_type = "guint")] uint8[] data);
		[CCode (cheader_filename = "gst/audio/audio.h", cname = "GST_AUDIO_CHANNELS_RANGE")]
		public const string CHANNELS_RANGE;
		[CCode (cheader_filename = "gst/audio/audio.h", cname = "GST_AUDIO_CONVERTER_OPT_DITHER_METHOD")]
		public const string CONVERTER_OPT_DITHER_METHOD;
		[CCode (cheader_filename = "gst/audio/audio.h", cname = "GST_AUDIO_CONVERTER_OPT_NOISE_SHAPING_METHOD")]
		public const string CONVERTER_OPT_NOISE_SHAPING_METHOD;
		[CCode (cheader_filename = "gst/audio/audio.h", cname = "GST_AUDIO_CONVERTER_OPT_QUANTIZATION")]
		public const string CONVERTER_OPT_QUANTIZATION;
		[CCode (cheader_filename = "gst/audio/audio.h", cname = "GST_AUDIO_CONVERTER_OPT_RESAMPLER_METHOD")]
		public const string CONVERTER_OPT_RESAMPLER_METHOD;
		[CCode (cheader_filename = "gst/audio/audio.h", cname = "GST_AUDIO_DECODER_MAX_ERRORS")]
		public const int DECODER_MAX_ERRORS;
		[CCode (cheader_filename = "gst/audio/audio.h", cname = "GST_AUDIO_DECODER_SINK_NAME")]
		public const string DECODER_SINK_NAME;
		[CCode (cheader_filename = "gst/audio/audio.h", cname = "GST_AUDIO_DECODER_SRC_NAME")]
		public const string DECODER_SRC_NAME;
		[CCode (cheader_filename = "gst/audio/audio.h", cname = "GST_AUDIO_DEF_CHANNELS")]
		public const int DEF_CHANNELS;
		[CCode (cheader_filename = "gst/audio/audio.h", cname = "GST_AUDIO_DEF_FORMAT")]
		public const string DEF_FORMAT;
		[CCode (cheader_filename = "gst/audio/audio.h", cname = "GST_AUDIO_DEF_RATE")]
		public const int DEF_RATE;
		[CCode (cheader_filename = "gst/audio/audio.h", cname = "GST_AUDIO_ENCODER_SINK_NAME")]
		public const string ENCODER_SINK_NAME;
		[CCode (cheader_filename = "gst/audio/audio.h", cname = "GST_AUDIO_ENCODER_SRC_NAME")]
		public const string ENCODER_SRC_NAME;
		[CCode (cheader_filename = "gst/audio/audio.h", cname = "GST_AUDIO_FORMATS_ALL")]
		public const string FORMATS_ALL;
		[CCode (cheader_filename = "gst/audio/audio.h", cname = "GST_META_TAG_AUDIO_CHANNELS_STR")]
		[Version (since = "1.2")]
		public const string META_TAG_AUDIO_CHANNELS_STR;
		[CCode (cheader_filename = "gst/audio/audio.h", cname = "GST_META_TAG_AUDIO_RATE_STR")]
		[Version (since = "1.8")]
		public const string META_TAG_AUDIO_RATE_STR;
		[CCode (cheader_filename = "gst/audio/audio.h", cname = "GST_META_TAG_AUDIO_STR")]
		[Version (since = "1.2")]
		public const string META_TAG_AUDIO_STR;
		[CCode (cheader_filename = "gst/audio/audio.h", cname = "GST_AUDIO_RATE_RANGE")]
		public const string RATE_RANGE;
		[CCode (cheader_filename = "gst/audio/audio.h", cname = "GST_AUDIO_RESAMPLER_OPT_CUBIC_B")]
		public const string RESAMPLER_OPT_CUBIC_B;
		[CCode (cheader_filename = "gst/audio/audio.h", cname = "GST_AUDIO_RESAMPLER_OPT_CUBIC_C")]
		public const string RESAMPLER_OPT_CUBIC_C;
		[CCode (cheader_filename = "gst/audio/audio.h", cname = "GST_AUDIO_RESAMPLER_OPT_CUTOFF")]
		public const string RESAMPLER_OPT_CUTOFF;
		[CCode (cheader_filename = "gst/audio/audio.h", cname = "GST_AUDIO_RESAMPLER_OPT_FILTER_INTERPOLATION")]
		public const string RESAMPLER_OPT_FILTER_INTERPOLATION;
		[CCode (cheader_filename = "gst/audio/audio.h", cname = "GST_AUDIO_RESAMPLER_OPT_FILTER_MODE")]
		public const string RESAMPLER_OPT_FILTER_MODE;
		[CCode (cheader_filename = "gst/audio/audio.h", cname = "GST_AUDIO_RESAMPLER_OPT_FILTER_MODE_THRESHOLD")]
		public const string RESAMPLER_OPT_FILTER_MODE_THRESHOLD;
		[CCode (cheader_filename = "gst/audio/audio.h", cname = "GST_AUDIO_RESAMPLER_OPT_FILTER_OVERSAMPLE")]
		public const string RESAMPLER_OPT_FILTER_OVERSAMPLE;
		[CCode (cheader_filename = "gst/audio/audio.h", cname = "GST_AUDIO_RESAMPLER_OPT_MAX_PHASE_ERROR")]
		public const string RESAMPLER_OPT_MAX_PHASE_ERROR;
		[CCode (cheader_filename = "gst/audio/audio.h", cname = "GST_AUDIO_RESAMPLER_OPT_N_TAPS")]
		public const string RESAMPLER_OPT_N_TAPS;
		[CCode (cheader_filename = "gst/audio/audio.h", cname = "GST_AUDIO_RESAMPLER_OPT_STOP_ATTENUATION")]
		public const string RESAMPLER_OPT_STOP_ATTENUATION;
		[CCode (cheader_filename = "gst/audio/audio.h", cname = "GST_AUDIO_RESAMPLER_OPT_TRANSITION_BANDWIDTH")]
		public const string RESAMPLER_OPT_TRANSITION_BANDWIDTH;
		[CCode (cheader_filename = "gst/audio/audio.h", cname = "GST_AUDIO_RESAMPLER_QUALITY_DEFAULT")]
		public const int RESAMPLER_QUALITY_DEFAULT;
		[CCode (cheader_filename = "gst/audio/audio.h", cname = "GST_AUDIO_RESAMPLER_QUALITY_MAX")]
		public const int RESAMPLER_QUALITY_MAX;
		[CCode (cheader_filename = "gst/audio/audio.h", cname = "GST_AUDIO_RESAMPLER_QUALITY_MIN")]
		public const int RESAMPLER_QUALITY_MIN;
		[CCode (cheader_filename = "gst/audio/audio.h", cname = "gst_audio_buffer_clip")]
		public static Gst.Buffer audio_buffer_clip (owned Gst.Buffer buffer, Gst.Segment segment, int rate, int bpf);
		[CCode (cheader_filename = "gst/audio/audio.h", cname = "gst_audio_buffer_reorder_channels")]
		public static bool audio_buffer_reorder_channels (Gst.Buffer buffer, Gst.Audio.Format format, int channels, [CCode (array_length = false)] Gst.Audio.ChannelPosition[] from, [CCode (array_length = false)] Gst.Audio.ChannelPosition[] to);
		[CCode (cheader_filename = "gst/audio/audio.h", cname = "gst_audio_channel_get_fallback_mask")]
		[Version (since = "1.8")]
		public static uint64 audio_channel_get_fallback_mask (int channels);
		[CCode (cheader_filename = "gst/audio/audio.h", cname = "gst_audio_channel_positions_from_mask")]
		public static bool audio_channel_positions_from_mask (uint64 channel_mask, [CCode (array_length_cname = "channels", array_length_pos = 0.5)] Gst.Audio.ChannelPosition[] position);
		[CCode (cheader_filename = "gst/audio/audio.h", cname = "gst_audio_channel_positions_to_mask")]
		public static bool audio_channel_positions_to_mask ([CCode (array_length_cname = "channels", array_length_pos = 1.5)] Gst.Audio.ChannelPosition[] position, bool force_order, out uint64 channel_mask);
		[CCode (cheader_filename = "gst/audio/audio.h", cname = "gst_audio_channel_positions_to_string")]
		public static string audio_channel_positions_to_string ([CCode (array_length_cname = "channels", array_length_pos = 1.1)] Gst.Audio.ChannelPosition[] position);
		[CCode (cheader_filename = "gst/audio/audio.h", cname = "gst_audio_channel_positions_to_valid_order")]
		public static bool audio_channel_positions_to_valid_order ([CCode (array_length_cname = "channels", array_length_pos = 1.1)] Gst.Audio.ChannelPosition[] position);
		[CCode (cheader_filename = "gst/audio/audio.h", cname = "gst_audio_check_valid_channel_positions")]
		public static bool audio_check_valid_channel_positions ([CCode (array_length_cname = "channels", array_length_pos = 1.5)] Gst.Audio.ChannelPosition[] position, bool force_order);
		[CCode (cheader_filename = "gst/audio/audio.h", cname = "gst_audio_clipping_meta_api_get_type")]
		public static GLib.Type audio_clipping_meta_api_get_type ();
		[CCode (cheader_filename = "gst/audio/audio.h", cname = "gst_audio_clipping_meta_get_info")]
		public static unowned Gst.MetaInfo? audio_clipping_meta_get_info ();
		[CCode (cheader_filename = "gst/audio/audio.h", cname = "gst_audio_downmix_meta_api_get_type")]
		public static GLib.Type audio_downmix_meta_api_get_type ();
		[CCode (cheader_filename = "gst/audio/audio.h", cname = "gst_audio_downmix_meta_get_info")]
		public static unowned Gst.MetaInfo? audio_downmix_meta_get_info ();
		[CCode (cheader_filename = "gst/audio/audio.h", cname = "gst_audio_format_build_integer")]
		public static Gst.Audio.Format audio_format_build_integer (bool sign, int endianness, int width, int depth);
		[CCode (cheader_filename = "gst/audio/audio.h", cname = "gst_audio_format_fill_silence")]
		public static void audio_format_fill_silence (Gst.Audio.FormatInfo info, [CCode (array_length_cname = "length", array_length_pos = 2.1, array_length_type = "gsize")] uint8[] dest);
		[CCode (cheader_filename = "gst/audio/audio.h", cname = "gst_audio_format_from_string")]
		public static Gst.Audio.Format audio_format_from_string (string format);
		[CCode (cheader_filename = "gst/audio/audio.h", cname = "gst_audio_format_get_info")]
		public static unowned Gst.Audio.FormatInfo? audio_format_get_info (Gst.Audio.Format format);
		[CCode (cheader_filename = "gst/audio/audio.h", cname = "gst_audio_format_info_get_type")]
		public static GLib.Type audio_format_info_get_type ();
		[CCode (cheader_filename = "gst/audio/audio.h", cname = "gst_audio_format_to_string")]
		public static unowned string audio_format_to_string (Gst.Audio.Format format);
		[CCode (cheader_filename = "gst/audio/audio.h", cname = "gst_audio_get_channel_reorder_map")]
		public static bool audio_get_channel_reorder_map (int channels, [CCode (array_length = false)] Gst.Audio.ChannelPosition[] from, [CCode (array_length = false)] Gst.Audio.ChannelPosition[] to, [CCode (array_length = false)] int[] reorder_map);
		[CCode (cheader_filename = "gst/audio/audio.h", cname = "gst_audio_iec61937_frame_size")]
		public static uint audio_iec61937_frame_size (Gst.Audio.RingBufferSpec spec);
		[CCode (cheader_filename = "gst/audio/audio.h", cname = "gst_audio_iec61937_payload")]
		public static bool audio_iec61937_payload ([CCode (array_length_cname = "src_n", array_length_pos = 1.5, array_length_type = "guint")] uint8[] src, [CCode (array_length_cname = "dst_n", array_length_pos = 2.5, array_length_type = "guint")] uint8[] dst, Gst.Audio.RingBufferSpec spec, int endianness);
		[CCode (cheader_filename = "gst/audio/audio.h", cname = "gst_audio_reorder_channels")]
		public static bool audio_reorder_channels ([CCode (array_length_cname = "size", array_length_pos = 1.5, array_length_type = "gsize")] uint8[] data, Gst.Audio.Format format, int channels, [CCode (array_length = false)] Gst.Audio.ChannelPosition[] from, [CCode (array_length = false)] Gst.Audio.ChannelPosition[] to);
		[CCode (cheader_filename = "gst/audio/audio.h", cname = "gst_audio_resampler_options_set_quality")]
		public static void audio_resampler_options_set_quality (Gst.Audio.ResamplerMethod method, uint quality, int in_rate, int out_rate, Gst.Structure options);
		[CCode (cheader_filename = "gst/audio/audio.h", cname = "gst_buffer_add_audio_clipping_meta")]
		[Version (since = "1.8")]
		public static unowned Gst.Audio.ClippingMeta? buffer_add_audio_clipping_meta (Gst.Buffer buffer, Gst.Format format, uint64 start, uint64 end);
		[CCode (cheader_filename = "gst/audio/audio.h", cname = "gst_buffer_add_audio_downmix_meta")]
		public static unowned Gst.Audio.DownmixMeta? buffer_add_audio_downmix_meta (Gst.Buffer buffer, [CCode (array_length_cname = "from_channels", array_length_pos = 2.5)] Gst.Audio.ChannelPosition[] from_position, [CCode (array_length_cname = "to_channels", array_length_pos = 3.5)] Gst.Audio.ChannelPosition[] to_position, float matrix);
		[CCode (cheader_filename = "gst/audio/audio.h", cname = "gst_buffer_get_audio_downmix_meta_for_channels")]
		public static unowned Gst.Audio.DownmixMeta? buffer_get_audio_downmix_meta_for_channels (Gst.Buffer buffer, [CCode (array_length_cname = "to_channels", array_length_pos = 2.1)] Gst.Audio.ChannelPosition[] to_position);
		[CCode (cheader_filename = "gst/audio/audio.h", cname = "gst_stream_volume_convert_volume")]
		public static double stream_volume_convert_volume (Gst.Audio.StreamVolumeFormat from, Gst.Audio.StreamVolumeFormat to, double val);
	}
}
