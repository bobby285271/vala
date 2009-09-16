/* gstreamer-rtsp-0.10.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "Gst", lower_case_cprefix = "gst_")]
namespace Gst {
	[Compact]
	[CCode (cheader_filename = "gst/rtsp/gstrtspconnection.h")]
	public class RTSPConnection {
		public static Gst.RTSPResult accept (int sock, out unowned Gst.RTSPConnection conn);
		public void clear_auth_params ();
		public Gst.RTSPResult close ();
		public Gst.RTSPResult connect (GLib.TimeVal timeout);
		public static Gst.RTSPResult create (Gst.RTSPUrl url, out Gst.RTSPConnection conn);
		public Gst.RTSPResult do_tunnel (Gst.RTSPConnection conn2);
		public Gst.RTSPResult flush (bool flush);
		public unowned string get_ip ();
		public int get_readfd ();
		public unowned string get_tunnelid ();
		public unowned Gst.RTSPUrl get_url ();
		public int get_writefd ();
		public bool is_tunneled ();
		public Gst.RTSPResult next_timeout (GLib.TimeVal timeout);
		public Gst.RTSPResult poll (Gst.RTSPEvent events, Gst.RTSPEvent revents, GLib.TimeVal timeout);
		public Gst.RTSPResult read (uchar data, uint size, GLib.TimeVal timeout);
		public Gst.RTSPResult receive (Gst.RTSPMessage message, GLib.TimeVal timeout);
		public Gst.RTSPResult reset_timeout ();
		public Gst.RTSPResult send (Gst.RTSPMessage message, GLib.TimeVal timeout);
		public Gst.RTSPResult set_auth (Gst.RTSPAuthMethod method, string user, string pass);
		public void set_auth_param (string param, string value);
		public void set_ip (string ip);
		public Gst.RTSPResult set_proxy (string host, uint port);
		public Gst.RTSPResult set_qos_dscp (uint qos_dscp);
		public void set_tunneled (bool tunneled);
		public Gst.RTSPResult write (uchar data, uint size, GLib.TimeVal timeout);
	}
	[Compact]
	[CCode (cheader_filename = "gst/rtsp/gstrtspmessage.h")]
	public class RTSPMessage {
		public uchar body;
		public uint body_size;
		public GLib.Array hdr_fields;
		public Gst.RTSPMsgType type;
		public void* type_data;
		public Gst.RTSPResult add_header (Gst.RTSPHeaderField field, string value);
		public Gst.RTSPResult append_headers (GLib.StringBuilder str);
		public Gst.RTSPResult dump ();
		public Gst.RTSPResult get_body (out unowned uchar[] data, uint size);
		public Gst.RTSPResult get_header (Gst.RTSPHeaderField field, out unowned string value, int indx);
		public Gst.RTSPResult init ();
		public Gst.RTSPResult init_data (uchar channel);
		public Gst.RTSPResult init_request (Gst.RTSPMethod method, string uri);
		public Gst.RTSPResult init_response (Gst.RTSPStatusCode code, string reason, Gst.RTSPMessage request);
		public static Gst.RTSPResult @new (out Gst.RTSPMessage msg);
		public static Gst.RTSPResult new_data (out Gst.RTSPMessage msg, uchar channel);
		public static Gst.RTSPResult new_request (out Gst.RTSPMessage msg, Gst.RTSPMethod method, string uri);
		public static Gst.RTSPResult new_response (out Gst.RTSPMessage msg, Gst.RTSPStatusCode code, string reason, Gst.RTSPMessage request);
		public Gst.RTSPResult parse_data (uchar channel);
		public Gst.RTSPResult parse_request (Gst.RTSPMethod method, string uri, Gst.RTSPVersion version);
		public Gst.RTSPResult parse_response (Gst.RTSPStatusCode code, string reason, Gst.RTSPVersion version);
		public Gst.RTSPResult remove_header (Gst.RTSPHeaderField field, int indx);
		public Gst.RTSPResult set_body (uchar[] data, uint size);
		public Gst.RTSPResult steal_body (out uchar[] data, uint size);
		public Gst.RTSPResult take_body (owned uchar[] data, uint size);
		public Gst.RTSPResult take_header (Gst.RTSPHeaderField field, owned string value);
		public Gst.RTSPResult unset ();
	}
	[Compact]
	[CCode (cheader_filename = "gst/rtsp/gstrtsprange.h")]
	public class RTSPRange {
		public int max;
		public int min;
		public static Gst.RTSPResult parse (string rangestr, out Gst.RTSPTimeRange range);
		public static string to_string (Gst.RTSPTimeRange range);
	}
	[Compact]
	[CCode (cheader_filename = "gst/rtsp/gstrtsprange.h")]
	public class RTSPTime {
		public double seconds;
		public Gst.RTSPTimeType type;
	}
	[Compact]
	[CCode (cheader_filename = "gst/rtsp/gstrtsprange.h")]
	public class RTSPTimeRange {
		public Gst.RTSPTime max;
		public Gst.RTSPTime min;
		public Gst.RTSPRangeUnit unit;
	}
	[Compact]
	[CCode (cheader_filename = "gst/rtsp/gstrtsptransport.h")]
	public class RTSPTransport {
		public bool append;
		public Gst.RTSPRange client_port;
		public string destination;
		public Gst.RTSPRange interleaved;
		public uint layers;
		public Gst.RTSPLowerTrans lower_transport;
		public bool mode_play;
		public bool mode_record;
		public Gst.RTSPRange port;
		public Gst.RTSPProfile profile;
		public Gst.RTSPRange server_port;
		public string source;
		public uint ssrc;
		public Gst.RTSPTransMode trans;
		public uint ttl;
		public string as_text ();
		public static Gst.RTSPResult get_manager (Gst.RTSPTransMode trans, string manager, uint option);
		public static Gst.RTSPResult get_mime (Gst.RTSPTransMode trans, string mime);
		public Gst.RTSPResult init ();
		public static Gst.RTSPResult @new (out Gst.RTSPTransport transport);
		public static Gst.RTSPResult parse (string str, Gst.RTSPTransport transport);
	}
	[Compact]
	[CCode (copy_function = "gst_rtsp_url_copy", type_id = "GST_TYPE_RTSP_URL", cheader_filename = "gst/rtsp/gstrtspconnection.h")]
	public class RTSPUrl {
		public string abspath;
		public Gst.RTSPFamily family;
		public string host;
		public string passwd;
		public uint16 port;
		public string query;
		public Gst.RTSPLowerTrans transports;
		public string user;
		public Gst.RTSPUrl copy ();
		public Gst.RTSPResult get_port (uint16 port);
		public string get_request_uri ();
		public static Gst.RTSPResult parse (string urlstr, out Gst.RTSPUrl url);
		public Gst.RTSPResult set_port (uint16 port);
	}
	[Compact]
	[CCode (cheader_filename = "gst/gst.h")]
	public class RTSPWatch {
		[CCode (has_construct_function = false)]
		public RTSPWatch (Gst.RTSPConnection conn, Gst.RTSPWatchFuncs funcs, GLib.DestroyNotify notify);
		public uint attach (GLib.MainContext context);
		public uint queue_message (Gst.RTSPMessage message);
		public void reset ();
	}
	[Compact]
	[CCode (cheader_filename = "gst/gst.h")]
	public class RTSPWatchFuncs {
		public weak GLib.Callback closed;
		public weak GLib.Callback error;
		public weak GLib.Callback message_received;
		public weak GLib.Callback message_sent;
		public weak GLib.Callback tunnel_complete;
		public weak GLib.Callback tunnel_start;
	}
	[CCode (cheader_filename = "gst/rtsp/gstrtspextension.h")]
	public interface RTSPExtension {
		public abstract Gst.RTSPResult after_send (Gst.RTSPMessage req, Gst.RTSPMessage resp);
		public abstract Gst.RTSPResult before_send (Gst.RTSPMessage req);
		public abstract bool configure_stream (Gst.Caps caps);
		public abstract bool detect_server (Gst.RTSPMessage resp);
		public abstract Gst.RTSPResult get_transports (Gst.RTSPLowerTrans protocols, string transport);
		public abstract Gst.RTSPResult parse_sdp (Gst.SDPMessage sdp, Gst.Structure s);
		public abstract Gst.RTSPResult receive_request (Gst.RTSPMessage req);
		public abstract Gst.RTSPResult setup_media (Gst.SDPMedia media);
		public abstract Gst.RTSPResult stream_select (Gst.RTSPUrl url);
		[HasEmitter]
		public signal Gst.RTSPResult send (void* req, void* resp);
	}
	[CCode (cprefix = "GST_RTSP_AUTH_", cheader_filename = "gst/rtsp/gstrtspconnection.h")]
	public enum RTSPAuthMethod {
		NONE,
		BASIC,
		DIGEST
	}
	[CCode (cprefix = "GST_RTSP_EV_", cheader_filename = "gst/rtsp/gstrtspconnection.h")]
	[Flags]
	public enum RTSPEvent {
		READ,
		WRITE
	}
	[CCode (cprefix = "GST_RTSP_FAM_", cheader_filename = "gst/rtsp/gstrtspdefs.h")]
	public enum RTSPFamily {
		NONE,
		INET,
		INET6
	}
	[CCode (cprefix = "GST_RTSP_HDR_", cheader_filename = "gst/rtsp/gstrtspdefs.h")]
	public enum RTSPHeaderField {
		INVALID,
		ACCEPT,
		ACCEPT_ENCODING,
		ACCEPT_LANGUAGE,
		ALLOW,
		AUTHORIZATION,
		BANDWIDTH,
		BLOCKSIZE,
		CACHE_CONTROL,
		CONFERENCE,
		CONNECTION,
		CONTENT_BASE,
		CONTENT_ENCODING,
		CONTENT_LANGUAGE,
		CONTENT_LENGTH,
		CONTENT_LOCATION,
		CONTENT_TYPE,
		CSEQ,
		DATE,
		EXPIRES,
		FROM,
		IF_MODIFIED_SINCE,
		LAST_MODIFIED,
		PROXY_AUTHENTICATE,
		PROXY_REQUIRE,
		PUBLIC,
		RANGE,
		REFERER,
		REQUIRE,
		RETRY_AFTER,
		RTP_INFO,
		SCALE,
		SESSION,
		SERVER,
		SPEED,
		TRANSPORT,
		UNSUPPORTED,
		USER_AGENT,
		VIA,
		WWW_AUTHENTICATE,
		CLIENT_CHALLENGE,
		REAL_CHALLENGE1,
		REAL_CHALLENGE2,
		REAL_CHALLENGE3,
		SUBSCRIBE,
		ALERT,
		CLIENT_ID,
		COMPANY_ID,
		GUID,
		REGION_DATA,
		MAX_ASM_WIDTH,
		LANGUAGE,
		PLAYER_START_TIME,
		LOCATION,
		ETAG,
		IF_MATCH
	}
	[CCode (cprefix = "GST_RTSP_LOWER_TRANS_", has_type_id = "0", cheader_filename = "gst/rtsp/gstrtspextension.h")]
	public enum RTSPLowerTrans {
		UNKNOWN,
		UDP,
		UDP_MCAST,
		TCP,
		HTTP
	}
	[CCode (cprefix = "GST_RTSP_", cheader_filename = "gst/rtsp/gstrtspdefs.h")]
	[Flags]
	public enum RTSPMethod {
		INVALID,
		DESCRIBE,
		ANNOUNCE,
		GET_PARAMETER,
		OPTIONS,
		PAUSE,
		PLAY,
		RECORD,
		REDIRECT,
		SETUP,
		SET_PARAMETER,
		TEARDOWN
	}
	[CCode (cprefix = "GST_RTSP_MESSAGE_", has_type_id = "0", cheader_filename = "gst/rtsp/gstrtspmessage.h")]
	public enum RTSPMsgType {
		INVALID,
		REQUEST,
		RESPONSE,
		DATA
	}
	[CCode (cprefix = "GST_RTSP_PROFILE_", has_type_id = "0", cheader_filename = "gst/rtsp/gstrtsptransport.h")]
	public enum RTSPProfile {
		UNKNOWN,
		AVP,
		SAVP
	}
	[CCode (cprefix = "GST_RTSP_RANGE_", has_type_id = "0", cheader_filename = "gst/rtsp/gstrtsprange.h")]
	public enum RTSPRangeUnit {
		SMPTE,
		SMPTE_30_DROP,
		SMPTE_25,
		NPT,
		CLOCK
	}
	[CCode (cprefix = "GST_RTSP_", cheader_filename = "gst/rtsp/gstrtspconnection.h")]
	public enum RTSPResult {
		OK,
		ERROR,
		EINVAL,
		EINTR,
		ENOMEM,
		ERESOLV,
		ENOTIMPL,
		ESYS,
		EPARSE,
		EWSASTART,
		EWSAVERSION,
		EEOF,
		ENET,
		ENOTIP,
		ETIMEOUT,
		ETGET,
		ETPOST,
		ELAST
	}
	[CCode (cprefix = "GST_RTSP_STATE_", cheader_filename = "gst/rtsp/gstrtspdefs.h")]
	public enum RTSPState {
		INVALID,
		INIT,
		READY,
		SEEKING,
		PLAYING,
		RECORDING
	}
	[CCode (cprefix = "GST_RTSP_STS_", cheader_filename = "gst/rtsp/gstrtspdefs.h")]
	public enum RTSPStatusCode {
		INVALID,
		CONTINUE,
		OK,
		CREATED,
		LOW_ON_STORAGE,
		MULTIPLE_CHOICES,
		MOVED_PERMANENTLY,
		MOVE_TEMPORARILY,
		SEE_OTHER,
		NOT_MODIFIED,
		USE_PROXY,
		BAD_REQUEST,
		UNAUTHORIZED,
		PAYMENT_REQUIRED,
		FORBIDDEN,
		NOT_FOUND,
		METHOD_NOT_ALLOWED,
		NOT_ACCEPTABLE,
		PROXY_AUTH_REQUIRED,
		REQUEST_TIMEOUT,
		GONE,
		LENGTH_REQUIRED,
		PRECONDITION_FAILED,
		REQUEST_ENTITY_TOO_LARGE,
		REQUEST_URI_TOO_LARGE,
		UNSUPPORTED_MEDIA_TYPE,
		PARAMETER_NOT_UNDERSTOOD,
		CONFERENCE_NOT_FOUND,
		NOT_ENOUGH_BANDWIDTH,
		SESSION_NOT_FOUND,
		METHOD_NOT_VALID_IN_THIS_STATE,
		HEADER_FIELD_NOT_VALID_FOR_RESOURCE,
		INVALID_RANGE,
		PARAMETER_IS_READONLY,
		AGGREGATE_OPERATION_NOT_ALLOWED,
		ONLY_AGGREGATE_OPERATION_ALLOWED,
		UNSUPPORTED_TRANSPORT,
		DESTINATION_UNREACHABLE,
		INTERNAL_SERVER_ERROR,
		NOT_IMPLEMENTED,
		BAD_GATEWAY,
		SERVICE_UNAVAILABLE,
		GATEWAY_TIMEOUT,
		RTSP_VERSION_NOT_SUPPORTED,
		OPTION_NOT_SUPPORTED
	}
	[CCode (cprefix = "GST_RTSP_TIME_", has_type_id = "0", cheader_filename = "gst/rtsp/gstrtsprange.h")]
	public enum RTSPTimeType {
		SECONDS,
		NOW,
		END
	}
	[CCode (cprefix = "GST_RTSP_TRANS_", has_type_id = "0", cheader_filename = "gst/rtsp/gstrtsptransport.h")]
	public enum RTSPTransMode {
		UNKNOWN,
		RTP,
		RDT
	}
	[CCode (cprefix = "GST_RTSP_VERSION_", cheader_filename = "gst/rtsp/gstrtspdefs.h")]
	public enum RTSPVersion {
		INVALID,
		@1_0
	}
	[CCode (cheader_filename = "gst/rtsp/gstrtspurl.h")]
	public const int RTSP_DEFAULT_PORT;
	[CCode (cheader_filename = "gst/rtsp/gstrtspbase64.h")]
	public static void rtsp_base64_decode_ip (string data, size_t len);
	[CCode (cheader_filename = "gst/rtsp/gstrtspbase64.h")]
	public static unowned string rtsp_base64_encode (string data, size_t len);
	[CCode (cheader_filename = "gst/rtsp/gstrtspdefs.h")]
	public static Gst.RTSPHeaderField rtsp_find_header_field (string header);
	[CCode (cheader_filename = "gst/rtsp/gstrtspdefs.h")]
	public static Gst.RTSPMethod rtsp_find_method (string method);
	[CCode (cheader_filename = "gst/rtsp/gstrtspdefs.h")]
	public static unowned string rtsp_header_as_text (Gst.RTSPHeaderField field);
	[CCode (cheader_filename = "gst/rtsp/gstrtspdefs.h")]
	public static unowned string rtsp_method_as_text (Gst.RTSPMethod method);
	[CCode (cheader_filename = "gst/gst.h")]
	public static string rtsp_options_as_text (Gst.RTSPMethod options);
	[CCode (cheader_filename = "gst/rtsp/gstrtspdefs.h")]
	public static unowned string rtsp_status_as_text (Gst.RTSPStatusCode code);
	[CCode (cheader_filename = "gst/rtsp/gstrtspdefs.h")]
	public static unowned string rtsp_strresult (Gst.RTSPResult _result);
	[CCode (cheader_filename = "gst/rtsp/gstrtspdefs.h")]
	public static unowned string rtsp_version_as_text (Gst.RTSPVersion version);
}
