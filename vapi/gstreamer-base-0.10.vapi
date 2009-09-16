/* gstreamer-base-0.10.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "Gst", lower_case_cprefix = "gst_")]
namespace Gst {
	[CCode (cheader_filename = "gst/base/gstadapter.h")]
	public class Adapter : GLib.Object {
		[CCode (has_construct_function = false)]
		public Adapter ();
		public uint available ();
		public uint available_fast ();
		public void clear ();
		public void copy (uchar dest, uint offset, uint size);
		public void flush (uint flush);
		[CCode (array_length = false)]
		public unowned uchar[] peek (uint size);
		public void push (owned Gst.Buffer buf);
		public uchar take (uint nbytes);
		public Gst.Buffer take_buffer (uint nbytes);
	}
	[CCode (cheader_filename = "gst/base/gstbasesink.h")]
	public class BaseSink : Gst.Element {
		public int buffers_queued;
		public bool can_activate_pull;
		public bool can_activate_push;
		public Gst.ClockID clock_id;
		public Gst.ClockTime end_time;
		public bool eos;
		public bool eos_queued;
		public int events_queued;
		public bool flushing;
		public bool have_newsegment;
		public bool have_preroll;
		public bool need_preroll;
		public uint64 offset;
		public Gst.ActivateMode pad_mode;
		public bool playing_async;
		public GLib.Queue preroll_queue;
		public int preroll_queue_max_len;
		public int preroll_queued;
		public Gst.Segment segment;
		public Gst.Pad sinkpad;
		[NoWrapper]
		public virtual bool activate_pull (bool active);
		[NoWrapper]
		public virtual Gst.StateChangeReturn async_play ();
		[NoWrapper]
		public virtual Gst.FlowReturn buffer_alloc (uint64 offset, uint size, Gst.Caps caps, out unowned Gst.Buffer buf);
		public Gst.FlowReturn do_preroll (Gst.MiniObject obj);
		[NoWrapper]
		public virtual bool event (Gst.Event event);
		[NoWrapper]
		public virtual void fixate (Gst.Caps caps);
		public uint get_blocksize ();
		[NoWrapper]
		public virtual unowned Gst.Caps get_caps ();
		public unowned Gst.Buffer get_last_buffer ();
		public Gst.ClockTime get_latency ();
		public int64 get_max_lateness ();
		public Gst.ClockTime get_render_delay ();
		public bool get_sync ();
		[NoWrapper]
		public virtual void get_times (Gst.Buffer buffer, out Gst.ClockTime start, out Gst.ClockTime end);
		public Gst.ClockTimeDiff get_ts_offset ();
		public bool is_async_enabled ();
		public bool is_qos_enabled ();
		[NoWrapper]
		public virtual Gst.FlowReturn preroll (Gst.Buffer buffer);
		public bool query_latency (bool live, bool upstream_live, out Gst.ClockTime min_latency, out Gst.ClockTime max_latency);
		[NoWrapper]
		public virtual Gst.FlowReturn render (Gst.Buffer buffer);
		public void set_async_enabled (bool enabled);
		public void set_blocksize (uint blocksize);
		[NoWrapper]
		public virtual bool set_caps (Gst.Caps caps);
		public void set_max_lateness (int64 max_lateness);
		public void set_qos_enabled (bool enabled);
		public void set_render_delay (Gst.ClockTime delay);
		public void set_sync (bool sync);
		public void set_ts_offset (Gst.ClockTimeDiff offset);
		[NoWrapper]
		public virtual bool start ();
		[NoWrapper]
		public virtual bool stop ();
		[NoWrapper]
		public virtual bool unlock ();
		[NoWrapper]
		public virtual bool unlock_stop ();
		public Gst.ClockReturn wait_clock (Gst.ClockTime time, out Gst.ClockTimeDiff jitter);
		public Gst.FlowReturn wait_eos (Gst.ClockTime time, out Gst.ClockTimeDiff jitter);
		public Gst.FlowReturn wait_preroll ();
		[NoAccessorMethod]
		public bool @async { get; set; }
		public uint blocksize { get; set; }
		public Gst.Buffer last_buffer { get; }
		public int64 max_lateness { get; set; }
		[NoAccessorMethod]
		public uint preroll_queue_len { get; set construct; }
		[NoAccessorMethod]
		public bool qos { get; set; }
		public uint64 render_delay { get; set; }
		public bool sync { get; set; }
		public int64 ts_offset { get; set; }
	}
	[CCode (cheader_filename = "gst/base/gstbasesrc.h")]
	public class BaseSrc : Gst.Element {
		public bool can_activate_push;
		public Gst.ClockID clock_id;
		public void* data;
		public Gst.ClockTime end_time;
		public GLib.Cond live_cond;
		public GLib.Mutex live_lock;
		public bool live_running;
		public bool need_newsegment;
		public int num_buffers_left;
		public uint64 offset;
		public Gst.ActivateMode pad_mode;
		public bool random_access;
		public bool seekable;
		public Gst.Segment segment;
		public uint64 size;
		public Gst.Pad srcpad;
		[NoWrapper]
		public virtual bool check_get_range ();
		[NoWrapper]
		public virtual Gst.FlowReturn create (uint64 offset, uint size, out unowned Gst.Buffer buf);
		[NoWrapper]
		public virtual bool do_seek (Gst.Segment segment);
		[NoWrapper]
		public virtual bool event (Gst.Event event);
		[NoWrapper]
		public virtual void fixate (Gst.Caps caps);
		public ulong get_blocksize ();
		[NoWrapper]
		public virtual unowned Gst.Caps get_caps ();
		public bool get_do_timestamp ();
		[NoWrapper]
		public virtual bool get_size (uint64 size);
		[NoWrapper]
		public virtual void get_times (Gst.Buffer buffer, out Gst.ClockTime start, out Gst.ClockTime end);
		public bool is_live ();
		[NoWrapper]
		public virtual bool is_seekable ();
		[NoWrapper]
		public virtual bool negotiate ();
		[NoWrapper]
		public virtual bool newsegment ();
		[NoWrapper]
		public virtual bool prepare_seek_segment (Gst.Event seek, Gst.Segment segment);
		[NoWrapper]
		public virtual bool query (Gst.Query query);
		public bool query_latency (bool live, out Gst.ClockTime min_latency, out Gst.ClockTime max_latency);
		public void set_blocksize (ulong blocksize);
		[NoWrapper]
		public virtual bool set_caps (Gst.Caps caps);
		public void set_do_timestamp (bool timestamp);
		public void set_format (Gst.Format format);
		public void set_live (bool live);
		[NoWrapper]
		public virtual bool start ();
		[NoWrapper]
		public virtual bool stop ();
		[NoWrapper]
		public virtual bool unlock ();
		[NoWrapper]
		public virtual bool unlock_stop ();
		public Gst.FlowReturn wait_playing ();
		public ulong blocksize { get; set; }
		public bool do_timestamp { get; set; }
		[NoAccessorMethod]
		public int num_buffers { get; set; }
		[NoAccessorMethod]
		public bool typefind { get; set; }
	}
	[CCode (cheader_filename = "gst/base/gstbasetransform.h")]
	public class BaseTransform : Gst.Element {
		public bool always_in_place;
		public Gst.Caps cache_caps1;
		public uint cache_caps1_size;
		public Gst.Caps cache_caps2;
		public uint cache_caps2_size;
		public bool delay_configure;
		public bool have_newsegment;
		public bool have_same_caps;
		public bool negotiated;
		public bool passthrough;
		public bool pending_configure;
		public Gst.Segment segment;
		public Gst.Pad sinkpad;
		public Gst.Pad srcpad;
		public GLib.Mutex transform_lock;
		public const string SINK_NAME;
		public const string SRC_NAME;
		[NoWrapper]
		public virtual void before_transform (Gst.Buffer buffer);
		[NoWrapper]
		public virtual bool event (Gst.Event event);
		[NoWrapper]
		public virtual void fixate_caps (Gst.PadDirection direction, Gst.Caps caps, Gst.Caps othercaps);
		[NoWrapper]
		public virtual bool get_unit_size (Gst.Caps caps, out uint size);
		public bool is_in_place ();
		public bool is_passthrough ();
		public bool is_qos_enabled ();
		[NoWrapper]
		public virtual Gst.FlowReturn prepare_output_buffer (Gst.Buffer input, int size, Gst.Caps caps, out unowned Gst.Buffer buf);
		public void reconfigure ();
		[NoWrapper]
		public virtual bool set_caps (Gst.Caps incaps, Gst.Caps outcaps);
		public void set_gap_aware (bool gap_aware);
		public void set_in_place (bool in_place);
		public void set_passthrough (bool passthrough);
		public void set_qos_enabled (bool enabled);
		[NoWrapper]
		public virtual bool src_event (Gst.Event event);
		[NoWrapper]
		public virtual bool start ();
		[NoWrapper]
		public virtual bool stop ();
		public void suggest (Gst.Caps caps, uint size);
		[NoWrapper]
		public virtual Gst.FlowReturn transform (Gst.Buffer inbuf, Gst.Buffer outbuf);
		[NoWrapper]
		public virtual unowned Gst.Caps transform_caps (Gst.PadDirection direction, Gst.Caps caps);
		[NoWrapper]
		public virtual Gst.FlowReturn transform_ip (Gst.Buffer buf);
		[NoWrapper]
		public virtual bool transform_size (Gst.PadDirection direction, Gst.Caps caps, uint size, Gst.Caps othercaps, out uint othersize);
		public void update_qos (double proportion, Gst.ClockTimeDiff diff, Gst.ClockTime timestamp);
		[NoAccessorMethod]
		public bool qos { get; set; }
	}
	[Compact]
	[CCode (cheader_filename = "gst/gst.h")]
	public class BitReader {
		public uint bit;
		public uint byte;
		public uchar data;
		public uint size;
		[CCode (has_construct_function = false)]
		public BitReader (uchar data, uint size);
		[CCode (has_construct_function = false)]
		public BitReader.from_buffer (Gst.Buffer buffer);
		public bool get_bits_uint16 (out uint16 val, uint nbits);
		public bool get_bits_uint32 (out uint32 val, uint nbits);
		public bool get_bits_uint64 (out uint64 val, uint nbits);
		public bool get_bits_uint8 (out uchar val, uint nbits);
		public uint get_pos ();
		public uint get_remaining ();
		public void init (uchar data, uint size);
		public void init_from_buffer (Gst.Buffer buffer);
		public bool peek_bits_uint16 (out uint16 val, uint nbits);
		public bool peek_bits_uint32 (out uint32 val, uint nbits);
		public bool peek_bits_uint64 (out uint64 val, uint nbits);
		public bool peek_bits_uint8 (out uchar val, uint nbits);
		public bool set_pos (uint pos);
		public bool skip (uint nbits);
		public bool skip_to_byte ();
	}
	[Compact]
	[CCode (cheader_filename = "gst/gst.h")]
	public class ByteReader {
		public uint byte;
		public uchar data;
		public uint size;
		[CCode (has_construct_function = false)]
		public ByteReader (uchar data, uint size);
		[CCode (has_construct_function = false)]
		public ByteReader.from_buffer (Gst.Buffer buffer);
		public bool get_data (uint size, out uchar val);
		public bool get_float32_be (out float val);
		public bool get_float32_le (out float val);
		public bool get_float64_be (out double val);
		public bool get_float64_le (out double val);
		public bool get_int16_be (out int16 val);
		public bool get_int16_le (out int16 val);
		public bool get_int24_be (out int32 val);
		public bool get_int24_le (out int32 val);
		public bool get_int32_be (out int32 val);
		public bool get_int32_le (out int32 val);
		public bool get_int64_be (out int64 val);
		public bool get_int64_le (out int64 val);
		public bool get_int8 (out char val);
		public uint get_pos ();
		public uint get_remaining ();
		public bool get_uint16_be (out uint16 val);
		public bool get_uint16_le (out uint16 val);
		public bool get_uint24_be (out uint32 val);
		public bool get_uint24_le (out uint32 val);
		public bool get_uint32_be (out uint32 val);
		public bool get_uint32_le (out uint32 val);
		public bool get_uint64_be (out uint64 val);
		public bool get_uint64_le (out uint64 val);
		public bool get_uint8 (out uchar val);
		public void init (uchar data, uint size);
		public void init_from_buffer (Gst.Buffer buffer);
		public bool peek_data (uint size, out uchar val);
		public bool peek_float32_be (out float val);
		public bool peek_float32_le (out float val);
		public bool peek_float64_be (out double val);
		public bool peek_float64_le (out double val);
		public bool peek_int16_be (out int16 val);
		public bool peek_int16_le (out int16 val);
		public bool peek_int24_be (out int32 val);
		public bool peek_int24_le (out int32 val);
		public bool peek_int32_be (out int32 val);
		public bool peek_int32_le (out int32 val);
		public bool peek_int64_be (out int64 val);
		public bool peek_int64_le (out int64 val);
		public bool peek_int8 (out char val);
		public bool peek_uint16_be (out uint16 val);
		public bool peek_uint16_le (out uint16 val);
		public bool peek_uint24_be (out uint32 val);
		public bool peek_uint24_le (out uint32 val);
		public bool peek_uint32_be (out uint32 val);
		public bool peek_uint32_le (out uint32 val);
		public bool peek_uint64_be (out uint64 val);
		public bool peek_uint64_le (out uint64 val);
		public bool peek_uint8 (out uchar val);
		public bool set_pos (uint pos);
		public bool skip (uint nbytes);
	}
	[Compact]
	[CCode (cheader_filename = "gst/base/gstcollectpads.h")]
	public class CollectData {
		public Gst.Buffer buffer;
		public weak Gst.CollectPads collect;
		public Gst.Pad pad;
		public uint pos;
		public weak Gst.Segment segment;
	}
	[CCode (cheader_filename = "gst/base/gstcollectpads.h")]
	public class CollectPads : Gst.Object {
		public weak GLib.Cond cond;
		public uint32 cookie;
		public weak GLib.SList<Gst.CollectData> data;
		public uint eospads;
		public weak Gst.CollectPadsFunction func;
		public uint numpads;
		public uint queuedpads;
		public bool started;
		public void* user_data;
		[CCode (has_construct_function = false)]
		public CollectPads ();
		public unowned Gst.CollectData add_pad (Gst.Pad pad, uint size);
		public unowned Gst.CollectData add_pad_full (Gst.Pad pad, uint size, Gst.CollectDataDestroyNotify destroy_notify);
		public uint available ();
		public Gst.FlowReturn collect ();
		public Gst.FlowReturn collect_range (uint64 offset, uint length);
		public uint flush (Gst.CollectData data, uint size);
		public bool is_active (Gst.Pad pad);
		public unowned Gst.Buffer peek (Gst.CollectData data);
		public unowned Gst.Buffer pop (Gst.CollectData data);
		public uint read (Gst.CollectData data, uchar bytes, uint size);
		public unowned Gst.Buffer read_buffer (Gst.CollectData data, uint size);
		public bool remove_pad (Gst.Pad pad);
		public void set_flushing (bool flushing);
		public void set_function (Gst.CollectPadsFunction func);
		public void start ();
		public void stop ();
		public Gst.Buffer take_buffer (Gst.CollectData data, uint size);
	}
	[CCode (cheader_filename = "gst/base/gstdataqueue.h")]
	public class DataQueue : GLib.Object {
		public void* checkdata;
		public weak Gst.DataQueueCheckFullFunction checkfull;
		public weak Gst.DataQueueSize cur_level;
		public bool flushing;
		public weak GLib.Cond item_add;
		public weak GLib.Cond item_del;
		public weak GLib.Mutex qlock;
		public weak GLib.Queue queue;
		[CCode (has_construct_function = false)]
		public DataQueue (Gst.DataQueueCheckFullFunction checkfull, void* checkdata);
		public bool drop_head (GLib.Type type);
		public void flush ();
		public void get_level (Gst.DataQueueSize level);
		public bool is_empty ();
		public bool is_full ();
		public void limits_changed ();
		public bool pop (out unowned Gst.DataQueueItem item);
		public bool push (Gst.DataQueueItem item);
		public void set_flushing (bool flushing);
		[NoAccessorMethod]
		public uint current_level_bytes { get; }
		[NoAccessorMethod]
		public uint64 current_level_time { get; }
		[NoAccessorMethod]
		public uint current_level_visible { get; }
		public virtual signal void empty ();
		public virtual signal void full ();
	}
	[Compact]
	[CCode (cheader_filename = "gst/base/gstdataqueue.h")]
	public class DataQueueItem {
		public weak GLib.DestroyNotify destroy;
		public uint64 duration;
		public weak Gst.MiniObject object;
		public uint size;
		public bool visible;
	}
	[Compact]
	[CCode (cheader_filename = "gst/base/gstdataqueue.h")]
	public class DataQueueSize {
		public uint bytes;
		public uint64 time;
		public uint visible;
	}
	[CCode (cheader_filename = "gst/base/gstpushsrc.h")]
	public class PushSrc : Gst.BaseSrc {
		[NoWrapper]
		public virtual Gst.FlowReturn create (out unowned Gst.Buffer buf);
	}
	[CCode (cprefix = "GST_BASE_SRC_", has_type_id = "0", cheader_filename = "gst/gst.h")]
	public enum BaseSrcFlags {
		STARTED,
		FLAG_LAST
	}
	[CCode (cheader_filename = "gst/base/gstcollectpads.h")]
	public delegate void CollectDataDestroyNotify ();
	[CCode (cheader_filename = "gst/gst.h")]
	public delegate Gst.FlowReturn CollectPadsFunction (Gst.CollectPads pads);
	[CCode (cheader_filename = "gst/base/gstdataqueue.h", has_target = false)]
	public delegate bool DataQueueCheckFullFunction (Gst.DataQueue queue, uint visible, uint bytes, uint64 time, void* checkdata);
	[CCode (cheader_filename = "gst/base/gsttypefindhelper.h", has_target = false)]
	public delegate Gst.FlowReturn TypeFindHelperGetRangeFunction (Gst.Object obj, uint64 offset, uint length, out unowned Gst.Buffer buffer);
	[CCode (cheader_filename = "gst/gst.h")]
	public static unowned Gst.Caps type_find_helper (Gst.Pad src, uint64 size);
	[CCode (cheader_filename = "gst/gst.h")]
	public static unowned Gst.Caps type_find_helper_for_buffer (Gst.Object obj, Gst.Buffer buf, Gst.TypeFindProbability prob);
	[CCode (cheader_filename = "gst/gst.h")]
	public static Gst.Caps type_find_helper_for_extension (Gst.Object obj, string extension);
	[CCode (cheader_filename = "gst/gst.h")]
	public static unowned Gst.Caps type_find_helper_get_range (Gst.Object obj, Gst.TypeFindHelperGetRangeFunction func, uint64 size, Gst.TypeFindProbability prob);
}
